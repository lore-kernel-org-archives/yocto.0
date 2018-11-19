Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D87F9E00C77; Mon, 19 Nov 2018 13:32:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42B80E00C43
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 13:32:05 -0800 (PST)
Received: by mail-wr1-f65.google.com with SMTP id l9so20710614wrt.13
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 13:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=WMukNJjqztvNf6XFEB+OaU3NYlfIut+1v+OgmyUNEl4=;
	b=CUzmREiqQEols7FYUI/f+pDIqyzFdIPK0vlhrXnoJL8WWjZtw7dNIqZ9Q0s9+As2El
	DcqOgD717wuOheLichzDoBm5IiGpDWmRG2uzxOcFTRrlPsC6ZGcJ7asrkDjBeqYwf3Cq
	PIgdQqRtkEtmrp5ehKaYBbcLUp+CX51Q21shIh+2pRH3O5GI0nyCRWkZLRJkWJTJSn+J
	cqEa6gmar0sJMVB3vnUQQXltsni7RkW+qtQL8MV1c+h3XxvUX4B4rnlBL/6ZL7Ccyv66
	4PlATJGtZtMNRlDajGNY4DD96OcvAnJSvFJQfaSuIIwbZOC/vRc2013JYcZ4ictxkmwv
	HdbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=WMukNJjqztvNf6XFEB+OaU3NYlfIut+1v+OgmyUNEl4=;
	b=tfosAfLvRp1DPTh/dfxJTEVwmxLZUckvy7IROAT9p7SbDdV35FVVOYOJF5YRLm/M6z
	xAB6GPVKKrhRs9if3G8+x7IGLPMf6hoEkFLWLJgkXD6X+zPnwLvBGsgEWbgGBJE3/DoQ
	/e16l7fgKeN1m6i0NBLjZBfKdOrK7S51bWgSVjK1x25MZRqcdFMFYf3gpeXUQ18zURU1
	sVtZ3uYLF0Mi2ZnrTVPqLNsn05RDQGsHrRkWTFRLzA/Vax8kTG3yefkfmvJTl3bkmaab
	GGVvZKm9E229wt80BhyVOVJfK/OXdMu7MYvnjuYtht3E9gRJr1slQQYfVTLb43rYmAc/
	4v5g==
X-Gm-Message-State: AA+aEWZL9VH8GuhO9as3SXBlVRl53ErmwLjTm2V5fm6hRYFIrG+qhFUj
	Y5kMbaFO0dYMpeKmX1yfvP8qvEq9uCqX9AuLoItuNUx7EWs=
X-Google-Smtp-Source: AFSGD/WgZd9iYcF87E/lCrbLcKJpsn7WfL0cMlJsaZMlmF/ucebAXFBddMMG68JGE6+SahSKhQRZwNYjuyy/Hb8g2v8=
X-Received: by 2002:a5d:568c:: with SMTP id f12mr6914718wrv.101.1542663124223; 
	Mon, 19 Nov 2018 13:32:04 -0800 (PST)
MIME-Version: 1.0
References: <20181115092658.29152-1-samuli.piippo@qt.io>
	<20181115092658.29152-2-samuli.piippo@qt.io>
	<CAJdd5GawDQsC9nfKxqEUWEMWoDw8ZbrMy-3xdF17=C_Z=Hk5Sw@mail.gmail.com>
	<HE1PR0201MB226527D27E394E02AD43585BE9DD0@HE1PR0201MB2265.eurprd02.prod.outlook.com>
In-Reply-To: <HE1PR0201MB226527D27E394E02AD43585BE9DD0@HE1PR0201MB2265.eurprd02.prod.outlook.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Mon, 19 Nov 2018 15:31:53 -0600
Message-ID: <CAJdd5GaMXbK8F9WziC52tV_YOS41T4q95vUAj+8Ne1q9wRuLHw@mail.gmail.com>
To: samuli.piippo@qt.io
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH 2/2] cmake: add support for building nativesdk-cmake
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
X-List-Received-Date: Mon, 19 Nov 2018 21:32:06 -0000
Content-Type: multipart/alternative; boundary="000000000000870c6c057b0b3f73"

