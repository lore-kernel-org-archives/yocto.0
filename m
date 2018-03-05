Return-Path: <peter.spierenburg@nautel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB915E00B1A; Mon,  5 Mar 2018 08:52:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.111 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1894 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Mar 2018 08:52:49 PST
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0111.outbound.protection.outlook.com [104.47.34.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0B9CE0074C
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 08:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nautel.onmicrosoft.com; s=selector1-nautel-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=wQyTxf1TPdzlQM6/vrFqWU/g/wjbZx87TCsEvwYBmdE=;
	b=ZO08nKYLfOVTLQviem9YzHRQkqJXzzyNSOS7av4tbYrA5+NOu4JRU3XKVIi9o+EsPi2+OMFqVhjkeYdNCvI0OHXYLKz2EdE0GTQ0ZzqvyRnA69zZXd2BTW+QLbzRn68Bz5h9SA3ltRIlQyOjfmABvkZwEJBE6C1NNyxUEyEnMHs=
Received: from BN6PR13MB1521.namprd13.prod.outlook.com (10.175.130.7) by
	BN6PR13MB1316.namprd13.prod.outlook.com (10.173.150.18) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.548.6; Mon, 5 Mar 2018 16:21:13 +0000
Received: from BN6PR13MB1521.namprd13.prod.outlook.com ([10.175.130.7]) by
	BN6PR13MB1521.namprd13.prod.outlook.com ([10.175.130.7]) with mapi id
	15.20.0567.011; Mon, 5 Mar 2018 16:21:13 +0000
From: Peter Spierenburg <peter.spierenburg@nautel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Strange filesystem problem using docker on a pyro based system
Thread-Index: AQHTtJyW+EWhTxH5Y0C0izvSxTEQLA==
Date: Mon, 5 Mar 2018 16:21:13 +0000
Message-ID: <BN6PR13MB1521EAC132680119E131E3BC9EDA0@BN6PR13MB1521.namprd13.prod.outlook.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=peter.spierenburg@nautel.com; 
x-originating-ip: [24.222.2.222]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN6PR13MB1316;
	7:NComlddxGQBrGlcnCR56xIQ8ZmLcNviCuY9MET/wEO6hpbR+ynSGk4icc2zbA4q2rHUKpPOssRSD440CVd/QXl2bzod2BP8MDORSO9wFNC8eonhm/sFKLXDH5rkPQpoIYrI6sb+7A04SgDexawExeFqMtUlWVufhM8iDAtEobq0QLxJBmRnO5T7SVfPvFnK7ME1P59iMXuKHvE1cPHO/TpIpHCambTDCUqVW/HM0XjrX40Gpo1L8ymTm35Ax9bla
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 9d0ae428-1c91-4e6a-b04f-08d582b51d74
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:BN6PR13MB1316; 
x-ms-traffictypediagnostic: BN6PR13MB1316:
x-microsoft-antispam-prvs: <BN6PR13MB13162CE2CA1B2EBD9ED9B79F9EDA0@BN6PR13MB1316.namprd13.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(5005006)(8121501046)(3002001)(3231220)(944501244)(52105095)(93006095)(93001095)(10201501046)(6041288)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123564045)(20161123558120)(6072148)(201708071742011);
	SRVR:BN6PR13MB1316; BCL:0; PCL:0; RULEID:; SRVR:BN6PR13MB1316; 
