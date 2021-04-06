Received: from NAM02-BL2-obe.outbound.protection.outlook.com (NAM02-BL2-obe.outbound.protection.outlook.com [40.107.75.58])
 by mx.groups.io with SMTP id smtpd.web10.12090.1617716711386590914
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 06:45:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=qQWsr1/y;
 spf=pass (domain: windriver.com, ip: 40.107.75.58, mailfrom: trevor.gamblin@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fyE3xl4BKVzLJa+HZPEtIeFifXX7aGeWwlcDoESSv+0AnXWT1Y3WdXm7HZRx4HRyjfIBKw3D9AhT1kTwyhM1mzNVbCnISqqchz/5dBmQz75Qv6bNAkhH3bYN7P2Ftcg+icFipwGJ8axalVs7DvLjYkfHiODJiBPR/zknVOmBLGoBuZT4v2z0NWOTvjTCBjQmgczTDLZu6SEC4rBFx9VUtcnT2SFwQj9aPCaYrd52LNhYFyHNOBAmc47uP0GHQG4jxXnUWg+j0QySxf64t60eTQMJT+BM7HJJ9BS1e6Fc9xW2qAqh4gMu2+imGSkHmsxk/0hM2sD8duIULh2QM+LLkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RPfJWeDMVxdPdbIJBgWjapq19P5XIu+TuNPvIQQFIBg=;
 b=mKGh6gfwOUIFTWicGNkVymwQFfmkWcMjy9cjISasrY6aBiJMVHrsfnTGIIcY25uhSpbQo/Gqpso7r/Jy8IpBEoFOS4R0iEJjGUk88ZZWYR2p2EdTskS3Yz5R6xymo8GjFvZcahi+c0qA8rfFVKRM4pkXA5T64tqePJMoGKiX5C3HEUOns6Wg1ms4ZbZWsuCBcr0zIqrFsMeMb8s+8iIdUyNuUhfY3LSQkZBLFl2PeoAzIMFDkV5kFvLRFRMAwAiAAirmoAWs35+qNUm28VpjRYwGFUHv1l7m5zWg0KHYsHpSRENg9B7EM6bWX342aqd9KG1DIhXE0KcAFSvymDg2Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RPfJWeDMVxdPdbIJBgWjapq19P5XIu+TuNPvIQQFIBg=;
 b=qQWsr1/y3QFi0NJ+H21BYXQaCew/53eaAiFsgcYljd2DI9waML3tobbCpVMq1vj4X8eR/ydKXDIqUrgASNNm8KRtN9/mTLw5dmiXVP1V3svrj81JHDL16lO061z9ml0fOMwTnufPeFwRlc4/X3D/7nKpIvJCqQGzS6Vz9Rg8DSA=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB3976.namprd11.prod.outlook.com (2603:10b6:a03:187::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.29; Tue, 6 Apr
 2021 13:45:07 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::89c3:3b4d:43c5:ae76]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::89c3:3b4d:43c5:ae76%5]) with mapi id 15.20.3999.032; Tue, 6 Apr 2021
 13:45:07 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH] README-Guide.md: Add multi-node content, extra config info
