Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.42])
 by mx.groups.io with SMTP id smtpd.web11.12219.1617716923801485159
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 06:48:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=VZaFOtVC;
 spf=pass (domain: windriver.com, ip: 40.107.243.42, mailfrom: trevor.gamblin@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BXlv+Xw7gynQxehWp9DJKmbYAjLdNGDyO9LHu9LRSjs7MrQ9GKespXzY3YyrIT1QEU0FAK58moNu19U7L5mJ4IOvTAkemMtCmXY/5v5ANyM4af2LCgWlf3bFzt6ILam+43ghESAnykJUaW/nk66jmL2nyN6lcw8MGtq9yVFhEOv8o+F+mBSDnmHt/dpw69255DrWbIgDCxWgqxNBfn3X0bon34BvN9qTfw6+ZA2/KIOob+XLm1QHBZyNAD99ly7ur6WixTw4Od7j3L3jV0Hmv1wToDdiphrBYpid0fYe2c7bAnQ1QHNaYxaf2mJSR607yRKG6/nUGDmZURXe7Now4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7naxy0VStAn40V5o0JmzcAhjkHuduYc9NyABlE4utQ0=;
 b=SAfQej10o/6laB/RFHlIHt91LM1AlVA9+KEKHNVI4EQ+n4seKkUzCoRuCZ2R2Fdd7IM0Ax0OM7u6JOa7OfbUPK5OzwNTP7Zk4Q2Ajc22VGI7D9e7wqX3Od29KXrCh260x3Iqvh3F5/xWzS9mzbjwOpqfLccTEZZZwR1e0mk+GYXB7hYpnN7CGdLOivOIy/T6v/ibIVG3AM+lY+3Z+6uNAob7KotyY3oaJT6vBYF6zo14AG39tR1GcDS998PqjiFJY1uu+lyXcoE8ODb/Gkg/FZvBEWNYijFoWsxQIDtB7sIJqe2LnPVyvrWrBqd5V0XVO1vO5Ms1piSVki4jsaxvBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7naxy0VStAn40V5o0JmzcAhjkHuduYc9NyABlE4utQ0=;
 b=VZaFOtVCrGecxYxncOnuay/gGHxoBSSHAVRZ12w3B+xZdsQjdNr9nzri4rKv0xnSt2x4SLr5tKRqcZWG231lh3dkxkZ+FROS3/01nLYP4VKO5+KzfEL2Mw3zkCSsBCQMz8f07QpnPxiDbpTRVKWcP+2TA+5mmsTHl3mb3Jkka0Y=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BYAPR11MB2838.namprd11.prod.outlook.com (2603:10b6:a02:cc::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27; Tue, 6 Apr
 2021 13:48:41 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::89c3:3b4d:43c5:ae76]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::89c3:3b4d:43c5:ae76%5]) with mapi id 15.20.3999.032; Tue, 6 Apr 2021
 13:48:41 +0000
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] README-Guide.md: Add multi-node content, extra config info
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
References: <167348C74B884A1A.5296@lists.yoctoproject.org>
Message-ID: <5c9f386d-94df-19c1-b212-c9b70230019a@windriver.com>
Date: Tue, 6 Apr 2021 09:48:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
In-Reply-To: <167348C74B884A1A.5296@lists.yoctoproject.org>
X-Originating-IP: [174.115.236.231]
X-ClientProxiedBy: BN9PR03CA0303.namprd03.prod.outlook.com
 (2603:10b6:408:112::8) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
