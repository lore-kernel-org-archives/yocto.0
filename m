Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CAACE009CA; Mon, 20 Jun 2016 13:43:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,PLING_QUERY,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CCF4E0091D
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 13:43:18 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id t129so211263333vka.1
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 13:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kAfU204/okUfQ2eMD2WeCBtY6HGHMrUYMHaM9CEpVB0=;
	b=yrrhXEXSkjDxDTAFxxCWcN6at2XAyxgEfTcf7FFSkmf43dMtUF1lIpiMhQfTJ3v+Tw
	e0wjbldPjR/1KTgRkhSu9qnPUf8+UsQKAPLqEHNu29KdRID7UpVtKpNnxaOKiOeV8TQC
	GyFhUD2KVydeopL8/Yo6Ky0OBSoBat7HRB2lcvFcwEX2CZx5sTBBnyS4QeOGla3XUQQU
	/N3H2qAqunzhMwTK0qB+j17WqepiEaTM8F8/eKocAzhjryZU+/vkD3AFQimy05V1W3f5
	WkBMDrKzi5oW6Z86m1hNaUzroujqh0pmEyMYbEpXIjxDLOErkddKmOIuaFS/OL+/q/16
	BLHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kAfU204/okUfQ2eMD2WeCBtY6HGHMrUYMHaM9CEpVB0=;
	b=AudzO4Ft2BEc+3Hn3/VR7pNhf8hhA1+CcxkG+jvEGfD+NmyEOr/vDtyBQX+WtNx0lV
	6P3vrlwaPqtQs7CfBCvP07MR2ZzeDMe9VK6uHFOCKZrmNJAxFcsyXJ8d+N0wGzgFrH8f
	lTER2omPXs2v353sAsfIYu5KZbGvxmqjUl8U4Uz/xlnWGyILWUaAD4D4NtJ4+Wx6fDmX
	5EZ5sh/nF/Lm9NDlO81Nz6wbmO03dm5M1APuLw8MaQ1+eHWPdSoGvGiERnvXg6Q/63GF
	Vjt9K/osdzcVEIIXBNFrxgkyKcwAOq4BVu6vSKn3vLUiHud6zSFg4NtGLx+2TPz/5lTF
	AGkQ==
X-Gm-Message-State: ALyK8tIi5lAHFU4j8FtjYzIVd7LJ+sZBrOu5wKp2VkpN/wH74EDMIYZNBTQo5ASCP16LCePrzz4f9Iob6/31Mw==
X-Received: by 10.159.33.33 with SMTP id 30mr7462723uab.22.1466455397464; Mon,
	20 Jun 2016 13:43:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Mon, 20 Jun 2016 13:43:16 -0700 (PDT)
In-Reply-To: <CAMKF1srtRCm2MD44U2Etf8VxsmV3xkaac80Z8rpAhM4Ubw-RHQ@mail.gmail.com>
References: <CAF3SDA5fWG_WyHHYAFDu3ZkRmv6ba+aV_8Ph6dy5avy71SQWsg@mail.gmail.com>
	<CAMKF1sqMH+Z=7+1BTAEbiPm9kQO6NYbxY7-9OgRJ=wDYcFov0A@mail.gmail.com>
	<CAF3SDA4k9M0GdWngzpE2P-=_jCoyaW_oUo6jmzNJ6uibu2hRPw@mail.gmail.com>
	<CAF3SDA413PDn7J7wcNBsAW3f5gFJeD9x4X+rerYnz=xhQr1jWQ@mail.gmail.com>
	<CAMKF1srtRCm2MD44U2Etf8VxsmV3xkaac80Z8rpAhM4Ubw-RHQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 20 Jun 2016 17:43:16 -0300
Message-ID: <CAF3SDA6mJLEzJ+DuxwWCPPHa3k+ac==8m6sDzRO95TmmkGu9Hg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Crosscompiling python extensions with yocto generated toolchains!?
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
X-List-Received-Date: Mon, 20 Jun 2016 20:43:20 -0000
Content-Type: multipart/alternative; boundary=94eb2c0b760c0b7f220535bbc1c8

