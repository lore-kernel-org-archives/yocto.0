Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C6AC433F5
	for <webhook@archiver.kernel.org>; Thu, 23 Dec 2021 18:27:37 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.36381.1640284054650954972
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Dec 2021 10:27:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=b+p+mwcM;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1640284054; x=1797964054;
  h=from:to:subject:date:mime-version;
  bh=2AX70mQYMtRkEal6mBWr7+xjqXGcNazBADy2i4Hzcf0=;
  b=b+p+mwcMWLVDPlYv0ibUlMH9g8NRb9rKWvdrXl2ztMDDNG0ZOhU8TMD7
   FXX9TtNKAq15r+aGqeMXKZt/CmHjV071JVbpcwTlb7Y51Ixm7kw0rKNNt
   ezQOHEJQr/MY0/PK+mbD/TIGKoVXhY/vfLwD+/SCQPlVnaMGzfMswHVnJ
   Y=;
IronPort-SDR: 
 r7XY8jTP3XjVSCg6nbMPIgPFOIJY//t2cBRg1CC9lQEBeNWAHrvxYTDyILkury/E4s/YcI7MLF
 Apgr9QKIePwQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3A3mOOLxVYNq7jPVdktYI+hqM0z/HV8KyVUjF92?=
 =?us-ascii?q?vMcY1JmTK2v8tzYMVDF4r011RmVB9ydsqoUwLOP6ejJYi8p2d65qncMcZhBB?=
 =?us-ascii?q?VcuqP49uEgeOvODElDxN/XwbiY3T4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMB?=
 =?us-ascii?q?x7xKRR6JvjvGo7Vks+7y/2+94fcbglWmTaxe65+IAm1oAneq8UanJVuIbstx?=
 =?us-ascii?q?xXUpXdFZ/5Yzn5yK1KJmBb86Maw/Jp9/ClVpvks6c1OX7jkcqohVbBXAygoP?=
 =?us-ascii?q?G4z5M3wqBnMVhCP6WcGUmUXiRVHHQ7I5wznU5jrsyv6su192DSGPcDzULs5V?=
 =?us-ascii?q?yiu47ttRRT1jioMKjw3/3zNisFojKxVvg+vpwBxzYDXYYGaKPVxc7jHct8GR?=
 =?us-ascii?q?2pMRNpdWzBfDo66coABD/ABPeFdr4TlqVcAqhy+BQ+3BOzx1DBInWf61rAn3?=
 =?us-ascii?q?eQ9Dw7GwhIvH9QTu3nKsd75MKkdX/2wwKXG0D7OaOhW2Svj54jWbB8hp+uAX?=
 =?us-ascii?q?bd3ccrX0kkgCR3Kjk6LpIP+JTyayP8NsmiA7+p8S+2vjnUnpxttrTiow8chk?=
 =?us-ascii?q?4/EjZ8axV7Y7yt22po1JcGmR05hZ96pCIZduS+VOYdoQ84vR2NltSQ1xLMIu?=
 =?us-ascii?q?5O2fCgExZQnyhPDa/GLbYeF7wzjWeufLzp2i3Zodayiixiy/katzvDwWMmy3?=
 =?us-ascii?q?V1XoCRFldzMuWoM1xzV8sWIV/x98Vui2TmRzQDf8OBEIUcymKHGKJAh2qY9m?=
 =?us-ascii?q?ocPvUjZECL7ml/6gLGIekgk4OSl6uTqbq37qpOALYN5hQ7zPr4hl8ClHOg1M?=
 =?us-ascii?q?g4DVHWB9+umzr3s50j5Ta1Pjv0xj6bWrojXJd8epq6lGw9V1Zsj6wqnAzemz?=
 =?us-ascii?q?tsYmX4HIUpZeBOIlYfpPVTOIOv8APujn1igjCpny+rAPrL7GJnCNWLMn6n6f?=
 =?us-ascii?q?bd98E5c1BQ8zdVE555OFr4BJ/fzVlfwtNzeEBA5LxS5z/v7BNln2I4TW3iDD?=
 =?us-ascii?q?rGHPK7Sq1OF5+IiL/GJZIAPuTb9L/Yl5+TpjX88gVIdZrWp0oUJaH+mGPRqO?=
 =?us-ascii?q?UCZYX3qgtcaD2gFoBE+Qffxh1KYTzFTfHazX7kg5j4lDYKmFp3PSZyqgLyEx?=
 =?us-ascii?q?Cu7BIFZZnhaClCQFnflb4WFW/AQZyKOJc9siTgEVbm6S489zhGirg/7y717I?=
 =?us-ascii?q?erI/S0YrYjj1N935+LNiR4y6SZ4D8OH02GCHClImTZCVjg9wKdXpU1m1kzFw?=
 =?us-ascii?q?K9zn/tAD9tR6vhVFAAgOtSUm/19AMz1cgbAZcuSDkehScmhGSs2TN8635kJe?=
 =?us-ascii?q?UkrSPu4iRWWlQ+tBaQYmqfPTKco/7zR2TDab4ZA8DeMnP06k1Q4T80JMGqgn?=
 =?us-ascii?q?aNy7CDZDoPSgl6FmqOxM68b2Xiepy+40WOSsRQAA0ZLWqLfUCVHDnY=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3AQX51p6lCOAEO0+SCy9PJ60Do5gyrJERdPkR7X?=
 =?us-ascii?q?Q2eYbSJt1+Wr1GztxIbX2/Sb/fcYDD8fowgYNvjo04FsJSHmIVqSAI9qyEzR?=
 =?us-ascii?q?VtH+JHPbTi7wuccHM8wwvUuxyuL1u1GAjX7BJ1yHi+0SiuFaOC79CAmj/rQH?=
 =?us-ascii?q?dIQNcadUsxPbV48IMseoU878wIJqtYAbemRW2thi/uryyHsEAPNNwpPD44hw?=
 =?us-ascii?q?/nrRCWDHRjFkGhwUlQWPZintbJF/pUfJMp3yaqZdxMUTmTId9NWSdovzJnhl?=
 =?us-ascii?q?o/Y1ws9A9WgieejKhVTBLjbewKHh2FHQLSvhwMErSs3uko5HKNELxwIzW/Tw?=
 =?us-ascii?q?pYvlb2htrTpIestFrbQlfoQVV9dFCdlMKBd0LXOLGOuqtCeylaAeHzpqxlrJ?=
 =?us-ascii?q?B1tbdRBpromWQmi8tRdcljhdCurluW93LWTTuh3mt9lPc7gIIQHoHZiwDrFS?=
 =?us-ascii?q?/E8Tvj+rw/ijTND9G5owJsRW6yEOoxHNFJSgN37S0UnEj8q5FgWxY9EXkXCT?=
 =?us-ascii?q?gA=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AMZ1D3aBu2upiYRnlHenF55DYdb4zR+YMi2?=
 =?us-ascii?q?TDsHoedfU1SKOlfqOV8MjztyWftN95YhhJpTnqAsS9qB3nnqJI3Q=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2B+BwCNvsRh/0HhJQpagQkJgVCBIYI?=
 =?us-ascii?q?FgUILlU+DK40JjBmBfAsBAQEBAQEBAQEIATEQBAEBg21FhA4mNAkOAQIEAQE?=
 =?us-ascii?q?BEgEBBgEBAQEBBgQBgRuFaAEMgjUihB84JgEVBSZAFw8BBBuCd4IOsTCBMxo?=
 =?us-ascii?q?CZYRqhQ+BOoFmhUSCfoQKCIIFQ4EVgXKDSYJaAoVxIgSSLxVlEysBIDaBMgM?=
 =?us-ascii?q?oCpIqjQ0/gz6cQwcDg0KKcpRAMBWDcJJGA5EuljYggiSKPJQhDoR4AgQCBAU?=
 =?us-ascii?q?CFoFhghRwgzkJSBcCjjsWhjSDbYQNdDgCBgsBAQMJjl6BNYEQAQE?=