x-forefront-prvs: 06022AA85F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(376002)(346002)(39850400004)(39380400002)(366004)(189003)(199004)(51234002)(77096007)(6916009)(2501003)(68736007)(66066001)(5660300001)(2900100001)(33656002)(25786009)(478600001)(186003)(1730700003)(5890100001)(8676002)(6606003)(26005)(19627405001)(106356001)(7736002)(6506007)(59450400001)(74316002)(2351001)(102836004)(7696005)(3280700002)(81166006)(81156014)(55016002)(5640700003)(99286004)(97736004)(54896002)(14454004)(9686003)(2906002)(6116002)(316002)(86362001)(3660700001)(105586002)(8936002)(53936002)(3846002)(6436002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR13MB1316;
	H:BN6PR13MB1521.namprd13.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nautel.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: TK9E7INXvNMXH/b6unI5CVFq2m5SBeIWF5RPEPKXS/judFprENSxHyU8613fzntexYYmwa2qfv81JJAEpormZ1CCIWkprRYEqRhb7BXhACj4Y3gQyO0bA376TFmoyWM6Z+yP/TuZcfJQB8oOlYAbB5bjpLO+UekvAsoHUMZnbCLxPm7JSOZ95/pKqi/mcVFnFuFMYZ7v2Rq2aLpDx4WWDRXyZOhE/waASuelInZRv2yjLreXJy9LfMmz80GGKK+oX3vgGiAp3tTMCoFyovAr79YFYjjgqUv6BCTPb2Y2BVDIZZJZVXJNXrzp9oYsAbHCMSvSDUwdNVsk0/SBdkoUSA==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nautel.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d0ae428-1c91-4e6a-b04f-08d582b51d74
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2018 16:21:13.6970 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 656f830c-eb88-49fe-90f1-433363ec7ccf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR13MB1316
Subject: Strange filesystem problem using docker on a pyro based system
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 05 Mar 2018 16:52:51 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_BN6PR13MB1521EAC132680119E131E3BC9EDA0BN6PR13MB1521namp_"

--_000_BN6PR13MB1521EAC132680119E131E3BC9EDA0BN6PR13MB1521namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am building docker on a pyro based system. I'm using the overlay storage =
driver, and I am getting a strange result:


When I add a file to a container, any files in the same directory that come=
 from the base image disappear... Here is a short script that highlights wh=
at I mean:


docker build -t test - <<"EOF" FROM debian RUN ls -laF /usr RUN ls -laF ./u=
sr/bin RUN touch /usr/bin/bogus RUN ls -laF /usr RUN ls -laF ./usr/bin EOF =
docker run -it --name=3Dtest_container test sh -c "ls -laF /usr ; ls -laF .=
/usr/bin ; whoami && echo PASS || echo FAIL" docker logs test_container doc=
ker rm test_container docker rmi test


When I run the script above, creating the /usr/bin/bogus file causes all ot=
her files in /usr/bin to disappear, so that when the script tries to run th=
e whoami command it fails with


sh: 1: whoami: not found


I figure that I have missed some important kernel config option. According =
to /usr/share/docker/contrib/check-config.sh:


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
- CONFIG_DEVPTS_MULTIPLE_INSTANCES: enabled

Optional Features:
- CONFIG_USER_NS: enabled
- CONFIG_SECCOMP: enabled
- CONFIG_CGROUP_PIDS: missing
- CONFIG_MEMCG_SWAP: missing
- CONFIG_MEMCG_SWAP_ENABLED: missing
- CONFIG_MEMCG_KMEM: enabled
- CONFIG_BLK_CGROUP: missing
- CONFIG_BLK_DEV_THROTTLING: missing
- CONFIG_IOSCHED_CFQ: enabled (as module)
- CONFIG_CFQ_GROUP_IOSCHED: missing
- CONFIG_CGROUP_PERF: enabled
- CONFIG_CGROUP_HUGETLB: missing
- CONFIG_NET_CLS_CGROUP: enabled (as module)
- CONFIG_CGROUP_NET_PRIO: enabled
- CONFIG_CFS_BANDWIDTH: enabled
- CONFIG_FAIR_GROUP_SCHED: enabled
- CONFIG_RT_GROUP_SCHED: enabled
- CONFIG_IP_VS: enabled (as module)
- CONFIG_IP_VS_NFCT: enabled
- CONFIG_IP_VS_RR: enabled (as module)
- CONFIG_EXT3_FS: missing
- CONFIG_EXT3_FS_XATTR: missing
- CONFIG_EXT3_FS_POSIX_ACL: missing
- CONFIG_EXT3_FS_SECURITY: missing
    (enable these ext3 configs if you are using ext3 as backing filesystem)
- CONFIG_EXT4_FS: enabled
- CONFIG_EXT4_FS_POSIX_ACL: enabled
- CONFIG_EXT4_FS_SECURITY: enabled
- Network Drivers:
  - "overlay":
    - CONFIG_VXLAN: missing
      Optional (for encrypted networks):
      - CONFIG_CRYPTO: enabled
      - CONFIG_CRYPTO_AEAD: missing
      - CONFIG_CRYPTO_GCM: missing
      - CONFIG_CRYPTO_SEQIV: missing
      - CONFIG_CRYPTO_GHASH: missing
      - CONFIG_XFRM: enabled
      - CONFIG_XFRM_USER: enabled (as module)
      - CONFIG_XFRM_ALGO: enabled (as module)
      - CONFIG_INET_ESP: missing
      - CONFIG_INET_XFRM_MODE_TRANSPORT: enabled
  - "ipvlan":
    - CONFIG_IPVLAN: missing
  - "macvlan":
    - CONFIG_MACVLAN: enabled
    - CONFIG_DUMMY: missing
  - "ftp,tftp client in container":
    - CONFIG_NF_NAT_FTP: enabled (as module)
    - CONFIG_NF_CONNTRACK_FTP: enabled (as module)
    - CONFIG_NF_NAT_TFTP: enabled (as module)
    - CONFIG_NF_CONNTRACK_TFTP: enabled (as module)
- Storage Drivers:
  - "aufs":
    - CONFIG_AUFS_FS: missing
  - "btrfs":
    - CONFIG_BTRFS_FS: missing
    - CONFIG_BTRFS_FS_POSIX_ACL: missing
  - "devicemapper":
    - CONFIG_BLK_DEV_DM: missing
    - CONFIG_DM_THIN_PROVISIONING: missing
  - "overlay":
    - CONFIG_OVERLAY_FS: enabled (as module)
  - "zfs":
    - /dev/zfs: missing
    - zfs command: missing
    - zpool command: missing

Limits:
- /proc/sys/kernel/keys/root_maxkeys: 1000000


This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the contents is strictly prohibited. If you h=
ave received this message in error, please contact us immediately so we may=
 correct our records. Please then delete or destroy the original transmissi=
on and any subsequent reply. Thank you.

--_000_BN6PR13MB1521EAC132680119E131E3BC9EDA0BN6PR13MB1521namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">I am building docker on a pyro ba=
sed system. I'm using the overlay storage driver, and I am getting a strang=
e result:</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">When I add a file to a container,=
 any files in the same directory that come&nbsp;from the base image disappe=
ar... Here is a short script that highlights what I mean:</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"color: rgb(51, 51,=
 51); font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &qu=
