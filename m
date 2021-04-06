Received: from NAM10-DM6-obe.outbound.protection.outlook.com (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.42])
 by mx.groups.io with SMTP id smtpd.web08.11819.1617715306381982377
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 06:21:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=NV5Bh/eH;
 spf=pass (domain: windriver.com, ip: 40.107.93.42, mailfrom: trevor.gamblin@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=myY8Awa7nvuTQwqWTSEEHf70N9I9bf+qbVj1fUVRyBbjeK7t58wMYmAyKDYWSsWETiOrAY8AKMYRiBQK+phxL1ARdZX/n5SJXvN0jtLHw/Ke0aVhpBjIJt3FYDlCxWZItqR7aXlGeet5gtWlfqC8EfUuyhPIjESoDPsF82cKiwBRnDFpa9vnyVy2Ya69Je3+oKqYWLde+VSaBwJo012cjq0HLSc8U0Ri8kVRXWPNbjzW5oGbGNdtABHyyjjQjMY2J4vSalMko8dEr6nIXwMPEUxI5cYFOjXFG9vA1iX64dIIWR/Lf8MZIpTjPc8aU58iku3gLNd1wJTLaP9eJoyTtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CdKu4v/BVdP2kTnapnqwgodQdWFM5pP+HdLq2ppRVcM=;
 b=Rx3e1SUuqNzRWcDHhBfiSSJjQwnooC/a1/3M4Q+MXzmtAfJIV1ZqFhaSgykbLiDglx7i9xiuss+xyfLUYmCRvFPLn8zbzMPqUEQThYe7hFaM0UVpuyxy1t7krJjvD05k3Td0UvQ/wkEq/5eYzFjdM5fpQ6yBu01fY9Es5/ydmAPr/uVkUM7lEBdF5u3gHlInJCedVOXoNG37v2q3h1EO2U3w9eM07+kNVGrZyHc7hh3jeIgbryFZ9MXNLdsGpD8kAAdmBMZf341bqQGisDDo/33uPFnqZTsyUS0tkEyD+N5mpdKD8731bGmYRtwa5UsxjCmfjaBX6KL8LvOgv83RIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CdKu4v/BVdP2kTnapnqwgodQdWFM5pP+HdLq2ppRVcM=;
 b=NV5Bh/eH/P/bGnFeTwZ0EL7bd6HUJ5SPme7BuInS7r2OJ1OofM7kN3tpqRGT7K2OOYlxkUtRP/sHX7HARKYmhZPusO9rzhExEkKQ+ivwHTBA2+tUtLd/15Xu3kzo61vgQdVx9PE8L2QcgIu5CDxHETtj+w5ao1YZUnJeWA7L4t4=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB4152.namprd11.prod.outlook.com (2603:10b6:a03:191::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.28; Tue, 6 Apr
 2021 13:21:43 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::89c3:3b4d:43c5:ae76]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::89c3:3b4d:43c5:ae76%5]) with mapi id 15.20.3999.032; Tue, 6 Apr 2021
 13:21:42 +0000
Subject: Re: [yocto] [yocto-autobuilder2][RFC][PATCH] README-Guide.md: Add multi-node content, extra config info
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <20210405162305.1419881-1-trevor.gamblin@windriver.com>
 <CADfgfoYc1_xe5MHrMuHe0KZ+z3k=5XUNbKwBNR375XJbC1pzaQ@mail.gmail.com>
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Message-ID: <c7f00caa-5863-844e-b88b-b387369e814d@windriver.com>
Date: Tue, 6 Apr 2021 09:21:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
In-Reply-To: <CADfgfoYc1_xe5MHrMuHe0KZ+z3k=5XUNbKwBNR375XJbC1pzaQ@mail.gmail.com>
X-Originating-IP: [174.115.236.231]
X-ClientProxiedBy: BN9PR03CA0587.namprd03.prod.outlook.com
 (2603:10b6:408:10d::22) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