--000000000000870c6c057b0b3f73
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 16, 2018 at 12:33 AM Samuli Piippo <samuli.piippo@qt.io> wrote:

> I've been testing cmake with Qt Creator integration which explicitly uses
> -G "MinGW Makefiles", while cmake defaults to NMake Makefiles. I'm not
> sure if it's possible to set generator in the toolchain file.
>

Hmm, so perhaps Qt creator isn't using %CC% %CFLAGS% & friends? Did you
manually configure it to pass the right arguments to the compiler (e.g.
path to sysroot and such)? That might explain why it works for you since
AFAIK, cmake can't handle "\" as a path separator, and that is what our
environment setup script uses.

I'm not specifically opposed to adding cmake to the SDK (I think it's
probably a good idea even), but if we are adding it to the default SDK (
nativesdk-packagegroup-sdk-host) I think it would be wise for it to work as
expected (e.g. work like it does in the Linux SDK). Fortunately, your
patches sent me off on a deeper tangent in my quest for automated testing
of the MinGW SDK, and I believe I have actually done a significant amount
of the work required to facilitate getting cmake working "as expected". You
can take a look at my patches on the jpew/oeqa branch in
meta-mingw-contrib. For the most part, the changes aren't too bad; the only
one that really scares me is the change to make the toolchain batch files
use the unix path seperator (/) instead of the Windows separator (\)
("classes/toolchain-scripts-mingw32: Use Unix path separators"). I don't
really know enough about cmake, so perhaps there is some better (cmake
specific) mechanism that we can use instead?

Just to be clear, I don't mind the changes you made to make cmake build,
but I would prefer to not add it to the SDK by default until it actually
works with the SDK (and preferably has some test cases ;).



