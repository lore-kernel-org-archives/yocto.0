Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3C67E00C59; Sun,  6 Jan 2019 23:45:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [91.90.150.23 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1875 seconds by postgrey-1.32 at yocto-www;
	Sun, 06 Jan 2019 23:45:51 PST
Received: from s2023.ppsmtp.net (s2023.ppsmtp.net [91.90.150.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A341E009B1
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2019 23:45:51 -0800 (PST)
Received: from pps.filterd (s2023.ppsmtp.net [127.0.0.1])
	by s2023.ppsmtp.net (8.16.0.22/8.16.0.22) with SMTP id x077AdR9005562
	for <yocto@yoctoproject.org>; Mon, 7 Jan 2019 08:14:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type; s=pps;
	bh=B0MMdQ9MwaYJnbfiCyC4uA9JEGKUHPj4L/JLbQ3Sv40=;
	b=j4z4D3Qpb5ur53/RlHhnP/dLrUZ+jSNaM1ayj2nEuUYcThLWO8dL0ScPxXoW+/bXsyE7
	bEQwG7n/+jZhHLNfUJP5Q4beKCU2GqoFKJXz8D5mx1pcwCGXKCQOMo1AYTK/N+PtiVsl
	Lh7h/DuBZo07waHMoTrPiE382pS6RibCbrcphwYawV+RbwiL5PquuEvEFGjqZbcRsQ3L
	LbsQVZyasjOz6cGZKLUpglAfe0IBDQve1DltCh/MtXMv7WlVe22MmSHsKVNYMnlg6ghu
	PvzAlFgXdVvaafQC3jGYoMLTKGea4YGW/x/hU49loNW2tGC79k/7Up/Wp34A0IGXNCdB
	Mg== 
Received: from deesdmz227.dmz.es.de.ifm (mail27.ifm.com [194.156.152.227])
	by s2023.ppsmtp.net with ESMTP id 2ptkhcf2nk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2019 08:14:35 +0100
Received: from deesdmz227.dmz.es.de.ifm (localhost [127.0.0.1])
	by deesdmz227.dmz.es.de.ifm (Postfix) with ESMTP id BE4AE884444
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 08:14:34 +0100 (CET)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: bitbake openamp-image-minimal fails to create image
Thread-Index: AdSmWDG603OeUfxeQYusuc4ZfFevdg==
Date: Mon, 7 Jan 2019 07:14:25 +0000
Message-ID: <4d5f7a22db584df89e7e9f5404f845d2@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.147]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24342.005
X-TM-AS-Result: No-15.694100-5.000000-10
X-TMASE-MatchedRID: vZ9r3/RMU4eC0t/yRXOlURuZoNKc6pl+GSqdEmeD/nXY5zxTXVb0k6KN
	FrmtYfF2/SdWF/vCfEK09x2i4DcBnishtg6Wuu/avnSVh24OCE7xAJQLHjrob9W0pkpPR1DaPlA
	WwfVA2w4NOOjMPLXuA7CT6qsrvsnfc+UlxCAw/mtQiFNNqFvt1UyQ5fRSh265r6AbVPPkpSnvi+
	zrzomcGTQp8c7xFMPyf/k9PC1yrAhEXwnTCGfm3f0peXGEEBlvmHAp2UJ8+TxK0WT/zXAgkos6x
	aVh0wb3BHVm0xh58VY8LuP+bOkMWt3jF2fVcPdzDB+ErBr0bANar2Wff4KSIaUXswX/xrIS1BoO
	0FXL0sjuDNx+Tk7mC2JdCNPFSfXrp3Cwl7p83Yu4jAucHcCqnfi4nVERfgwdxQetL66Hi22FAf5
	iylR8Wnb4Bm7FqQnLXHn0K2CbIexZxuGjBHE90w6w00GeWBFafS0Ip2eEHnym8jxRk5/juMPmhi
	kd4RP1A9vnXq1h8XXDN3mmGreofxnodSkl97lZ8jHh2NtZUp66lSRUz9NeNf25/6UN+cuu
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--15.694100-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24342.005
X-TM-SNTS-SMTP: 3B8505FFDE04B58D51CA7A88EB5F6B0B33359B7EA59A3F383ECAFC6CF7E309DA2002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19367.x86_64 COMPUMAIL Date:
	20190107071434Z
X-Proofpoint-ID: SID=2ptkhcf2nk QID=2ptkhcf2nk-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-01-07_03:, , signatures=0
Subject: bitbake openamp-image-minimal fails to create image
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
X-List-Received-Date: Mon, 07 Jan 2019 07:45:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4d5f7a22db584df89e7e9f5404f845d2ifmcom_"

--_000_4d5f7a22db584df89e7e9f5404f845d2ifmcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
I used the meta-openamp layer for r5-a53 communication.
but when I simply ran $bitbake openamp-image-minimal, it gave me the follow=
ing error:

ERROR: openamp-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf. Comman=
d '/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3_rev_b_zy=
nqmp-pdm3-linux/openamp-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/=
dnf -y -c /media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3_r=
ev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc/dnf/dnf.conf=
 --setopt=3Dreposdir=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/tm=
p/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc=
/yum.repos.d --repofrompath=3Doe-repo,/media/iepl/iepl1/work/yocto_build/bu=
ild-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.=
0-r0/oe-rootfs-repo --installroot=3D/media/iepl/iepl1/work/yocto_build/buil=
d-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-=
r0/rootfs --setopt=3Dlogdir=3D/media/iepl/iepl1/work/yocto_build/build-open=
-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/tem=
p --nogpgcheck install kernel-module-virtio-ring kernel-module-virtio-rpmsg=
-bus kernel-module-uio-pdrv-genirq kernel-module-virtio libopen-amp0 packag=
egroup-base-extended kernel-image-fitimage-4.14.79-yocto-standard run-posti=
nsts libmetal packagegroup-core-boot kernel-module-remoteproc' returned 1:
Added oe-repo repo from /media/iepl/iepl1/work/yocto_build/build-open-amp/t=
mp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/oe-rootfs=
-repo
Last metadata expiration check: 0:00:00 ago on Fri 04 Jan 2019 01:58:31 PM =
UTC.
No package kernel-module-virtio-ring available.
No package kernel-module-virtio-rpmsg-bus available.
No package kernel-module-virtio available.
No package kernel-module-remoteproc available.
Error: Unable to find a match

ERROR: openamp-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /media/iepl/iepl1/work/yocto_build/bui=
ld-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0=
-r0/temp/log.do_rootfs.7153
ERROR: Task (/home/iepl/work/yocto_build/poky/../meta-openamp/recipes-opena=
mp/images/openamp-image-minimal.bb:do_rootfs) failed with exit code '1'


Can someone provide me a solution to this problem.
Thanks

--_000_4d5f7a22db584df89e7e9f5404f845d2ifmcom_
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Se=
goe UI&quot;,sans-serif;color:#24292E;background:white">I used the&nbsp;<st=
rong><span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif">meta-opena=
mp</span></strong>&nbsp;layer for&nbsp;<strong><span style=3D"font-family:&=
quot;Segoe UI&quot;,sans-serif">r5-a53
 communication</span></strong>.</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Segoe UI&quot;,sans-serif;color:#24292E"><br>
<span style=3D"background:white">but when I simply ran</span></span><code><=
span style=3D"font-size:9.0pt;font-family:Consolas;color:#24292E">&nbsp;$bi=
tbake openamp-image-minimal</span></code><span style=3D"font-size:10.5pt;fo=
nt-family:&quot;Segoe UI&quot;,sans-serif;color:#24292E;background:white">,
 it gave me the following error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Se=
goe UI&quot;,sans-serif;color:#24292E;background:white"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm;mso-fareast-language:EN-IN">ERROR: openamp-image-minimal-1.0-r0 do=
_rootfs: Could not invoke dnf. Command
 '/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3_rev_b_zyn=
qmp-pdm3-linux/openamp-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/d=
nf -y -c /media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3_re=
v_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc/dnf/dnf.conf
 --setopt=3Dreposdir=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/tm=
p/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs/etc=
/yum.repos.d --repofrompath=3Doe-repo,/media/iepl/iepl1/work/yocto_build/bu=
ild-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.=
0-r0/oe-rootfs-repo
 --installroot=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work=
/pdm3_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/rootfs --setopt=
=3Dlogdir=3D/media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3=
_rev_b_zynqmp-pdm3-linux/openamp-image-minimal/1.0-r0/temp
 --nogpgcheck install kernel-module-virtio-ring kernel-module-virtio-rpmsg-=
bus kernel-module-uio-pdrv-genirq kernel-module-virtio libopen-amp0 package=
group-base-extended kernel-image-fitimage-4.14.79-yocto-standard run-postin=
sts libmetal packagegroup-core-boot
 kernel-module-remoteproc' returned 1:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm;mso-fareast-language:EN-IN">Added oe-repo repo from /media/iepl/ie=
pl1/work/yocto_build/build-open-amp/tmp/work/pdm3_rev_b_zynqmp-pdm3-linux/o=
penamp-image-minimal/1.0-r0/oe-rootfs-repo<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm;mso-fareast-language:EN-IN">Last metadata expiration check: 0:00:0=
0 ago on Fri 04 Jan 2019 01:58:31 PM UTC.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm;mso-fareast-language:EN-IN">No package kernel-module-virtio-ring a=
vailable.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm;mso-fareast-language:EN-IN">No package kernel-module-virtio-rpmsg-=
bus available.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm;mso-fareast-language:EN-IN">No package kernel-module-virtio availa=
ble.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm;mso-fareast-language:EN-IN">No package kernel-module-remoteproc av=
ailable.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm;mso-fareast-language:EN-IN">Error: Unable to find a match<o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm;mso-fareast-language:EN-IN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm;mso-fareast-language:EN-IN">ERROR: openamp-image-minimal-1.0-r0 do=
_rootfs: Function failed: do_rootfs<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm;mso-fareast-language:EN-IN">ERROR: Logfile of failure stored in: /=
media/iepl/iepl1/work/yocto_build/build-open-amp/tmp/work/pdm3_rev_b_zynqmp=
-pdm3-linux/openamp-image-minimal/1.0-r0/temp/log.do_rootfs.7153<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"background:#F6F8FA"><span style=3D"font-siz=
e:9.0pt;font-family:Consolas;color:#24292E;border:none windowtext 1.0pt;pad=
ding:0cm;mso-fareast-language:EN-IN">ERROR: Task (/home/iepl/work/yocto_bui=
ld/poky/../meta-openamp/recipes-openamp/images/openamp-image-minimal.bb:do_=
rootfs)
 failed with exit code '1'</span><span style=3D"font-size:9.0pt;font-family=
:Consolas;color:#24292E;mso-fareast-language:EN-IN"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin-top:0cm"><span style=3D"font-size:10.5pt;font-family:&qu=
ot;Segoe UI&quot;,sans-serif;color:#24292E">Can someone provide me a soluti=
on to this problem.<br>
Thanks<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_4d5f7a22db584df89e7e9f5404f845d2ifmcom_--