Return-Path: trevor.gamblin@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.55] (174.115.236.231) by BN9PR03CA0587.namprd03.prod.outlook.com (2603:10b6:408:10d::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.28 via Frontend Transport; Tue, 6 Apr 2021 13:21:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 37e469f1-57a3-4b64-b29d-08d8f8feeb36
X-MS-TrafficTypeDiagnostic: BY5PR11MB4152:
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB4152EB226F7E1BD5538888C79F769@BY5PR11MB4152.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QDc+eYUDfN033jgiMCJVi667aDE42Pwj6FyN3tB/Acplmfo/dkpUngQU+H1zup+BrvRlVtsnc0yC22gsuS6jaCmK9OJS28B3IKxhNxahiGMF/EgFv7HSWT7N/Ko87063vuDz+W6aaMHrs1oOtqXal9SFhJOIPjKJwqWbfVbJfbztZpf522Jl6XXBas0vo1hNpUnTcivJbqvXC+CuHikct05XygeLpsZffCNZrYrlzueQ5BeA47KqiUaL2ZQbEJIjNmhok6XpXHoBtubtbbxWVos6ddcDBK1PVD+DVvTsmEVATmWYI9ENQS01dAvRnbrs9VKZAGYASoNCPBoq0u9+t9DUKfaoHMla+Df5YKGllQs5xlGztx1nePi6POAJIlR4aRHWwXMlzVgbi9sAhWORHlSCai6VRGOmYYkGvKIze9fnvUZP12RWbu+n4E38jJn2+AnX/3qpzhYV08axT6o9TCf9iVQwYp0OjaHgNbk7BWMX6Vhh2PGW0jgzZ4bUHZriEfQCOwQWvCLsdmsxhdVOtAvhiev/N8PLwg0CUdDekU1VFl36mkENUxVwE+ovsj74sIXnH1oGVZWzDo98b9V7JQ7kiJP2TFYLuL/DYsuVkzhFECpkRcltgPvXa4gT+miJK76w6+AtoDwtnTo459nRbB00uhyFThGR/YCsOcQYdSvLEQtZj6IPVqcx+UbzN6tdmHBA0bX2M0HqjvJ8Aei3KB0oDUwHBECdf146LxN43e5ZsWjVrJzsXzdsXbHYER6rlTyjL5PnAQ5zfDRrNyrjgaRUI36cJV1EUNTbTstdL/eBd+MM0s1QMJ7WoE0Q6eNR
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(6019001)(4636009)(396003)(376002)(346002)(366004)(39850400004)(136003)(269900001)(33964004)(5660300002)(6666004)(31686004)(30864003)(478600001)(53546011)(316002)(16576012)(966005)(66476007)(86362001)(66556008)(66946007)(16526019)(19273905006)(6916009)(8936002)(2906002)(36756003)(44832011)(956004)(2616005)(4326008)(8676002)(6486002)(166002)(83380400001)(186003)(31696002)(26005)(38100700001)(43740500002)(45980500001)(563064011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?Rk8zTjRzODNqSDBkUkQ2UzZ0RnQrckh6THNXaVBkN1ZxK0l6QWJodndkOUx5?=
 =?utf-8?B?bG13cVZIM3ZTK1JPam13SktlS01YRWJ6WU9Hb2N6Mm5RaTUwUGh2dllQamd1?=
 =?utf-8?B?bzVKN2VSVkJiY1BZN1pONk0wd3ZvTVBkZkswcmcvTk53MmIxcDRyZFpGc3JB?=
 =?utf-8?B?b3pRZ0R6Y0VpY1RoQmVyOVVyOTF6WU93ZU9hbE5vcmhLRDlIbytEMnFpdTh0?=
 =?utf-8?B?bWlXLzJjY0l4ektjaHJDb3ovRWJ5QnZwWEllVXh1RFFjbnlVekMxb1diMkx4?=
 =?utf-8?B?NG9mQ2VQY1YvQmJPMTBaUUFvS2dLVlJQbTliL2N0QWRYamhMRk92dDIyaXdQ?=
 =?utf-8?B?YTBPS2NuU284Ty9zRVlpRmRxT0lOaWhDQjZhbWtwS2FUVmFpcGM5V0xSSmt6?=
 =?utf-8?B?ZjFXSkdPZ2lSMyt5dktnenRxdGo2MTcyakxHM2xHZno4aDRPRkxwRkljZWha?=
 =?utf-8?B?Y2ZWS3M0dE5wck9qT1dNOXZ4TDdsQ29XMmlKbm5DVzYzeXQ0TzIyOFVuY2Qv?=
 =?utf-8?B?ZktkSTFqWi9MWmthSU5TK05PS053Q3lleWtxNWwwU244Rk9tQzJxUXBuZmcr?=
 =?utf-8?B?NHU1cSttcUxVaVlQR083WXhuaGR4blhqQ29YUHZ5QkRndC9QN04vY3A2dEQy?=
 =?utf-8?B?QnR1ZDVCSE9Fb2UyQjJpMzlOWmlMUG8xUVBmTU5YK3Z6eFNmM0p4cFgzMmNK?=
 =?utf-8?B?M0RZNTV2UllSUGJKckdxUGlSRzNxaWo2M29Fb00vWExCYlhGSjlKMVdiUUl6?=
 =?utf-8?B?alkyaU9tZ1BIWnE5ZGp3dUtXSDlNK1VOVHdCdWdKV0J6c0JVT0RCZTQvc3lG?=
 =?utf-8?B?bmRWV2hJaFBvUld5dCtyRldMcm1tVzR3bkIvOUdKcjJ4alluWkhmZWJzZUxl?=
 =?utf-8?B?ME0wbC9YWEtpbmZUTHBaSFN4WDArQTBCMzZkWGNOUFI1MUJOeEdHTkNRYU9n?=
 =?utf-8?B?Y0hhSkxwVS8vellXRmw0Ty9WbXhVZFJKUEl1Ri9CaFNrYWNaRXRMNXlCMUZy?=
 =?utf-8?B?YUpnc2RaL2grOHJYWlpYL3JNdEhtb2t2bEN6SGFJNUF5L2d2Vm1Gd2wzOHd2?=
 =?utf-8?B?M1J4RWFQZ3dmZ3FFSXozeENEVHdJVVp5aXlxSWdCbFhoWFdMUDVEaGFKVkkw?=
 =?utf-8?B?cTJPTm5RRWhlSFlTUnovMEc1TVZhMG96QjJzOWpBc2l0emxoY2JVdXNjSksy?=
 =?utf-8?B?WE42UHBucXFIeHM0K0ZISUx2eC95Z3VtKzNjS0JyQkhHQXUwTEJoV1AwcXdB?=
 =?utf-8?B?U3NuTFJ2d29IT2Z2Q2JvMm0zTjlhbUFiMjNNQ2dVRDRKR084dzcwY1BIZVFL?=
 =?utf-8?B?RWorZnUvaFZxcCttM3BTdGdDbGI0QWtHNWk2U2psOVNZbUM0WGJXQXhmeTNn?=
 =?utf-8?B?cHRiRmw5c2M4dVc4RHl5UC9DeUlPNVorSENhdWRnR3VrZGhoUkFxZlNnbEli?=
 =?utf-8?B?UVp5VE9LVk9qSHlnRmtld2NtWUNuYmlxb25iWkcranJvZkozNjQ5YzhRR0hD?=
 =?utf-8?B?bFowRi9QT1hWNmhacjBNa0pYT1lBMTQvUDJTSXhJUGNhYTZ3UkJMZFI5UnJ5?=
 =?utf-8?B?SCtENWVpdW14WGp0b1NOMk56LzdidUQ1QjgyMUZvRnF4UkZ1Z3FDUVBZQUFk?=
 =?utf-8?B?TXRmdDlxRks3eHAxS21DN09aaTlvdlVFWXZVUUROMGVKNEl6WWtUdml2ejdu?=
 =?utf-8?B?M1hURlBSdHpxeVB5Z2VXcVpobUFYN3VLOW1EaUhjRnJXNHdONjY1QytMZFhB?=
 =?utf-8?Q?INb7PocWnOBk/uFkNthL7XHnwOsLXZ24eikYoJW?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37e469f1-57a3-4b64-b29d-08d8f8feeb36
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2021 13:21:42.7005
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: du4J1uHnud6eIbg7EcF+y1vKRtPmxfd84cGTqN1nIpZz7CwCJv1oP5j77/hKiqDvvwGSPIHc89sLr9Om8G9wxeduME1Ix+I9B/vZ1EScP24=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4152
Content-Type: multipart/alternative;
 boundary="------------2277E3D4DE9809D1766DDAE1"
Content-Language: en-US

--------------2277E3D4DE9809D1766DDAE1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2021-04-05 2:55 p.m., Michael Halstead wrote:
>
> **[Please note: This e-mail is from an EXTERNAL e-mail address]
>
>
>
> On Mon, Apr 5, 2021 at 9:23 AM Trevor Gamblin 
> <trevor.gamblin@windriver.com <mailto:trevor.gamblin@windriver.com>> 
> wrote:
>
>     Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com
>     <mailto:trevor.gamblin@windriver.com>>
>     ---
>      README-Guide.md | 94
>     +++++++++++++++++++++++++++++++++++++++++++++++++
>      1 file changed, 94 insertions(+)
>
>     diff --git a/README-Guide.md b/README-Guide.md
>     index 21dd7c1..8558c48 100644
>     --- a/README-Guide.md
>     +++ b/README-Guide.md
>     @@ -43,6 +43,16 @@ yocto-controller/yoctoabb
>      yocto-worker
>      ```
>
>     +Before proceeding, make sure that the following is added to the
>     +pokybuild3 user's exports (e.g. in .bashrc), or builds will fail
>     after
>     +being triggered:
>     +
>     +```
>     +export LC_ALL=en_US.UTF-8
>     +export LANG=en_US.UTF-8
>     +export LANGUAGE=en_US.UTF-8
>     +```
>
>
>
> On the AB at typhoon.yocto.io <http://typhoon.yocto.io> only 
> LANG=en_US.UTF-8 is set. I don't know why LC_ALL or LANGUAGE need to 
> be set on your cluster for builds to succeed.
You're right, I don't need the others. Fixing this for the next revision.
>
>     +
>      Next, we need to update
>     the `yocto-controller/yoctoabb/master.cfg` towards the bottom
>     where the `title`, `titleURL`, and `buildbotURL` are all set. 
>     This is also where you would specify a different password for
>     binding workers to the master.
>
>      Then, we need to update the `yocto-controller/yoctoabb/config.py`
>     to include our worker.  In that file, find the line
>     where `workers` is set and add: ["example-worker"].  _NOTE:_ if
>     your worker's name is different, use that here.  Section 3.1
>     discusses how to further refine this list of workers.
>     @@ -112,6 +122,90 @@ sudo
>     /home/pokybuild3/yocto-worker/qemuarm/build/scripts/runqemu-gen-tapdevs
>     \
>
>      In the above command, we assume the a build named qemuarm
>     failed.  The value of 8 is the number of tap interfaces to create
>     on the worker.
>
>     +### 1.3) Adding Dedicated Worker Nodes
>     +
>     +Running both the controller and the worker together on a single
>     machine
>     +can quickly result in long build times and an unresponsive web UI,
>     +especially if you plan on running any of the more comprehensive
>     builders
>     +(e.g. a-full). Additional workers can be added to the cluster by
>     +following the steps given above, except that the yocto-controller
>     steps
>     +do not need to be repeated. For example, to add a new worker
>     +"ala-blade51" to an Autobuilder cluster with a yocto-controller
>     at the
>     +IP address 147.11.105.72 <http://147.11.105.72>:
>     +
>     +1. On the yocto-controller host, add the name of the new worker
>     to a worker
>     +list (or create a new one) e.g. 'workers_wrlx = ["ala-blade51"]' and
>     +make sure that it is added to the "workers" list.
>     +
>     +2. On the new worker node:
>     +
>     +```
>     +sudo apt-get install gawk wget git-core diffstat unzip texinfo \
>     +gcc-multilib build-essential chrpath socat cpio python python3 \
>     +python3-pip python3-pexpect xz-utils debianutils iputils-ping \
>     +libsdl1.2-dev xterm
>
>
> Should we link to 
> https://docs.yoctoproject.org/ref-manual/system-requirements.html#ubuntu-and-debian 
> <https://docs.yoctoproject.org/ref-manual/system-requirements.html#ubuntu-and-debian> 
> for the current package set as well as listing this information here?
The beginning of README-Guide.md mentions that the user should reference 
the Yocto Manual for the required packages, so maybe copying the list 
here is inconsistent. I'll put the link near the top of the doc and we 
can look at a better way to do this if/when a new version of this guide 
makes it into the Manual.
>
>     +
>     +sudo pip3 install buildbot buildbot-www buildbot-waterfall-view \
>     +buildbot-console-view buildbot-grid-view buildbot-worker
>     +
>     +useradd -m --system pokybuild3
>     +cd /home/pokybuild3
>     +mkdir -p git/trash
>     +buildbot-worker create-worker -r --umask=0o22 yocto-worker
>     147.11.105.72 ala-blade51 pass
>     +chown -R pokybuild3:pokybuild3 /home/pokybuild3
>     +```
>     +
>     + > Note 1: The URL/IP given to the create-worker command must
>     match the
>     +host running the yocto-controller.
>     +
>     + > Note 2: The "pass" argument given to the create-worker command
>     must
>     +match the common "worker_pass" variable set in
>     yocto-controller/yoctoabb/config.py.
>     +
>     +
>     +### 1.4) Configuring NFS for the Autobuilder Cluster
>     +
>     +The Yocto Autobuilder relies on NFS to distribute a common sstate
>     cache
>     +and other outputs between nodes. A similar configuration can be
>     +deployed by performing the steps given below, which were written for
>     +Ubuntu 18.04.In <http://18.04.In> order for both the controller
>     and worker nodes to be able
>     +to access the NFS share without issue, the "pokybuild3" user on all
>     +systems must have the same UID/GID, or sufficient permissions
>     must be
>     +granted on the /srv/autobuilder path (or wherever you modified
>     the config
>     +files to point to). The following instructions assume a
>     controller node
>     +at 147.11.105.72 and a single worker node at 147.11.105.71, but
>     +additional worker nodes can be added as needed (see the previous
>     +section).
>     +
>     +1. On the NFS host:
>     +
>     +```
>     +sudo apt install -y nfs-kernel-server
>     +sudo mkdir -p
>     /srv/autobuilder/autobuilder.yoctoproject.org/pub/sstate
>     <http://autobuilder.yoctoproject.org/pub/sstate>
>     +sudo chown -R pokybuild3:pokybuild3 /srv
>
>
> Let's only chown the directories we intend to export. Other data may 
> be present in /srv and leaving its owner intact is desirable.

Good point. Fixing this for the next patch.

Thanks again for your review!

- Trevor

>     +```
>     +2. Add the following to /etc/exports, replacing the path and IP
>     fields
>     +   as necessary for each client node:
>     +```
>     +/srv/autobuilder/autobuilder.yoctoproject.org/pub/sstate
>     <http://autobuilder.yoctoproject.org/pub/sstate>
>     147.11.105.71(rw,sync,no_subtree_check)
>     +```
>     +
>     +3. Run
>     +```
>     +sudo systemctl restart nfs-kernel-server
>     +```
>     +
>     +4. Adjust the firewall (if required). Example:
>     +```
>     +sudo ufw allow from 147.11.105.71 to any port nfs
>     +```
>     +
>     +5. On the client node(s):
>     +```
>     +sudo mkdir -p
>     /srv/autobuilder/autobuilder.yoctoproject.org/pub/sstate
>     <http://autobuilder.yoctoproject.org/pub/sstate>
>     +sudo chown -R pokybuild3:pokybuild3 /srv/autobuilder/
>     +sudo mount
>     147.11.105.72:/srv/autobuilder/autobuilder.yoctoproject.org/pub/sstate
>     <http://autobuilder.yoctoproject.org/pub/sstate>
>     /srv/autobuilder/autobuilder.yoctoproject.org/pub/sstate
>     <http://autobuilder.yoctoproject.org/pub/sstate>
>     +```
>     +
>      ## 2) Basics
>
>      This section is an overview of operation and a few basic
>     configuration file relationships.  See Section 3 for more detailed
>     instructions.
>     -- 
>     2.30.2
>
>
>     
>
>
>
> -- 
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer

--------------2277E3D4DE9809D1766DDAE1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2021-04-05 2:55 p.m., Michael
      Halstead wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CADfgfoYc1_xe5MHrMuHe0KZ+z3k=5XUNbKwBNR375XJbC1pzaQ@mail.gmail.com">
      
      <div style="border:solid #9C6500 1.0pt;padding:2.0pt 2.0pt 2.0pt
        2.0pt">
        <p class="MsoNormal" style="line-height:12.0pt;background:#FFEB9C"><b><span style="font-size:10.0pt;color:#9C6500"></span></b><span style="font-size:10.0pt;color:red">[Please note: This e-mail
            is from an EXTERNAL e-mail address]<o:p></o:p></span></p>
      </div>
      <div>
        <div dir="ltr">
          <div dir="ltr"><br>
          </div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">On Mon, Apr 5, 2021 at
              9:23 AM Trevor Gamblin &lt;<a href="mailto:trevor.gamblin@windriver.com" moz-do-not-send="true">trevor.gamblin@windriver.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              Signed-off-by: Trevor Gamblin &lt;<a href="mailto:trevor.gamblin@windriver.com" target="_blank" moz-do-not-send="true">trevor.gamblin@windriver.com</a>&gt;<br>
              ---<br>
              &nbsp;README-Guide.md | 94
              +++++++++++++++++++++++++++++++++++++++++++++++++<br>
              &nbsp;1 file changed, 94 insertions(+)<br>
              <br>
              diff --git a/README-Guide.md b/README-Guide.md<br>
              index 21dd7c1..8558c48 100644<br>
              --- a/README-Guide.md<br>
              +++ b/README-Guide.md<br>
              @@ -43,6 +43,16 @@ yocto-controller/yoctoabb<br>
              &nbsp;yocto-worker<br>
              &nbsp;```<br>
              <br>
              +Before proceeding, make sure that the following is added
              to the<br>
              +pokybuild3 user's exports (e.g. in .bashrc), or builds
              will fail after<br>
              +being triggered:<br>
              +<br>
              +```<br>
              +export LC_ALL=en_US.UTF-8<br>
              +export LANG=en_US.UTF-8<br>
              +export LANGUAGE=en_US.UTF-8<br>
              +```<br>
            </blockquote>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>On the AB at <a href="http://typhoon.yocto.io" moz-do-not-send="true">typhoon.yocto.io</a> only
              LANG=en_US.UTF-8 is set. I don't know why LC_ALL or
              LANGUAGE need to be set on your cluster for builds to
              succeed.</div>
          </div>
        </div>
      </div>
    </blockquote>
    You're right, I don't need the others. Fixing this for the next
    revision.<br>
    <blockquote type="cite" cite="mid:CADfgfoYc1_xe5MHrMuHe0KZ+z3k=5XUNbKwBNR375XJbC1pzaQ@mail.gmail.com">
      <div>
        <div dir="ltr">
          <div class="gmail_quote">
            <div><br>
            </div>
            <div>&nbsp;</div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              +<br>
              &nbsp;Next, we need to update
              the&nbsp;`yocto-controller/yoctoabb/master.cfg` towards the
              bottom where the&nbsp;`title`,&nbsp;`titleURL`, and&nbsp;`buildbotURL`
              are all set.&nbsp; This is also where you would specify a
              different password for binding workers to the master.<br>
              <br>
              &nbsp;Then, we need to update
              the&nbsp;`yocto-controller/yoctoabb/config.py` to include our
              worker.&nbsp; In that file, find the line where&nbsp;`workers` is
              set and add:&nbsp;[&quot;example-worker&quot;].&nbsp;&nbsp;_NOTE:_ if your worker's
              name is different, use that here.&nbsp; Section 3.1 discusses
              how to further refine this list of workers.<br>
              @@ -112,6 +122,90 @@ sudo
              /home/pokybuild3/yocto-worker/qemuarm/build/scripts/runqemu-gen-tapdevs
              \<br>
              <br>
              &nbsp;In the above command, we assume the a build named&nbsp;qemuarm
              failed.&nbsp; The value of&nbsp;8&nbsp;is the number of tap interfaces to
              create on the worker.<br>
              <br>
              +### 1.3) Adding Dedicated Worker Nodes<br>
              +<br>
              +Running both the controller and the worker together on a
              single machine<br>
              +can quickly result in long build times and an
              unresponsive web UI,<br>
              +especially if you plan on running any of the more
              comprehensive builders<br>
              +(e.g. a-full). Additional workers can be added to the
              cluster by<br>
              +following the steps given above, except that the
              yocto-controller steps<br>
              +do not need to be repeated. For example, to add a new
              worker<br>
              +&quot;ala-blade51&quot; to an Autobuilder cluster with a
              yocto-controller at the<br>
              +IP address <a href="http://147.11.105.72" rel="noreferrer" target="_blank" moz-do-not-send="true">147.11.105.72</a>:<br>
              +<br>
              +1. On the yocto-controller host, add the name of the new
              worker to a worker<br>
              +list (or create a new one) e.g. 'workers_wrlx =
              [&quot;ala-blade51&quot;]' and<br>
              +make sure that it is added to the &quot;workers&quot; list.<br>
              +<br>
              +2. On the new worker node:<br>
              +<br>
              +```<br>
              +sudo apt-get install gawk wget git-core diffstat unzip
              texinfo \<br>
              +gcc-multilib build-essential chrpath socat cpio python
              python3 \<br>
              +python3-pip python3-pexpect xz-utils debianutils
              iputils-ping \<br>
              +libsdl1.2-dev xterm<br>
            </blockquote>
            <div><br>
            </div>
            <div>Should we link to&nbsp;<a href="https://docs.yoctoproject.org/ref-manual/system-requirements.html#ubuntu-and-debian" moz-do-not-send="true">https://docs.yoctoproject.org/ref-manual/system-requirements.html#ubuntu-and-debian</a>
              for the current package set as well as listing this
              information here?</div>
          </div>
        </div>
      </div>
    </blockquote>
    The beginning of README-Guide.md mentions that the user should
    reference the Yocto Manual for the required packages, so maybe
    copying the list here is inconsistent. I'll put the link near the
    top of the doc and we can look at a better way to do this if/when a
    new version of this guide makes it into the Manual.<br>
    <blockquote type="cite" cite="mid:CADfgfoYc1_xe5MHrMuHe0KZ+z3k=5XUNbKwBNR375XJbC1pzaQ@mail.gmail.com">
      <div>
        <div dir="ltr">
          <div class="gmail_quote">
            <div>&nbsp;</div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              +<br>
              +sudo pip3 install buildbot buildbot-www
              buildbot-waterfall-view \<br>
              +buildbot-console-view buildbot-grid-view buildbot-worker<br>
              +<br>
              +useradd -m --system pokybuild3<br>
              +cd /home/pokybuild3<br>
              +mkdir -p git/trash<br>
              +buildbot-worker create-worker -r --umask=0o22
              yocto-worker 147.11.105.72 ala-blade51 pass<br>
              +chown -R pokybuild3:pokybuild3 /home/pokybuild3<br>
              +```<br>
              +<br>
              + &gt; Note 1: The URL/IP given to the create-worker
              command must match the<br>
              +host running the yocto-controller.<br>
              +<br>
              + &gt; Note 2: The &quot;pass&quot; argument given to the
              create-worker command must<br>
              +match the common &quot;worker_pass&quot; variable set in
              yocto-controller/yoctoabb/config.py.<br>
              +<br>
              +<br>
              +### 1.4) Configuring NFS for the Autobuilder Cluster<br>
              +<br>
              +The Yocto Autobuilder relies on NFS to distribute a
              common sstate cache<br>
              +and other outputs between nodes. A similar configuration
              can be<br>
              +deployed by performing the steps given below, which were
              written for<br>
              +Ubuntu <a href="http://18.04.In" rel="noreferrer" target="_blank" moz-do-not-send="true">18.04.In</a>
              order for both the controller and worker nodes to be able
              <br>
              +to access the NFS share without issue, the &quot;pokybuild3&quot;
              user on all <br>
              +systems must have the same UID/GID, or sufficient
              permissions must be <br>
              +granted on the /srv/autobuilder path (or wherever you
              modified the config <br>
              +files to point to). The following instructions assume a
              controller node<br>
              +at 147.11.105.72 and a single worker node at
              147.11.105.71, but<br>
              +additional worker nodes can be added as needed (see the
              previous<br>
              +section).<br>
              +<br>
              +1. On the NFS host:<br>
              +<br>
              +```<br>
              +sudo apt install -y nfs-kernel-server<br>
              +sudo mkdir -p /srv/autobuilder/<a href="http://autobuilder.yoctoproject.org/pub/sstate" rel="noreferrer" target="_blank" moz-do-not-send="true">autobuilder.yoctoproject.org/pub/sstate</a><br>
              +sudo chown -R pokybuild3:pokybuild3 /srv<br>
            </blockquote>
            <div><br>
            </div>
            <div>Let's only chown the directories we intend to export.
              Other data may be present in /srv and leaving its owner
              intact is desirable.</div>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Good point. Fixing this for the next patch.</p>
    <p>Thanks again for your review!</p>
    <p>- Trevor<br>
    </p>
    <blockquote type="cite" cite="mid:CADfgfoYc1_xe5MHrMuHe0KZ+z3k=5XUNbKwBNR375XJbC1pzaQ@mail.gmail.com">
      <div>
        <div dir="ltr">
          <div class="gmail_quote">
            <div>&nbsp;</div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              +```<br>
              +2. Add the following to /etc/exports, replacing the path
              and IP fields<br>
              +&nbsp; &nbsp;as necessary for each client node:<br>
              +```<br>
              +/srv/autobuilder/<a href="http://autobuilder.yoctoproject.org/pub/sstate" rel="noreferrer" target="_blank" moz-do-not-send="true">autobuilder.yoctoproject.org/pub/sstate</a>
              147.11.105.71(rw,sync,no_subtree_check)<br>
              +```<br>
              +<br>
              +3. Run<br>
              +```<br>
              +sudo systemctl restart nfs-kernel-server<br>
              +```<br>
              +<br>
              +4. Adjust the firewall (if required). Example:<br>
              +```<br>
              +sudo ufw allow from 147.11.105.71 to any port nfs<br>
              +```<br>
              +<br>
              +5. On the client node(s):<br>
              +```<br>
              +sudo mkdir -p /srv/autobuilder/<a href="http://autobuilder.yoctoproject.org/pub/sstate" rel="noreferrer" target="_blank" moz-do-not-send="true">autobuilder.yoctoproject.org/pub/sstate</a><br>
              +sudo chown -R pokybuild3:pokybuild3 /srv/autobuilder/<br>
              +sudo mount 147.11.105.72:/srv/autobuilder/<a href="http://autobuilder.yoctoproject.org/pub/sstate" rel="noreferrer" target="_blank" moz-do-not-send="true">autobuilder.yoctoproject.org/pub/sstate</a>
              /srv/autobuilder/<a href="http://autobuilder.yoctoproject.org/pub/sstate" rel="noreferrer" target="_blank" moz-do-not-send="true">autobuilder.yoctoproject.org/pub/sstate</a><br>
              +```<br>
              +<br>
              &nbsp;## 2) Basics<br>
              <br>
              &nbsp;This section is an overview of operation and a few basic
              configuration file relationships.&nbsp; See Section 3 for more
              detailed instructions.<br>
              -- <br>
              2.30.2<br>
              <br>
              <br>
              <br>
              <br>
            </blockquote>
          </div>
          <br clear="all">
          <div><br>
          </div>
          -- <br>
          <div dir="ltr" class="gmail_signature">
            <div dir="ltr">Michael Halstead
              <div>Linux Foundation / Yocto Project</div>
              <div>Systems Operations Engineer</div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------2277E3D4DE9809D1766DDAE1--