X-IPAS-Result: =?us-ascii?q?A2B+BwCNvsRh/0HhJQpagQkJgVCBIYIFgUILlU+DK40Jj?=
 =?us-ascii?q?BmBfAsBAQEBAQEBAQEIATEQBAEBg21FhA4mNAkOAQIEAQEBEgEBBgEBAQEBB?=
 =?us-ascii?q?gQBgRuFaAEMgjUihB84JgEVBSZAFw8BBBuCd4IOsTCBMxoCZYRqhQ+BOoFmh?=
 =?us-ascii?q?USCfoQKCIIFQ4EVgXKDSYJaAoVxIgSSLxVlEysBIDaBMgMoCpIqjQ0/gz6cQ?=
 =?us-ascii?q?wcDg0KKcpRAMBWDcJJGA5EuljYggiSKPJQhDoR4AgQCBAUCFoFhghRwgzkJS?=
 =?us-ascii?q?BcCjjsWhjSDbYQNdDgCBgsBAQMJjl6BNYEQAQE?=
X-IronPort-AV: E=Sophos;i="5.88,230,1635206400";
   d="scan'208,217";a="438114490"
IronPort-SDR: 
 xynMBvp98iDV7kNx4DGdFMKtDe4sSq6b5OyvzS+D7aff2UicCoi0azmCW2IDI9VmrspvJ5fdTB
 Vobm/nH1NrlXuwkGzksn1iPX80de8UuzJOgLawilY+PnUflYJxUuhm3VOJqOnJpuCfwSq6tAZx
 o0UiGxXD0ilPvt0NxW8nquJQuPfy6sk78IPeHKUNccw0RU40qqesejSakXIkTw8NpUzJmg1BML
 VhZuvfwN+FmG13GbCkDHxFII3gYcAZ18MoTr8Ym3cqmQM18eP+WbT+df34Mt/2SMCDS/VSwLu9
 9KU=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: meta-virtualization/docker/containerd issue seen
