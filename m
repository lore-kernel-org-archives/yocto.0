Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DBBAE00902; Mon, 22 Dec 2014 09:03:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6B87E008DC
	for <yocto@yoctoproject.org>; Mon, 22 Dec 2014 09:03:01 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: "Yu, Chan KitX" <chan.kitx.yu@intel.com>, Liviu Gheorghisan
	<liviu.gheorghisan@enea.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Building clang with Yocto
Thread-Index: AQHQEw7mRsY0MXmXQESP6lU4D7T5NZyGdePQgAAVi/CAAV3FAIAAt6mAgBNKZxo=
Date: Mon, 22 Dec 2014 17:02:59 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0C0108E29AE1@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0C0108E2902F@reactor.sldomain.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A25014B@PGSMSX101.gar.corp.intel.com>
	<548722E0.3030907@enea.com>,
	<0E4D391FE2BDEC45AA0B4E32D6BD598A25021D@PGSMSX101.gar.corp.intel.com>
In-Reply-To: <0E4D391FE2BDEC45AA0B4E32D6BD598A25021D@PGSMSX101.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.254.6]
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
X-List-Received-Date: Mon, 22 Dec 2014 17:03:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_86196249137E0843B2E0673D4F731E0C0108E29AE1reactorsldoma_"

--_000_86196249137E0843B2E0673D4F731E0C0108E29AE1reactorsldoma_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Chan,

I'm sorry that I have seemed to ignore you for a time, but I have been at h=
ome recovering from some surgery.

You are correnct.  My script does assume rpm package management, but  could=
 be easily modified to use use whatever package manager you are using.


________________________________
From: Yu, Chan KitX [chan.kitx.yu@intel.com]
Sent: Tuesday, December 09, 2014 8:24 PM
To: Liviu Gheorghisan; Jim Rafert; yocto@yoctoproject.org
Subject: Re: [yocto] Building clang with Yocto

Liviu and Jim,

The thing is I=92m trying to integrate LLVM+Clang together in the LLVM reci=
pe. The modifications that I made are just adding Clang, compiler-rt and Cl=
ang tools within the LLVM work directory.  Using this way, I can mimic the =
original way (the one in LLVM website) of installing Clang+LLVM. So there a=
re just two recipes; llvm3.3 and llvm-common just like the ones in the Open=
Embedded website. I do not know if I can build Clang separately.

Jim, judging from your postbuild script, it would need a RPM based linux sy=
stem to build isn=92t it?

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


--_000_86196249137E0843B2E0673D4F731E0C0108E29AE1reactorsldoma_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style>=0A=
<!--=0A=
@font-face=0A=
	{font-family:Calibri}=0A=
@font-face=0A=
	{font-family:Tahoma}=0A=
@font-face=0A=
	{font-family:Consolas}=0A=
p.MsoNormal, li.MsoNormal, div.MsoNormal=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:12.0pt;=0A=
	font-family:"Times New Roman","serif";=0A=
	color:black}=0A=
a:link, span.MsoHyperlink=0A=
	{color:blue;=0A=
	text-decoration:underline}=0A=
a:visited, span.MsoHyperlinkFollowed=0A=
	{color:purple;=0A=
	text-decoration:underline}=0A=
pre=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:10.0pt;=0A=
	font-family:"Courier New";=0A=
	color:black}=0A=
tt=0A=
	{font-family:"Courier New"}=0A=
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate=0A=
	{margin:0in;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:8.0pt;=0A=
	font-family:"Tahoma","sans-serif";=0A=
	color:black}=0A=
span.HTMLPreformattedChar=0A=
	{font-family:Consolas;=0A=
	color:black}=0A=
span.BalloonTextChar=0A=
	{font-family:"Tahoma","sans-serif";=0A=
	color:black}=0A=