Return-Path: trevor.gamblin@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.55] (174.115.236.231) by BN9PR03CA0303.namprd03.prod.outlook.com (2603:10b6:408:112::8) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.28 via Frontend Transport; Tue, 6 Apr 2021 13:48:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c2f8f5ab-9404-46af-0419-08d8f902afe3
X-MS-TrafficTypeDiagnostic: BYAPR11MB2838:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB283823EA83619C081D9B63C79F769@BYAPR11MB2838.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	85J/hPFoJdctvA98q5rLjX02TJWajCm5Y7EzEKPdUAwKs4GMae/dMZzWqVW65l/kjTxxf0R9JaBOEYRiZCRkFWJ7CsU+u30R3SD9vw7P2+LP0LAyM/oiUyDZsuokooOLOeCY5C9Kl86WV+u/P4Vnqv2o9tkyZalDpQVP8xKYkRMTEsw13Pxno5YuKkIvS/F9JPVD9hb781ep5MEBxtaYqHn6sDzBn1unWVp8Mlj4CMIFduiaLtI6dB3jZ4QWWoZB+7iX5NgWluk1wPaECRpFGNNOa1aNNCobkMvzDNcVyQrtALxjm6jt+zisIBVPKLKOAZAOXEKzSuvb7sYro4/k56828+c7epz3Av2vAjkVSuQ4PRhCYdFwFZOmDbd+W/Dj3Ygr9QGz/826EwpKgpeLI2o7hCd/PydOzga+lLzHA25OUfQ/AOPXBaHgaY6ef1aTga73pnJpWY6R/uVVpdJK6j/7JerMM20t4cNqHi3bjvNYiYrhw1Q4by1XZvvLd1lwpEVtU2a1QNc92MvdkPBiS31v7GKYEiy5m7ZPatqHk4+XwWGOiAUcpPlk4RdfE3DEr7Jd5pfDXmuWFDUahUmqEHzIYhNWj/BviDEyXADCytRKGyLHOJWUWtUJd1HVeR7K9hIF9e9RYyH26ySS66Ta9SNMwJvM8teqosFBEE19Jy7BuzBXURBzvmKF7ZKZESLaaS3Oc700EWkd+ZfIHrAfveUNJvKtrTQ3YGuMRGyAHdWW2RGdO8ia+mHNRYF6lDoVuMGsY/yOZ5/QfjgzCIsr8TQia0jP7abgyQ/pES/KctE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(136003)(366004)(396003)(346002)(376002)(36756003)(186003)(38100700001)(2616005)(86362001)(478600001)(2906002)(316002)(5660300002)(26005)(66476007)(8676002)(166002)(66556008)(966005)(44832011)(31696002)(8936002)(16576012)(66946007)(956004)(53546011)(16526019)(6486002)(33964004)(6916009)(83380400001)(30864003)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?aytTaDdIc3YwOGVuZzloOVdYd0FrR2l1RjFyVDd6OGdVZWx5QSs1UmNUZEFV?=
 =?utf-8?B?WUowRG9VdnNOKzczWDFyeU1wS2pSeEEzTEdrQU1nWS9TVnBrNzNMR25JNXRY?=
 =?utf-8?B?cUNKU0VKNlhLWXJyOEJlZFZPbzEzajl1eUlheGJtb2JjaC9WZkYwL0I2Rktw?=
 =?utf-8?B?WHdzOGVEMWNSMlVqcEJLd3BaN1FnY1M1UVdqZEN4ZWVSNkZJZVNPZG1NTERn?=
 =?utf-8?B?V2tWQnl4SkIxR0NpaGRyaWw4WlQyUDJjNWdJbUswMnQzbXpHcStLTlI4cFBu?=
 =?utf-8?B?ZEpPeGJTVFZlYTJsR2JlUEhuMElXdlZlaVN1R0xvN0R0SkxvYUFja3dqbU51?=
 =?utf-8?B?RmVzZ0YvRmp2bEM2MGtBVWFsZ0lYN3lpZDZESVROclM2dCs0S24xdGpYaFNW?=
 =?utf-8?B?L1VCb1BOdENaSi9hMWEyQjJhRmk1dTI1WXh1ZDhDQlREUk51aDFiUEdmcUlk?=
 =?utf-8?B?ck9qR3BHM3FidDdrc29HeVpCODVodDJpaHAra0R2c01ReHFmYU1mVEJpM0pW?=
 =?utf-8?B?U0ZzdnpRVUVjR3k4QlZFak5qNzI0UHhSd3VPQjJIWGhSTmNlUXNYZDcrZ2F3?=
 =?utf-8?B?MDExWnhldzkwS2VqS1lJTXFpbEhVL0MwSTcxc3o5cytSMXNQd2orQTRiWFJI?=
 =?utf-8?B?emRvdUtOWVZ5UWNjNnQ5UHJjZXpoaXEvcjJBRkplb3Q1U1EydjRIY3ByMGFN?=
 =?utf-8?B?RGt2VHhCQVdpbmhNM1ZJc2VMRHZUVkRtWk9MQ0JJM3lhYVBQOHBqUTRuWm4y?=
 =?utf-8?B?eG5QS3dXQXVsU25IUFVtbE5Fak1IdXlucE5yK3lPY200TkpWQld0UE9TSHlT?=
 =?utf-8?B?V1lJVWUvNzQydkQwK3dHWEdaRHh0NTNWbmxlQkRBbnFhYm1mR2o0VTIwM1Z2?=
 =?utf-8?B?Y0JUTGEwQkllWC9MMldGNGl6Y3FNbEVQc0o5bE9WNDZjeHg3bVQ4a2lsMUJN?=
 =?utf-8?B?cGRwTUVpTkp5WDBzdXVsNEtHNEFvUGw5YjJUaFZueEJzY3A2ZDg5VzhXTlZa?=
 =?utf-8?B?QktMRG9WbllUaUhXaG5tME1mNzQxSmh1eitnUW9Nd01hd0tBTFJPV1d0bWZK?=
 =?utf-8?B?NWtoMVc3K0N2dCtiZDRQVVlQYjhpZkxXZGl3QXFTZXRwWWo3Q1JYYnZVdGN0?=
 =?utf-8?B?RU13K1lxVWRiMy9CWDdhWEtFZjBQRFNJemZYMGFMYlVmVm1JUjBLQk91L251?=
 =?utf-8?B?WXh3a2QrV2MvOXZ6TE1jajZHeEJLalE2Q3dLblFPRlp0YUhNdjlVR1NVaThG?=
 =?utf-8?B?MXJzZWpIZmFRYTNEUGhpZnVzS0Via0NMeWFiTlk2WERQejdnTnpCMmIrRDNK?=
 =?utf-8?B?Vi9DSmRoRGY5UkJtWEtYd1ZrRm5jY3Zoa1VlbXRmL3RZTmt0NGx4MTdZbTF2?=
 =?utf-8?B?T1dzZFhVVzdXakhPemRLOWx5dkEwbzdYMzRrQ21yWXh3K1FoT25kaG5IdjdZ?=
 =?utf-8?B?ektUVlNJS3Zrd3AzOXVndFR1RnZBdkVmbmd0RTUza3F4N0ZtVHJKTnJVU1I4?=
 =?utf-8?B?NkJSWUpRcDRNREJrTlJzVTdXZnhWMkNGVk5lT2JKNDJramthRUFkWnpPdlNV?=
 =?utf-8?B?T2VBRnZKVWxVQlRRNElsanJ1TlphakNiTk1vVTRqeWE0QVUwSDNnT1lneVNM?=
 =?utf-8?B?aUpvTXB1c3pBKzZlaWVVZm9GaVBtUklRVkQzVEZ5UVBmZ01NVHpKZXZzZFNZ?=
 =?utf-8?B?akZwdkxpU3ZxOHlndm9PK3J3NjM1Skdwb2hBZndzRng4M3RRMWRqWlNoaUI2?=
 =?utf-8?Q?wzLe7ZqdmpzS+DWfUSWZEoha01OiueblD3daJ5i?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2f8f5ab-9404-46af-0419-08d8f902afe3
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2021 13:48:41.0365
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UQqQFeQx1AT+c3/DNB1aPfjTg59k3rkwuqRjhiJj8CNg2LEpD9gnIe6RcWcOOd6dvX/whHyWC+ocop+ngXCSwCRS+epR96yexQdRhdMARtk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2838
Content-Type: multipart/alternative;
 boundary="------------BCCC3C0A99176AE73E0730C9"