Thread-Topic: meta-virtualization/docker/containerd issue seen
Thread-Index: Adf4Kpr/WX5HoozEQ1e2QwUAdUPfZw==
Date: Thu, 23 Dec 2021 18:26:31 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_5cff98efd5584a8f944f5057dd4f4a0cbaesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Dec 2021 18:27:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55651
Message-Id: <20211223182737.66C6AC433F5@smtp.lore.kernel.org>

--_000_5cff98efd5584a8f944f5057dd4f4a0cbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am trying to build in basic docker functionality for container support...

I am zeus based, and am building docker and docker-ce-contrib.

When I manually start the dockerd in the background I am seeing a timeout w=
hen attempting to use containerd.

Any ideas as ti why I am getting this error or how I might resolve it ?
(see bottom)

Thanks,
Steve

Initialization complete. Sending init complete message
Running indefinitely

root@sbca-default which docker
/usr/bin/docker
root@sbca-default docker --version
Docker version 19.03.2-ce, build 6a30dfc
root@sbca-default docker info
Client:
Debug Mode: false

Server:
Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
Images: 0
Server Version: 19.03.2-ce
Storage Driver: overlay2
  Backing Filesystem: extfs
  Supports d_type: true
  Native Overlay Diff: true
Logging Driver: json-file
Cgroup Driver: cgroupfs
Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local logentries spl=
unk syslog
Swarm: inactive
Runtimes: runc
Default Runtime: runc
Init Binary: docker-init
containerd version: fd103cb716352c7e19768e4fed057f71d68902a0.m
runc version: 425e105d5a03fabd737a126ad93d62a9eeede87f-dirty
init version: fec3683-dirty (expected: fec3683b971d9)
Kernel Version: 4.19.135-intel-pk-standard
OSType: linux
Architecture: x86_64
CPUs: 8
Total Memory: 15.51GiB
Name: sbca-default
ID: YFQW:EPJT:TSJU:C64F:NU57:RAJL:X5IC:J5IT:MRTP:SIGS:RI25:KUFQ
Docker Root Dir: /var/lib/docker
Debug Mode: false
Registry: https://index.docker.io/v1/
Labels:
Experimental: false
Insecure Registries:
  localhost:5000
  127.0.0.0/8
