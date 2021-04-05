Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.53])
 by mx.groups.io with SMTP id smtpd.web08.38.1617639795299712345
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Apr 2021 09:23:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=k/ka66Tx;
 spf=pass (domain: windriver.com, ip: 40.107.220.53, mailfrom: trevor.gamblin@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ORwBAmjNL5E8NoWIyPyud0i7QCB7OhKX1aUNwsFaxM8vJeEJwXsQ+PiPddXk1XFviG1J2HOSY3eBS3LmrhroWbS1kRDDtp1cvvV1xBr4SaSBRTQs6Mxcqj6+7yfRzA2uqniPHIg9xRt+px0P1kzYfFgYBrwt+2yMVRqTnPbwVYnau48ZB00eqIcFew/g/zLXdJIrPpbwI9I6DugNv0uSfawoklgEaKw3vjmC4u4is+P9HN1Dca4zkrrQuSuPiqYeBp/eFeEfOCftaG/IsbiAbw9FgC+EqDWTjBtpcWnIvBC/brKMdRJj0S9df3EuMOs58Gy5ATufTHpDva+eV31pOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PKIcgux+GlM3Ohc2/fDwm3tdT6rGBEXPWRR/6PqRB0E=;
 b=DjsICMNGm0P0PH1O+N0oigAFTknFtET/N48KIhpgcQ16UrTv70ziIoLeSgcCNWZ/h6G7pAKstRvGK7GXkGnoc9KTF1BNo84HCxeTSH/LPcwcnM11yhPHnlGST+eJApt3+NmD0/6VNMZ+URGgukFEG5E0NJOdbn8lNRg5vuqj19flT+trQwfVN7Q5TKEdWh5DUUtSpIKAw601YPd+nP7v/opZBiByimnWbY9/kef0AiDGs//Bxj+k3bLqhT4VOM3u/qmNPyQA4ise/S30eCtc5b44+sQSA/hvBJNMWF+LFJwMzP29eCTB4GiQ/CVdpTU7YyakhdYnaJXbFbLbyR+Ozg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PKIcgux+GlM3Ohc2/fDwm3tdT6rGBEXPWRR/6PqRB0E=;
 b=k/ka66TxNAHUCOPFb/qzLCRuOD2eSbpF9uEesNwZghfXhbb4GtJ379o2yf33SiFDwcm+a4o1inyZ6FgDZzYh+HiTNvVG5iv0pZ1X0VWhDgoc3oUM6P85AVE43f6fyEyPV8cXVAZueJgn7RA98lW2i1vpqRTtD1sURMto7lv6Kq8=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BYAPR11MB3111.namprd11.prod.outlook.com (2603:10b6:a03:90::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.32; Mon, 5 Apr
 2021 16:23:13 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::89c3:3b4d:43c5:ae76]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::89c3:3b4d:43c5:ae76%5]) with mapi id 15.20.3999.032; Mon, 5 Apr 2021
 16:23:13 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][RFC][PATCH] README-Guide.md: Add multi-node content, extra config info
