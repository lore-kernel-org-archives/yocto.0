Return-Path: <stangerm2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B49A2E00D4C; Tue, 18 Jun 2019 10:09:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stangerm2[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94E79E00A7D
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 10:09:02 -0700 (PDT)
Received: by mail-ot1-f68.google.com with SMTP id b7so15915602otl.11
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 10:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MTfly/mvrVPr3//Q/Qles8VsUHxixESXfwJfsux2x5w=;
	b=GX84soDONWKP9kAG7kRZYxQCPBGvSuJ3cDGvIOF5z1JDcyIgotu+vTemWcPFW7asd4
	pffzNt843VArvgHJYtq3Tc5WxfFj5P+LPjTkTuRoKAKgVAJlGO9OHpURnhW4puAljCZM
	gWMNWsVC7bZghhIMvvffVyF8iLO4V+gIbJOjwbSXhAOz1DxvH4y67GqkGLfeAyX2N1A1
	pTJwNVTjo3Jk438TI/n6GrkV4bQ0HnjoGuCo7yQVlXqcAFS8ZDyUU3OdQj5XoDRQGy0w
	+po5IV9ZAAUmTQWImmEo/gQAlUhgz/P0lD2JGssCF/U3btaU2cmypvVTFOiV+kZCWrXN
	j/8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MTfly/mvrVPr3//Q/Qles8VsUHxixESXfwJfsux2x5w=;
	b=S3//jo/MvGW5kOH0hM38X2CuH0TN2J4l4tMWLknKgZdl8A6SjeAw0FkEZN7AzSj568
	mRbOTxkmbpIr8ixmMkewc4iYSvbobY+o7c0/tbC0OkibfvFLXhSD2jqgdSEfGE0X2DYr
	66S33GQCWUGblBHAirbAjxQsDhifZDMn+MlTB2ryPtQHz0aBWuOdPog0N6Eu6ISzaCse
	+a5HZsKCrzV818NIcmVV8tM749wyzCV2XjZ/pR3xXuWYBLNNxckPU17z4qZ8QeH0KMel
	W1QiYk3vFjtRWhhGfIgd1AcHid5Lw7S2xN0RQP/YLfGwIV4e2HL6c2IMWhjR1pVhCcCE
	ixIQ==
X-Gm-Message-State: APjAAAVqkkbUYRb1drsrQ+D1FZl2UJy/01px0+JjoJx4jLp9scXzy/yd
	kkJxswlROXVQkbxjZXyBLRFEpVTV5zcr4CqCSg==
X-Google-Smtp-Source: APXvYqz53D+bBMF9PLqkqlbvM0ogvjgQaX9NNtueuyHWhfiUnYxZ4BekH6ndkVTwBK+//orY3rS2nBYBuEsyUzFApZA=
X-Received: by 2002:a9d:806:: with SMTP id 6mr58041854oty.15.1560877741698;
	Tue, 18 Jun 2019 10:09:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAGni2MiauEboBBr0qsqn1jB57AQoEEaOw3wRoavnuQX8TJGtNA@mail.gmail.com>
	<CAMKF1so4oLnAugjsZ6PwUt-8xBLszbwy45dsgRH02S2y00aMXQ@mail.gmail.com>
In-Reply-To: <CAMKF1so4oLnAugjsZ6PwUt-8xBLszbwy45dsgRH02S2y00aMXQ@mail.gmail.com>
From: matthew stanger <stangerm2@gmail.com>
Date: Tue, 18 Jun 2019 11:08:25 -0600
Message-ID: <CAGni2MjpuAQx3nCtgdiBAwB_ixRKyBDpMtZHRxUEkcxabU6JFQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: devshell env in warrior
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
X-List-Received-Date: Tue, 18 Jun 2019 17:09:03 -0000
Content-Type: multipart/alternative; boundary="00000000000054f5dd058b9c2bfa"

--00000000000054f5dd058b9c2bfa
Content-Type: text/plain; charset="UTF-8"

Hey Khem,

Check that Makefiles are not overriding CC/CXX/LD etc. some old crufty
> Makefiles I have seen doing that, you might see something like

In the recipe it's caused by 'inherit module', which is needed because part
of the recipe is building modules. I would understand this would unset
CFLAGS and such but am not sure why the devshell should be different that
the environment at the first line of do_compile?

On Tue, Jun 18, 2019 at 10:08 AM Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Jun 17, 2019 at 4:55 PM matthew stanger <stangerm2@gmail.com>
> wrote:
> >
> > I'm trying to figure out why when running devshell in Warrior CC/CFLAGS
> are not the same as do_compile for a recipe. For example.
> > devshell printenv yields:
> > CC=aarch64-poky-linux-gcc   -fuse-ld=bfd
> -fmacro-prefix-map=/home/matt/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f-0=/usr/src/debug/ursr/18.3+AUTOINC+0a6fb7430f-0
> -fdebug-prefix-map=/home/matt/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f-0=/usr/src/debug/ursr/18.3+AUTOINC+0a6fb7430f-0
> -fdebug-prefix-map=/home/matt/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f-0/recipe-sysroot=
> -fdebug-prefix-map=/home/matt/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f-0/recipe-sysroot-native=
> -fdebug-prefix-map=/home/matt/rdk_warrior/build/tmp/work-shared/tmobile-7271-kaon-mini/kernel-source=/usr/src/kernel
> >
> > do_compile() {
> >     /usr/bin/printenv | sort > debug.log
> > }
> > yields...
> > CC=aarch64-poky-linux-gcc  -mcpu=cortex-a53+crc+crypto
> -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security
> -Werror=format-security
> --sysroot=/home/matt/rdk_warrior/build/tmp/work/tmobile_7271_kaon_mini-poky-linux/ursr/18.3+AUTOINC+0a6fb7430f-0/recipe-sysroot
> >
> > This causes some very different behavior out of the makefile. The recipe
> I"m working with has no do_configure, and only calls a makefile through
> do_compile. No appends/prepends or custom functions in the recipe. This
> recipe is for a lovely Broadcom driver/userspace glob and I'm trying to
> troubleshoot it with x64 but not being able to get a correct working env
> makes life hard. Any idea's of where I might be going wrong?
> >
>
> Check that Makefiles are not overriding CC/CXX/LD etc. some old crufty
> Makefiles I have seen doing that, you might see something like
>
> CC = ${CROSS_COMPILE}gcc etc. which you should convert to weak defines
> e.g. CC ?= ....
>
> > Cheers
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000054f5dd058b9c2bfa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Khem,<div><br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Check that Makefiles are not overriding CC/CXX/LD etc. some=
 old crufty<br>Makefiles I have seen doing that, you might see something li=
ke</blockquote><div>In the recipe it&#39;s caused by &#39;inherit module&#3=
9;, which is needed because part of the recipe is building modules. I would=
 understand this would unset CFLAGS and such but am not sure why the devshe=
ll should be different that the environment at the first line of do_compile=
?</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Jun 18, 2019 at 10:08 AM Khem Raj &lt;<a href=3D"mailto:raj.=
khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">On Mon, Jun 17, 2019 at 4:55 PM matthew s=
tanger &lt;<a href=3D"mailto:stangerm2@gmail.com" target=3D"_blank">stanger=
m2@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I&#39;m trying to figure out why when running devshell in Warrior CC/C=
FLAGS are not the same as do_compile for a recipe. For example.<br>
&gt; devshell printenv yields:<br>
&gt; CC=3Daarch64-poky-linux-gcc=C2=A0 =C2=A0-fuse-ld=3Dbfd -fmacro-prefix-=
map=3D/home/matt/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+AUTOI=
NC+0a6fb7430f-0=3D/usr/src/debug/ursr/18.3+AUTOINC+0a6fb7430f-0 -fdebug-pre=
fix-map=3D/home/matt/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+A=
UTOINC+0a6fb7430f-0=3D/usr/src/debug/ursr/18.3+AUTOINC+0a6fb7430f-0 -fdebug=
-prefix-map=3D/home/matt/rdk_warrior/build/tmp/work/7271-poky-linux/brcm/18=
.3+AUTOINC+0a6fb7430f-0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/r=
dk_warrior/build/tmp/work/7271-poky-linux/brcm/18.3+AUTOINC+0a6fb7430f-0/re=
cipe-sysroot-native=3D=C2=A0 -fdebug-prefix-map=3D/home/matt/rdk_warrior/bu=
ild/tmp/work-shared/tmobile-7271-kaon-mini/kernel-source=3D/usr/src/kernel<=
br>
&gt;<br>
&gt; do_compile() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0/usr/bin/printenv | sort &gt; debug.log<br>
&gt; }<br>
&gt; yields...<br>
&gt; CC=3Daarch64-poky-linux-gcc=C2=A0 -mcpu=3Dcortex-a53+crc+crypto -fstac=
k-protector-strong=C2=A0 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -=
Werror=3Dformat-security --sysroot=3D/home/matt/rdk_warrior/build/tmp/work/=
tmobile_7271_kaon_mini-poky-linux/ursr/18.3+AUTOINC+0a6fb7430f-0/recipe-sys=
root<br>
&gt;<br>
&gt; This causes some very different behavior out of the makefile. The reci=
pe I&quot;m working with has no do_configure, and only calls a makefile thr=
ough do_compile. No appends/prepends or custom functions in the recipe. Thi=
s recipe is for a lovely Broadcom driver/userspace glob and I&#39;m trying =
to troubleshoot it with x64 but not being able to get a correct working env=
 makes life hard. Any idea&#39;s of where I might be going wrong?<br>
&gt;<br>
<br>
Check that Makefiles are not overriding CC/CXX/LD etc. some old crufty<br>
Makefiles I have seen doing that, you might see something like<br>
<br>
CC =3D ${CROSS_COMPILE}gcc etc. which you should convert to weak defines<br=
>
e.g. CC ?=3D ....<br>
<br>
&gt; Cheers<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--00000000000054f5dd058b9c2bfa--