--94eb2c0b760c0b7f220535bbc1c8
Content-Type: text/plain; charset=UTF-8

My first doubt was how to trully cross-compile python extensions. Since I
can't find anything usefull on internet I ask my self: How OE does it? It
seems that OE uses an patched distutils to get bits build. This
"assumption" comes from what I see at distutils/sysconfig.py that lives at
build/tmp/sysroot/.. folder. After more digging I found this patch:
http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/recipes-devtools/python/python-native/12-distutils-prefix-is-inside-staging-area.patch?h=daisy

The variables are aplied by this patch to the python-native (since I'm
still in Daisy, shame on me). At the top of the patch we see:

The proper prefix is inside our staging area.

So I'll try to contact these people to track the "proper fix". Since
crosscompiling python extensions is lacking of

documentation reading the source and talking to the gurus is the only
option avaible right now :) .


Regards,



2016-06-20 16:23 GMT-03:00 Khem Raj <raj.khem@gmail.com>:

> On Mon, Jun 20, 2016 at 12:08 PM, Daniel. <danielhilst@gmail.com> wrote:
> > I've found this recipe "python-pycurl" with exports libcurl to python.
> What
> > I did was build it and take a look at temp folder to stalk what line is
> used
> > to compile that stuff. Here it is:
> >
> > distutils_do_compile() {
> >
> >
> STAGING_INCDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/include
> > \
> >
> >
> STAGING_LIBDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/lib
> > \
> >          BUILD_SYS=x86_64-linux HOST_SYS=arm-poky-linux-gnueabi \
> >
> >
> /home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/x86_64-linux/usr/bin/python-native/python
> > setup.py build  || \
> >          bbfatal "python setup.py build_ext execution failed."
> >
> > }
> >
> >
> > So I go to my extension's source folder and paste
> >
> STAGING_INCDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/include
> > \
> >
> STAGING_LIBDIR=/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/pharosserver-imx6/usr/lib
> > \
> > BUILD_SYS=x86_64-linux HOST_SYS=arm-poky-linux-gnueabi \
> >
> /home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/x86_64-linux/usr/bin/python-native/python
> > setup.py build
> >
> > and everything works fine, I got my extension compiled. So, in what magic
> > are these enviroment variables envolved? STAGING_INCDIR
> > and STAGING_LIBDIR are OE stuff, what are these BUILD_SYS and HOST_SYS
> > related?! I'm still searching, anyway thanks Khen for
> > pointing me meta-python sources. It helped me a lot.
>
>
> OE has several classes where common operations are abstracted out and
> you can see that in recipes
> e.g. inherit setuptools etc. you should copy the recipe which is
> closest to your package and modify it
> to use your package source etc. and make other needed tweaks.
>
> >
> > Regards,
> >
> >
> > 2016-06-20 15:29 GMT-03:00 Daniel. <danielhilst@gmail.com>:
> >>
> >> Thank you Khem!!
> >>
> >> Regards,
> >>
> >> 2016-06-20 15:02 GMT-03:00 Khem Raj <raj.khem@gmail.com>:
> >>>
> >>> On Mon, Jun 20, 2016 at 10:44 AM, Daniel. <danielhilst@gmail.com>
> wrote:
> >>> > Hi everybody..
> >>> >
> >>> > I've been playing with python extensions. Now I want to compile a
> >>> > simple
> >>> > hello world extension
> >>> > to my Yocto's target, but I really can't find any good resource about
> >>> > doing
> >>> > it. So what is the teory behind it?
> >>> >
> >>> > I know that I need python headers "Python.h and others" and that I
> need
> >>> > distutils installed. After that everything is done by distutils and
> >>> > setup.py
> >>> > script, but what is done is a mistery. I found distutilscross on
> >>> > internet
> >>> > but no documentation about it!?
> >>> >
> >>> > How are python extensions cross-compiled by Yocto? Can somebody point
> >>> > me an
> >>> > example?!
> >>>
> >>> take a look at meta-python.
> >>>
> >>> http://cgit.openembedded.org/meta-openembedded/tree/meta-python
> >>>
> >>> You might find some examples close to what you are looking for.
> >>>
> >>> >
> >>> > Regards,
> >>> >
> >>> > --
> >>> > "Do or do not. There is no try"
> >>> >   Yoda Master
> >>> >
> >>> > --
> >>> > _______________________________________________
> >>> > yocto mailing list
> >>> > yocto@yoctoproject.org
> >>> > https://lists.yoctoproject.org/listinfo/yocto
> >>> >
> >>
> >>
> >>
> >>
> >> --
> >> "Do or do not. There is no try"
> >>   Yoda Master
> >
> >
> >
> >
> > --
> > "Do or do not. There is no try"
> >   Yoda Master
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--94eb2c0b760c0b7f220535bbc1c8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>My first doubt was how to trully cross-compile p=
ython extensions. Since I can&#39;t find anything usefull on internet I ask=
 my self: How OE does it? It seems that OE uses an patched distutils to get=
 bits build. This &quot;assumption&quot; comes from what I see at distutils=