Date: Mon,  5 Apr 2021 12:23:05 -0400
Message-ID: <20210405162305.1419881-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.30.2
X-Originating-IP: [128.224.252.2]
X-ClientProxiedBy: BY5PR16CA0005.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::18) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
Return-Path: trevor.gamblin@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yow-tgamblin-fedora2.wrs.com (128.224.252.2) by BY5PR16CA0005.namprd16.prod.outlook.com (2603:10b6:a03:1a0::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.28 via Frontend Transport; Mon, 5 Apr 2021 16:23:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 67a54917-8982-4cc8-6644-08d8f84f1be7
X-MS-TrafficTypeDiagnostic: BYAPR11MB3111:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB3111F3E37AEDE487C698E63C9F779@BYAPR11MB3111.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pyTJ7i43TBp05VuniL5qM/+BR3Mqx3l++3zcy+IHR1xymBzsVFNgIeipoZJsGehayf1gm8qbcgDxdddFkme2WXOlr+M7Xru7cijiU2X/FRMAaES0Tr/ziGLwrC7HWx5SdRTmDuVKwfJ1j+rrITmhE66sFhOgMfc7L910NJ8sW2J9IeWAxW6MNaQqEtOqV7FPfhzJZ0WA/gShhtEc62H/m8TtuZyeq7GzGGY4PYROHewoyJlHhexIsIU3ZKfa1tSyCUY0CkuI0fyX3eVCPdf53KI8X5agTM2eGJVTjD2OxqViC+RNRc6WWmCpPvlOvaVsNX5SAqfP7eEuokYEj2trPQdEWLSVXY/ACqwHhLUGocqaGTwDOQhLiB8pbm9SxpQcFT/LnGjP41sn6GLSU3KrSgBrcntzIl135yrpLFb4mlIjLryopbGbPWOrlKHqKklHeTyX3bZJkXAQodQ9TMwPcKOTxdZSTPurvrW7mzmGqHh+Oi4eSgjSltki5IxDRa2si7xio+gy30en+APSbnDEw20O1bm7HTOpwVIiS1FzsE5IT8aTF2w3RXb2tejOCbpcBiXWi12gJC28G6p09rGnNnFNrtWoJEprQgSkD3BulVO0XncATyiPV32hmYiLXc1LlXW0U5vFNnK3BzME5lpnbg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(376002)(396003)(346002)(136003)(366004)(956004)(16526019)(186003)(26005)(38100700001)(2906002)(2616005)(6512007)(6916009)(83380400001)(66476007)(5660300002)(1076003)(66556008)(6666004)(44832011)(8936002)(8676002)(6506007)(52116002)(6486002)(36756003)(478600001)(66946007)(316002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?PDjxTD4ZAyd5q/tpvrdPg6IwDCyEsy+mZJnA+jNLRLgTgSw8sSyM64S5mwfX?=
 =?us-ascii?Q?pfS/i3mDEtkWRTQy6rsE9J291Yu9RnBCuG0orJsJw5vUDGAnx64ox2E0imZn?=
 =?us-ascii?Q?EFXg0N804QBXlwQoEYutvShZTA5xbYEN1ciMoHuVst8YZPCei37IFB4Cs3zq?=
 =?us-ascii?Q?IBEp1Fd4/9D12pObYOcO9eRPk0iG/LFWo24epKV0YYMmZvegKXzsp9UtQRuJ?=
 =?us-ascii?Q?dk4aVMAYZdvVkKDKoI+ngxPCRaEiaWXjt4mWnJdR9/OZHiIfZ2xAv55HwfNI?=
 =?us-ascii?Q?c+H4rXeEk9pTwz1V2XveNfHFvPRn4UfAcljtYwjRPUP82MUh95Wsd6+4sbgQ?=
 =?us-ascii?Q?0r4JABv4I1yx3d5XEcpFdR8yiyr6A1ZvrSGQ4IXgP8dXoSqBdDdM/YyUHOsC?=
 =?us-ascii?Q?xZEBJwShAJyoY2okqULwWwZ2kt9Vi7QQ5S7XBOUhytzT4yUVW/Fs2EDFgskR?=
 =?us-ascii?Q?/v2jv1i/DR7o01cq/klP30MkI1wahQmFLDHMFsamsAsjWySnMeXsGr6KCRho?=
 =?us-ascii?Q?ILtlqoXUb7X8GEu7boGHCoeVfUJ07zgoX1zEp28EvqPHj/q24rgLsbA/x1v/?=
 =?us-ascii?Q?18hNY+WN7HAbDLzUO4pCty90XnRe87zxgwB+AaN4e/ngxZ9xAz+EKQwMnXu2?=
 =?us-ascii?Q?UbCMEZX58Uz1EyPVGXvOji45G4v7gAyyz+pb096Is3M7VurnN0bZbJLNuDu6?=
 =?us-ascii?Q?jpnQcChq80Y8KzBID7tMpqQLT5YztyA9pfs1hvXRhOwCb1kePHz2ck2Altob?=
 =?us-ascii?Q?8zYrWb+ap/ZDTGZdp36uMMkE4phsbEFvWyKXsqk4gcgA6cHyvPWEYK12VrK2?=
 =?us-ascii?Q?92AfNs9Go5tt+TWOooOAPBXYwk4PJiZdpRVbrElmLyyGRQohbEFipWMmcz7p?=
 =?us-ascii?Q?OTXVOYZnyrE4KigMYjnsw3YvmNEUv1BWm8q6crE1ewsXBmRCiplvcVjeLLkW?=
 =?us-ascii?Q?/jTmGTFeKjlTsf1QC9kkmsQlhtVH6msFHtdjpjE9dLzyD14D2qsf/ys9NHGV?=
 =?us-ascii?Q?m4xmOOymipSDTHSqNdQA56TUB5YYL/KqBr5CAYjzA/iHYalJiEareiQiIAzM?=
 =?us-ascii?Q?biaAAJQrBsKx812SZNtRy0GuZjlVm9MH7Klj9+IiuwA9FdHBe4F0W83rA7pB?=
 =?us-ascii?Q?nYK8AYgPra0eI4RWC1EgeI9D1Y4QKJ+aNsxwmFPhtHRJdTAQyX9YhtAtCwfj?=
 =?us-ascii?Q?akVi4wO8lrwld4zWRwy6x5K0t+ZoweQnvwB6MeiYEL0+LoV+eYAQLS0bGS6C?=
 =?us-ascii?Q?9+SL+otMg2DZxKe2PFAe96c/F5o1UZ6Bos9KrXAxc3RBMmYaGLlYkfEiVLwH?=
 =?us-ascii?Q?nsO5NiLTbmScakLsJY6u9xpQ?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67a54917-8982-4cc8-6644-08d8f84f1be7
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2021 16:23:12.9878
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ruO3Td53t7hsskrzD9QcP9kI697jCYKGPOM6yjsU+yv15Gr6XuYG+jSL8GLt8vZ6ST7GSnDf7hZo/o55nd97MC8hkENCyrb9k5m2EfDsYeU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3111
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
---
 README-Guide.md | 94 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/README-Guide.md b/README-Guide.md
index 21dd7c1..8558c48 100644
--- a/README-Guide.md
+++ b/README-Guide.md
@@ -43,6 +43,16 @@ yocto-controller/yoctoabb
 yocto-worker
 ```
=20
+Before proceeding, make sure that the following is added to the
+pokybuild3 user's exports (e.g. in .bashrc), or builds will fail after
+being triggered:
+
+```
+export LC_ALL=3Den_US.UTF-8
+export LANG=3Den_US.UTF-8
+export LANGUAGE=3Den_US.UTF-8
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
@@ -112,6 +122,90 @@ sudo /home/pokybuild3/yocto-worker/qemuarm/build/scrip=
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
+following the steps given above, except that the yocto-controller steps
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
+sudo apt-get install gawk wget git-core diffstat unzip texinfo \
+gcc-multilib build-essential chrpath socat cpio python python3 \
+python3-pip python3-pexpect xz-utils debianutils iputils-ping \
+libsdl1.2-dev xterm
+
+sudo pip3 install buildbot buildbot-www buildbot-waterfall-view \
+buildbot-console-view buildbot-grid-view buildbot-worker
+
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
+sudo mkdir -p /srv/autobuilder/autobuilder.yoctoproject.org/pub/sstate
+sudo chown -R pokybuild3:pokybuild3 /srv
+```
+2. Add the following to /etc/exports, replacing the path and IP fields
+   as necessary for each client node:
+```
+/srv/autobuilder/autobuilder.yoctoproject.org/pub/sstate 147.11.105.71(rw,=
sync,no_subtree_check)
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
+sudo mkdir -p /srv/autobuilder/autobuilder.yoctoproject.org/pub/sstate
+sudo chown -R pokybuild3:pokybuild3 /srv/autobuilder/
+sudo mount 147.11.105.72:/srv/autobuilder/autobuilder.yoctoproject.org/pub=
/sstate /srv/autobuilder/autobuilder.yoctoproject.org/pub/sstate
+```
+
 ## 2) Basics
=20
 This section is an overview of operation and a few basic configuration fil=
e relationships.  See Section 3 for more detailed instructions.
--=20
2.30.2

