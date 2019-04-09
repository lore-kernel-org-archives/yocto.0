Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B84EE00C14; Tue,  9 Apr 2019 07:15:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [91.90.150.23 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from s2023.ppsmtp.net (s2023.ppsmtp.net [91.90.150.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1CDAE0097C
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 07:15:08 -0700 (PDT)
Received: from pps.filterd (s2023.ppsmtp.net [127.0.0.1])
	by s2023.ppsmtp.net (8.16.0.27/8.16.0.27) with SMTP id x39EDcvJ023485
	for <yocto@yoctoproject.org>; Tue, 9 Apr 2019 16:15:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type; s=pps;
	bh=o8nAzAXYrvMOc3iq/TMCVi1Cb6J4adqqGUkOAMWCLUg=;
	b=T6k9yQZHvvSbccX0cuXj6kMjv4DXXzIr1VOxhlHtI4mLxE6khCIhVgN6QC3hpJPOxBN0
	EeiwaYcjVqgzDuBpFrG1LyLGgHsFW47RcjbWirMytMSnSUPo72OEaXzzG4ZbDpjyRH9M
	W6h2Il7SyZ6mlszs8bqmyiO1oXov90C+hcqGGfuuyqr68iVT7ukPbeHzWm1TpRdyiEgo
	8mztQz0cRkLIE8hkA+c8bqUpV5MTO5303z3S8xseUPz8Q3LPoVVPPGfmJNnupxN/vNrl
	lKfUlAmVuhqyJ+God0Ge5s9dxOPi65opErBStfTqRWokGxIu2abZXIJmOKJsE6azkzOj
	mg== 
Received: from deesdmz226.dmz.es.de.ifm (mail26.ifm.com [194.156.152.226])
	by s2023.ppsmtp.net with ESMTP id 2rrsjkgmb6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2019 16:15:07 +0200
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id CA8AF70383A
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 16:15:06 +0200 (CEST)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: dhcp and avahi package addition to image
Thread-Index: AdTu3f/Ccr/XK594QTCTfMHY1yADAA==
Date: Tue, 9 Apr 2019 14:15:05 +0000
Message-ID: <e34cf81dae9140b4a411d054e3db49e5@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.151]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24538.002
X-TM-AS-Result: No-20.593200-5.000000-10
X-TMASE-MatchedRID: YVJj9TJpgQ5Qs1SN7/4/IEKcYi5Qw/RVLoYOuiLW+uXjsTquy0JRi6KN
	FrmtYfF2sd6sRrRksLuZXUwTz09LP5IevhHkMuimvnSVh24OCE4oUVkB7ifJnlj/amLs8rQSHFp
	YEHTKYADBe2jPP90esc1qFo3+x0nOzL464E8Rz6SJQ9k+Ypk5CYEcpMn6x9cZdgq9Q+lVZPJ0zm
	0PkQTIRzkxohyv/vQFnxne5kMO+J85clR/IzUrTbxygpRxo469vrwC6hEjckUtLFAPyz2a0ksIx
	i34LbJS8maRwkksINV546GCZUbPi0db73gUDwkXwrUhv0kAAvHqvccKLF+4pxziuLhElX/VJZ44
	eKUvRYc/makG0+v97gFk6w4YcqmhSOWjYlTyoLGYcl4BgqVyk3G1ZiUO5FCl55TSoW/nwH457kF
	jOTI5Je+6vWQCjRtKlET/T7VXa5sOVaHFOAhc6tsfxZpQv2qMtPGelsKOu4ijnkp/HAlLXORqQA
	xbWD9+4vM1YF6AJbY96sxygIbFGCAHAopEd76v1OUdrfDBxXAtj9Sv1s6lNXMdwiPHex+VqCH6A
	xUXjHJ1wk1OVsynMA==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--20.593200-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24538.002
x-tm-snts-smtp: 26EF2FAF473CD8F8FE454F88B80A403B6403A46B09233E534A2A368CE96793912002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19367.x86_64 COMPUMAIL Date:
	20190409141506Z
X-Proofpoint-ID: SID=2rrsjkgmb6 QID=2rrsjkgmb6-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-04-09_06:, , signatures=0
Subject: dhcp and avahi package addition to image
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
X-List-Received-Date: Tue, 09 Apr 2019 14:15:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_e34cf81dae9140b4a411d054e3db49e5ifmcom_"

--_000_e34cf81dae9140b4a411d054e3db49e5ifmcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I was trying to add avahi and dhcp  to my image. While running $bitbake dhc=
p avahi, everything is working fine but when I add these packages to packag=
egroup  or directly to the image recipe using EXTRA_IMAGE_INSTALL or IMAGE_=
INSTALL_append. It starts giving error.
The error  for avahi is shown below:
ERROR: core-image-special-pdm3-1.0-r0 do_rootfs: Could not invoke dnf. Comm=
and '/home/iepl007/yocto_build/build_dir/tmp/work/pdm3_zynqmp-pdm3-linux/co=
re-image-special-pdm3/1.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c /home/=
iepl007/yocto_build/build_dir/tmp/work/pdm3_zynqmp-pdm3-linux/core-image-sp=
ecial-pdm3/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/iepl0=
07/yocto_build/build_dir/tmp/work/pdm3_zynqmp-pdm3-linux/core-image-special=
-pdm3/1.0-r0/rootfs/etc/yum.repos.d --repofrompath=3Doe-repo,/home/iepl007/=
yocto_build/build_dir/tmp/work/pdm3_zynqmp-pdm3-linux/core-image-special-pd=
m3/1.0-r0/oe-rootfs-repo --installroot=3D/home/iepl007/yocto_build/build_di=
r/tmp/work/pdm3_zynqmp-pdm3-linux/core-image-special-pdm3/1.0-r0/rootfs --s=
etopt=3Dlogdir=3D/home/iepl007/yocto_build/build_dir/tmp/work/pdm3_zynqmp-p=
dm3-linux/core-image-special-pdm3/1.0-r0/temp --nogpgcheck install packageg=
roup-pdm3-apps packagegroup-pdm3-qt packagegroup-core-tools-debug packagegr=
oup-core-boot packagegroup-core-x11 packagegroup-pdm3-base packagegroup-cor=
e-tools-profile packagegroup-pdm3-fonts base-passwd packagegroup-core-ssh-o=
penssh shadow run-postinsts kernel-image-fitimage-4.14.79-yocto-standard' r=
eturned 1:
Added oe-repo repo from /home/iepl007/yocto_build/build_dir/tmp/work/pdm3_z=
ynqmp-pdm3-linux/core-image-special-pdm3/1.0-r0/oe-rootfs-repo
Last metadata expiration check: 0:00:00 ago on Tue 09 Apr 2019 01:49:20 PM =
UTC.
Error:
Problem: conflicting requests
  - nothing provides avahi needed by packagegroup-pdm3-apps-1.0-r1.noarch

ERROR: core-image-special-pdm3-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /home/iepl007/yocto_build/build_dir/tm=
p/work/pdm3_zynqmp-pdm3-linux/core-image-special-pdm3/1.0-r0/temp/log.do_ro=
otfs.12565
ERROR: Task (/home/iepl007/yocto_build/poky/../meta-pdm3-dev/meta-ifm-pdm3/=
recipes-core/images/core-image-special-pdm3.bb:do_rootfs) failed with exit =
code '1'


And the error for dhcp is shown below:


ERROR: Nothing RPROVIDES 'dhcp' (but /home/iepl007/yocto_build/poky/../meta=
-pdm3-dev/meta-ifm-pdm3/recipes-core/packagegroups/packagegroup-pdm3-app.bb=
 RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'dhcp' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dhcp']
NOTE: Runtime target 'packagegroup-pdm3-apps' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-pdm3-apps', 'dh=
cp']
ERROR: Required build target 'pdm3-special-swuimage' has no buildable provi=
ders.
Missing or unbuildable dependency chain was: ['pdm3-special-swuimage', 'cor=
e-image-special-pdm3', 'packagegroup-pdm3-apps', 'dhcp']

Please provide a solution for this I don't want to clean my sstate-cache or=
 the tmp directory. I am ready to debug the corrupted sstate if someone is =
experienced with sstate-cache.
Thanks
Kamal Pandey

--_000_e34cf81dae9140b4a411d054e3db49e5ifmcom_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IN" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I was trying to add <b>avahi</b> and <b>dhcp&nbsp; <=
/b>to my image. While running
<b>$bitbake dhcp avahi, </b>everything is working fine but when I add these=
 packages to packagegroup &nbsp;or directly to the image recipe using EXTRA=
_IMAGE_INSTALL or IMAGE_INSTALL_append. It starts giving error.<o:p></o:p><=
/p>
<p class=3D"MsoNormal">The error &nbsp;for avahi is shown below:<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal"><i>ERROR: core-image-special-pdm3-1.0-r0 do_rootfs: =
Could not invoke dnf. Command '/home/iepl007/yocto_build/build_dir/tmp/work=
/pdm3_zynqmp-pdm3-linux/core-image-special-pdm3/1.0-r0/recipe-sysroot-nativ=
e/usr/bin/dnf -y -c /home/iepl007/yocto_build/build_dir/tmp/work/pdm3_zynqm=
p-pdm3-linux/core-image-special-pdm3/1.0-r0/rootfs/etc/dnf/dnf.conf
 --setopt=3Dreposdir=3D/home/iepl007/yocto_build/build_dir/tmp/work/pdm3_zy=
nqmp-pdm3-linux/core-image-special-pdm3/1.0-r0/rootfs/etc/yum.repos.d --rep=
ofrompath=3Doe-repo,/home/iepl007/yocto_build/build_dir/tmp/work/pdm3_zynqm=
p-pdm3-linux/core-image-special-pdm3/1.0-r0/oe-rootfs-repo
 --installroot=3D/home/iepl007/yocto_build/build_dir/tmp/work/pdm3_zynqmp-p=
dm3-linux/core-image-special-pdm3/1.0-r0/rootfs --setopt=3Dlogdir=3D/home/i=
epl007/yocto_build/build_dir/tmp/work/pdm3_zynqmp-pdm3-linux/core-image-spe=
cial-pdm3/1.0-r0/temp --nogpgcheck install
 packagegroup-pdm3-apps packagegroup-pdm3-qt packagegroup-core-tools-debug =
packagegroup-core-boot packagegroup-core-x11 packagegroup-pdm3-base package=
group-core-tools-profile packagegroup-pdm3-fonts base-passwd packagegroup-c=
ore-ssh-openssh shadow run-postinsts
 kernel-image-fitimage-4.14.79-yocto-standard' returned 1:<o:p></o:p></i></=
p>
<p class=3D"MsoNormal"><i>Added oe-repo repo from /home/iepl007/yocto_build=
/build_dir/tmp/work/pdm3_zynqmp-pdm3-linux/core-image-special-pdm3/1.0-r0/o=
e-rootfs-repo<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>Last metadata expiration check: 0:00:00 ago on Tu=
e 09 Apr 2019 01:49:20 PM UTC.<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>Error:<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>Problem: conflicting requests<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>&nbsp; - nothing provides avahi needed by package=
group-pdm3-apps-1.0-r1.noarch<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i><o:p>&nbsp;</o:p></i></p>
<p class=3D"MsoNormal"><i>ERROR: core-image-special-pdm3-1.0-r0 do_rootfs: =
Function failed: do_rootfs<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>ERROR: Logfile of failure stored in: /home/iepl00=
7/yocto_build/build_dir/tmp/work/pdm3_zynqmp-pdm3-linux/core-image-special-=
pdm3/1.0-r0/temp/log.do_rootfs.12565<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>ERROR: Task (/home/iepl007/yocto_build/poky/../me=
ta-pdm3-dev/meta-ifm-pdm3/recipes-core/images/core-image-special-pdm3.bb:do=
_rootfs) failed with exit code '1'
<o:p></o:p></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And the error for dhcp is shown below:<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><i>ERROR: Nothing RPROVIDES 'dhcp' (but /home/iepl00=
7/yocto_build/poky/../meta-pdm3-dev/meta-ifm-pdm3/recipes-core/packagegroup=
s/packagegroup-pdm3-app.bb RDEPENDS on or otherwise requires it)<o:p></o:p>=
</i></p>
<p class=3D"MsoNormal"><i>NOTE: Runtime target 'dhcp' is unbuildable, remov=
ing...<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>Missing or unbuildable dependency chain was: ['dh=
cp']<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>NOTE: Runtime target 'packagegroup-pdm3-apps' is =
unbuildable, removing...<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>Missing or unbuildable dependency chain was: ['pa=
ckagegroup-pdm3-apps', 'dhcp']<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>ERROR: Required build target 'pdm3-special-swuima=
ge' has no buildable providers.<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i>Missing or unbuildable dependency chain was: ['pd=
m3-special-swuimage', 'core-image-special-pdm3', 'packagegroup-pdm3-apps', =
'dhcp']<o:p></o:p></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please provide a solution for this I don&#8217;t wan=
t to clean my sstate-cache or the tmp directory. I am ready to debug the co=
rrupted sstate if someone is experienced with sstate-cache.
<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Kamal Pandey<o:p></o:p></p>
</div>
</body>
</html>

--_000_e34cf81dae9140b4a411d054e3db49e5ifmcom_--