Registry Mirrors:
  http://localhost:5000/
Live Restore Enabled: false

root@sbca-default /usr/share/docker/check-config.sh
info: reading kernel config from /proc/config.gz ...

Generally Necessary:
- cgroup hierarchy: properly mounted [/sys/fs/cgroup]
- CONFIG_NAMESPACES: enabled
- CONFIG_NET_NS: enabled
- CONFIG_PID_NS: enabled
- CONFIG_IPC_NS: enabled
- CONFIG_UTS_NS: enabled
- CONFIG_CGROUPS: enabled
- CONFIG_CGROUP_CPUACCT: enabled
- CONFIG_CGROUP_DEVICE: enabled
- CONFIG_CGROUP_FREEZER: enabled
- CONFIG_CGROUP_SCHED: enabled
- CONFIG_CPUSETS: enabled
- CONFIG_MEMCG: enabled
- CONFIG_KEYS: enabled
- CONFIG_VETH: enabled
- CONFIG_BRIDGE: enabled (as module)
- CONFIG_BRIDGE_NETFILTER: enabled (as module)
- CONFIG_NF_NAT_IPV4: enabled (as module)
- CONFIG_IP_NF_FILTER: enabled (as module)
- CONFIG_IP_NF_TARGET_MASQUERADE: enabled (as module)
- CONFIG_NETFILTER_XT_MATCH_ADDRTYPE: enabled (as module)
- CONFIG_NETFILTER_XT_MATCH_CONNTRACK: enabled (as module)
- CONFIG_NETFILTER_XT_MATCH_IPVS: enabled (as module)
- CONFIG_IP_NF_NAT: enabled (as module)
- CONFIG_NF_NAT: enabled (as module)
- CONFIG_NF_NAT_NEEDED: enabled
- CONFIG_POSIX_MQUEUE: enabled

Optional Features:
- CONFIG_USER_NS: enabled
- CONFIG_SECCOMP: enabled
- CONFIG_CGROUP_PIDS: enabled
- CONFIG_MEMCG_SWAP: enabled
- CONFIG_MEMCG_SWAP_ENABLED: enabled
    (cgroup swap accounting is currently enabled)
