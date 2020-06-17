Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web10.2054.1592353803259597481
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jun 2020 17:30:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dunuM7AN;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id j32so236660qte.10
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jun 2020 17:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MWy6IYJQXh+er/RZ24uDkZTZD4sCzuYBvUwjIpUcq+E=;
        b=dunuM7ANP/s12l6LjzyFYZme4Fza4W3CxbgV+eCB7w55Ovf7C57bBT1p21fdPDhG+x
         EY+JJCVzqLypKWPjIEi2O+DO/e+I3kYbTsP6RQBVLuH3gudLZXo9QVcXkqjRkOOzB1Jt
         DfzsbUgSSDFL3QLsv8UdCNETf5as6lbkPDCuCcowa6p1e8qbzAYnjAk1mcnab17QkEpa
         XPEas02GKLSq9ZDNEh1KJ7YxaJ0AnDhCT6DXW1MkyEgDu/ooKsd+EXmNAWpzdBKKv1il
         Kpp5TFSUsmkvTwo2VAiHbIIWQ5jy4ryJhHni6kRrbuSTEiCu9LmNgQCi68cBpggkyOt1
         2R6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MWy6IYJQXh+er/RZ24uDkZTZD4sCzuYBvUwjIpUcq+E=;
        b=Na8yok0usDpwReWAe1+rIhC5x5tlb5qt/xIa9/1nh6HJN1vj8jE9JR0sh6nFEkc3Oz
         E42viW4GVoo5NpdWrUDRHTHmWB9E1yFpBrNZ7Avv9/hnxbelRY0jJLO2qSfoNDR0gB0V
         5eerpJ8Iki9QQcS2ADfLmsr2G5EuhF3o1aGG1GQG3iPOxEfUQd07QrteESWuoJ9CGoVa
         GL/QjO3gA7r+1lFo0pOUwJfvA4Pb0z+dUausIveg4xheXQg8y9EBpVUAGFWMTKtFNupE
         8Ih0L2elF5UnnQqmwZQ/q9f7irthhvLowTM4kS8kZBKgl4eq5UxIdTQUC9oxYU9iEcDp
         NOIg==
X-Gm-Message-State: AOAM530InSv+jzwxjXQwAEdx1RJaBJnMNlMHFtrnq28xXLIvp0MVGjz8
	WABclxh/6DwfXQPOPNzkNBQYiTG2x8z5oQ==
X-Google-Smtp-Source: ABdhPJxfq31S3NyPTiWk7cNAu7uvIASc0VOFWxdK3DFpz4lEmcP9AoCblmDFi57DOSPq6uFybY+ABQ==
X-Received: by 2002:aed:2926:: with SMTP id s35mr24332532qtd.21.1592353802032;
        Tue, 16 Jun 2020 17:30:02 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from gmail.com (CPE04d4c4975b80-CM64777d5e8820.cpe.net.cable.rogers.com. [174.112.240.214])
        by smtp.gmail.com with ESMTPSA id f43sm18021187qte.58.2020.06.16.17.30.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2020 17:30:01 -0700 (PDT)
Date: Tue, 16 Jun 2020 20:29:59 -0400
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: Zhixiong Chi <zhixiong.chi@windriver.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto][meta-virtualization][zeus][PATCH] kubernetes: CVE-2020-8555
Message-ID: <20200617002957.GA5020@gmail.com>
References: <20200615074308.129683-1-zhixiong.chi@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20200615074308.129683-1-zhixiong.chi@windriver.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Can you confirm that the k8s versions in master/dunfell don't have this
CVE ?

Bruce

In message: [yocto][meta-virtualization][zeus][PATCH] kubernetes: CVE-2020-8555
on 15/06/2020 Zhixiong Chi wrote:

