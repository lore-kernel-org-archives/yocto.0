Return-Path: <chan.kitx.yu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D434E00942; Tue,  9 Dec 2014 19:24:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CA0BE00928
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 19:24:36 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 09 Dec 2014 19:22:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,549,1413270000"; 
	d="scan'208,217";a="621352822"
Received: from kmsmsx153.gar.corp.intel.com ([172.21.73.88])
	by orsmga001.jf.intel.com with ESMTP; 09 Dec 2014 19:24:34 -0800
Received: from kmsmsx154.gar.corp.intel.com (172.21.73.14) by
	KMSMSX153.gar.corp.intel.com (172.21.73.88) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Wed, 10 Dec 2014 11:24:34 +0800
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.62]) by
	KMSMSX154.gar.corp.intel.com ([169.254.12.4]) with mapi id
	14.03.0195.001; Wed, 10 Dec 2014 11:24:33 +0800
From: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
To: Liviu Gheorghisan <liviu.gheorghisan@enea.com>, Jim Rafert
	<jimr@spectralogic.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Building clang with Yocto
Thread-Index: AQHQEw7mRsY0MXmXQESP6lU4D7T5NZyGdePQgAAVi/CAAGJQAIABNS4A
Date: Wed, 10 Dec 2014 03:24:33 +0000
Message-ID: <0E4D391FE2BDEC45AA0B4E32D6BD598A25021D@PGSMSX101.gar.corp.intel.com>
References: <86196249137E0843B2E0673D4F731E0C0108E2902F@reactor.sldomain.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A25014B@PGSMSX101.gar.corp.intel.com>
	<548722E0.3030907@enea.com>
In-Reply-To: <548722E0.3030907@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: Building clang with Yocto
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
X-List-Received-Date: Wed, 10 Dec 2014 03:24:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0E4D391FE2BDEC45AA0B4E32D6BD598A25021DPGSMSX101garcorpi_"

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A25021DPGSMSX101garcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Liviu and Jim,

The thing is I'm trying to integrate LLVM+Clang together in the LLVM recipe=
. The modifications that I made are just adding Clang, compiler-rt and Clan=
g tools within the LLVM work directory.  Using this way, I can mimic the or=
iginal way (the one in LLVM website) of installing Clang+LLVM. So there are=
 just two recipes; llvm3.3 and llvm-common just like the ones in the OpenEm=
bedded website. I do not know if I can build Clang separately.

Jim, judging from your postbuild script, it would need a RPM based linux sy=
stem to build isn't it?

Chan Kit

From: Liviu Gheorghisan [mailto:liviu.gheorghisan@enea.com]
Sent: Wednesday, December 10, 2014 12:27 AM
To: Yu, Chan KitX; Jim Rafert; yocto@yoctoproject.org
Subject: Re: [yocto] Building clang with Yocto

Hello Yu, Jim

I think you can get the clang executable into the SDK installer script with=
 something like this:

1. Add this dependency in nativesdk-packagegroup-sdk-host.bb:
RDEPENDS_${PN} +=3D "nativesdk-<name-of-clang-recipe>"

2. In the clang recipe add this install() overwrite for the nativesdk class=
 - this will install it into the SDK sysroot:
do_install_class-nativesdk() {
    install -d ${D}${bindir}
    install -m 0755 clang ${D}${bindir}
}

3. The clang recipe (I don't know if it has a recipe of its own, or it's pa=
rt of the LLVM recipe) should also inherit from nativesdk:
BBCLASSEXTEND =3D "nativesdk"

Basically this should get your clang executable inside the SDK installer. S=
ure you can add more executables related to clang (like the llvm-related on=
es) in the install_class-nativesdk() function.

- Liviu Gheorghisan
On 12/09/2014 04:36 AM, Yu, Chan KitX wrote:

I **think** I'm just inches away from success. I think I just need to invok=
e a correct install command somewhere in the do_install function but so far=
 I have not managed to do so. But right now the alternative way of jamming =
the compiler into the SDK sounds tempting to me.



-----Original Message-----

From: Yu, Chan KitX

