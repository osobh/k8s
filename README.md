K8's Galore
======
Overview:

**Be filled out over time**

Namespaces:

Intended for use in environments with many users spread across multiple teams, or projects. For clusters with a few to tens of users, you should not need to create or think about namespaces at all. Start using namespaces when you need the features they provide.

Namespaces provide a scope for names. Names of resources need to be unique within a namespace, but not across namespaces.

Namespaces are a way to divide cluster resources between multiple users (via resource quota)

In K8's Namespaces can be thought of as virtual clusters.

---

# SingleApp
Lets use Namespaces, and to do this we first create a namespace file for this stack that will provide a clear scope for our application. We then launch the namespace with:

`kubectl create -f namespace.yml`

Once complete we are now ready to deploy our simple ticker app. We then launch our collection of containers by starting off a Redis server, an API server, and a counter to poll the API.

`kubectl create -f ticker.yml`

We can check to see if this is correctly deployed by checking the logs on this namespace specific deployment.

`kubectl logs ticker -c counter -f --namespace=singleapp`

---

# ScaledApp
This is a N-Tier structured app

What we will create here will be the following:
- Data Tier (Redis App) - Pod & Service
- App Tier (Server App) - Pod & Service
- Support Tier (Poller & Counter) - Pod - 2 containers

To start the process off we will first create out namespace for use:

`kubectl create -f namespace.yml`

We will then start up our lower data tier by starting the data-pod first:

`kubectl create -f data-tier-pod.yml`

We can now start up the data service with the following:

`kubectl create -f data-tier-service.yml`

---

# Deployments, Scaling, and Rollouts
This is a N-Tier structured app