/sysconfig.py that lives at build/tmp/sysroot/.. folder. After more digging=
 I found this patch: <a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/t=
ree/meta/recipes-devtools/python/python-native/12-distutils-prefix-is-insid=
e-staging-area.patch?h=3Ddaisy">http://git.yoctoproject.org/cgit.cgi/poky/t=
ree/meta/recipes-devtools/python/python-native/12-distutils-prefix-is-insid=
e-staging-area.patch?h=3Ddaisy</a><br><br></div>The variables are aplied by=
 this patch to the python-native (since I&#39;m still in Daisy, shame on me=
). At the top of the patch we see:<br><pre><code>The proper prefix is insid=
e our staging area.<br><br></code></pre><pre><code>So I&#39;ll try to conta=
ct these people to track the &quot;proper fix&quot;. Since crosscompiling p=
ython extensions is lacking of<br></code></pre><code>documentation reading =
the source and talking to the gurus is the only option avaible right now :)=
 .</code></div><br><div><code><br></code></div><code>Regards,</code><br><di=
v><div><div><div><br>=C2=A0<br></div></div></div></div></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">2016-06-20 16:23 GMT-03:00 Khem=
 Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"=
_blank">raj.khem@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><span class=3D"">On Mon, Jun 20, 2016 at 12:08 PM, Daniel. &lt;<a href=3D=
"mailto:danielhilst@gmail.com">danielhilst@gmail.com</a>&gt; wrote:<br>
&gt; I&#39;ve found this recipe &quot;python-pycurl&quot; with exports libc=
url to python. What<br>
&gt; I did was build it and take a look at temp folder to stalk what line i=
s used<br>
&gt; to compile that stuff. Here it is:<br>
&gt;<br>
&gt; distutils_do_compile() {<br>
&gt;<br>
&gt; STAGING_INCDIR=3D/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots=
/pharosserver-imx6/usr/include<br>
&gt; \<br>
&gt;<br>
&gt; STAGING_LIBDIR=3D/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots=
/pharosserver-imx6/usr/lib<br>
&gt; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BUILD_SYS=3Dx86_64-linux HOST_SYS=3D=
arm-poky-linux-gnueabi \<br>
&gt;<br>
&gt; /home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/x86_64-linux/usr=
/bin/python-native/python<br>
&gt; setup.py build=C2=A0 || \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bbfatal &quot;python setup.py build_=
ext execution failed.&quot;<br>
&gt;<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt; So I go to my extension&#39;s source folder and paste<br>
&gt; STAGING_INCDIR=3D/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots=
/pharosserver-imx6/usr/include<br>
&gt; \<br>
&gt; STAGING_LIBDIR=3D/home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots=
/pharosserver-imx6/usr/lib<br>
&gt; \<br>
&gt; BUILD_SYS=3Dx86_64-linux HOST_SYS=3Darm-poky-linux-gnueabi \<br>
&gt; /home/geckos/yocto/yocto-daisy/build_x11/tmp/sysroots/x86_64-linux/usr=
/bin/python-native/python<br>
&gt; setup.py build<br>
&gt;<br>
&gt; and everything works fine, I got my extension compiled. So, in what ma=
gic<br>
&gt; are these enviroment variables envolved? STAGING_INCDIR<br>
&gt; and STAGING_LIBDIR are OE stuff, what are these BUILD_SYS and HOST_SYS=
<br>
&gt; related?! I&#39;m still searching, anyway thanks Khen for<br>
&gt; pointing me meta-python sources. It helped me a lot.<br>
<br>
<br>
</span>OE has several classes where common operations are abstracted out an=
d<br>
you can see that in recipes<br>
e.g. inherit setuptools etc. you should copy the recipe which is<br>
closest to your package and modify it<br>
to use your package source etc. and make other needed tweaks.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt;<br>
&gt; 2016-06-20 15:29 GMT-03:00 Daniel. &lt;<a href=3D"mailto:danielhilst@g=
mail.com">danielhilst@gmail.com</a>&gt;:<br>
&gt;&gt;<br>
&gt;&gt; Thank you Khem!!<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt;<br>
&gt;&gt; 2016-06-20 15:02 GMT-03:00 Khem Raj &lt;<a href=3D"mailto:raj.khem=
@gmail.com">raj.khem@gmail.com</a>&gt;:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Mon, Jun 20, 2016 at 10:44 AM, Daniel. &lt;<a href=3D"mailt=
o:danielhilst@gmail.com">danielhilst@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt; Hi everybody..<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; I&#39;ve been playing with python extensions. Now I want =
to compile a<br>
&gt;&gt;&gt; &gt; simple<br>
&gt;&gt;&gt; &gt; hello world extension<br>
&gt;&gt;&gt; &gt; to my Yocto&#39;s target, but I really can&#39;t find any=
 good resource about<br>
&gt;&gt;&gt; &gt; doing<br>
&gt;&gt;&gt; &gt; it. So what is the teory behind it?<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; I know that I need python headers &quot;Python.h and othe=
rs&quot; and that I need<br>
&gt;&gt;&gt; &gt; distutils installed. After that everything is done by dis=
tutils and<br>
&gt;&gt;&gt; &gt; setup.py<br>
&gt;&gt;&gt; &gt; script, but what is done is a mistery. I found distutilsc=
ross on<br>
&gt;&gt;&gt; &gt; internet<br>
&gt;&gt;&gt; &gt; but no documentation about it!?<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; How are python extensions cross-compiled by Yocto? Can so=
mebody point<br>
&gt;&gt;&gt; &gt; me an<br>
&gt;&gt;&gt; &gt; example?!<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; take a look at meta-python.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; <a href=3D"http://cgit.openembedded.org/meta-openembedded/tree=
/meta-python" rel=3D"noreferrer" target=3D"_blank">http://cgit.openembedded=
.org/meta-openembedded/tree/meta-python</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; You might find some examples close to what you are looking for=
.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Regards,<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; --<br>
&gt;&gt;&gt; &gt; &quot;Do or do not. There is no try&quot;<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0Yoda Master<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; --<br>
&gt;&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a><br>
&gt;&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listin=
fo/yocto</a><br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; &quot;Do or do not. There is no try&quot;<br>
&gt;&gt;=C2=A0 =C2=A0Yoda Master<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; &quot;Do or do not. There is no try&quot;<br>
&gt;=C2=A0 =C2=A0Yoda Master<br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div style=3D"text-=
align:right"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 =
</i><i><b>Yoda Master</b></i><br></div></div>
</div>

--94eb2c0b760c0b7f220535bbc1c8--