>
> ------------------------------
> *From:* Joshua Watt <jpewhacker@gmail.com>
> *Sent:* 16 November 2018 05:35:50
> *To:* Samuli Piippo
> *Cc:* Yocto list discussion
> *Subject:* Re: [yocto] [meta-mingw][PATCH 2/2] cmake: add support for
> building nativesdk-cmake
>
> On Thu, Nov 15, 2018 at 7:22 PM Samuli Piippo <samuli.piippo@qt.io> wrote:
> >
> > Build nativesdk-cmake and dependency libs without without openssl.
> >
> > Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> > ---
> >  .../nativesdk-packagegroup-sdk-host.bbappend              | 1 +
> >  recipes-devtools/cmake/cmake_%.bbappend                   | 8 ++++++++
> >  recipes-extended/libarchive/libarchive_%.bbappend         | 1 +
> >  recipes-support/curl/curl_%.bbappend                      | 2 ++
> >  4 files changed, 12 insertions(+)
> >  create mode 100644 recipes-devtools/cmake/cmake_%.bbappend
> >  create mode 100644 recipes-extended/libarchive/libarchive_%.bbappend
> >  create mode 100644 recipes-support/curl/curl_%.bbappend
> >
> > diff --git
> a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
> b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
> > index ad69b13..9544ffb 100644
> > --- a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
> > +++ b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
> > @@ -2,4 +2,5 @@ RDEPENDS_${PN}_mingw32 = "\
> >      nativesdk-pkgconfig \
> >      nativesdk-libtool \
> >      nativesdk-qemu \
> > +    nativesdk-cmake \
>
> Have you been successful at getting cmake to work properly in MinGW?
> I've been working on automated tests for the SDK, and for kicks I
> pulled in your changes and tried to write a test for cmake (heavily
> borrowed from the cmake/assimp test in oe-core). When I ran the test,
> I got the following:
>
> --- snip ---
>
> -- Building for: NMake Makefiles
> -- The C compiler identification is GNU 8.2.0
> CMake Error at
> Z:/projects/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/testimage-sdk/CMakeTest-zljaq7x7/build/CMakeFiles/3.12.2/CMakeCCompiler.cmake:2
> (set):
>   Syntax error in cmake code at
>
>
> Z:/projects/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/testimage-sdk/CMakeTest-zljaq7x7/build/CMakeFiles/3.12.2/CMakeCCompiler.cmake:2
>
>   when parsing string
>
>       -m32 -march=i586
>
> --sysroot=Z:\projects\poky\build\tmp\work\QEMU~ELC\CORE~B5D\1~~~~N25.0-R\TEST~Y0Z\\sysroots\i586-poky-linux
>
>   Invalid escape sequence \p
> Call Stack (most recent call first):
>   CMakeLists.txt:38 (PROJECT)
>
> --- snip ---
>
> It looks like cmake doesn't like the Windows style slashes in CFLAGS.
>
> You can see my test branch at jpew/oeqa in meta-mingw-contrib... it's
> still in progress so it might be a bit of work if you want to try it
> yourself.
>
> >      "
> > diff --git a/recipes-devtools/cmake/cmake_%.bbappend
> b/recipes-devtools/cmake/cmake_%.bbappend
> > new file mode 100644
> > index 0000000..f76cd82
> > --- /dev/null
> > +++ b/recipes-devtools/cmake/cmake_%.bbappend
> > @@ -0,0 +1,8 @@
> > +DEPENDS_remove_mingw32 = "ncurses"
> > +
> > +cmake_do_generate_toolchain_file_append_mingw32() {
> > +    cat >> ${WORKDIR}/toolchain.cmake <<EOF
> > +set( CMAKE_SYSTEM_NAME Windows )
> > +EOF
> > +}
> > +
> > diff --git a/recipes-extended/libarchive/libarchive_%.bbappend
> b/recipes-extended/libarchive/libarchive_%.bbappend
> > new file mode 100644
> > index 0000000..a411b40
> > --- /dev/null
> > +++ b/recipes-extended/libarchive/libarchive_%.bbappend
> > @@ -0,0 +1 @@
> > +EXTRA_OECONF_append_mingw32 = " --without-cng"
> > diff --git a/recipes-support/curl/curl_%.bbappend
> b/recipes-support/curl/curl_%.bbappend
> > new file mode 100644
> > index 0000000..7865b46
> > --- /dev/null
> > +++ b/recipes-support/curl/curl_%.bbappend
> > @@ -0,0 +1,2 @@
> > +PACKAGECONFIG_remove_class-nativesdk_mingw32 = "ssl"
> > +RRECOMMENDS_lib${BPN}_remove_mingw32 = "ca-certificates"
> > --
> > 2.17.1
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> yocto Info Page <https://lists.yoctoproject.org/listinfo/yocto>
> lists.yoctoproject.org
> Discussion of all things about the Yocto Project. Read our Community
> Guidelines or learn more about how to participate in other community
> discussions. Subscribe before posting to bypass moderation. To see the
> collection of prior postings to the list, visit the yocto Archives.. Using
> yocto
>
>
>

--000000000000870c6c057b0b3f73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr">On Fri, Nov 16, 2018 at 12:33 AM Samuli Piippo &lt;<a href=3D"ma=
ilto:samuli.piippo@qt.io" target=3D"_blank">samuli.piippo@qt.io</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-656736637680=
1710678divtagdefaultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-=
family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<div id=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-656736637680=
1710678divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(=
0,0,0);font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple Color=
 Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbo=
l&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0px;margin-bottom:0px">I&#39;ve been testing cmake w=
ith Qt=C2=A0Creator integration which explicitly uses -G &quot;<span>MinGW =
Makefiles&quot;, while cmake defaults to NMake Makefiles. I&#39;m not sure =
if it&#39;s possible to set generator in the toolchain file.</span></p></di=
v></div></div></blockquote><div><br></div><div>Hmm, so perhaps Qt creator i=
sn&#39;t using %CC% %CFLAGS% &amp; friends? Did you manually configure it t=
o pass the right arguments to the compiler (e.g. path to sysroot and such)?=
 That might explain why it works for you since AFAIK, cmake can&#39;t handl=