Sent: Tuesday, December 09, 2014 9:19 AM

To: 'Jim Rafert'; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

Subject: RE: Building clang with Yocto



Hi Jim,



How did you jam the clang compiler into the SDK tarball?



Chan Kit



-----Original Message-----

From: Jim Rafert [mailto:jimr@spectralogic.com]

Sent: Tuesday, December 09, 2014 1:48 AM

To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>; Yu, Chan KitX

Subject: Building clang with Yocto



Hello Chan,



I have been working to a similar goal, to include clang in the toolchain to=
 be used for compiling applications to run on the target.  Using clang to c=
ompile the OS and kernel are not required or  desired by me.



You may get some insight from the thread I started in November on the subje=
ct.  I'm not sure that this contains all of the posts on the subject. You m=
ay want to search the archive for November.



I have not been successful yet in getting clang actually packaged in the to=
olchain, in the Yocto build,  but at least it builds.  I have a postbuild s=
cript that takes the built clang compiler from the work directory and jams =
it into the SDK tarball that is embedded in the sdk install script.



-Jim-





________________________________________

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>] on=
 behalf of yocto-request@yoctoproject.org<mailto:yocto-request@yoctoproject=
.org> [yocto-request@yoctoproject.org<mailto:yocto-request@yoctoproject.org=
>]

Sent: Monday, December 08, 2014 2:56 AM

To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

Subject: yocto Digest, Vol 51, Issue 26



Send yocto mailing list submissions to

        yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>



To subscribe or unsubscribe via the World Wide Web, visit

        https://lists.yoctoproject.org/listinfo/yocto

or, via email, send a message with subject or body 'help' to

        yocto-request@yoctoproject.org<mailto:yocto-request@yoctoproject.or=
g>



You can reach the person managing the list at

        yocto-owner@yoctoproject.org<mailto:yocto-owner@yoctoproject.org>



When replying, please edit your Subject line so it is more specific than "R=
e: Contents of yocto digest..."


