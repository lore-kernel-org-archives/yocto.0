Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.60])
 by mx.groups.io with SMTP id smtpd.web08.12315.1617717306260878854
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 06:55:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=A77x/fIc;
 spf=pass (domain: windriver.com, ip: 40.107.223.60, mailfrom: trevor.gamblin@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=akQ5oyROiQ8yrgHiiBUvCg6k2skVZKLT74a73e99IfDeLD0+bHbMXFJbZEkulHUj+9n08R9CzeqisgDaw4/rJ35LN9ggwy8DoI3YSvZ2FSesnzOjpf/4hBCauesIC2cUOttlpUv2zFWospf85V0mwqdxB6EBLAgvcIncmDiiE6ebMSuGCN91j5Gvvdl1Lw43A5SuzugmVzBDZJXquo9Oum5BhS0Tb4wqL4eIVYjw3nVNldbh5ej9P11C1GtKhN+GmtLMd4YerVJvDhAoFMm4rC4fYhyLWtDgco27YnvnKEA5nrkxAIl/xMTsc5vUbWvRB2gSTkWD7wDi3KsysAGRjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3PuHinB6hyYwn/RLaZ2eg9k73Kt5XjNqXvStj5foGO0=;
 b=hbE5Thxt3PlxLhsso1/zbnz3EB2hv3OQb1e2loe+u4iRUnts32Jt9cdJFZ6INpa2XDZIdG8ESEg4pWcW7ecw/8K/UnrQ1yWEg1LV2hXobQemGlBxVpwxzyflGvhVLuKukOo/FPFueIV+8J3RaVfVQ3I0R2X6g30DLxXsoQbZNX5gL1QAG9UHYXIL49wSh8LsE5+y0XYgrDixVd82JiSixEZFR88KHlVbKn6S6N42u5xGWToON0dH7gavaptWicHyMS2SSZrhrg8Tr8vJ6Jo2EHWa/0qnD5ABTUus4g5LhvzTei7zoyTWkH7CXQVbiP8Om3WFNHHlm359dApeKu9ONA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3PuHinB6hyYwn/RLaZ2eg9k73Kt5XjNqXvStj5foGO0=;
 b=A77x/fIcUk+0FeGhFTcFQAaaM7ikrlbaXNeDybB2Fnn4Q+52cPMrKBGGhDSxcxdpJmNrRVBJxXK76rIKZPjqRVnwn0KADntx33mQT9TAIblpjURoBByHxRuhP/fj78XvG4mPGrfEuaecKe7kDiOSGnNJCFAUFWjIUEKoN6KK0jk=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB4976.namprd11.prod.outlook.com (2603:10b6:a03:2d7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.29; Tue, 6 Apr
 2021 13:55:03 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::89c3:3b4d:43c5:ae76]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::89c3:3b4d:43c5:ae76%5]) with mapi id 15.20.3999.032; Tue, 6 Apr 2021
 13:55:03 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH v2] README-Guide.md: Add multi-node content, extra config info