ot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Ver=
a Sans Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 14px; whi=
te-space: pre-wrap; background-color: rgb(248, 248, 248);">docker
 build -t test - &lt;&lt;&quot;EOF&quot; FROM debian RUN ls -laF /usr RUN l=
s -laF ./usr/bin RUN touch /usr/bin/bogus RUN ls -laF /usr RUN ls -laF ./us=
r/bin EOF docker run -it --name=3Dtest_container test sh -c &quot;ls -laF /=
usr ; ls -laF ./usr/bin ; whoami &amp;&amp; echo PASS || echo FAIL&quot;
 docker logs test_container docker rm test_container docker rmi test</span>=
<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"color: rgb(51, 51,=
 51); font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &qu=
ot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Ver=
a Sans Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 14px; whi=
te-space: pre-wrap; background-color: rgb(248, 248, 248);"><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 16px;">When I run the script ab=
ove,
 creating the /usr/bin/bogus file causes all other files in /usr/bin to dis=
appear, so that when the script tries to run the whoami command it fails wi=
th</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 16px;"><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 16px;"><span style=3D"color: rg=
b(51, 51, 51); font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&q=
uot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bits=
tream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace; font-size: =
14px; white-space: pre-wrap; background-color: rgb(248, 248, 248);">sh:
 1: whoami: not found</span></span><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 16px;"><span style=3D"color: rg=
b(51, 51, 51); font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&q=
uot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bits=
tream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace; font-size: =
14px; white-space: pre-wrap; background-color: rgb(248, 248, 248);"><br>
</span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 16px;"><span style=3D"color: rg=
b(51, 51, 51); font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&q=
uot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bits=
tream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace; font-size: =
14px; white-space: pre-wrap; background-color: rgb(248, 248, 248);"><span s=
tyle=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">I
 figure that I have missed some important kernel config option. According t=
