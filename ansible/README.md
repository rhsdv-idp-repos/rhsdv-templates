# README

```shell
python -m venv venv
source venv/bin/activate
```

# disable the GitOps syncing
oc patch apps backstage-gitops -n openshift-gitops --type=json -p '[{"op": "remove", "path": "/spec/syncPolicy/automated"}]'
oc patch apps backstage -n openshift-gitops --type=json -p '[{"op": "remove", "path": "/spec/syncPolicy/automated"}]'

# parch the configmap

# scale the pod to 0/1
oc patch deployment backstage-developer-hub -n backstage --subresource='scale' --type='merge' -p '{"spec":{"replicas":1}}'

# delete the backstage pod
oc delete pod `oc get pods -n backstage | awk '{print $1}' | grep backstage-developer-hub` -n backstage