e &quot;\&quot; as a path separator, and that is what our environment setup=
 script uses.</div><div><br></div><div>I&#39;m not specifically opposed to =
adding cmake to the SDK (I think it&#39;s probably a good idea even), but i=
f we are adding it to the default SDK (<font size=3D"2"><span style=3D"font=
-size:11pt">nativesdk-packagegroup-sdk-host</span></font>) I think it would=
 be wise for it to work as expected (e.g. work like it does in the Linux SD=
K). Fortunately, your patches sent me off on a deeper tangent in my quest f=
or automated testing of the MinGW SDK, and I believe I have actually done a=
 significant amount of the work required to facilitate getting cmake workin=
g &quot;as expected&quot;. You can take a look at my patches on the jpew/oe=
qa branch in meta-mingw-contrib. For the most part, the changes aren&#39;t =
too bad; the only one that really scares me is the change to make the toolc=
hain batch files use the unix path seperator (/) instead of the Windows sep=
arator (\) (&quot;classes/toolchain-scripts-mingw32: Use Unix path separato=
rs&quot;). I don&#39;t really know enough about cmake, so perhaps there is =
some better (cmake specific) mechanism that we can use instead?<br></div><d=
iv><br></div><div>Just to be clear, I don&#39;t mind the changes you made t=
o make cmake build, but I would prefer to not add it to the SDK by default =
until it actually works with the SDK (and preferably has some test cases ;)=
.<br></div><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div id=3D"gmail-m_4385032222579187521m_=
-8808417030704324353m_-6567366376801710678divtagdefaultwrapper" style=3D"fo=
nt-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=
=3D"ltr"><div id=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-656=
7366376801710678divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt;c=
olor:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0px;margin-bottom:0px"><span><br>
</span></p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-656736637680=
1710678divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Ca=
libri, sans-serif" color=3D"#000000"><b>From:</b> Joshua Watt &lt;<a href=
=3D"mailto:jpewhacker@gmail.com" target=3D"_blank">jpewhacker@gmail.com</a>=
&gt;<br>
<b>Sent:</b> 16 November 2018 05:35:50<br>
<b>To:</b> Samuli Piippo<br>
<b>Cc:</b> Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] [meta-mingw][PATCH 2/2] cmake: add support for =
building nativesdk-cmake</font>
<div>=C2=A0</div>
</div>
<div class=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-656736637=
6801710678BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt">
<div class=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-656736637=
6801710678PlainText">On Thu, Nov 15, 2018 at 7:22 PM Samuli Piippo &lt;<a h=
ref=3D"mailto:samuli.piippo@qt.io" target=3D"_blank">samuli.piippo@qt.io</a=
>&gt; wrote:<br>
&gt;<br>
&gt; Build nativesdk-cmake and dependency libs without without openssl.<br>
&gt;<br>
&gt; Signed-off-by: Samuli Piippo &lt;<a href=3D"mailto:samuli.piippo@qt.io=
" target=3D"_blank">samuli.piippo@qt.io</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 .../nativesdk-packagegroup-sdk-host.bbappend=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +<br>
&gt;=C2=A0 recipes-devtools/cmake/cmake_%.bbappend=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 | 8 ++++++++<br>
&gt;=C2=A0 recipes-extended/libarchive/libarchive_%.bbappend=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +<br>
&gt;=C2=A0 recipes-support/curl/curl_%.bbappend=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 | 2 ++<br>
&gt;=C2=A0 4 files changed, 12 insertions(+)<br>
&gt;=C2=A0 create mode 100644 recipes-devtools/cmake/cmake_%.bbappend<br>
&gt;=C2=A0 create mode 100644 recipes-extended/libarchive/libarchive_%.bbap=
pend<br>
&gt;=C2=A0 create mode 100644 recipes-support/curl/curl_%.bbappend<br>
&gt;<br>
&gt; diff --git a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-hos=
t.bbappend b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bba=
ppend<br>
&gt; index ad69b13..9544ffb 100644<br>
&gt; --- a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbapp=
end<br>
&gt; +++ b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbapp=
end<br>
&gt; @@ -2,4 +2,5 @@ RDEPENDS_${PN}_mingw32 =3D &quot;\<br>
&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 nativesdk-pkgconfig \<br>
&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 nativesdk-libtool \<br>
&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 nativesdk-qemu \<br>
&gt; +=C2=A0=C2=A0=C2=A0 nativesdk-cmake \<br>
<br>
Have you been successful at getting cmake to work properly in MinGW?<br>
I&#39;ve been working on automated tests for the SDK, and for kicks I<br>
pulled in your changes and tried to write a test for cmake (heavily<br>
borrowed from the cmake/assimp test in oe-core). When I ran the test,<br>
I got the following:<br>
<br>
--- snip ---<br>
<br>
-- Building for: NMake Makefiles<br>
-- The C compiler identification is GNU 8.2.0<br>
CMake Error at Z:/projects/poky/build/tmp/work/qemux86-poky-linux/core-imag=
e-minimal/1.0-r0/testimage-sdk/CMakeTest-zljaq7x7/build/CMakeFiles/3.12.2/C=
MakeCCompiler.cmake:2<br>
(set):<br>
=C2=A0 Syntax error in cmake code at<br>
<br>
=C2=A0=C2=A0=C2=A0 Z:/projects/poky/build/tmp/work/qemux86-poky-linux/core-=
image-minimal/1.0-r0/testimage-sdk/CMakeTest-zljaq7x7/build/CMakeFiles/3.12=
.2/CMakeCCompiler.cmake:2<br>
<br>
=C2=A0 when parsing string<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -m32 -march=3Di586<br>
--sysroot=3DZ:\projects\poky\build\tmp\work\QEMU~ELC\CORE~B5D\1~~~~N25.0-R\=
TEST~Y0Z\\sysroots\i586-poky-linux<br>
<br>
=C2=A0 Invalid escape sequence \p<br>
Call Stack (most recent call first):<br>
=C2=A0 CMakeLists.txt:38 (PROJECT)<br>
<br>
--- snip ---<br>
<br>
It looks like cmake doesn&#39;t like the Windows style slashes in CFLAGS.<b=
r>
<br>
You can see my test branch at jpew/oeqa in meta-mingw-contrib... it&#39;s<b=
r>
still in progress so it might be a bit of work if you want to try it<br>
yourself.<br>
<br>
&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;<br>
&gt; diff --git a/recipes-devtools/cmake/cmake_%.bbappend b/recipes-devtool=
s/cmake/cmake_%.bbappend<br>
&gt; new file mode 100644<br>
&gt; index 0000000..f76cd82<br>
&gt; --- /dev/null<br>
&gt; +++ b/recipes-devtools/cmake/cmake_%.bbappend<br>
&gt; @@ -0,0 +1,8 @@<br>
&gt; +DEPENDS_remove_mingw32 =3D &quot;ncurses&quot;<br>
&gt; +<br>
&gt; +cmake_do_generate_toolchain_file_append_mingw32() {<br>
&gt; +=C2=A0=C2=A0=C2=A0 cat &gt;&gt; ${WORKDIR}/toolchain.cmake &lt;&lt;EO=
F<br>
&gt; +set( CMAKE_SYSTEM_NAME Windows )<br>
&gt; +EOF<br>
&gt; +}<br>
&gt; +<br>
&gt; diff --git a/recipes-extended/libarchive/libarchive_%.bbappend b/recip=
es-extended/libarchive/libarchive_%.bbappend<br>
&gt; new file mode 100644<br>
&gt; index 0000000..a411b40<br>
&gt; --- /dev/null<br>
&gt; +++ b/recipes-extended/libarchive/libarchive_%.bbappend<br>
&gt; @@ -0,0 +1 @@<br>
&gt; +EXTRA_OECONF_append_mingw32 =3D &quot; --without-cng&quot;<br>
&gt; diff --git a/recipes-support/curl/curl_%.bbappend b/recipes-support/cu=
rl/curl_%.bbappend<br>
&gt; new file mode 100644<br>
&gt; index 0000000..7865b46<br>
&gt; --- /dev/null<br>
&gt; +++ b/recipes-support/curl/curl_%.bbappend<br>
&gt; @@ -0,0 +1,2 @@<br>
&gt; +PACKAGECONFIG_remove_class-nativesdk_mingw32 =3D &quot;ssl&quot;<br>
&gt; +RRECOMMENDS_lib${BPN}_remove_mingw32 =3D &quot;ca-certificates&quot;<=
br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"gmail-=
m_4385032222579187521m_-8808417030704324353m_-6567366376801710678LPlnk98956=
" class=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-656736637680=
1710678OWAAutoLink" target=3D"_blank">
https://lists.yoctoproject.org/listinfo/yocto</a>
<div id=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-656736637680=
1710678LPBorder_GT_15423491240070.2354233722957071" style=3D"margin-bottom:=
20px;overflow:auto;width:100%;text-indent:0px">
<table id=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-6567366376=
801710678LPContainer_15423491240050.9019769904137116" style=3D"width:90%;ba=
ckground-color:rgb(255,255,255);overflow:auto;padding-top:20px;padding-bott=
om:20px;margin-top:20px;border-top:1px dotted rgb(200,200,200);border-botto=
m:1px dotted rgb(200,200,200)" cellspacing=3D"0">
<tbody>
<tr style=3D"border-spacing:0px" valign=3D"top">
<td id=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-6567366376801=
710678TextCell_15423491240060.6552528997888396" colspan=3D"2" style=3D"vert=
ical-align:top;padding:0px;display:table-cell">
<div id=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-656736637680=
1710678LPRemovePreviewContainer_15423491240060.4063729828392795"></div>
<div id=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-656736637680=
1710678LPTitle_15423491240060.4978357256082786" style=3D"color:rgb(66,205,8=
3);font-weight:400;font-size:21px;font-family:wf_segoe-ui_light,&quot;Segoe=
 UI Light&quot;,&quot;Segoe WP Light&quot;,&quot;Segoe UI&quot;,&quot;Segoe=
 WP&quot;,Tahoma,Arial,sans-serif;line-height:21px">
<a id=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-65673663768017=
10678LPUrlAnchor_15423491240060.397776801442713" href=3D"https://lists.yoct=
oproject.org/listinfo/yocto" style=3D"text-decoration:none" target=3D"_blan=
k">yocto Info Page</a></div>
<div id=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-656736637680=
1710678LPMetadata_15423491240060.32289360814623747" style=3D"margin:10px 0p=
x 16px;color:rgb(102,102,102);font-weight:400;font-family:wf_segoe-ui_norma=
l,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font-si=
ze:14px;line-height:14px">
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a></div>
<div id=3D"gmail-m_4385032222579187521m_-8808417030704324353m_-656736637680=
1710678LPDescription_15423491240070.18548421292485706" style=3D"display:blo=
ck;color:rgb(102,102,102);font-weight:400;font-family:wf_segoe-ui_normal,&q=
uot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font-size:1=
4px;line-height:20px;max-height:100px;overflow:hidden">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation. To see the collection of pr=
ior postings to the list, visit
 the yocto Archives.. Using yocto</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
</div>
</span></font></div>
</div>
</div>

</blockquote></div></div></div>

--000000000000870c6c057b0b3f73--
