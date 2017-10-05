Return-Path: <Jeff.Glanz@dell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A204E00D87; Thu,  5 Oct 2017 13:35:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [68.232.149.220 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Oct 2017 13:35:25 PDT
Received: from esa2.dell-outbound.iphmx.com (esa2.dell-outbound.iphmx.com
	[68.232.149.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 795BBE00C9F
	for <yocto@yoctoproject.org>; Thu,  5 Oct 2017 13:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
	t=1507235725; x=1538771725;
	h=from:cc:to:subject:date:message-id:mime-version;
	bh=985xqG2k0XZRJg0Bwp9Dek8R1mfFXloM3IOVYLP1ybY=;
	b=tTyDltj5abSxVXZ5gprtFs4nz+Kxl3M/T8R0stga2TXMTzUr2FqMgjnC
	0y01vb6pOuGnkzYJlRy4Pcl+ZadlAtybXAJ0w7KafKDp1j1koKNYsSZuF
	t4/qEgazg/buaJmJPkN42I2IbZLQJY/wjbnJLzo0Q9aCXGtQCdXPInkhH M=;
Received: from esa6.dell-outbound2.iphmx.com ([68.232.154.99])
	by esa2.dell-outbound.iphmx.com with
	ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Oct 2017 15:34:23 -0500
From: <Jeff.Glanz@dell.com>
Received: from ausxipps306.us.dell.com ([143.166.148.156])
	by esa6.dell-outbound2.iphmx.com with
	ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Oct 2017 02:34:23 +0600
X-LoopCount0: from 10.166.136.214
X-IronPort-AV: E=Sophos;i="5.42,482,1500958800"; 
	d="scan'208,217";a="156323217"
X-DLP: DLP_GlobalPCIDSS
To: <yocto@yoctoproject.org>
Thread-Topic: Kernel driver installs broken in poky2.3
Thread-Index: AdM+GLMxy+bw3dOLStu3LoPXTNZXBQ==
Date: Thu, 5 Oct 2017 20:34:22 +0000
Message-ID: <96841aee253542c099d45ff7a5297981@ausx13mpc121.AMER.DELL.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.242.75]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 10 Oct 2017 11:53:50 -0700
Cc: Michael.E.Brown@dell.com
Subject: Kernel driver installs broken in poky2.3
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
X-List-Received-Date: Thu, 05 Oct 2017 20:35:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_96841aee253542c099d45ff7a5297981ausx13mpc121AMERDELLCOM_"

--_000_96841aee253542c099d45ff7a5297981ausx13mpc121AMERDELLCOM_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Re: poky2.3 kernel driver install's



Poky release, pyro (2.3), file: meta/classes/module.bbclass

This change, made in January 2017, is breaking  do_install's for our kernel=
 drivers, as INSTALL_MOD_PATH is not defined.  Our Makefiles reference this=
 variable.

What was the purpose of this particular change?



diff:

commit 0decf1cc1c35dd70f3b822e3b4291a810a319ba0

Author: Amarnath Valluri <amarnath.valluri@intel.com>

Date:   Wed Jan 4 13:58:23 2017 +0200



    kernel: use ${nonarch_base_libdir} for kernel modules installation.



    Replace hardcoded '/lib' in kernel modules installation path with

    ${nonarch_base_libdir}, which is meant exactly for this.



    (From OE-Core rev: 22f5ba7154fcbe826d0a3283740903312b2aab46)



    Signed-off-by: Amarnath Valluri <amarnath.valluri@intel.com>

    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

. . .

diff --git a/meta/classes/module.bbclass b/meta/classes/module.bbclass

index 99b7ebc..802476b 100644

--- a/meta/classes/module.bbclass

+++ b/meta/classes/module.bbclass

@@ -31,7 +31,7 @@ module_do_compile() {



module_do_install() {

    unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS

-   oe_runmake DEPMOD=3Decho INSTALL_MOD_PATH=3D"${D}" \

+ oe_runmake DEPMOD=3Decho MODLIB=3D"${D}${nonarch_base_libdir}/modules/${K=
ERNEL_VERSION}" \

Thanks!

Jeff Glanz
Senior Dev Prin Engineer, SCM & Release Engineering
Dell EMC | Server Solutions
Jeff.Glanz@dell.com<mailto:Jeff.Glanz@dell.com>


--_000_96841aee253542c099d45ff7a5297981ausx13mpc121AMERDELLCOM_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Re: poky2.3 kern=
el driver install&#8217;s<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Poky release, py=
ro (2.3), file: meta/classes/module.bbclass<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">This change, mad=
e in January 2017, is breaking&nbsp; do_install's for our kernel drivers, a=
s INSTALL_MOD_PATH is not defined.&nbsp; Our Makefiles reference
 this variable.<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">What was the pur=
pose of this particular change?<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">diff:
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">commit 0decf1cc1=
c35dd70f3b822e3b4291a810a319ba0<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Author: Amarnath=
 Valluri &lt;amarnath.valluri@intel.com&gt;<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Date:&nbsp;&nbsp=
; Wed Jan 4 13:58:23 2017 &#43;0200<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;&nbsp;&nbs=
p; kernel: use ${nonarch_base_libdir} for kernel modules installation.<o:p>=
</o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;&nbsp;&nbs=
p; Replace hardcoded '/lib' in kernel modules installation path with<o:p></=
o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;&nbsp;&nbs=
p; ${nonarch_base_libdir}, which is meant exactly for this.<o:p></o:p></spa=
n></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;&nbsp;&nbs=
p; (From OE-Core rev: 22f5ba7154fcbe826d0a3283740903312b2aab46)<o:p></o:p><=
/span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;&nbsp;&nbs=
p; Signed-off-by: Amarnath Valluri &lt;amarnath.valluri@intel.com&gt;<o:p><=
/o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;&nbsp;&nbs=
p; Signed-off-by: Richard Purdie &lt;richard.purdie@linuxfoundation.org&gt;=
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">. . .<o:p></o:p>=
</span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">diff --git a/met=
a/classes/module.bbclass b/meta/classes/module.bbclass<o:p></o:p></span></p=
>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">index 99b7ebc..8=
02476b 100644<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">--- a/meta/class=
es/module.bbclass<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&#43;&#43;&#43; =
b/meta/classes/module.bbclass<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">@@ -31,7 &#43;31=
,7 @@ module_do_compile() {<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">module_do_instal=
l() {<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;&nbsp;&nbs=
p; unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">-&nbsp;&nbsp; oe=
_runmake DEPMOD=3Decho INSTALL_MOD_PATH=3D&quot;${D}&quot; \<o:p></o:p></sp=
an></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&#43; oe_runmake=
 DEPMOD=3Decho MODLIB=3D&quot;${D}${nonarch_base_libdir}/modules/${KERNEL_V=
ERSION}&quot; \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#1F497D">Jeff Glanz</span></b><span style=3D"=
font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#1F497D"><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#1F497D">Senior Dev Prin Engineer, SCM &amp; Rele=
ase Engineering<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#00B0F0">Dell</span></b><span style=3D"font-si=
ze:8.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#1F497D">
</span><span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-se=
rif;color:#7F7F7F">EMC</span><span style=3D"font-size:8.0pt;font-family:&qu=
ot;Arial&quot;,sans-serif;color:#1F497D"> | Server Solutions</span><span st=
yle=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black=
"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#1F497D"><a href=3D"mailto:Jeff.Glanz@dell.com"><=
span style=3D"color:blue">Jeff.Glanz@dell.com</span></a><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_96841aee253542c099d45ff7a5297981ausx13mpc121AMERDELLCOM_--