Date: Tue,  6 Apr 2021 09:44:58 -0400
Message-ID: <20210406134458.617997-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.30.2
X-Originating-IP: [128.224.252.2]
X-ClientProxiedBy: BY5PR20CA0014.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::27) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
Return-Path: trevor.gamblin@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yow-tgamblin-fedora2.wrs.com (128.224.252.2) by BY5PR20CA0014.namprd20.prod.outlook.com (2603:10b6:a03:1f4::27) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27 via Frontend Transport; Tue, 6 Apr 2021 13:45:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d28b2769-9688-4779-3149-08d8f9023012
X-MS-TrafficTypeDiagnostic: BY5PR11MB3976:
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB3976389D6D4208EC317A54EB9F769@BY5PR11MB3976.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zTlbZMKFe1dqdWv+Sn+zdVkg0dhTUGzgm/WMRNdIUEXR8tkJBBosAYQXc+8ywFm82ATRTNTjRRt0uAMCXelHCJlwrOBzE1Y68u0AFDa742Z8IiKESwcMELt01lwX5/nXsg5nOG0zTwUV0kI3ZU4zGVm8uzvTVZmROlesFZ9FD3UOdWDTJlGTI4WW5DrUAgcN+DYsFVhLa1kjBfkzg/dYhsJk4YQMkKj7ttyiN6r/A9e3DEVhh0e9VCKcD4rRjbRApt0xKjh03O1OURJFdOVwSU5buJkILEJD9UgSdQe1kiSWreLTOWiZgis7hxfbmTbTGYoHEH3W1jOIJasZejU62w+2bVlyQS4frfWqD8FM+FjSXlbMR1ca0pK31UhLkPL02wIBYyrbxGnNQmEgAFR5KZNXpLW5QmvTHRytOU5YXx3IUc6DZElWctPd6zmA154sVrmYbKvrFDnmqutmThOc4h9GaH6PPauq3MQ6i+GQMSVBf2vzTDuNXrNTD+BtZpkGhY8nDzo0hR3bIILOARgtJnIkxMNE+m2n9yztaW+xC5RlNIULS0a+B6tMKlNecHI4K2gQDTPmf99HtWjpU+BUN/mqQIIc9Eog1S1HFY5od7KAUNmRYRTiAdqVO+w5gj0Nj0j2EF4RCp+IQ9jPQSsRgq27Iu2JXOLXVAKWaBuITNZUhBAr7EyVUIxGSeJVo7vMEWcrKbt9wj2doG6RnpF0NAn3YGGdAiu5QYWZLLPs2MCWZZh5omat13N8jNRIbfQnsH2+PLyzsOC8dGtxMA/x3g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(376002)(136003)(39850400004)(396003)(66946007)(26005)(66476007)(38100700001)(8936002)(6506007)(52116002)(6916009)(16526019)(6512007)(86362001)(316002)(966005)(956004)(6666004)(36756003)(2906002)(478600001)(6486002)(44832011)(5660300002)(66556008)(8676002)(1076003)(38350700001)(2616005)(83380400001)(186003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?B5sQRdnD/qxD11Nh1Cng2EGQino5Lc/58kTptGbaZYTZIjkIGjf+2k06wqc6?=
 =?us-ascii?Q?JXlRe7JRltGOFmqPMtaChGrYxnervUjxjNig/3gbQMIO5lBobLEa72H63pwH?=
 =?us-ascii?Q?/9popFYh2KtQoiXjkNWTfcAkolfgKktD3pe+Uvre0RkkothnqRD7/OQYeTtc?=
 =?us-ascii?Q?3wyC3zUT5YziCzllM1+/8IlKXzwQ9gkwO2akympDhFNfJh2EEqbJdAiubyG8?=
 =?us-ascii?Q?TaQDASC0j2hJVcZC+Hh/XNGhDNQidDjFFOesof3HyYqvSRlvTqygZjHT2KY4?=
 =?us-ascii?Q?+kAmN4MGGIByjF6NKJ9/wYbQHXPy1JZVm/3PwW/gb2C2kdPPq5P4aDImylzx?=
 =?us-ascii?Q?Uox7jZGTl8u9fYrqJPRbKYV+wvkG2oBMelj96/9ZxkhRazJm8aHyYWzgz1rJ?=
 =?us-ascii?Q?BHfYUgtmfIs8leFVYtzuPSuqdxMb5/1KQ1YvMDWy8k1TXm0OV7xy9CADPjs8?=
 =?us-ascii?Q?y9qw38XFdxh6CJyYnRCFSjcvhFXS6QD4vW9eMLsrl1n5KvesDQP8u6EH6Pny?=
 =?us-ascii?Q?P8+6znd5z+SUOckl7jO+/YK5U6iwQhyyfe5fCNksKsL3V7x2zOok4Wd9n/bs?=
 =?us-ascii?Q?rAJVVOjw7iKoT1Bzx1ZfXg1PFnZAkZK/5x+TP9MfRTnrajyXgWRPm93imljU?=
 =?us-ascii?Q?B3B0eOQjAXFYgaHOeNfUK8af3GSuAWMA/0YU/mCz/Jnckr9HR9TBSpzyozVA?=
 =?us-ascii?Q?e/PxWnplTi0AvR8pZnk5P+OyaWb/IQwzOPaYXGTNI+j6aq31nnH8cj2s0POd?=
 =?us-ascii?Q?mj6yz9EUAe47ayzYltUsnj/F+paPKKFNhGBquLNqKtBHqHrQm8BKCtWTc1+z?=
 =?us-ascii?Q?OCXN0PAsmNuFMloJuEEQBwVSCkXFpMVx+5toWLei7hRZJo+3jie91XxUXuSa?=
 =?us-ascii?Q?MY+eChGD2ZVQcfoBq/x2rVmrluTUMYnNose9EbTQYSFr72Qzd7+wTwRxo9Da?=
 =?us-ascii?Q?IJt5Ll7YD286RMidaSqQypslV/F7eqTe0oNktlnnXQiEnSOAAzbcNK9Hur9q?=
 =?us-ascii?Q?ttslpp3WlksGTE/4m5oVZSQ4O5kZIlmJz6JsV4Rei1mCs1SRYV0wUMtPc88D?=
 =?us-ascii?Q?t2V+Lk3q1qLwpq/icTJOk/CVkY3511iTnjP6Y0GmK/KEVC12V5AfA+bEmHOp?=
 =?us-ascii?Q?OotRgcF9OlU6QqceaAp1u7wxdtjhTijda4OfoLkVuavWV+dgsBbDnfm++phH?=
 =?us-ascii?Q?42fFuOCJG6TbXQlrBSc2igBzB+Jl4aAptwcZnWDDP5Fh+KCHatriHjXLS6GV?=
 =?us-ascii?Q?QRTvNBHrB1mRKJZW6ucDLpahOKbtlEicwrq4mbSH/WYoNd0Tz2EPeVPNyN/F?=
 =?us-ascii?Q?KswB7dr88mqutC0kJK+a928J?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d28b2769-9688-4779-3149-08d8f9023012
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2021 13:45:07.1240
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aByccHr2noa+28+p30IjBCAZI2JAr8GOo0aVEaW/AMDs8ga25dE8u7RQu2THz3/qmJ2OGoEdDw28RkCYx0MoeMiDD1cu4jafTLTXc/QMOLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3976
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The instructions in README-Guide.md are a good starting point, but there
are some additional guidelines in this patch for setting up worker nodes
which may be useful to others who want to run their own Autobuilder
instance. Specifically, it adds:

- Section 1.3 on adding additional worker nodes to a cluster
- Section 1.4 on setting up an NFS share for the controller and workers
  to reference
- A link to the Yocto Manual where the requirements to support running
  builds on Ubuntu/Debian systems is listed
- A note to make sure that any new users (pokybuild3) created for the
  Autobuilder have LANG set in their bash profile

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
---
 README-Guide.md | 86 ++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 85 insertions(+), 1 deletion(-)

diff --git a/README-Guide.md b/README-Guide.md
index 21dd7c1..d976fdd 100644
--- a/README-Guide.md
+++ b/README-Guide.md
@@ -6,7 +6,8 @@ This guide will walk through how to install a stand-alone a=
utobuilder controller
=20
 The final outputs of this section are a controller and worker installed in=
 the same server, ready for trimming back to an individual organization's n=
eeds.
=20
- > NOTE: The guide assumes that your host OS has the packages installed to=
 support BitBake for the release(s) you are targeting.=C2=A0 Please refer t=
o the Yocto manual for those packages.
+ > NOTE: The guide assumes that your host OS has the packages installed to=
 support BitBake for the release(s) you are targeting.=C2=A0 Please refer t=
o the Yocto manual for those packages:
+ https://docs.yoctoproject.org/ref-manual/system-requirements.html#ubuntu-=
and-debian
=20
 The latest version of BuildBot is written in Python 3, so installation via=
=C2=A0pip3:
=20
@@ -43,6 +44,14 @@ yocto-controller/yoctoabb
 yocto-worker
 ```
=20
+Before proceeding, make sure that the following is added to the
+pokybuild3 user's exports (e.g. in .bashrc), or builds will fail after
+being triggered:
+
+```
+export LANG=3Den_US.UTF-8
+```
+
 Next, we need to update the=C2=A0`yocto-controller/yoctoabb/master.cfg` to=
wards the bottom where the=C2=A0`title`,=C2=A0`titleURL`, and=C2=A0`buildbo=
tURL` are all set.  This is also where you would specify a different passwo=
rd for binding workers to the master.
=20
 Then, we need to update the=C2=A0`yocto-controller/yoctoabb/config.py` to =
include our worker.=C2=A0 In that file, find the line where=C2=A0`workers` =
is set and add:=C2=A0["example-worker"].=C2=A0=C2=A0_NOTE:_ if your worker'=
s name is different, use that here.=C2=A0 Section 3.1 discusses how to furt=
her refine this list of workers.
@@ -112,6 +121,81 @@ sudo /home/pokybuild3/yocto-worker/qemuarm/build/scrip=
ts/runqemu-gen-tapdevs \
=20
 In the above command, we assume the a build named=C2=A0qemuarm failed.=C2=
=A0 The value of=C2=A08=C2=A0is the number of tap interfaces to create on t=
he worker.
=20
+### 1.3) Adding Dedicated Worker Nodes
+
+Running both the controller and the worker together on a single machine
+can quickly result in long build times and an unresponsive web UI,
+especially if you plan on running any of the more comprehensive builders
+(e.g. a-full). Additional workers can be added to the cluster by
+following the steps in Section 1, except that the yocto-controller steps
+do not need to be repeated. For example, to add a new worker
+"ala-blade51" to an Autobuilder cluster with a yocto-controller at the
+IP address 147.11.105.72:
+
+1. On the yocto-controller host, add the name of the new worker to a worke=
r
+list (or create a new one) e.g. 'workers_wrlx =3D ["ala-blade51"]' and
+make sure that it is added to the "workers" list.
+
+2. On the new worker node:
+
+```
+useradd -m --system pokybuild3
+cd /home/pokybuild3
+mkdir -p git/trash
+buildbot-worker create-worker -r --umask=3D0o22 yocto-worker 147.11.105.72=
 ala-blade51 pass
+chown -R pokybuild3:pokybuild3 /home/pokybuild3
+```
+
+ > Note 1: The URL/IP given to the create-worker command must match the
+host running the yocto-controller.
+
+ > Note 2: The "pass" argument given to the create-worker command must
+match the common "worker_pass" variable set in yocto-controller/yoctoabb/c=
onfig.py.
+
+
+### 1.4) Configuring NFS for the Autobuilder Cluster
+
+The Yocto Autobuilder relies on NFS to distribute a common sstate cache
+and other outputs between nodes. A similar configuration can be
+deployed by performing the steps given below, which were written for
+Ubuntu 18.04.In order for both the controller and worker nodes to be able=
=20
+to access the NFS share without issue, the "pokybuild3" user on all=20
+systems must have the same UID/GID, or sufficient permissions must be=20
+granted on the /srv/autobuilder path (or wherever you modified the config=
=20
+files to point to). The following instructions assume a controller node
+at 147.11.105.72 and a single worker node at 147.11.105.71, but
+additional worker nodes can be added as needed (see the previous
+section).
+
+1. On the NFS host:
+
+```
+sudo apt install -y nfs-kernel-server
+sudo mkdir -p /srv/autobuilder/autobuilder.yoctoproject.org/
+sudo chown -R pokybuild3:pokybuild3 /srv/autobuilder/autobuilder.yoctoproj=
ect.org
+```
+2. Add the following to /etc/exports, replacing the path and IP fields
+   as necessary for each client node:
+```
+/srv/autobuilder/autobuilder.yoctoproject.org/ 147.11.105.71(rw,sync,no_su=
btree_check)
+```
+
+3. Run
+```
+sudo systemctl restart nfs-kernel-server
+```
+
+4. Adjust the firewall (if required). Example:
+```
+sudo ufw allow from 147.11.105.71 to any port nfs
+```
+
+5. On the client node(s):
+```
+sudo apt-get install nfs-common
+sudo mount 147.11.105.72:/srv/autobuilder/autobuilder.yoctoproject.org/ /s=
rv/autobuilder/autobuilder.yoctoproject.org/
+```
+
 ## 2) Basics
=20
 This section is an overview of operation and a few basic configuration fil=
e relationships.  See Section 3 for more detailed instructions.
--=20
2.30.2