> Backport the CVE patch from the upstream:
> https://github.com/kubernetes/kubernetes.git
> 
> Signed-off-by: Zhixiong Chi <zhixiong.chi@windriver.com>
> ---
>  .../kubernetes/kubernetes/CVE-2020-8555.patch | 324 ++++++++++++++++++
>  .../kubernetes/kubernetes_git.bb              |   1 +
>  2 files changed, 325 insertions(+)
>  create mode 100644 recipes-containers/kubernetes/kubernetes/CVE-2020-8555.patch
> 
> diff --git a/recipes-containers/kubernetes/kubernetes/CVE-2020-8555.patch b/recipes-containers/kubernetes/kubernetes/CVE-2020-8555.patch
> new file mode 100644
> index 0000000..c6f8e24
> --- /dev/null
> +++ b/recipes-containers/kubernetes/kubernetes/CVE-2020-8555.patch
> @@ -0,0 +1,324 @@
> +From 830811b331c47b9b03c60f9156cea02698fa9e20 Mon Sep 17 00:00:00 2001
> +From: Michelle Au <msau@google.com>
> +Date: Thu, 2 Apr 2020 13:47:56 -0700
> +Subject: [PATCH] Clean up event messages for errors.
> +
> +Change-Id: Ib70b50e676b917c4d976f32ee7a19f8fc63b6bc6
> +
> +CVE: CVE-2020-8555
> +Upstream-Status: Backport [https://github.com/kubernetes/kubernetes.git branch: release-1.16]
> +Signed-off-by: Zhixiong Chi <zhixiong.chi@windriver.com>
> +---
> + src/import/pkg/volume/glusterfs/glusterfs.go      | 30 +++++++----
> + src/import/pkg/volume/quobyte/quobyte.go          | 13 ++++-
> + src/import/pkg/volume/scaleio/sio_client.go       | 71 ++++++++++++++++++--------
> + src/import/pkg/volume/storageos/storageos_util.go | 12 +++--
> + 4 files changed, 91 insertions(+), 35 deletions(-)
> +
> +diff --git a/src/import/pkg/volume/glusterfs/glusterfs.go b/src/import/pkg/volume/glusterfs/glusterfs.go
> +index 52ff8cb1328..dd543c4625b 100644
> +--- a/src/import/pkg/volume/glusterfs/glusterfs.go
> ++++ b/src/import/pkg/volume/glusterfs/glusterfs.go
> +@@ -672,8 +672,9 @@ func (d *glusterfsVolumeDeleter) Delete() error {
> + 	err = cli.VolumeDelete(volumeID)
> + 	if err != nil {
> + 		if dstrings.TrimSpace(err.Error()) != errIDNotFound {
> +-			klog.Errorf("failed to delete volume %s: %v", volumeName, err)
> +-			return fmt.Errorf("failed to delete volume %s: %v", volumeName, err)
> ++			// don't log error details from client calls in events
> ++			klog.V(4).Infof("failed to delete volume %s: %v", volumeName, err)
> ++			return fmt.Errorf("failed to delete volume: see kube-controller-manager.log for details")
> + 		}
> + 		klog.V(2).Infof("volume %s not present in heketi, ignoring", volumeName)
> + 	}
> +@@ -818,7 +819,9 @@ func (p *glusterfsVolumeProvisioner) CreateVolume(gid int) (r *v1.GlusterfsPersi
> + 	volumeReq := &gapi.VolumeCreateRequest{Size: sz, Name: customVolumeName, Clusters: clusterIDs, Gid: gid64, Durability: p.volumeType, GlusterVolumeOptions: p.volumeOptions, Snapshot: snaps}
> + 	volume, err := cli.VolumeCreate(volumeReq)
> + 	if err != nil {
> +-		return nil, 0, "", fmt.Errorf("failed to create volume: %v", err)
> ++		// don't log error details from client calls in events
> ++		klog.V(4).Infof("failed to create volume: %v", err)
> ++		return nil, 0, "", fmt.Errorf("failed to create volume: see kube-controller-manager.log for details")
> + 	}
> + 	klog.V(1).Infof("volume with size %d and name %s created", volume.Size, volume.Name)
> + 	volID = volume.Id
> +@@ -839,7 +842,8 @@ func (p *glusterfsVolumeProvisioner) CreateVolume(gid int) (r *v1.GlusterfsPersi
> + 	if err != nil {
> + 		deleteErr := cli.VolumeDelete(volume.Id)
> + 		if deleteErr != nil {
> +-			klog.Errorf("failed to delete volume: %v, manual deletion of the volume required", deleteErr)
> ++			// don't log error details from client calls in events
> ++			klog.V(4).Infof("failed to delete volume: %v, manual deletion of the volume required", deleteErr)
> + 		}
> + 		klog.V(3).Infof("failed to update endpoint, deleting %s", endpoint)
> + 		err = kubeClient.CoreV1().Services(epNamespace).Delete(epServiceName, nil)
> +@@ -957,7 +961,9 @@ func parseSecret(namespace, secretName string, kubeClient clientset.Interface) (
> + func getClusterNodes(cli *gcli.Client, cluster string) (dynamicHostIps []string, err error) {
> + 	clusterinfo, err := cli.ClusterInfo(cluster)
> + 	if err != nil {
> +-		return nil, fmt.Errorf("failed to get cluster details: %v", err)
> ++		// don't log error details from client calls in events
> ++		klog.V(4).Infof("failed to get cluster details: %v", err)
> ++		return nil, fmt.Errorf("failed to get cluster details: see kube-controller-manager.log for details")
> + 	}
> + 
> + 	// For the dynamically provisioned volume, we gather the list of node IPs
> +@@ -966,7 +972,9 @@ func getClusterNodes(cli *gcli.Client, cluster string) (dynamicHostIps []string,
> + 	for _, node := range clusterinfo.Nodes {
> + 		nodeInfo, err := cli.NodeInfo(string(node))
> + 		if err != nil {
> +-			return nil, fmt.Errorf("failed to get host ipaddress: %v", err)
> ++			// don't log error details from client calls in events
> ++			klog.V(4).Infof("failed to get host ipaddress: %v", err)
> ++			return nil, fmt.Errorf("failed to get host ipaddress: see kube-controller-manager.log for details")
> + 		}
> + 		ipaddr := dstrings.Join(nodeInfo.NodeAddRequest.Hostnames.Storage, "")
> + 		dynamicHostIps = append(dynamicHostIps, ipaddr)
> +@@ -1210,8 +1218,9 @@ func (plugin *glusterfsPlugin) ExpandVolumeDevice(spec *volume.Spec, newSize res
> + 	//Check the existing volume size
> + 	currentVolumeInfo, err := cli.VolumeInfo(volumeID)
> + 	if err != nil {
> +-		klog.Errorf("error when fetching details of volume %s: %v", volumeName, err)
> +-		return oldSize, err
> ++		// don't log error details from client calls in events
> ++		klog.V(4).Infof("error when fetching details of volume %s: %v", volumeName, err)
> ++		return oldSize, fmt.Errorf("failed to get volume info %s: see kube-controller-manager.log for details", volumeName)
> + 	}
> + 	if int64(currentVolumeInfo.Size) >= requestGiB {
> + 		return newSize, nil
> +@@ -1223,8 +1232,9 @@ func (plugin *glusterfsPlugin) ExpandVolumeDevice(spec *volume.Spec, newSize res
> + 	// Expand the volume
> + 	volumeInfoRes, err := cli.VolumeExpand(volumeID, volumeExpandReq)
> + 	if err != nil {
> +-		klog.Errorf("failed to expand volume %s: %v", volumeName, err)
> +-		return oldSize, err
> ++		// don't log error details from client calls in events
> ++		klog.V(4).Infof("failed to expand volume %s: %v", volumeName, err)
> ++		return oldSize, fmt.Errorf("failed to expand volume: see kube-controller-manager.log for details")
> + 	}
> + 	klog.V(2).Infof("volume %s expanded to new size %d successfully", volumeName, volumeInfoRes.Size)
> + 	newVolumeSize := resource.MustParse(fmt.Sprintf("%dGi", volumeInfoRes.Size))
> +diff --git a/src/import/pkg/volume/quobyte/quobyte.go b/src/import/pkg/volume/quobyte/quobyte.go
> +index 3cfc7a800ec..f7e0e31e63b 100644
> +--- a/src/import/pkg/volume/quobyte/quobyte.go
> ++++ b/src/import/pkg/volume/quobyte/quobyte.go
> +@@ -17,6 +17,7 @@ limitations under the License.
> + package quobyte
> + 
> + import (
> ++	"errors"
> + 	"fmt"
> + 	"os"
> + 	"path/filepath"
> +@@ -416,7 +417,9 @@ func (provisioner *quobyteVolumeProvisioner) Provision(selectedNode *v1.Node, al
> + 
> + 	vol, sizeGB, err := manager.createVolume(provisioner, createQuota)
> + 	if err != nil {
> +-		return nil, err
> ++		// don't log error details from client calls in events
> ++		klog.V(4).Infof("CreateVolume failed: %v", err)
> ++		return nil, errors.New("CreateVolume failed: see kube-controller-manager.log for details")
> + 	}
> + 	pv := new(v1.PersistentVolume)
> + 	metav1.SetMetaDataAnnotation(&pv.ObjectMeta, util.VolumeDynamicallyCreatedByKey, "quobyte-dynamic-provisioner")
> +@@ -451,7 +454,13 @@ func (deleter *quobyteVolumeDeleter) Delete() error {
> + 	manager := &quobyteVolumeManager{
> + 		config: cfg,
> + 	}
> +-	return manager.deleteVolume(deleter)
> ++	err = manager.deleteVolume(deleter)
> ++	if err != nil {
> ++		// don't log error details from client calls in events
> ++		klog.V(4).Infof("DeleteVolume failed: %v", err)
> ++		return errors.New("DeleteVolume failed: see kube-controller-manager.log for details")
> ++	}
> ++	return nil
> + }
> + 
> + // Parse API configuration (url, username and password) out of class.Parameters.
> +diff --git a/src/import/pkg/volume/scaleio/sio_client.go b/src/import/pkg/volume/scaleio/sio_client.go
> +index bc9b9868f7b..2f8c652dd8b 100644
> +--- a/src/import/pkg/volume/scaleio/sio_client.go
> ++++ b/src/import/pkg/volume/scaleio/sio_client.go
> +@@ -126,8 +126,9 @@ func (c *sioClient) init() error {
> + 			Username: c.username,
> + 			Password: c.password},
> + 	); err != nil {
> +-		klog.Error(log("client authentication failed: %v", err))
> +-		return err
> ++		// don't log error details from client calls in events
> ++		klog.V(4).Infof(log("client authentication failed: %v", err))
> ++		return errors.New("client authentication failed")
> + 	}
> + 
> + 	// retrieve system
> +@@ -214,8 +215,9 @@ func (c *sioClient) CreateVolume(name string, sizeGB int64) (*siotypes.Volume, e
> + 	}
> + 	createResponse, err := c.client.CreateVolume(params, c.storagePool.Name)
> + 	if err != nil {
> +-		klog.Error(log("failed to create volume %s: %v", name, err))
> +-		return nil, err
> ++		// don't log error details from client calls in events
> ++		klog.V(4).Infof(log("failed to create volume %s: %v", name, err))
> ++		return nil, errors.New("failed to create volume: see kubernetes logs for details")
> + 	}
> + 	return c.Volume(sioVolumeID(createResponse.ID))
> + }
> +@@ -243,8 +245,9 @@ func (c *sioClient) AttachVolume(id sioVolumeID, multipleMappings bool) error {
> + 	volClient.Volume = &siotypes.Volume{ID: string(id)}
> + 
> + 	if err := volClient.MapVolumeSdc(params); err != nil {
> +-		klog.Error(log("failed to attach volume id %s: %v", id, err))
> +-		return err
> ++		// don't log error details from client calls in events
> ++		klog.V(4).Infof(log("failed to attach volume id %s: %v", id, err))
> ++		return errors.New("failed to attach volume: see kubernetes logs for details")
> + 	}
> + 
> + 	klog.V(4).Info(log("volume %s attached successfully", id))
> +@@ -269,7 +272,9 @@ func (c *sioClient) DetachVolume(id sioVolumeID) error {
> + 	volClient := sio.NewVolume(c.client)
> + 	volClient.Volume = &siotypes.Volume{ID: string(id)}
> + 	if err := volClient.UnmapVolumeSdc(params); err != nil {
> +-		return err
> ++		// don't log error details from client calls in events
> ++		klog.V(4).Infof(log("failed to detach volume id %s: %v", id, err))
> ++		return errors.New("failed to detach volume: see kubernetes logs for details")
> + 	}
> + 	return nil
> + }
> +@@ -287,7 +292,9 @@ func (c *sioClient) DeleteVolume(id sioVolumeID) error {
> + 	volClient := sio.NewVolume(c.client)
> + 	volClient.Volume = vol
> + 	if err := volClient.RemoveVolume("ONLY_ME"); err != nil {
> +-		return err
> ++		// don't log error details from client calls in events
> ++		klog.V(4).Infof(log("failed to remove volume id %s: %v", id, err))
> ++		return errors.New("failed to remove volume: see kubernetes logs for details")
> + 	}
> + 	return nil
> + }
> +@@ -306,8 +313,9 @@ func (c *sioClient) IID() (string, error) {
> + 		}
> + 		sdc, err := c.sysClient.FindSdc("SdcGUID", guid)
> + 		if err != nil {
> +-			klog.Error(log("failed to retrieve sdc info %s", err))
> +-			return "", err
> ++			// don't log error details from client calls in events
> ++			klog.V(4).Infof(log("failed to retrieve sdc info %s", err))
> ++			return "", errors.New("failed to retrieve sdc info: see kubernetes logs for details")
> + 		}
> + 		c.instanceID = sdc.Sdc.ID
> + 		klog.V(4).Info(log("retrieved instanceID %s", c.instanceID))
> +@@ -472,12 +480,15 @@ func (c *sioClient) WaitForDetachedDevice(token string) error {
> + // ***********************************************************************
> + func (c *sioClient) findSystem(sysname string) (sys *siotypes.System, err error) {
> + 	if c.sysClient, err = c.client.FindSystem("", sysname, ""); err != nil {
> +-		return nil, err
> ++		// don't log error details from clients in events
> ++		klog.V(4).Infof(log("failed to find system %q: %v", sysname, err))
> ++		return nil, errors.New("failed to find system: see kubernetes logs for details")
> + 	}
> + 	systems, err := c.client.GetInstance("")
> + 	if err != nil {
> +-		klog.Error(log("failed to retrieve instances: %v", err))
> +-		return nil, err
> ++		// don't log error details from clients in events
> ++		klog.V(4).Infof(log("failed to retrieve instances: %v", err))
> ++		return nil, errors.New("failed to retrieve instances: see kubernetes logs for details")
> + 	}
> + 	for _, sys = range systems {
> + 		if sys.Name == sysname {
> +@@ -493,8 +504,9 @@ func (c *sioClient) findProtectionDomain(pdname string) (*siotypes.ProtectionDom
> + 	if c.sysClient != nil {
> + 		protectionDomain, err := c.sysClient.FindProtectionDomain("", pdname, "")
> + 		if err != nil {
> +-			klog.Error(log("failed to retrieve protection domains: %v", err))
> +-			return nil, err
> ++			// don't log error details from clients in events
> ++			klog.V(4).Infof(log("failed to retrieve protection domains: %v", err))
> ++			return nil, errors.New("failed to retrieve protection domains: see kubernetes logs for details")
> + 		}
> + 		c.pdClient.ProtectionDomain = protectionDomain
> + 		return protectionDomain, nil
> +@@ -508,8 +520,9 @@ func (c *sioClient) findStoragePool(spname string) (*siotypes.StoragePool, error
> + 	if c.pdClient != nil {
> + 		sp, err := c.pdClient.FindStoragePool("", spname, "")
> + 		if err != nil {
> +-			klog.Error(log("failed to retrieve storage pool: %v", err))
> +-			return nil, err
> ++			// don't log error details from clients in events
> ++			klog.V(4).Infof(log("failed to retrieve storage pool: %v", err))
> ++			return nil, errors.New("failed to retrieve storage pool: see kubernetes logs for details")
> + 		}
> + 		c.spClient.StoragePool = sp
> + 		return sp, nil
> +@@ -519,14 +532,32 @@ func (c *sioClient) findStoragePool(spname string) (*siotypes.StoragePool, error
> + }
> + 
> + func (c *sioClient) getVolumes() ([]*siotypes.Volume, error) {
> +-	return c.client.GetVolume("", "", "", "", true)
> ++	volumes, err := c.client.GetVolume("", "", "", "", true)
> ++	if err != nil {
> ++		// don't log error details from clients in events
> ++		klog.V(4).Infof(log("failed to get volumes: %v", err))
> ++		return nil, errors.New("failed to get volumes: see kubernetes logs for details")
> ++	}
> ++	return volumes, nil
> + }
> + func (c *sioClient) getVolumesByID(id sioVolumeID) ([]*siotypes.Volume, error) {
> +-	return c.client.GetVolume("", string(id), "", "", true)
> ++	volumes, err := c.client.GetVolume("", string(id), "", "", true)
> ++	if err != nil {
> ++		// don't log error details from clients in events
> ++		klog.V(4).Infof(log("failed to get volumes by id: %v", err))
> ++		return nil, errors.New("failed to get volumes by id: see kubernetes logs for details")
> ++	}
> ++	return volumes, nil
> + }
> + 
> + func (c *sioClient) getVolumesByName(name string) ([]*siotypes.Volume, error) {
> +-	return c.client.GetVolume("", "", "", name, true)
> ++	volumes, err := c.client.GetVolume("", "", "", name, true)
> ++	if err != nil {
> ++		// don't log error details from clients in events
> ++		klog.V(4).Infof(log("failed to get volumes by name: %v", err))
> ++		return nil, errors.New("failed to get volumes by name: see kubernetes logs for details")
> ++	}
> ++	return volumes, nil
> + }
> + 
> + func (c *sioClient) getSdcPath() string {
> +diff --git a/src/import/pkg/volume/storageos/storageos_util.go b/src/import/pkg/volume/storageos/storageos_util.go
> +index c7f430ea5d4..d62cae66788 100644
> +--- a/src/import/pkg/volume/storageos/storageos_util.go
> ++++ b/src/import/pkg/volume/storageos/storageos_util.go
> +@@ -128,8 +128,9 @@ func (u *storageosUtil) CreateVolume(p *storageosProvisioner) (*storageosVolume,
> + 
> + 	vol, err := u.api.VolumeCreate(opts)
> + 	if err != nil {
> +-		klog.Errorf("volume create failed for volume %q (%v)", opts.Name, err)
> +-		return nil, err
> ++		// don't log error details from client calls in events
> ++		klog.V(4).Infof("volume create failed for volume %q (%v)", opts.Name, err)
> ++		return nil, errors.New("volume create failed: see kube-controller-manager.log for details")
> + 	}
> + 	return &storageosVolume{
> + 		ID:          vol.ID,
> +@@ -294,7 +295,12 @@ func (u *storageosUtil) DeleteVolume(d *storageosDeleter) error {
> + 		Namespace: d.volNamespace,
> + 		Force:     true,
> + 	}
> +-	return u.api.VolumeDelete(opts)
> ++	if err := u.api.VolumeDelete(opts); err != nil {
> ++		// don't log error details from client calls in events
> ++		klog.V(4).Infof("volume deleted failed for volume %q in namespace %q: %v", d.volName, d.volNamespace, err)
> ++		return errors.New("volume delete failed: see kube-controller-manager.log for details")
> ++	}
> ++	return nil
> + }
> + 
> + // Get the node's device path from the API, falling back to the default if not
> +-- 
> +2.17.0
> +
> diff --git a/recipes-containers/kubernetes/kubernetes_git.bb b/recipes-containers/kubernetes/kubernetes_git.bb
> index c378ccc..e96b7d6 100644
> --- a/recipes-containers/kubernetes/kubernetes_git.bb
> +++ b/recipes-containers/kubernetes/kubernetes_git.bb
> @@ -14,6 +14,7 @@ SRC_URI = "git://github.com/kubernetes/kubernetes.git;branch=release-1.16;name=k
>             file://0001-fix-compiling-failure-execvp-bin-bash-Argument-list-.patch \
>             file://CVE-2020-8551.patch \
>             file://CVE-2020-8552.patch \
> +           file://CVE-2020-8555.patch \
>            "
>  
>  DEPENDS += "rsync-native \
> -- 
> 2.17.1
> 