span.EmailStyle22=0A=
	{font-family:"Calibri","sans-serif";=0A=
	color:#1F497D}=0A=
.MsoChpDefault=0A=
	{font-size:10.0pt}=0A=
@page WordSection1=0A=
	{margin:1.0in 1.0in 1.0in 1.0in}=0A=
-->=0A=
</style><style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin=
-bottom:0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1" lang=3D"EN-US" link=3D"blue" vlink=3D"purple=
" bgcolor=3D"white">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hi Chan,<br>
<br>
I'm sorry that I have seemed to ignore you for a time, but I have been at h=
ome recovering from some surgery.<br>
<br>
You are correnct.&nbsp; My script does assume rpm package management, but&n=
bsp; could be easily modified to use use whatever package manager you are u=
sing.<br>
<div><br>
<div style=3D"font-family:Tahoma; font-size:13px"><br>
</div>
</div>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div style=3D"direction: ltr;" id=3D"divRpF47322"><font face=3D"Tahoma" siz=
e=3D"2" color=3D"#000000"><b>From:</b> Yu, Chan KitX [chan.kitx.yu@intel.co=
m]<br>
<b>Sent:</b> Tuesday, December 09, 2014 8:24 PM<br>
<b>To:</b> Liviu Gheorghisan; Jim Rafert; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Building clang with Yocto<br>
</font><br>
</div>
<div></div>
<div>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Liviu and Jim,</span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">The thing is I=92m tryi=
ng to integrate LLVM&#43;Clang together in the LLVM recipe. The modificatio=
ns that I made are just adding Clang, compiler-rt and Clang tools
 within the LLVM work directory.&nbsp; Using this way, I can mimic the orig=
inal way (the one in LLVM website) of installing Clang&#43;LLVM. So there a=
re just two recipes; llvm3.3 and llvm-common just like the ones in the Open=
Embedded website. I do not know if I can
 build Clang separately.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Jim, judging from your =
postbuild script, it would need a RPM based linux system to build isn=92t i=
t?</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">Chan Kit</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #B5C4DF 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt; font-family:&quo=
t;Tahoma&quot;,&quot;sans-serif&quot;; color:windowtext">From:</span></b><s=
pan style=3D"font-size:10.0pt; font-family:&quot;Tahoma&quot;,&quot;sans-se=
rif&quot;; color:windowtext"> Liviu Gheorghisan [mailto:liviu.gheorghisan@e=
nea.com]
<br>
<b>Sent:</b> Wednesday, December 10, 2014 12:27 AM<br>
<b>To:</b> Yu, Chan KitX; Jim Rafert; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Building clang with Yocto</span></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;</p>
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
n></b></tt><b><span style=3D"font-size:10.0pt; font-family:&quot;Courier Ne=
w&quot;"><br>
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
- Liviu Gheorghisan</p>
<div>
<p class=3D"MsoNormal">On 12/09/2014 04:36 AM, Yu, Chan KitX wrote:</p>
</div>
<blockquote style=3D"margin-top:5.0pt; margin-bottom:5.0pt">
<pre>I **think** I'm just inches away from success. I think I just need to =
invoke a correct install command somewhere in the do_install function but s=
o far I have not managed to do so. But right now the alternative way of jam=
ming the compiler into the SDK sounds tempting to me.</pre>
<pre>&nbsp;</pre>
<pre>-----Original Message-----</pre>
<pre>From: Yu, Chan KitX </pre>
<pre>Sent: Tuesday, December 09, 2014 9:19 AM</pre>
<pre>To: 'Jim Rafert'; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"=
_blank">yocto@yoctoproject.org</a></pre>
<pre>Subject: RE: Building clang with Yocto</pre>
<pre>&nbsp;</pre>
<pre>Hi Jim,</pre>
<pre>&nbsp;</pre>
<pre>How did you jam the clang compiler into the SDK tarball?</pre>
<pre>&nbsp;</pre>
<pre>Chan Kit</pre>
<pre>&nbsp;</pre>
<pre>-----Original Message-----</pre>
<pre>From: Jim Rafert [<a href=3D"mailto:jimr@spectralogic.com" target=3D"_=
blank">mailto:jimr@spectralogic.com</a>] </pre>
<pre>Sent: Tuesday, December 09, 2014 1:48 AM</pre>
<pre>To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a>; Yu, Chan KitX</pre>
<pre>Subject: Building clang with Yocto</pre>
<pre>&nbsp;</pre>
<pre>Hello Chan,</pre>
<pre>&nbsp;</pre>
<pre>I have been working to a similar goal, to include clang in the toolcha=
in to be used for compiling applications to run on the target.&nbsp; Using =
clang to compile the OS and kernel are not required or&nbsp; desired by me.=
&nbsp; </pre>
<pre>&nbsp;</pre>
<pre>You may get some insight from the thread I started in November on the =
subject.&nbsp; I'm not sure that this contains all of the posts on the subj=
ect. You may want to search the archive for November.</pre>
<pre>&nbsp;</pre>
<pre>I have not been successful yet in getting clang actually packaged in t=
he toolchain, in the Yocto build,&nbsp; but at least it builds.&nbsp; I hav=
e a postbuild script that takes the built clang compiler from the work dire=
ctory and jams it into the SDK tarball that is embedded in the sdk install =
script.</pre>
<pre>&nbsp;</pre>
<pre>-Jim-</pre>
<pre>&nbsp;</pre>
<pre>&nbsp;</pre>
<pre>________________________________________</pre>
<pre>From: <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_bla=
nk">yocto-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoc=
toproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] on beh=
alf of <a href=3D"mailto:yocto-request@yoctoproject.org" target=3D"_blank">=
yocto-request@yoctoproject.org</a> [<a href=3D"mailto:yocto-request@yoctopr=
oject.org" target=3D"_blank">yocto-request@yoctoproject.org</a>]</pre>
<pre>Sent: Monday, December 08, 2014 2:56 AM</pre>
<pre>To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a></pre>
<pre>Subject: yocto Digest, Vol 51, Issue 26</pre>
<pre>&nbsp;</pre>
<pre>Send yocto mailing list submissions to</pre>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"mailto:yocto@yoc=
toproject.org" target=3D"_blank">yocto@yoctoproject.org</a></pre>
<pre>&nbsp;</pre>
<pre>To subscribe or unsubscribe via the World Wide Web, visit</pre>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"https://lists.yo=
ctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject=
.org/listinfo/yocto</a></pre>
<pre>or, via email, send a message with subject or body 'help' to</pre>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"mailto:yocto-req=
uest@yoctoproject.org" target=3D"_blank">yocto-request@yoctoproject.org</a>=
</pre>
<pre>&nbsp;</pre>
<pre>You can reach the person managing the list at</pre>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"mailto:yocto-own=
er@yoctoproject.org" target=3D"_blank">yocto-owner@yoctoproject.org</a></pr=
e>
<pre>&nbsp;</pre>
<pre>When replying, please edit your Subject line so it is more specific th=
an &quot;Re: Contents of yocto digest...&quot;</pre>
</blockquote>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_86196249137E0843B2E0673D4F731E0C0108E29AE1reactorsldoma_--