- CONFIG_LEGACY_VSYSCALL_EMULATE: enabled
- CONFIG_BLK_CGROUP: enabled
- CONFIG_BLK_DEV_THROTTLING: enabled
- CONFIG_IOSCHED_CFQ: enabled
- CONFIG_CFQ_GROUP_IOSCHED: enabled
- CONFIG_CGROUP_PERF: enabled
- CONFIG_CGROUP_HUGETLB: enabled
- CONFIG_NET_CLS_CGROUP: enabled
- CONFIG_CGROUP_NET_PRIO: enabled
- CONFIG_CFS_BANDWIDTH: enabled
- CONFIG_FAIR_GROUP_SCHED: enabled
- CONFIG_RT_GROUP_SCHED: enabled
- CONFIG_IP_NF_TARGET_REDIRECT: enabled (as module)
- CONFIG_IP_VS: enabled (as module)
- CONFIG_IP_VS_NFCT: enabled
- CONFIG_IP_VS_PROTO_TCP: enabled
- CONFIG_IP_VS_PROTO_UDP: enabled
- CONFIG_IP_VS_RR: enabled (as module)
- CONFIG_EXT4_FS: enabled
- CONFIG_EXT4_FS_POSIX_ACL: enabled
- CONFIG_EXT4_FS_SECURITY: enabled
- Network Drivers:
  - "overlay":
    - CONFIG_VXLAN: enabled
      Optional (for encrypted networks):
      - CONFIG_CRYPTO: enabled
      - CONFIG_CRYPTO_AEAD: enabled
      - CONFIG_CRYPTO_GCM: enabled (as module)
      - CONFIG_CRYPTO_SEQIV: enabled
      - CONFIG_CRYPTO_GHASH: enabled (as module)
      - CONFIG_XFRM: enabled
      - CONFIG_XFRM_USER: enabled (as module)
      - CONFIG_XFRM_ALGO: enabled
      - CONFIG_INET_ESP: enabled (as module)
      - CONFIG_INET_XFRM_MODE_TRANSPORT: enabled
  - "ipvlan":
    - CONFIG_IPVLAN: enabled
  - "macvlan":
    - CONFIG_MACVLAN: enabled
    - CONFIG_DUMMY: enabled
  - "ftp,tftp client in container":
    - CONFIG_NF_NAT_FTP: enabled (as module)
    - CONFIG_NF_CONNTRACK_FTP: enabled (as module)
    - CONFIG_NF_NAT_TFTP: enabled (as module)
    - CONFIG_NF_CONNTRACK_TFTP: enabled (as module)
- Storage Drivers:
  - "aufs":
    - CONFIG_AUFS_FS: missing
  - "btrfs":
    - CONFIG_BTRFS_FS: enabled
    - CONFIG_BTRFS_FS_POSIX_ACL: enabled
  - "devicemapper":
    - CONFIG_BLK_DEV_DM: enabled
    - CONFIG_DM_THIN_PROVISIONING: enabled
  - "overlay":
    - CONFIG_OVERLAY_FS: enabled
  - "zfs":
    - /dev/zfs: missing
    - zfs command: missing
    - zpool command: missing

Limits:
- /proc/sys/kernel/keys/root_maxkeys: 1000000

root@sbca-default
root@sbca-default dockerd --iptables=3Dfalse &
[1] 5887
root@sbca-default INFO[2021-12-23T17:27:10.246973295Z] Starting up
INFO[2021-12-23T17:27:10.247572882Z] libcontainerd: containerd is still run=
ning    pid=3D893
INFO[2021-12-23T17:27:10.247608835Z] parsed scheme: "unix"                 =
        module=3Dgrpc
INFO[2021-12-23T17:27:10.247660984Z] scheme "unix" not registered, fallback=
 to default scheme  module=3Dgrpc
