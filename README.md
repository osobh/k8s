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
We first create a namespace for this stack that will provide a clear separation of concerns.

This is an that simple app that starts off a Redis server, an API server, and a counter to poll the API.

---

# ScaledApp
This is a N-Tier structured app
