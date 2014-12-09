Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43E8FE0086F; Tue,  9 Dec 2014 08:47:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A690E0082F
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 08:47:23 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: Liviu Gheorghisan <liviu.gheorghisan@enea.com>, "Yu, Chan KitX"
	<chan.kitx.yu@intel.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Building clang with Yocto
Thread-Index: AQHQEw7mRsY0MXmXQESP6lU4D7T5NZyGdePQgAAVi/CAAV3FAP//js7X
Date: Tue, 9 Dec 2014 16:47:21 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0C0108E2919B@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0C0108E2902F@reactor.sldomain.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A25014B@PGSMSX101.gar.corp.intel.com>,
	<548722E0.3030907@enea.com>
In-Reply-To: <548722E0.3030907@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.200.8]
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
X-List-Received-Date: Tue, 09 Dec 2014 16:47:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_86196249137E0843B2E0673D4F731E0C0108E2919Breactorsldoma_"

--_000_86196249137E0843B2E0673D4F731E0C0108E2919Breactorsldoma_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Liviu,

Thanks for the tip.  I had everything but the override for do_install_class=
-nativesdk().

One question please.

Will that override prevent the gcc compilers from being installed in native=
sdk?  Or should I duplicate the existing do_install_class-nativesdk(), and =
add the clang stuff?

-Jim-


________________________________
From: Liviu Gheorghisan [liviu.gheorghisan@enea.com]
Sent: Tuesday, December 09, 2014 9:27 AM
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



--_000_86196249137E0843B2E0673D4F731E0C0108E2919Breactorsldoma_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1" bgcolor=3D"#FFFFFF">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hi Liviu,<br>
<br>
Thanks for the tip.&nbsp; I had everything but the override for do_install_=
class-nativesdk().<br>
<br>
One question please.<br>
<br>
Will that override prevent the gcc compilers from being installed in native=
sdk?&nbsp; Or should I duplicate the existing do_install_class-nativesdk(),=
 and add the clang stuff?<br>
<br>
-Jim-<br>
<div><br>
<div style=3D"font-family:Tahoma; font-size:13px"><br>
</div>
</div>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div style=3D"direction: ltr;" id=3D"divRpF84833"><font color=3D"#000000" f=
ace=3D"Tahoma" size=3D"2"><b>From:</b> Liviu Gheorghisan [liviu.gheorghisan=
@enea.com]<br>
<b>Sent:</b> Tuesday, December 09, 2014 9:27 AM<br>
<b>To:</b> Yu, Chan KitX; Jim Rafert; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Building clang with Yocto<br>
</font><br>
</div>
<div></div>
<div>Hello Yu, Jim<br>
<br>
I think you can get the clang executable into the SDK installer script with=
 something like this:<br>
<br>
1. Add this dependency in nativesdk-packagegroup-sdk-host.bb:<br>
<b><big><tt>RDEPENDS_${PN} &#43;=3D &quot;nativesdk-&lt;name-of-clang-recip=
e&gt;&quot;</tt></big></b><br>
<br>
2. In the clang recipe add this install() overwrite for the nativesdk class=
 - this will install it into the SDK sysroot:<br>