Date: Tue,  6 Apr 2021 09:54:55 -0400
Message-ID: <20210406135455.622809-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.30.2
X-Originating-IP: [128.224.252.2]
X-ClientProxiedBy: BY5PR16CA0027.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::40) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
Return-Path: trevor.gamblin@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yow-tgamblin-fedora2.wrs.com (128.224.252.2) by BY5PR16CA0027.namprd16.prod.outlook.com (2603:10b6:a03:1a0::40) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.16 via Frontend Transport; Tue, 6 Apr 2021 13:55:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 680edb7b-615a-4252-c094-08d8f90393a2
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4976:
X-Microsoft-Antispam-PRVS: 
	<SJ0PR11MB49761F6C8C74964EBD6026229F769@SJ0PR11MB4976.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+BxRAhTmj8of8g5ODXfKm1RRWk0YJUoPjNGYQv/dcPj7kJcXhGA0jb0Fh9lLWeqNSsYnK8SZl5REItSHl1qPJTGvD1u2Y2o51JD5V2uaf3PAtqvpOkthRr3D1+oQyA0aHXdikVOI+fotl0BlwC5Bk+xdMzfMsCY5b6oHHlC8vPcOOuAccELzkZGoCj+mibRU7sllMrvjvnT9X6Biu1Qdp1Y8doWGNb80riGcT4BysZRpasXsADvEmDj2AJ7TO9syiZTHkap3ZpJt1BZXqlWBh1sEbYXcnqfCbevFr82FJpoIdIBR2KW3P0QpnpN5hcBhobXMTWQHOMK8Jiiu8pjXR6491eCQUIiuR7x+FryoKC/Kie0f5yX0hc69aEY8nTBeGLGYv8NsZfx6RdfvU3UK6jGabhXCLcYUOnddNf0v5sPwU3zG4ecvaG6Nms0+LUuPT5/3TOys50VVrgBmf3s7r27pP3TntVIDva9TOBBQGJS0naSWPrIctBOuRC8hrqQz1K3MJc1VNKsOoKAy8xCCDeT06aaxY0v4hJJhf0zTBbSct3cG4R6tGTWZg1wT0OGPKlXkyWGjjQtQDAgr1TOga6sx33P2fDRfczXczYtdnHUjFpEMlhBPGm2r34wcXqjBid23cBVexEGneUtedNJceW1YVypnCEVwtaQaZmFVhyLJ5l58ve3WJlMEjiJK7sW9Zy2OMWpJslrqfXG55GOsH5pQ7xjoCJe95rGeYWSnD58nZlDpqmZ/JSbYGmEgwE/Hdi2+MeWa1hhr/OhgvMdVRw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(346002)(376002)(396003)(39850400004)(186003)(83380400001)(316002)(8936002)(38100700001)(966005)(26005)(38350700001)(52116002)(6916009)(66476007)(86362001)(6506007)(2616005)(16526019)(66946007)(6512007)(36756003)(956004)(6666004)(2906002)(478600001)(6486002)(1076003)(66556008)(44832011)(8676002)(5660300002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?ns2r4OLdlj7MEbsU2MpvozaV+G91aT/D0531ZtzLrqXFBWLl8c/G5/hVJfbF?=
 =?us-ascii?Q?gjPneyuy2vm0YyPMefn0uo7EtQORtBor6S9aqh+5q+qZiMALUfmrXghyGVEf?=
 =?us-ascii?Q?Z/LWAzlI4B3Ity83akacZpI8N/+ptOF1HXMOuto261fBgLMhBymS2TYQ13Pg?=
 =?us-ascii?Q?+zXbzlYT8olUVvwDp1a0XI1RtFQSPU2UqFQJnLkic7/OPmPZurjCHg8YQmnq?=
 =?us-ascii?Q?OdxYhYiyy5YMOgs2K25r30EofI5MNPKjidqOJ1zmnkMznW6r+DVp53w4okyo?=
 =?us-ascii?Q?f4XnmUO9ENMSdsBfCy1RRR6ImRZxCsBdKDismzlbE470sZYelupVwMuqfmQT?=
 =?us-ascii?Q?R16XQEl408Vp0uapRBc9Qvl6K4Om63ooRH33sTPeWNZhyHIK7A79l13Xm0KK?=
 =?us-ascii?Q?W+QT+3GT0ZxsY3H8rc/eY3dnrSQCKRym9tsHtvvNi/pQ7WTjmFau2db/gp8U?=
 =?us-ascii?Q?wsqcbBaHwseWeE54Dv/B8og2GUuP/bpVYG65gOTncAx/xQoBriJb5EQN497N?=
 =?us-ascii?Q?MrwZVMJy3rrMCj7kIjOVMJODO738TU1T4nrT2qpNp+aA/3ZSrn/h6pihlGof?=
 =?us-ascii?Q?Pd0vg40E9BAQ+VVNVxga0v50fT8kTRXzGrWi7LfuoEl4w08WBEVv7x9Eu9Ki?=
 =?us-ascii?Q?RT92l471rdWkwmpdTmkeEi5ozBkiHEjqsZ6dXK4O+6JhbjmQwv+5UZJASG9O?=
 =?us-ascii?Q?ZGh487TJL/rowvLgtQIqQ8Safr5I12f+KsNj6nAdWiYpWtOR4NToZcrCQh4o?=
 =?us-ascii?Q?0A0ohUm4xQgKywfQOsDcW1uRaOaR9N8aFTwzargiyD1TsOzYwBEfQF3QQVSx?=
 =?us-ascii?Q?Kf+XFEocXOV9ns0lW94EloQdacb6vEFedPehP8XnJ453yNkguHL+acQXGnQj?=
 =?us-ascii?Q?5Hfc/Kxe6yzEkZrsDrG59OhxKmT6RBlt0cXe+ocjXCZzILoFZbeW69vgzYGl?=
 =?us-ascii?Q?2QqlOoahzWQkxULlvyALpFm3ofkksXyoA2a+o4sGgNvCHjvt9AiB0Cwtuv0n?=
 =?us-ascii?Q?oWnn/TVgOrjH8zM64LzEvs+zkXaCHdlX4AU2N+qWI6kPBYwdL8RNZcRUtd5A?=
 =?us-ascii?Q?VtXu8/FlIeHm0NRQcicMOq3V+Vc82nt/XsZrUqPsV+425dr7qD1bnxyFJqWT?=
 =?us-ascii?Q?sRjZE2gphgzpMqZ5EJWkq7uUViLknaJvAjLNzs5dywIDFf7wH1K8DCxgzOH0?=
 =?us-ascii?Q?ywBe+BtZ6WkBxI/+1dC2DcCHpBPJXSdz5sGqXpiC8AZOTjTpr+I9wWVXB6EK?=
 =?us-ascii?Q?L82qdkrPN3654dNkvWClGsEMCTutAbSk2fpiSQkYW+nI6AKjJ7lZVWe7idZ9?=
 =?us-ascii?Q?CgWiSMrYJ+4L5daX9ZMe/cvP?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 680edb7b-615a-4252-c094-08d8f90393a2
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2021 13:55:03.2079
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iH+KnBnl9lbEBSX9cFbnIqCKggKXBKlQL8UrI5aUdRExujr9Lxe2ITCshzTFIh4TCDSX42ZUpl0WpIJjGb452Hj+bCnZg1ESGbOzY1KdXoc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4976
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
 README-Guide.md | 108 +++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 106 insertions(+), 2 deletions(-)

diff --git a/README-Guide.md b/README-Guide.md
index 21dd7c1..832996f 100644
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
@@ -61,7 +70,17 @@ Set=C2=A0`BASE_HOMEDIR` should be your build user's home=
 directory.=C2=A0 (There are she
=20
  > NOTE: The way the build step is written, the worker will pull a fresh c=
opy of the helper from the server.  Therefore=C2=A0these configuration file=
s must be committed to the=C2=A0`yocto-autobuilder-helper`=C2=A0repo locati=
on you have specified in=C2=A0`yoctoabb/config.py`=C2=A0because the worker =
is given a build step that pulls from that repo (see=C2=A0`yoctoabb/builder=
s.py`).
=20
-Finally, as root,=C2=A0add the=C2=A0`yocto-*.service` files to=C2=A0`/lib/=
systemd/system` (See Appendix A).=C2=A0 Run: `systemctl daemon-reload`.=C2=
=A0 You should now be able to successfully start these services (e.g., `sud=
o systemctl start yocto-*`).=C2=A0 The controller may take up to 15 seconds=
 to start.
+Finally, it is time to start the Autobuilder. There are two ways to do thi=
s:
+
+1. As the pokybuild3 user, run the following:
+
+```
+yocto-autobuilder-helper/janitor/ab-janitor&
+buildbot start yocto-controller
+buildbot-worker start yocto-worker
+```
+
+2. As root,=C2=A0add the=C2=A0`yocto-*.service` files to=C2=A0`/lib/system=
d/system` (See Appendix A).=C2=A0 Run: `systemctl daemon-reload`.=C2=A0 You=
 should now be able to successfully start these services (e.g., `sudo syste=
mctl start yocto-*`).=C2=A0 The controller may take up to 15 seconds to sta=
rt.
=20
 ### 1.1) Configuring the Worker's Hash Equivalency Server
=20
@@ -112,6 +131,91 @@ sudo /home/pokybuild3/yocto-worker/qemuarm/build/scrip=
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
+3. Once you have finished with configuration, you can run the following
+and the worker should successfully join the cluster and become available=20
+to use with the builders, where "yocto-worker/" is the directory created
+in step 2:
+
+```
+buildbot-worker start yocto-worker/
+```
+
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

