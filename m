Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 081A4E00A08; Wed, 18 Jan 2017 07:10:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.133 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.126.133 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 238E1E00A03
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 07:10:26 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue005
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0M6heq-1cfuaa3CBI-00wVew
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 16:10:24 +0100
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Wed, 18 Jan 2017 15:10:23 -0000
Organization: LN Systems Limited
Message-ID: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdJxm76r42G/wrCZRhaTKOOUulQQTA==
X-Provags-ID: V03:K0:wIkGo3QE6g/NYr8HRZ2m8qKpAnw4HwU3LNzmmt8LkZ6qVHvd14v
	cdOCu4bL7imygKiZ0/BJFlA2ckZzwoPwU+GJWpxMsWJ1/KXGRxa1YPGnGKSjr8EGc0i/hnJ
	vub9+sb44CwfsEHj/uI2Pt9olQdhCkD6n7zdEeqT0LeD5gvtuoWbrqws+zVnk6nEbU39lrc
	B6gEOo3Uy3SJMJ6ScVweQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:tqwyGhVYTqY=:5dnaiotQw76sFrxVVGErhs
	TAzrqL2mEzl2C1T281hXv074fQSPNYmN66UbZ5NSmmHIiUas46mhE5oKjUT7NHgzi9YSs2iE/
	nxZGYYcLt3K+4kzbn3AI31mUfxuuV40OjK3nVq+jhPA0LoenPBOfo5iTzWwiPY/C8/dV77QOM
	H0zEOXmLMEGYjOMe3yJ5OmD35fxvmGqhvMhwLRKpoObTEX5erl1M8N47kAg7VBBkTJViaagaa
	vbQTHNTSFqCo2jMm/QXU6tHba5pxHhJVzoxEcYmGe3ciQc8UdCCwhZlvGZ7w8qPGZfdrb2yMC
	PcIBZ306T7iQ9HCvTNCOl/ngpcQ+72gxmcOTyCE5NAsu4QhNrziq3TpeUIV1eth+U2fWtOtXc
	KJZwwSc92+UiP2NjMog/vJf3UgTorRG3m2neQuR4sBTEt3+Y8gBI8aa9NoVPffnVdTBaKaEvM
	nmuwcIQ8IRIVVQEhChh1y1/J76rMxuQHMDkxy0Mq28/CpDwazCq7rH/8xJDyKvl9bSzxEMxl1
	1xPMeM0SFeopuIOTMVOSjkfbAidSZ2mIimXoIlK3ha1/9Q/TGefYN0KdFE4x1YmEaxZG/Sofi
	O+n0EPBUnsm4RwXcGkgESuitGDzKaqwuX3xqJisRwaU8de5F7F+rYkxJ4+uSMqweidJ5Lu3/z
	Zr7Imw1/MqL4ydoS2F/h/wzxIop4KLTHEyUYRFSiCDMYppoczoSs4idKO+Y0AJfe3bw6Z5Txf
	9Umy0lJIlEPfH5xI
Subject: Changing over to systemd (no dhcp)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jan 2017 15:10:30 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0493_01D2719C.FEAC3060"
Content-Language: en-gb

------=_NextPart_000_0493_01D2719C.FEAC3060
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

We have a configuration for our embedded system which is working via SysV,
but we're investigating moving over to systemd. 

Not sure if this is 'wise' - if anyone has technological arguments
for/against then I'd be interested - but I wanted to investigate it anyway.

 

I've modified local.conf (right or wrong) with

  DISTRO_FEATURES_append = " systemd"

  VIRTUAL-RUNTIME_init_manager = "systemd"

  DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"

  VIRTUAL-RUNTIME_initscripts = ""

  KERNEL_ENABLE_CGROUPS = "1"

 

I also found a readme
(https://cgit.freedesktop.org/systemd/systemd/tree/README#n37) about the
kernel requirements for systemd, and it does at least now boot.

However although eth0 is coming up ('ifconfig eth0'), there doesn't seem to
be any dhcp happening - no IP etc.

Previously (under SysV) I had the busybox dhcp client; now it seems that is
missing. There's a symlink /etc/systemd/system/busybox-udhcpc.service to
/dev/null

I'm using 

  Poky Jethro

  Kernel 4.4.0

  Busybox 1.23.2 (with 'CONFIG_FEATURE_SYSTEMD=y')

 

I wondered if this is just a simple switch I'm missing somewhere, or is
there a whole load more modifications I need to dig into and hand-craft?
(Was hoping for something 'out of the box'..)

 

Thanks

 


------=_NextPart_000_0493_01D2719C.FEAC3060
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	font-size:10.0pt;
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>We have a configuration for our embedded system which =
is working via SysV, but we&#8217;re investigating moving over to =
systemd. <o:p></o:p></p><p class=3DMsoNormal>Not sure if this is =
&#8216;wise&#8217; &#8211; if anyone has technological arguments =
for/against then I&#8217;d be interested &#8211; but I wanted to =
investigate it anyway.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I&#8217;ve =
modified local.conf (right or wrong) with<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp; DISTRO_FEATURES_append =3D &quot; =
systemd&quot;<o:p></o:p></p><p class=3DMsoNormal>&nbsp; =
VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp; DISTRO_FEATURES_BACKFILL_CONSIDERED =3D =
&quot;sysvinit&quot;<o:p></o:p></p><p class=3DMsoNormal>&nbsp; =
VIRTUAL-RUNTIME_initscripts =3D &quot;&quot;<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp; KERNEL_ENABLE_CGROUPS =3D =
&quot;1&quot;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I also found a readme =
(https://cgit.freedesktop.org/systemd/systemd/tree/README#n37) about the =
kernel requirements for systemd, and it does at least now =
boot.<o:p></o:p></p><p class=3DMsoNormal>However although eth0 is coming =
up (&#8216;ifconfig eth0&#8217;), there doesn&#8217;t seem to be any =
dhcp happening &#8211; no IP etc.<o:p></o:p></p><p =
class=3DMsoNormal>Previously (under SysV) I had the busybox dhcp client; =
now it seems that is missing. There&#8217;s a symlink =
/etc/systemd/system/busybox-udhcpc.service to /dev/null<o:p></o:p></p><p =
class=3DMsoNormal>I&#8217;m using <o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;Poky Jethro<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp; Kernel 4.4.0<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp; Busybox 1.23.2 (with =
&#8216;CONFIG_FEATURE_SYSTEMD=3Dy&#8217;)<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I wondered =
if this is just a simple switch I&#8217;m missing somewhere, or is there =
a whole load more modifications I need to dig into and hand-craft? (Was =
hoping for something &#8216;out of the =
box&#8217;&#8230;.)<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0493_01D2719C.FEAC3060--
