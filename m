Return-Path: <onureser12@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC3AAE00D36; Mon, 15 Jul 2019 01:06:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (onureser12[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48D63E003E1
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 01:06:31 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id g17so15994953wrr.5
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 01:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=s+gULeRSDGVXnmw3+XOJf6sfdcwrfGz3MjJKXzBl8Xg=;
	b=oTV4JfD+pbJTlqSLc/+pfhD57tfaP8VE/vkow4WDOM5iOtHI62pqK31nWduvPYttL3
	im6D7htDc4Fwzar8TXnwnxHbPMev36G9ehdHvJlBaoXunIDA4OUfi3dQb+pLCLADbREj
	HAcGfLhnG/prS/9pDVnAd63SdD41V1bl/L0KB5hlqiU9A6z9xgE7M76h0VSqfk36VhCg
	0cHYQ0H3prUO/9gTDMqFEZmyJZp8CRQDUG2IG93SF2rmhYkvnl8LX/SN4BoybwctXpar
	ZwQJLU93m7i2V+8YpOoDchwApBh9/2BNEJILsZCt0rUdxnumZ6UK8/N3EouiOfoIQgio
	4q4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=s+gULeRSDGVXnmw3+XOJf6sfdcwrfGz3MjJKXzBl8Xg=;
	b=XLAsjcypWIB4VnvSPeDnY+grBcyYU9WZEZ4P5pMXw/YKfL8zmFfwkKzTRfUHqZBBlp
	+1iwCDaH5hZ2MyC7tHbyMiYQUW6NeqyQDWbL4fjI6mQ2o7zNy6LrFVMLe/eS4Bo4PFa5
	LPK06eMqnKo+E0f03xxir4NYuBDNUKFuRbThGjQkHRLOC9rnB+bqhIk7kaxY9EOeTWcQ
	d3iNKvx2iWT1kIA+B+XoEHCI42SWRfMRgQJFxzt9JgqAR4iupDTWk0HegwwMYPgbxfjw
	AvXEkrcarsbxiGrsgQmiyTeubTc2yzNzhaTIujsQSayZiY9lIUKdg3/ztUI35cAmm6nr
	XJFA==
X-Gm-Message-State: APjAAAVwGr0sp2V2PqGoh3BNvRp1KDiA9a56Y1y3QW2mNVxjE189OgTl
	kc2cfinjrfT56cthvMGFZ+u7Il8QOSAQhWnloIU=
X-Google-Smtp-Source: APXvYqw28EN2Ey/8r3YnmF6ztoiTBIUmHnG08ZkmSXlS91iQhz78X3Ish4MV2KvzYb0mjnWJb8L9KfudEVtOyNJBdXg=
X-Received: by 2002:a5d:528d:: with SMTP id c13mr26955151wrv.247.1563177990256;
	Mon, 15 Jul 2019 01:06:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8ZcYRYaFcyFopckNiTMR8ZTJW5vcM1cO+DZM7-0aR3+rA@mail.gmail.com>
	<CAMKF1soen1zoyD=eE73Vod4pG_OBSSVLb2mpWE50VVsjObas2w@mail.gmail.com>
In-Reply-To: <CAMKF1soen1zoyD=eE73Vod4pG_OBSSVLb2mpWE50VVsjObas2w@mail.gmail.com>
From: Onur Eser <onureser12@gmail.com>
Date: Mon, 15 Jul 2019 11:06:18 +0300
Message-ID: <CAG+Ob8ZWhYpp9qh2+6nvsJouf9usOCTWsP_7836T6FHh1F8vAA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Meta-Qt5] "Unknown Module: declarative" Error While Creating Toolchain
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
X-List-Received-Date: Mon, 15 Jul 2019 08:06:32 -0000
Content-Type: multipart/alternative; boundary="000000000000d47e78058db3bc1f"

--000000000000d47e78058db3bc1f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem,
Thank you for your answer. I have built a toolchain as exactly as you said,
days ago.
But it was giving error Unknown Modules: widgets when I try to compile. Me
and my
BSP found that this is a know Qt layer issue that will not be solved til an
update is pushed to meta-qt5 layer.
Thank you anyway, I am trying to native compile over Debian.
Have a great week!
Onur

Khem Raj <raj.khem@gmail.com>, 15 Tem 2019 Pzt, 03:55 tarihinde =C5=9Funu y=
azd=C4=B1:

> On Mon, Jul 8, 2019 at 10:59 PM Onur Eser <onureser12@gmail.com> wrote:
> >
> > Hello All,
> >
> > I have talked to my BSP provider and they have solved the conflict file=
s
> issue with an update. Now I am able to create and boot a Yocto Image with
> Meta-Qt5 recipes and 'dev_pkgs' in it. But still cannot create a toolchai=
n.
> Nor with I guess it is trying to compile something before qtdeclarative,
> but these 'something' depends on qtdeclarative.
> >
> > My image is core image is Weston. I added the line 'inherit
> populate_sdk_qt5' to my core-image-weston.bb file. And tried both
> commands 'bitbake meta-toolchain-qt5' and 'bitbake -c populate_sdk
> core-image-weston'. The result is the same.
> >
> > I cut just the error part of my output:
> >
> > | cd qdeclarativefolderlistmodel/ && ( test -e Makefile ||
> /home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquic=
k1/5.10.1+gitAUTOINC+b2476dcd53-r0/recipe-sysroot-native/usr/bin/qt5/qmake
> -o Makefile
> /home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquic=
k1/5.10.1+gitAUTOINC+b2476dcd53-r0/git/tests/auto/declarative/qdeclarativef=
olderlistmodel/
> qdeclarativefolderlistmodel.pro ) && make -f Makefile
> > | Project ERROR: Unknown module(s) in QT: declarative widgets
> > | Makefile:88: recipe for target 'sub-qdeclarativecomponent-make_first'
> failed
> > | make[2]: *** [sub-qdeclarativecomponent-make_first] Error 3
> > | make[2]: *** Waiting for unfinished jobs....
> > | Project ERROR: Unknown module(s) in QT: declarative
> > | Project ERROR: Unknown module(s) in QT: declarative
> > | Makefile:113: recipe for target 'sub-qdeclarativecontext-make_first'
> failed
> > | make[2]: *** [sub-qdeclarativecontext-make_first] Error 3
> > | Project ERROR: Unknown module(s) in QT: declarative
> > | Makefile:138: recipe for target 'sub-qdeclarativeengine-make_first'
> failed
> > | make[2]: *** [sub-qdeclarativeengine-make_first] Error 3
> > | Makefile:63: recipe for target 'sub-parserstress-make_first' failed
> > | make[2]: *** [sub-parserstress-make_first] Error 3
> > | make[2]: Entering directory
> '/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtqui=
ck1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/manual/declarative'
> > | make[2]: Nothing to be done for 'first'.
> > | make[2]: Leaving directory
> '/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtqui=
ck1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/manual/declarative'
> > | make[1]: Leaving directory
> '/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtqui=
ck1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/manual'
> > | Project ERROR: Unknown module(s) in QT: declarative
> > | Makefile:163: recipe for target 'sub-qdeclarativeerror-make_first'
> failed
> > | make[2]: *** [sub-qdeclarativeerror-make_first] Error 3
> > | Project ERROR: Unknown module(s) in QT: declarative
> > | Makefile:188: recipe for target
> 'sub-qdeclarativefolderlistmodel-make_first' failed
> > | make[2]: *** [sub-qdeclarativefolderlistmodel-make_first] Error 3
> > | make[2]: Leaving directory
> '/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtqui=
ck1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/auto/declarative'
> > | Makefile:45: recipe for target 'sub-declarative-make_first' failed
> > | make[1]: *** [sub-declarative-make_first] Error 2
> > | make[1]: Leaving directory
> '/home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtqui=
ck1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/tests/auto'
> > | Makefile:45: recipe for target 'sub-auto-make_first' failed
> > | make: *** [sub-auto-make_first] Error 2
> > | ERROR: oe_runmake failed
> > | WARNING: exit code 1 from a shell command.
> > | ERROR: Function failed: do_compile_ptest_base (log file is located at
> /home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquic=
k1/5.10.1+gitAUTOINC+b2476dcd53-r0/temp/log.do_compile_ptest_base.29566)
> > ERROR: Task (/home/closx/poky/meta-qt5/recipes-qt/qt5/qtquick1_git.bb:d=
o_compile_ptest_base)
> failed with exit code '1'
> >
> > What do you guys think the reason of this issue may be? Any solution
> offers?
> >
> > My full output:
> > https://paste.ee/p/PupWr#Epvqnw9FoasgQEBhIXqQ8hH7veMcRybX
> >
> > Another source issue again?
> > Have a lovely day!
>
> qtquick1 has been removed but I am guessting you are on an older
> release. Can you try adding DEPENDS +=3D "qtdeclarative"  to qtquick1
> recipe and see if that helps ?
> secondly you can stop build ptest for this package since thats where
> its failing, that might be a workaround.
>
> > Onur
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000d47e78058db3bc1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Khem,</div><div>Thank you for your answer. I have =
built a toolchain as exactly as you said, days ago.</div><div> But it was g=
iving error Unknown Modules: widgets when I try to compile. Me and my</div>=
<div>BSP found that this is a know Qt layer issue that will not be solved t=
il an update is pushed to meta-qt5 layer.</div><div>Thank you anyway, I am =
trying to native compile over Debian.</div><div>Have a great week!</div><di=
v>Onur<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem=
@gmail.com</a>&gt;, 15 Tem 2019 Pzt, 03:55 tarihinde =C5=9Funu yazd=C4=B1:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Mon, Jul 8, 2=
019 at 10:59 PM Onur Eser &lt;<a href=3D"mailto:onureser12@gmail.com" targe=
t=3D"_blank">onureser12@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello All,<br>
&gt;<br>
&gt; I have talked to my BSP provider and they have solved the conflict fil=
es issue with an update. Now I am able to create and boot a Yocto Image wit=
h Meta-Qt5 recipes and &#39;dev_pkgs&#39; in it. But still cannot create a =
toolchain. Nor with I guess it is trying to compile something before qtdecl=
arative, but these &#39;something&#39; depends on qtdeclarative.<br>
&gt;<br>
&gt; My image is core image is Weston. I added the line &#39;inherit popula=
te_sdk_qt5&#39; to my <a href=3D"http://core-image-weston.bb" rel=3D"norefe=
rrer" target=3D"_blank">core-image-weston.bb</a> file. And tried both comma=
nds &#39;bitbake meta-toolchain-qt5&#39; and &#39;bitbake -c populate_sdk c=
ore-image-weston&#39;. The result is the same.<br>
&gt;<br>
&gt; I cut just the error part of my output:<br>
&gt;<br>
&gt; | cd qdeclarativefolderlistmodel/ &amp;&amp; ( test -e Makefile || /ho=
me/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.=
10.1+gitAUTOINC+b2476dcd53-r0/recipe-sysroot-native/usr/bin/qt5/qmake -o Ma=
kefile /home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/q=
tquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/git/tests/auto/declarative/qdeclara=
tivefolderlistmodel/<a href=3D"http://qdeclarativefolderlistmodel.pro" rel=
=3D"noreferrer" target=3D"_blank">qdeclarativefolderlistmodel.pro</a> ) &am=
p;&amp; make -f Makefile<br>
&gt; | Project ERROR: Unknown module(s) in QT: declarative widgets<br>
&gt; | Makefile:88: recipe for target &#39;sub-qdeclarativecomponent-make_f=
irst&#39; failed<br>
&gt; | make[2]: *** [sub-qdeclarativecomponent-make_first] Error 3<br>
&gt; | make[2]: *** Waiting for unfinished jobs....<br>
&gt; | Project ERROR: Unknown module(s) in QT: declarative<br>
&gt; | Project ERROR: Unknown module(s) in QT: declarative<br>
&gt; | Makefile:113: recipe for target &#39;sub-qdeclarativecontext-make_fi=
rst&#39; failed<br>
&gt; | make[2]: *** [sub-qdeclarativecontext-make_first] Error 3<br>
&gt; | Project ERROR: Unknown module(s) in QT: declarative<br>
&gt; | Makefile:138: recipe for target &#39;sub-qdeclarativeengine-make_fir=
st&#39; failed<br>
&gt; | make[2]: *** [sub-qdeclarativeengine-make_first] Error 3<br>
&gt; | Makefile:63: recipe for target &#39;sub-parserstress-make_first&#39;=
 failed<br>
&gt; | make[2]: *** [sub-parserstress-make_first] Error 3<br>
&gt; | make[2]: Entering directory &#39;/home/closx/poky/build/tmp/work/cor=
texa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/bu=
ild/tests/manual/declarative&#39;<br>
&gt; | make[2]: Nothing to be done for &#39;first&#39;.<br>
&gt; | make[2]: Leaving directory &#39;/home/closx/poky/build/tmp/work/cort=
exa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/bui=
ld/tests/manual/declarative&#39;<br>
&gt; | make[1]: Leaving directory &#39;/home/closx/poky/build/tmp/work/cort=
exa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/bui=
ld/tests/manual&#39;<br>
&gt; | Project ERROR: Unknown module(s) in QT: declarative<br>
&gt; | Makefile:163: recipe for target &#39;sub-qdeclarativeerror-make_firs=
t&#39; failed<br>
&gt; | make[2]: *** [sub-qdeclarativeerror-make_first] Error 3<br>
&gt; | Project ERROR: Unknown module(s) in QT: declarative<br>
&gt; | Makefile:188: recipe for target &#39;sub-qdeclarativefolderlistmodel=
-make_first&#39; failed<br>
&gt; | make[2]: *** [sub-qdeclarativefolderlistmodel-make_first] Error 3<br=
>
&gt; | make[2]: Leaving directory &#39;/home/closx/poky/build/tmp/work/cort=
exa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/bui=
ld/tests/auto/declarative&#39;<br>
&gt; | Makefile:45: recipe for target &#39;sub-declarative-make_first&#39; =
failed<br>
&gt; | make[1]: *** [sub-declarative-make_first] Error 2<br>
&gt; | make[1]: Leaving directory &#39;/home/closx/poky/build/tmp/work/cort=
exa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/bui=
ld/tests/auto&#39;<br>
&gt; | Makefile:45: recipe for target &#39;sub-auto-make_first&#39; failed<=
br>
&gt; | make: *** [sub-auto-make_first] Error 2<br>
&gt; | ERROR: oe_runmake failed<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; | ERROR: Function failed: do_compile_ptest_base (log file is located a=
t /home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquic=
k1/5.10.1+gitAUTOINC+b2476dcd53-r0/temp/log.do_compile_ptest_base.29566)<br=
>
&gt; ERROR: Task (/home/closx/poky/meta-qt5/recipes-qt/qt5/qtquick1_git.bb:=
do_compile_ptest_base) failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt; What do you guys think the reason of this issue may be? Any solution o=
ffers?<br>
&gt;<br>
&gt; My full output:<br>
&gt; <a href=3D"https://paste.ee/p/PupWr#Epvqnw9FoasgQEBhIXqQ8hH7veMcRybX" =
rel=3D"noreferrer" target=3D"_blank">https://paste.ee/p/PupWr#Epvqnw9FoasgQ=
EBhIXqQ8hH7veMcRybX</a><br>
&gt;<br>
&gt; Another source issue again?<br>
&gt; Have a lovely day!<br>
<br>
qtquick1 has been removed but I am guessting you are on an older<br>
release. Can you try adding DEPENDS +=3D &quot;qtdeclarative&quot;=C2=A0 to=
 qtquick1<br>
recipe and see if that helps ?<br>
secondly you can stop build ptest for this package since thats where<br>
its failing, that might be a workaround.<br>
<br>
&gt; Onur<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--000000000000d47e78058db3bc1f--