INFO[2021-12-23T17:27:10.247678448Z] ccResolverWrapper: sending update to c=
c: {[{unix:///var/run/docker/containerd/containerd.sock 0  <nil>}] }  modul=
e=3Dgrpc
INFO[2021-12-23T17:27:10.247686677Z] ClientConn switching balancer to "pick=
_first"  module=3Dgrpc
INFO[2021-12-23T17:27:10.247731766Z] pickfirstBalancer: HandleSubConnStateC=
hange: 0xc0006f5780, CONNECTING  module=3Dgrpc
failed to start containerd: timeout waiting for containerd to start

[1]+ done(1)                 dockerd --iptables=3Dfalse
root@sbca-default


--_000_5cff98efd5584a8f944f5057dd4f4a0cbaesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to build in basic docker functionality f=
or container support&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am zeus based, and am building docker and docker-c=
e-contrib.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I <span style=3D"font-size:10.5pt;font-family:&=
quot;Segoe UI&quot;,sans-serif;color:#091E42;background:white">
manually start the&nbsp;</span><code><span style=3D"font-size:10.5pt;font-f=
amily:Consolas;color:#091E42;background:white">dockerd</span></code><span s=
tyle=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:=
#091E42;background:white">&nbsp;in the background I am seeing
 a timeout when attempting to use containerd.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any ideas as ti why I am getting this error or how I=
 might resolve it ?<o:p></o:p></p>
<p class=3D"MsoNormal">(see bottom)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Initialization complete. Sending init complete messa=
ge<o:p></o:p></p>
<p class=3D"MsoNormal">Running indefinitely<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">root@sbca-default which docker<o:p></o:p></p>
<p class=3D"MsoNormal">/usr/bin/docker<o:p></o:p></p>
<p class=3D"MsoNormal">root@sbca-default docker --version<o:p></o:p></p>
<p class=3D"MsoNormal">Docker version 19.03.2-ce, build 6a30dfc<o:p></o:p><=
/p>
<p class=3D"MsoNormal">root@sbca-default docker info<o:p></o:p></p>
<p class=3D"MsoNormal">Client:<o:p></o:p></p>
<p class=3D"MsoNormal">Debug Mode: false<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Server:<o:p></o:p></p>
<p class=3D"MsoNormal">Containers: 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Running: 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Paused: 0<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Stopped: 0<o:p></o:p></p>
<p class=3D"MsoNormal">Images: 0<o:p></o:p></p>
<p class=3D"MsoNormal">Server Version: 19.03.2-ce<o:p></o:p></p>
<p class=3D"MsoNormal">Storage Driver: overlay2<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Backing Filesystem: extfs<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Supports d_type: true<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Native Overlay Diff: true<o:p></o:p></p>
<p class=3D"MsoNormal">Logging Driver: json-file<o:p></o:p></p>
<p class=3D"MsoNormal">Cgroup Driver: cgroupfs<o:p></o:p></p>
<p class=3D"MsoNormal">Plugins:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Volume: local<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Network: bridge host ipvlan macvlan null over=
lay<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Log: awslogs fluentd gcplogs gelf journald js=
on-file local logentries splunk syslog<o:p></o:p></p>
<p class=3D"MsoNormal">Swarm: inactive<o:p></o:p></p>
<p class=3D"MsoNormal">Runtimes: runc<o:p></o:p></p>
<p class=3D"MsoNormal">Default Runtime: runc<o:p></o:p></p>
<p class=3D"MsoNormal">Init Binary: docker-init<o:p></o:p></p>
<p class=3D"MsoNormal">containerd version: fd103cb716352c7e19768e4fed057f71=
d68902a0.m<o:p></o:p></p>
<p class=3D"MsoNormal">runc version: 425e105d5a03fabd737a126ad93d62a9eeede8=
7f-dirty<o:p></o:p></p>
<p class=3D"MsoNormal">init version: fec3683-dirty (expected: fec3683b971d9=
)<o:p></o:p></p>
<p class=3D"MsoNormal">Kernel Version: 4.19.135-intel-pk-standard<o:p></o:p=
></p>
<p class=3D"MsoNormal">OSType: linux<o:p></o:p></p>
<p class=3D"MsoNormal">Architecture: x86_64<o:p></o:p></p>
<p class=3D"MsoNormal">CPUs: 8<o:p></o:p></p>
<p class=3D"MsoNormal">Total Memory: 15.51GiB<o:p></o:p></p>
<p class=3D"MsoNormal">Name: sbca-default<o:p></o:p></p>
<p class=3D"MsoNormal">ID: YFQW:EPJT:TSJU:C64F:NU57:RAJL:X5IC:J5IT:MRTP:SIG=
S:RI25:KUFQ<o:p></o:p></p>
<p class=3D"MsoNormal">Docker Root Dir: /var/lib/docker<o:p></o:p></p>
<p class=3D"MsoNormal">Debug Mode: false<o:p></o:p></p>
<p class=3D"MsoNormal">Registry: <a href=3D"https://index.docker.io/v1/"><s=
pan style=3D"color:#0563C1">https://index.docker.io/v1/</span></a><o:p></o:=
p></p>
<p class=3D"MsoNormal">Labels:<o:p></o:p></p>
<p class=3D"MsoNormal">Experimental: false<o:p></o:p></p>
<p class=3D"MsoNormal">Insecure Registries:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; localhost:5000<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; 127.0.0.0/8<o:p></o:p></p>
<p class=3D"MsoNormal">Registry Mirrors:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; <a href=3D"http://localhost:5000/"><span styl=
e=3D"color:#0563C1">http://localhost:5000/</span></a><o:p></o:p></p>
<p class=3D"MsoNormal">Live Restore Enabled: false<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">root@sbca-default /usr/share/docker/check-config.sh<=
o:p></o:p></p>
<p class=3D"MsoNormal">info: reading kernel config from /proc/config.gz ...=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Generally Necessary:<o:p></o:p></p>
<p class=3D"MsoNormal">- cgroup hierarchy: properly mounted [/sys/fs/cgroup=
]<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_NAMESPACES: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_NET_NS: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_PID_NS: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_IPC_NS: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_UTS_NS: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_CGROUPS: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_CGROUP_CPUACCT: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_CGROUP_DEVICE: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_CGROUP_FREEZER: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_CGROUP_SCHED: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_CPUSETS: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_MEMCG: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_KEYS: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_VETH: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_BRIDGE: enabled (as module)<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_BRIDGE_NETFILTER: enabled (as module)<o:p><=
/o:p></p>
<p class=3D"MsoNormal">- CONFIG_NF_NAT_IPV4: enabled (as module)<o:p></o:p>=
</p>
<p class=3D"MsoNormal">- CONFIG_IP_NF_FILTER: enabled (as module)<o:p></o:p=
></p>
<p class=3D"MsoNormal">- CONFIG_IP_NF_TARGET_MASQUERADE: enabled (as module=
)<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_NETFILTER_XT_MATCH_ADDRTYPE: enabled (as mo=
dule)<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_NETFILTER_XT_MATCH_CONNTRACK: enabled (as m=
odule)<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_NETFILTER_XT_MATCH_IPVS: enabled (as module=
)<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_IP_NF_NAT: enabled (as module)<o:p></o:p></=
p>
<p class=3D"MsoNormal">- CONFIG_NF_NAT: enabled (as module)<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_NF_NAT_NEEDED: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_POSIX_MQUEUE: enabled<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Optional Features:<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_USER_NS: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_SECCOMP: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_CGROUP_PIDS: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_MEMCG_SWAP: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_MEMCG_SWAP_ENABLED: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (cgroup swap accounting is curren=
tly enabled)<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_LEGACY_VSYSCALL_EMULATE: enabled<o:p></o:p>=
</p>
<p class=3D"MsoNormal">- CONFIG_BLK_CGROUP: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_BLK_DEV_THROTTLING: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_IOSCHED_CFQ: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_CFQ_GROUP_IOSCHED: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_CGROUP_PERF: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_CGROUP_HUGETLB: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_NET_CLS_CGROUP: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_CGROUP_NET_PRIO: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_CFS_BANDWIDTH: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_FAIR_GROUP_SCHED: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_RT_GROUP_SCHED: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_IP_NF_TARGET_REDIRECT: enabled (as module)<=
o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_IP_VS: enabled (as module)<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_IP_VS_NFCT: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_IP_VS_PROTO_TCP: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_IP_VS_PROTO_UDP: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_IP_VS_RR: enabled (as module)<o:p></o:p></p=
>
<p class=3D"MsoNormal">- CONFIG_EXT4_FS: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_EXT4_FS_POSIX_ACL: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- CONFIG_EXT4_FS_SECURITY: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">- Network Drivers:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - &quot;overlay&quot;:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_VXLAN: enabled<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Optional (for encrypt=
ed networks):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - CONFIG_CRYPTO: enab=
led<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - CONFIG_CRYPTO_AEAD:=
 enabled<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - CONFIG_CRYPTO_GCM: =
enabled (as module)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - CONFIG_CRYPTO_SEQIV=
: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - CONFIG_CRYPTO_GHASH=
: enabled (as module)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - CONFIG_XFRM: enable=
d<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - CONFIG_XFRM_USER: e=
nabled (as module)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - CONFIG_XFRM_ALGO: e=
nabled<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - CONFIG_INET_ESP: en=
abled (as module)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - CONFIG_INET_XFRM_MO=
DE_TRANSPORT: enabled<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - &quot;ipvlan&quot;:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_IPVLAN: enabled<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp; - &quot;macvlan&quot;:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_MACVLAN: enabled<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_DUMMY: enabled<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp; - &quot;ftp,tftp client in container&quot;:<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_NF_NAT_FTP: enabled (as =
module)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_NF_CONNTRACK_FTP: enable=
d (as module)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_NF_NAT_TFTP: enabled (as=
 module)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_NF_CONNTRACK_TFTP: enabl=
ed (as module)<o:p></o:p></p>
<p class=3D"MsoNormal">- Storage Drivers:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - &quot;aufs&quot;:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_AUFS_FS: missing<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; - &quot;btrfs&quot;:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_BTRFS_FS: enabled<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_BTRFS_FS_POSIX_ACL: enab=
led<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - &quot;devicemapper&quot;:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_BLK_DEV_DM: enabled<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_DM_THIN_PROVISIONING: en=
abled<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; - &quot;overlay&quot;:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - CONFIG_OVERLAY_FS: enabled<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&nbsp; - &quot;zfs&quot;:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - /dev/zfs: missing<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - zfs command: missing<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; - zpool command: missing<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Limits:<o:p></o:p></p>
<p class=3D"MsoNormal">- /proc/sys/kernel/keys/root_maxkeys: 1000000<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">root@sbca-default<o:p></o:p></p>
<p class=3D"MsoNormal">root@sbca-default dockerd --iptables=3Dfalse &amp;<o=
:p></o:p></p>
<p class=3D"MsoNormal">[1] 5887<o:p></o:p></p>
<p class=3D"MsoNormal">root@sbca-default INFO[2021-12-23T17:27:10.246973295=
Z] Starting up&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p><=
/p>
<p class=3D"MsoNormal">INFO[2021-12-23T17:27:10.247572882Z] libcontainerd: =
containerd is still running&nbsp;&nbsp;&nbsp; pid=3D893<o:p></o:p></p>
<p class=3D"MsoNormal">INFO[2021-12-23T17:27:10.247608835Z] parsed scheme: =
&quot;unix&quot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; module=3Dgrpc<o:p></o:p></p>
<p class=3D"MsoNormal">INFO[2021-12-23T17:27:10.247660984Z] scheme &quot;un=
ix&quot; not registered, fallback to default scheme&nbsp; module=3Dgrpc<o:p=
></o:p></p>
<p class=3D"MsoNormal">INFO[2021-12-23T17:27:10.247678448Z] ccResolverWrapp=
er: sending update to cc: {[{unix:///var/run/docker/containerd/containerd.s=
ock 0&nbsp; &lt;nil&gt;}] }&nbsp; module=3Dgrpc<o:p></o:p></p>
<p class=3D"MsoNormal">INFO[2021-12-23T17:27:10.247686677Z] ClientConn swit=
ching balancer to &quot;pick_first&quot;&nbsp; module=3Dgrpc<o:p></o:p></p>
<p class=3D"MsoNormal">INFO[2021-12-23T17:27:10.247731766Z] pickfirstBalanc=
er: HandleSubConnStateChange: 0xc0006f5780, CONNECTING&nbsp; module=3Dgrpc<=
o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">failed to start contain=
erd: timeout waiting for containerd to start</span></b><b><o:p></o:p></b></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[1]&#43; done(1)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dockerd --ipta=
bles=3Dfalse<o:p></o:p></p>
<p class=3D"MsoNormal">root@sbca-default<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_5cff98efd5584a8f944f5057dd4f4a0cbaesystemscom_--