<b><big><tt>do_install_class-nativesdk() {</tt><tt><br>
</tt><tt>&nbsp;&nbsp;&nbsp; install -d ${D}${bindir}</tt><tt><br>
</tt><tt>&nbsp;&nbsp;&nbsp; install -m 0755 clang ${D}${bindir}</tt><tt><br=
>
</tt><tt>}</tt></big></b><br>
<br>
3. The clang recipe (I don't know if it has a recipe of its own, or it's pa=
rt of the LLVM recipe) should also inherit from nativesdk:<br>
<b><tt><big>BBCLASSEXTEND =3D &quot;nativesdk&quot;</big></tt></b><br>
<br>
Basically this should get your clang executable inside the SDK installer. S=
ure you can add more executables related to clang (like the llvm-related on=
es) in the install_class-nativesdk() function.<br>
<br>
- Liviu Gheorghisan<br>
<br>
<div class=3D"moz-cite-prefix">On 12/09/2014 04:36 AM, Yu, Chan KitX wrote:=
<br>
</div>
<blockquote type=3D"cite">
<pre>I **think** I'm just inches away from success. I think I just need to =
invoke a correct install command somewhere in the do_install function but s=
o far I have not managed to do so. But right now the alternative way of jam=
ming the compiler into the SDK sounds tempting to me.=0A=
=0A=
-----Original Message-----=0A=
From: Yu, Chan KitX =0A=
Sent: Tuesday, December 09, 2014 9:19 AM=0A=
To: 'Jim Rafert'; <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yoct=
o@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>=0A=
Subject: RE: Building clang with Yocto=0A=
=0A=
Hi Jim,=0A=
=0A=
How did you jam the clang compiler into the SDK tarball?=0A=
=0A=
Chan Kit=0A=
=0A=
-----Original Message-----=0A=
From: Jim Rafert [<a class=3D"moz-txt-link-freetext" href=3D"mailto:jimr@sp=
ectralogic.com" target=3D"_blank">mailto:jimr@spectralogic.com</a>] =0A=
Sent: Tuesday, December 09, 2014 1:48 AM=0A=
To: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a>; Yu, Chan KitX=0A=
Subject: Building clang with Yocto=0A=
=0A=
Hello Chan,=0A=
=0A=
I have been working to a similar goal, to include clang in the toolchain to=
 be used for compiling applications to run on the target.  Using clang to c=
ompile the OS and kernel are not required or  desired by me.  =0A=
=0A=
You may get some insight from the thread I started in November on the subje=
ct.  I'm not sure that this contains all of the posts on the subject. You m=
ay want to search the archive for November.=0A=
=0A=
I have not been successful yet in getting clang actually packaged in the to=
olchain, in the Yocto build,  but at least it builds.  I have a postbuild s=
cript that takes the built clang compiler from the work directory and jams =
it into the SDK tarball that is embedded in the sdk install script.=0A=
=0A=
-Jim-=0A=
=0A=
=0A=
________________________________________=0A=
From: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto-bounces@yo=
ctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> [<a cl=
ass=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto-bounces@yoctoproject.=
org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] on behalf of <a =
class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto-request@yoctoprojec=
t.org" target=3D"_blank">yocto-request@yoctoproject.org</a> [<a class=3D"mo=
z-txt-link-abbreviated" href=3D"mailto:yocto-request@yoctoproject.org" targ=
et=3D"_blank">yocto-request@yoctoproject.org</a>]=0A=
Sent: Monday, December 08, 2014 2:56 AM=0A=
To: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a>=0A=
Subject: yocto Digest, Vol 51, Issue 26=0A=
=0A=
Send yocto mailing list submissions to=0A=
        <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto@yoctopro=
ject.org" target=3D"_blank">yocto@yoctoproject.org</a>=0A=
=0A=
To subscribe or unsubscribe via the World Wide Web, visit=0A=
        <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoctoproje=
ct.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/lis=
tinfo/yocto</a>=0A=
or, via email, send a message with subject or body 'help' to=0A=
        <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto-request@=
yoctoproject.org" target=3D"_blank">yocto-request@yoctoproject.org</a>=0A=
=0A=
You can reach the person managing the list at=0A=
        <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto-owner@yo=
ctoproject.org" target=3D"_blank">yocto-owner@yoctoproject.org</a>=0A=
=0A=
When replying, please edit your Subject line so it is more specific than &q=
uot;Re: Contents of yocto digest...&quot;=0A=
</pre>
</blockquote>
<br>
</div>
</div>
</div>
</body>
</html>

--_000_86196249137E0843B2E0673D4F731E0C0108E2919Breactorsldoma_--