--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A25021DPGSMSX101garcorpi_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
tt
	{mso-style-priority:99;
	font-family:"Courier New";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	color:black;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";
	color:black;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Liviu and Jim,<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">The thing is I&#8217;m tr=
ying to integrate LLVM&#43;Clang together in the LLVM recipe. The modificat=
ions that I made are just adding Clang, compiler-rt and Clang tools
 within the LLVM work directory.&nbsp; Using this way, I can mimic the orig=
inal way (the one in LLVM website) of installing Clang&#43;LLVM. So there a=
re just two recipes; llvm3.3 and llvm-common just like the ones in the Open=
Embedded website. I do not know if I can
 build Clang separately.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jim, judging from your po=
stbuild script, it would need a RPM based linux system to build isn&#8217;t=
 it?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Chan Kit<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> Liviu Gheorghisan [mailto:liviu.gheorghisan@enea.=
com]
<br>
<b>Sent:</b> Wednesday, December 10, 2014 12:27 AM<br>
<b>To:</b> Yu, Chan KitX; Jim Rafert; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Building clang with Yocto<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hello Yu, Jim<br>
<br>
I think you can get the clang executable into the SDK installer script with=
 something like this:<br>
<br>
1. Add this dependency in nativesdk-packagegroup-sdk-host.bb:<br>
<tt><b><span style=3D"font-size:10.0pt">RDEPENDS_${PN} &#43;=3D &quot;nativ=
esdk-&lt;name-of-clang-recipe&gt;&quot;</span></b></tt><br>
<br>
2. In the clang recipe add this install() overwrite for the nativesdk class=
 - this will install it into the SDK sysroot:<br>
<tt><b><span style=3D"font-size:10.0pt">do_install_class-nativesdk() {</spa=
n></b></tt><b><span style=3D"font-size:10.0pt;font-family:&quot;Courier New=
&quot;"><br>
<tt>&nbsp;&nbsp;&nbsp; install -d ${D}${bindir}</tt><br>
<tt>&nbsp;&nbsp;&nbsp; install -m 0755 clang ${D}${bindir}</tt><br>
<tt>}</tt></span></b><br>
<br>
3. The clang recipe (I don't know if it has a recipe of its own, or it's pa=
rt of the LLVM recipe) should also inherit from nativesdk:<br>
<tt><b>BBCLASSEXTEND =3D &quot;nativesdk&quot;</b></tt><br>
<br>
Basically this should get your clang executable inside the SDK installer. S=
ure you can add more executables related to clang (like the llvm-related on=
es) in the install_class-nativesdk() function.<br>
<br>
- Liviu Gheorghisan<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 12/09/2014 04:36 AM, Yu, Chan KitX wrote:<o:p></o=
:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<pre>I **think** I'm just inches away from success. I think I just need to =
invoke a correct install command somewhere in the do_install function but s=
o far I have not managed to do so. But right now the alternative way of jam=
ming the compiler into the SDK sounds tempting to me.<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>-----Original Message-----<o:p></o:p></pre>
<pre>From: Yu, Chan KitX <o:p></o:p></pre>
<pre>Sent: Tuesday, December 09, 2014 9:19 AM<o:p></o:p></pre>
<pre>To: 'Jim Rafert'; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoct=
oproject.org</a><o:p></o:p></pre>
<pre>Subject: RE: Building clang with Yocto<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Hi Jim,<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>How did you jam the clang compiler into the SDK tarball?<o:p></o:p></p=
re>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Chan Kit<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>-----Original Message-----<o:p></o:p></pre>
<pre>From: Jim Rafert [<a href=3D"mailto:jimr@spectralogic.com">mailto:jimr=
@spectralogic.com</a>] <o:p></o:p></pre>
<pre>Sent: Tuesday, December 09, 2014 1:48 AM<o:p></o:p></pre>
<pre>To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a>; Yu, Chan KitX<o:p></o:p></pre>
<pre>Subject: Building clang with Yocto<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Hello Chan,<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>I have been working to a similar goal, to include clang in the toolcha=
in to be used for compiling applications to run on the target.&nbsp; Using =
clang to compile the OS and kernel are not required or&nbsp; desired by me.=
&nbsp; <o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>You may get some insight from the thread I started in November on the =
subject.&nbsp; I'm not sure that this contains all of the posts on the subj=
ect. You may want to search the archive for November.<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>I have not been successful yet in getting clang actually packaged in t=
he toolchain, in the Yocto build,&nbsp; but at least it builds.&nbsp; I hav=
e a postbuild script that takes the built clang compiler from the work dire=
ctory and jams it into the SDK tarball that is embedded in the sdk install =
script.<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>-Jim-<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>________________________________________<o:p></o:p></pre>
<pre>From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@=
yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">yoc=
to-bounces@yoctoproject.org</a>] on behalf of <a href=3D"mailto:yocto-reque=
st@yoctoproject.org">yocto-request@yoctoproject.org</a> [<a href=3D"mailto:=
yocto-request@yoctoproject.org">yocto-request@yoctoproject.org</a>]<o:p></o=
:p></pre>
<pre>Sent: Monday, December 08, 2014 2:56 AM<o:p></o:p></pre>
<pre>To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><o:p></o:p></pre>
<pre>Subject: yocto Digest, Vol 51, Issue 26<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Send yocto mailing list submissions to<o:p></o:p></pre>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"mailto:yocto@yoc=
toproject.org">yocto@yoctoproject.org</a><o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>To subscribe or unsubscribe via the World Wide Web, visit<o:p></o:p></=
pre>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"https://lists.yo=
ctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yoct=
o</a><o:p></o:p></pre>
<pre>or, via email, send a message with subject or body 'help' to<o:p></o:p=
></pre>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"mailto:yocto-req=
uest@yoctoproject.org">yocto-request@yoctoproject.org</a><o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>You can reach the person managing the list at<o:p></o:p></pre>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"mailto:yocto-own=
er@yoctoproject.org">yocto-owner@yoctoproject.org</a><o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>When replying, please edit your Subject line so it is more specific th=
an &quot;Re: Contents of yocto digest...&quot;<o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A25021DPGSMSX101garcorpi_--