Content-Language: en-US

--------------BCCC3C0A99176AE73E0730C9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2021-04-06 9:44 a.m., Trevor Gamblin wrote:
> The instructions in README-Guide.md are a good starting point, but there
> are some additional guidelines in this patch for setting up worker nodes
> which may be useful to others who want to run their own Autobuilder
> instance. Specifically, it adds:
Sending a v2 - adding an extra line or two about starting the worker(s).
>
> - Section 1.3 on adding additional worker nodes to a cluster
> - Section 1.4 on setting up an NFS share for the controller and workers
>    to reference
> - A link to the Yocto Manual where the requirements to support running
>    builds on Ubuntu/Debian systems is listed
> - A note to make sure that any new users (pokybuild3) created for the
>    Autobuilder have LANG set in their bash profile
>
> Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
> ---
>   README-Guide.md | 86 ++++++++++++++++++++++++++++++++++++++++++++++++-
>   1 file changed, 85 insertions(+), 1 deletion(-)
>
> diff --git a/README-Guide.md b/README-Guide.md
> index 21dd7c1..d976fdd 100644
> --- a/README-Guide.md
> +++ b/README-Guide.md
> @@ -6,7 +6,8 @@ This guide will walk through how to install a stand-alone autobuilder controller
>   
>   The final outputs of this section are a controller and worker installed in the same server, ready for trimming back to an individual organization's needs.
>   
> - > NOTE: The guide assumes that your host OS has the packages installed to support BitBake for the release(s) you are targeting.  Please refer to the Yocto manual for those packages.
> + > NOTE: The guide assumes that your host OS has the packages installed to support BitBake for the release(s) you are targeting.  Please refer to the Yocto manual for those packages:
> + https://docs.yoctoproject.org/ref-manual/system-requirements.html#ubuntu-and-debian
>   
>   The latest version of BuildBot is written in Python 3, so installation via pip3:
>   
> @@ -43,6 +44,14 @@ yocto-controller/yoctoabb
>   yocto-worker
>   ```
>   
> +Before proceeding, make sure that the following is added to the
> +pokybuild3 user's exports (e.g. in .bashrc), or builds will fail after
> +being triggered:
> +
> +```
> +export LANG=en_US.UTF-8
> +```
> +
>   Next, we need to update the `yocto-controller/yoctoabb/master.cfg` towards the bottom where the `title`, `titleURL`, and `buildbotURL` are all set.  This is also where you would specify a different password for binding workers to the master.
>   
>   Then, we need to update the `yocto-controller/yoctoabb/config.py` to include our worker.  In that file, find the line where `workers` is set and add: ["example-worker"].  _NOTE:_ if your worker's name is different, use that here.  Section 3.1 discusses how to further refine this list of workers.
> @@ -112,6 +121,81 @@ sudo /home/pokybuild3/yocto-worker/qemuarm/build/scripts/runqemu-gen-tapdevs \
>   
>   In the above command, we assume the a build named qemuarm failed.  The value of 8 is the number of tap interfaces to create on the worker.
>   
> +### 1.3) Adding Dedicated Worker Nodes
> +
> +Running both the controller and the worker together on a single machine
> +can quickly result in long build times and an unresponsive web UI,
> +especially if you plan on running any of the more comprehensive builders
> +(e.g. a-full). Additional workers can be added to the cluster by
> +following the steps in Section 1, except that the yocto-controller steps
> +do not need to be repeated. For example, to add a new worker
> +"ala-blade51" to an Autobuilder cluster with a yocto-controller at the
> +IP address 147.11.105.72:
> +
> +1. On the yocto-controller host, add the name of the new worker to a worker
> +list (or create a new one) e.g. 'workers_wrlx = ["ala-blade51"]' and
> +make sure that it is added to the "workers" list.
> +
> +2. On the new worker node:
> +
> +```
> +useradd -m --system pokybuild3
> +cd /home/pokybuild3
> +mkdir -p git/trash
> +buildbot-worker create-worker -r --umask=0o22 yocto-worker 147.11.105.72 ala-blade51 pass
> +chown -R pokybuild3:pokybuild3 /home/pokybuild3
> +```
> +
> + > Note 1: The URL/IP given to the create-worker command must match the
> +host running the yocto-controller.
> +
> + > Note 2: The "pass" argument given to the create-worker command must
> +match the common "worker_pass" variable set in yocto-controller/yoctoabb/config.py.
> +
> +
> +### 1.4) Configuring NFS for the Autobuilder Cluster
> +
> +The Yocto Autobuilder relies on NFS to distribute a common sstate cache
> +and other outputs between nodes. A similar configuration can be
> +deployed by performing the steps given below, which were written for
> +Ubuntu 18.04.In order for both the controller and worker nodes to be able
> +to access the NFS share without issue, the "pokybuild3" user on all
> +systems must have the same UID/GID, or sufficient permissions must be
> +granted on the /srv/autobuilder path (or wherever you modified the config
> +files to point to). The following instructions assume a controller node
> +at 147.11.105.72 and a single worker node at 147.11.105.71, but
> +additional worker nodes can be added as needed (see the previous
> +section).
> +
> +1. On the NFS host:
> +
> +```
> +sudo apt install -y nfs-kernel-server
> +sudo mkdir -p /srv/autobuilder/autobuilder.yoctoproject.org/
> +sudo chown -R pokybuild3:pokybuild3 /srv/autobuilder/autobuilder.yoctoproject.org
> +```
> +2. Add the following to /etc/exports, replacing the path and IP fields
> +   as necessary for each client node:
> +```
> +/srv/autobuilder/autobuilder.yoctoproject.org/ 147.11.105.71(rw,sync,no_subtree_check)
> +```
> +
> +3. Run
> +```
> +sudo systemctl restart nfs-kernel-server
> +```
> +
> +4. Adjust the firewall (if required). Example:
> +```
> +sudo ufw allow from 147.11.105.71 to any port nfs
> +```
> +
> +5. On the client node(s):
> +```
> +sudo apt-get install nfs-common
> +sudo mount 147.11.105.72:/srv/autobuilder/autobuilder.yoctoproject.org/ /srv/autobuilder/autobuilder.yoctoproject.org/
> +```
> +
>   ## 2) Basics
>   
>   This section is an overview of operation and a few basic configuration file relationships.  See Section 3 for more detailed instructions.
>
> 
>

--------------BCCC3C0A99176AE73E0730C9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2021-04-06 9:44 a.m., Trevor Gamblin
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:167348C74B884A1A.5296@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">The instructions in README-Guide.md are a good starting point, but there
are some additional guidelines in this patch for setting up worker nodes
which may be useful to others who want to run their own Autobuilder
instance. Specifically, it adds:</pre>
    </blockquote>
    Sending a v2 - adding an extra line or two about starting the
    worker(s).<br>
    <blockquote type="cite" cite="mid:167348C74B884A1A.5296@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">

- Section 1.3 on adding additional worker nodes to a cluster
- Section 1.4 on setting up an NFS share for the controller and workers
  to reference
- A link to the Yocto Manual where the requirements to support running
  builds on Ubuntu/Debian systems is listed
- A note to make sure that any new users (pokybuild3) created for the
  Autobuilder have LANG set in their bash profile

Signed-off-by: Trevor Gamblin <a class="moz-txt-link-rfc2396E" href="mailto:trevor.gamblin@windriver.com">&lt;trevor.gamblin@windriver.com&gt;</a>
---
 README-Guide.md | 86 ++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 85 insertions(+), 1 deletion(-)

diff --git a/README-Guide.md b/README-Guide.md
index 21dd7c1..d976fdd 100644
--- a/README-Guide.md
+++ b/README-Guide.md
@@ -6,7 +6,8 @@ This guide will walk through how to install a stand-alone autobuilder controller
 
 The final outputs of this section are a controller and worker installed in the same server, ready for trimming back to an individual organization's needs.
 
- &gt; NOTE: The guide assumes that your host OS has the packages installed to support BitBake for the release(s) you are targeting.&nbsp; Please refer to the Yocto manual for those packages.
+ &gt; NOTE: The guide assumes that your host OS has the packages installed to support BitBake for the release(s) you are targeting.&nbsp; Please refer to the Yocto manual for those packages:
+ <a class="moz-txt-link-freetext" href="https://docs.yoctoproject.org/ref-manual/system-requirements.html#ubuntu-and-debian">https://docs.yoctoproject.org/ref-manual/system-requirements.html#ubuntu-and-debian</a>
 
 The latest version of BuildBot is written in Python 3, so installation via&nbsp;pip3:
 
@@ -43,6 +44,14 @@ yocto-controller/yoctoabb
 yocto-worker
 ```
 
