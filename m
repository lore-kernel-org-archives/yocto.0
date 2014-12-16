Return-Path: <costin.c.constantin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF4FDE0093F; Tue, 16 Dec 2014 02:09:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C380E00571
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 02:08:59 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2014 02:08:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,585,1413270000"; 
	d="scan'208,217";a="638286753"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2014 02:08:55 -0800
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.126]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.113]) with mapi id
	14.03.0195.001; Tue, 16 Dec 2014 10:08:50 +0000
From: "Constantin, Costin C" <costin.c.constantin@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: RE: [yocto] how to set static ip in linux
Thread-Index: AdAZGEkGGGd+6cNsRJWOdYEC23ucQw==
Date: Tue, 16 Dec 2014 10:08:49 +0000
Message-ID: <2B8B4B6BB45F5242AFEC714E022A4B4A27680D8A@IRSMSX101.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 16 Dec 2014 08:53:38 -0800
Subject: Re: how to set static ip in linux
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
X-List-Received-Date: Tue, 16 Dec 2014 10:09:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2B8B4B6BB45F5242AFEC714E022A4B4A27680D8AIRSMSX101gercor_"

--_000_2B8B4B6BB45F5242AFEC714E022A4B4A27680D8AIRSMSX101gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Sachin

The easiest way to do this is by modifying the install script. Here is how:
Suppose you cloned poky into a local dir. on your HDD drive. I use Ubuntu f=
or this but you can use whatever certified OS (Fedora, Centos, OpenSuse) ju=
st:

$ cd your_local_poky_dir
$ gedit meta/recipes-core/initrdscripts/files/init-install.sh
...
#before the line containing "umount /tgt_root"   add the following
# interface=3D$(ls /sys/class/net | grep eth)
# echo "ifconfig $interface your_desired_ip netmask 255.255.255.0 up" >> /t=
gt_root/etc/profile
#eg.:
interface=3D$(ls /sys/class/net | grep eth)
echo "ifconfig $interface 10.10.10.10 netmask 255.255.255.0 up" >> /tgt_roo=
t/etc/profile
#after this comes
umount /tgt_root
...

Regards,

Costin Constantin
Yocto QA team

--_000_2B8B4B6BB45F5242AFEC714E022A4B4A27680D8AIRSMSX101gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello Sachin<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The easiest way to do this is by modifying the insta=
ll script. Here is how:<o:p></o:p></p>
<p class=3D"MsoNormal">Suppose you cloned poky into a local dir. on your HD=
D drive. I use Ubuntu for this but you can use whatever certified OS (Fedor=
a, Centos, OpenSuse) just:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">$ cd your_local_poky_dir<o:p></o:p></p>
<p class=3D"MsoNormal">$ gedit meta/recipes-core/initrdscripts/files/init-i=
nstall.sh<o:p></o:p></p>
<p class=3D"MsoNormal">...<o:p></o:p></p>
<p class=3D"MsoNormal">#before the line containing &#8220;umount /tgt_root&=
#8221;&nbsp;&nbsp; add the following<o:p></o:p></p>
<p class=3D"MsoNormal"># interface=3D$(ls /sys/class/net | grep eth)<o:p></=
o:p></p>
<p class=3D"MsoNormal"># echo &#8220;ifconfig $interface your_desired_ip ne=
tmask 255.255.255.0 up&#8221; &gt;&gt; /tgt_root/etc/profile<o:p></o:p></p>
<p class=3D"MsoNormal">#eg.:<o:p></o:p></p>
<p class=3D"MsoNormal">interface=3D$(ls /sys/class/net | grep eth)<o:p></o:=
p></p>
<p class=3D"MsoNormal">echo &#8220;ifconfig $interface 10.10.10.10 netmask =
255.255.255.0 up&#8221; &gt;&gt; /tgt_root/etc/profile<o:p></o:p></p>
<p class=3D"MsoNormal">#after this comes<o:p></o:p></p>
<p class=3D"MsoNormal">umount /tgt_root<o:p></o:p></p>
<p class=3D"MsoNormal">...<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Costin Constantin<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Yocto QA team<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_2B8B4B6BB45F5242AFEC714E022A4B4A27680D8AIRSMSX101gercor_--