o /usr/share/docker/contrib/check-config.sh:</span><br>
</span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 16px;"><span style=3D"color: rg=
b(51, 51, 51); font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&q=
uot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bits=
tream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace; font-size: =
14px; white-space: pre-wrap; background-color: rgb(248, 248, 248);"><span s=
tyle=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
"><br>
</span></span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;=
Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;An=
droid Emoji&quot;, EmojiSymbols; font-size: 16px;"><span style=3D"color: rg=
b(51, 51, 51); font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&q=
uot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bits=
tream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace; font-size: =
14px; white-space: pre-wrap; background-color: rgb(248, 248, 248);"><span s=
tyle=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
"></p>
<div>info: reading kernel config from /proc/config.gz ...</div>
<div><br>
</div>
<div>Generally Necessary:</div>
<div>- cgroup hierarchy: properly mounted [/sys/fs/cgroup]</div>
<div>- CONFIG_NAMESPACES: enabled</div>
<div>- CONFIG_NET_NS: enabled</div>
<div>- CONFIG_PID_NS: enabled</div>
<div>- CONFIG_IPC_NS: enabled</div>
<div>- CONFIG_UTS_NS: enabled</div>
<div>- CONFIG_CGROUPS: enabled</div>
<div>- CONFIG_CGROUP_CPUACCT: enabled</div>
<div>- CONFIG_CGROUP_DEVICE: enabled</div>
<div>- CONFIG_CGROUP_FREEZER: enabled</div>
<div>- CONFIG_CGROUP_SCHED: enabled</div>
<div>- CONFIG_CPUSETS: enabled</div>
<div>- CONFIG_MEMCG: enabled</div>
<div>- CONFIG_KEYS: enabled</div>
<div>- CONFIG_VETH: enabled</div>
<div>- CONFIG_BRIDGE: enabled (as module)</div>
<div>- CONFIG_BRIDGE_NETFILTER: enabled (as module)</div>
<div>- CONFIG_NF_NAT_IPV4: enabled (as module)</div>
<div>- CONFIG_IP_NF_FILTER: enabled (as module)</div>
<div>- CONFIG_IP_NF_TARGET_MASQUERADE: enabled (as module)</div>
<div>- CONFIG_NETFILTER_XT_MATCH_ADDRTYPE: enabled (as module)</div>
<div>- CONFIG_NETFILTER_XT_MATCH_CONNTRACK: enabled (as module)</div>
<div>- CONFIG_NETFILTER_XT_MATCH_IPVS: enabled (as module)</div>
<div>- CONFIG_IP_NF_NAT: enabled (as module)</div>
<div>- CONFIG_NF_NAT: enabled (as module)</div>
<div>- CONFIG_NF_NAT_NEEDED: enabled</div>
<div>- CONFIG_POSIX_MQUEUE: enabled</div>
<div>- CONFIG_DEVPTS_MULTIPLE_INSTANCES: enabled</div>
<div><br>
</div>
<div>Optional Features:</div>
<div>- CONFIG_USER_NS: enabled</div>
<div>- CONFIG_SECCOMP: enabled</div>
<div>- CONFIG_CGROUP_PIDS: missing</div>
<div>- CONFIG_MEMCG_SWAP: missing</div>
<div>- CONFIG_MEMCG_SWAP_ENABLED: missing</div>
<div>- CONFIG_MEMCG_KMEM: enabled</div>
<div>- CONFIG_BLK_CGROUP: missing</div>
<div>- CONFIG_BLK_DEV_THROTTLING: missing</div>
<div>- CONFIG_IOSCHED_CFQ: enabled (as module)</div>
<div>- CONFIG_CFQ_GROUP_IOSCHED: missing</div>
<div>- CONFIG_CGROUP_PERF: enabled</div>
<div>- CONFIG_CGROUP_HUGETLB: missing</div>
<div>- CONFIG_NET_CLS_CGROUP: enabled (as module)</div>
<div>- CONFIG_CGROUP_NET_PRIO: enabled</div>
<div>- CONFIG_CFS_BANDWIDTH: enabled</div>
<div>- CONFIG_FAIR_GROUP_SCHED: enabled</div>
<div>- CONFIG_RT_GROUP_SCHED: enabled</div>
<div>- CONFIG_IP_VS: enabled (as module)</div>
<div>- CONFIG_IP_VS_NFCT: enabled</div>
<div>- CONFIG_IP_VS_RR: enabled (as module)</div>
<div>- CONFIG_EXT3_FS: missing</div>
<div>- CONFIG_EXT3_FS_XATTR: missing</div>
<div>- CONFIG_EXT3_FS_POSIX_ACL: missing</div>
<div>- CONFIG_EXT3_FS_SECURITY: missing</div>
<div>&nbsp; &nbsp; (enable these ext3 configs if you are using ext3 as back=
ing filesystem)</div>
<div>- CONFIG_EXT4_FS: enabled</div>
<div>- CONFIG_EXT4_FS_POSIX_ACL: enabled</div>
<div>- CONFIG_EXT4_FS_SECURITY: enabled</div>
<div>- Network Drivers:</div>
<div>&nbsp; - &quot;overlay&quot;:</div>
<div>&nbsp; &nbsp; - CONFIG_VXLAN: missing</div>
<div>&nbsp; &nbsp; &nbsp; Optional (for encrypted networks):</div>
<div>&nbsp; &nbsp; &nbsp; - CONFIG_CRYPTO: enabled</div>
<div>&nbsp; &nbsp; &nbsp; - CONFIG_CRYPTO_AEAD: missing</div>
<div>&nbsp; &nbsp; &nbsp; - CONFIG_CRYPTO_GCM: missing</div>
<div>&nbsp; &nbsp; &nbsp; - CONFIG_CRYPTO_SEQIV: missing</div>
<div>&nbsp; &nbsp; &nbsp; - CONFIG_CRYPTO_GHASH: missing</div>
<div>&nbsp; &nbsp; &nbsp; - CONFIG_XFRM: enabled</div>
<div>&nbsp; &nbsp; &nbsp; - CONFIG_XFRM_USER: enabled (as module)</div>
<div>&nbsp; &nbsp; &nbsp; - CONFIG_XFRM_ALGO: enabled (as module)</div>
<div>&nbsp; &nbsp; &nbsp; - CONFIG_INET_ESP: missing</div>
<div>&nbsp; &nbsp; &nbsp; - CONFIG_INET_XFRM_MODE_TRANSPORT: enabled</div>
<div>&nbsp; - &quot;ipvlan&quot;:</div>
<div>&nbsp; &nbsp; - CONFIG_IPVLAN: missing</div>
<div>&nbsp; - &quot;macvlan&quot;:</div>
<div>&nbsp; &nbsp; - CONFIG_MACVLAN: enabled</div>
<div>&nbsp; &nbsp; - CONFIG_DUMMY: missing</div>
<div>&nbsp; - &quot;ftp,tftp client in container&quot;:</div>
<div>&nbsp; &nbsp; - CONFIG_NF_NAT_FTP: enabled (as module)</div>
<div>&nbsp; &nbsp; - CONFIG_NF_CONNTRACK_FTP: enabled (as module)</div>
<div>&nbsp; &nbsp; - CONFIG_NF_NAT_TFTP: enabled (as module)</div>
<div>&nbsp; &nbsp; - CONFIG_NF_CONNTRACK_TFTP: enabled (as module)</div>
<div>- Storage Drivers:</div>
<div>&nbsp; - &quot;aufs&quot;:</div>
<div>&nbsp; &nbsp; - CONFIG_AUFS_FS: missing</div>
<div>&nbsp; - &quot;btrfs&quot;:</div>
<div>&nbsp; &nbsp; - CONFIG_BTRFS_FS: missing</div>
<div>&nbsp; &nbsp; - CONFIG_BTRFS_FS_POSIX_ACL: missing</div>
<div>&nbsp; - &quot;devicemapper&quot;:</div>
<div>&nbsp; &nbsp; - CONFIG_BLK_DEV_DM: missing</div>
<div>&nbsp; &nbsp; - CONFIG_DM_THIN_PROVISIONING: missing</div>
<div>&nbsp; - &quot;overlay&quot;:</div>
<div>&nbsp; &nbsp; - CONFIG_OVERLAY_FS: enabled (as module)</div>
<div>&nbsp; - &quot;zfs&quot;:</div>
<div>&nbsp; &nbsp; - /dev/zfs: missing</div>
<div>&nbsp; &nbsp; - zfs command: missing</div>
<div>&nbsp; &nbsp; - zpool command: missing</div>
<div><br>
</div>
<div>Limits:</div>
<div>- /proc/sys/kernel/keys/root_maxkeys: 1000000</div>
<br>
</span></span></span>
<p></p>
</div>
This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the
 contents is strictly prohibited. If you have received this message in erro=
r, please contact us immediately so we may correct our records. Please then=
 delete or destroy the original transmission and any subsequent reply. Than=
k you.
</body>
</html>

--_000_BN6PR13MB1521EAC132680119E131E3BC9EDA0BN6PR13MB1521namp_--