+Before proceeding, make sure that the following is added to the
+pokybuild3 user's exports (e.g. in .bashrc), or builds will fail after
+being triggered:
+
+```
+export LANG=en_US.UTF-8
+```
+
 Next, we need to update the&nbsp;`yocto-controller/yoctoabb/master.cfg` towards the bottom where the&nbsp;`title`,&nbsp;`titleURL`, and&nbsp;`buildbotURL` are all set.  This is also where you would specify a different password for binding workers to the master.
 
 Then, we need to update the&nbsp;`yocto-controller/yoctoabb/config.py` to include our worker.&nbsp; In that file, find the line where&nbsp;`workers` is set and add:&nbsp;[&quot;example-worker&quot;].&nbsp;&nbsp;_NOTE:_ if your worker's name is different, use that here.&nbsp; Section 3.1 discusses how to further refine this list of workers.
@@ -112,6 +121,81 @@ sudo /home/pokybuild3/yocto-worker/qemuarm/build/scripts/runqemu-gen-tapdevs \
 
 In the above command, we assume the a build named&nbsp;qemuarm failed.&nbsp; The value of&nbsp;8&nbsp;is the number of tap interfaces to create on the worker.
 
+### 1.3) Adding Dedicated Worker Nodes
+
+Running both the controller and the worker together on a single machine
+can quickly result in long build times and an unresponsive web UI,
+especially if you plan on running any of the more comprehensive builders
+(e.g. a-full). Additional workers can be added to the cluster by
+following the steps in Section 1, except that the yocto-controller steps
+do not need to be repeated. For example, to add a new worker
+&quot;ala-blade51&quot; to an Autobuilder cluster with a yocto-controller at the
+IP address 147.11.105.72:
+
+1. On the yocto-controller host, add the name of the new worker to a worker
+list (or create a new one) e.g. 'workers_wrlx = [&quot;ala-blade51&quot;]' and
+make sure that it is added to the &quot;workers&quot; list.
+
+2. On the new worker node:
+
+```
+useradd -m --system pokybuild3
+cd /home/pokybuild3
+mkdir -p git/trash
+buildbot-worker create-worker -r --umask=0o22 yocto-worker 147.11.105.72 ala-blade51 pass
+chown -R pokybuild3:pokybuild3 /home/pokybuild3
+```
+
+ &gt; Note 1: The URL/IP given to the create-worker command must match the
+host running the yocto-controller.
+
+ &gt; Note 2: The &quot;pass&quot; argument given to the create-worker command must
+match the common &quot;worker_pass&quot; variable set in yocto-controller/yoctoabb/config.py.
+
+
+### 1.4) Configuring NFS for the Autobuilder Cluster
+
+The Yocto Autobuilder relies on NFS to distribute a common sstate cache
+and other outputs between nodes. A similar configuration can be
+deployed by performing the steps given below, which were written for
+Ubuntu 18.04.In order for both the controller and worker nodes to be able 
+to access the NFS share without issue, the &quot;pokybuild3&quot; user on all 
+systems must have the same UID/GID, or sufficient permissions must be 
+granted on the /srv/autobuilder path (or wherever you modified the config 
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
+sudo chown -R pokybuild3:pokybuild3 /srv/autobuilder/autobuilder.yoctoproject.org
+```
+2. Add the following to /etc/exports, replacing the path and IP fields
+   as necessary for each client node:
+```
+/srv/autobuilder/autobuilder.yoctoproject.org/ 147.11.105.71(rw,sync,no_subtree_check)
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
+sudo mount 147.11.105.72:/srv/autobuilder/autobuilder.yoctoproject.org/ /srv/autobuilder/autobuilder.yoctoproject.org/
+```
+
 ## 2) Basics
 
 This section is an overview of operation and a few basic configuration file relationships.  See Section 3 for more detailed instructions.
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------BCCC3C0A99176AE73E0730C9--
