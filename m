Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9A53E009C2; Fri, 14 Jul 2017 02:29:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.194 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f194.google.com (mail-yw0-f194.google.com
	[209.85.161.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EE85E0090A
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 02:29:53 -0700 (PDT)
Received: by mail-yw0-f194.google.com with SMTP id l21so3188694ywb.3
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 02:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AIi6++99s12DCwIrN6yEa229f+/Lv9zAQOuw87b3wbw=;
	b=ED5jXOGPleixjTWat7PLqFImW/NkjJMP9U9PVqcEL+B0HJCAyDrM2MK3lo8oxtWnxh
	xql83gBGThOvNGBcvnSIaYG9Y0DyxVxQoahLmzp8cHI2GJPizrQp+fmf/HAo1+q5Gc3a
	2nlHmE6MSgTqxHmS/BHpSmbV/ISn+eIjsm788XG0paeh46jfj9qav2T8/+hAj7CBrQJe
	meUxIQEaOhT4MZvwSWzReim4tK2ek1qzZFMtVu/+U2ecKb7y33VogwfnvHI2QiaKZTgh
	bUDprSyl3ze5KHmJyfhZom2quGeYUAKIa+oWVo/ilTmy2V1Wc2tabsBCvzzciUwyFb9R
	DFnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AIi6++99s12DCwIrN6yEa229f+/Lv9zAQOuw87b3wbw=;
	b=iaskuq4Rynk/JJVB4Kza0SFfo9SPRyzcUJ3XEi9t9KQbUuS4ZkS18qwIxNTQVdZFi1
	xtFSjAyvZBjOg+FF4efoTsawqNnnR1sxezAZjm9FU8bL9WJfRnJGzo6JjPv9zicxZBj6
	rchPJhnVCmxEJ+ItH0qgA+ifuIW9bWVmWmIjYGi8QaAEplZLWia+7oeAs4MgttqhD9m0
	Xy9dlF5AAscWFr7fE97sRVPeFbgDyiK2p1LCIb47teU2DtlBjbIIv1IBeQbcxsngUKKY
	jYWdLLnOsN/Xpsl2POXV3HKGDwa3TH3IBAQukZ1wjd0SQPmMATXDaBgCYo8owNIar1TB
	64eg==
X-Gm-Message-State: AIVw112KkUILhS2dtAuhAaHwLbLCwtQAM/2B/nJjZ0hXUy+w5KnunCMm
	BVbVP+sMClQLj9hitYVu58k38nh4uQ==
X-Received: by 10.13.253.7 with SMTP id n7mr5165330ywf.188.1500024592693; Fri,
	14 Jul 2017 02:29:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.200.129 with HTTP; Fri, 14 Jul 2017 02:29:52 -0700 (PDT)
In-Reply-To: <DB6PR1001MB107895DCFA50D66A17EFE7D6B8AC0@DB6PR1001MB1078.EURPRD10.PROD.OUTLOOK.COM>
References: <DB6PR1001MB107895DCFA50D66A17EFE7D6B8AC0@DB6PR1001MB1078.EURPRD10.PROD.OUTLOOK.COM>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 14 Jul 2017 11:29:52 +0200
Message-ID: <CAC+thW3XbfXxzRCdA-yKg18pi+ivf-MNaxJr+vYXp=Hu105FxQ@mail.gmail.com>
To: Elmar van Rijnswou <Elmarblabla@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cross compile recipe cmake
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
X-List-Received-Date: Fri, 14 Jul 2017 09:29:57 -0000
Content-Type: multipart/alternative; boundary="94eb2c06c23a00842a055443b14f"

--94eb2c06c23a00842a055443b14f
Content-Type: text/plain; charset="UTF-8"

On Thu, Jul 13, 2017 at 10:48 AM, Elmar van Rijnswou <
Elmarblabla@hotmail.com> wrote:

> Hello! I've been doing a lot of searching on the internet,but I can't seem
> to find anybody with my problem. I'm trying to add a recipe to my image and
> deliver it straight with the system. Everything goes fine, up until the
> recipe I created links to other libraries. I have dependencies to Qt4. I
> used the hello world example recipe, which I can bitbake successfully. My
> recipe is the following:
>
>
> SUMMARY = "Simple helloworld application"
> SECTION = "examples"
> LICENSE = "Closed"
> SRC_URI = "file://media/traffic/Yocto/src/elva/"
> S = "/media/traffic/Yocto/src/elva/proj/src"
>

it looks like you're trying to build from an "external" source tree. Yocto
does support this with a dedicated class you can inherit (externalsrc). See
[1] for the relevant doc. Maybe it can help solving the issue with cmake...

[1]
http://www.yoctoproject.org/docs/2.3/mega-manual/mega-manual.html#building-software-from-an-external-source


> inherit cmake
> EXTRA_OECMAKE = ""
>
> The problem I'm having now is that, using the generated toolchain, cmake
> is looking at the wrong directories. The rootpath is also crooked when I
> print it out in my cmake project file:
>
> CMAKE_FIND_ROOT_PATH:/media/traffic/Yocto/QorIQ-SDK-V2.0-
> 20160527-yocto/build_ls2080abluebox/tmp/sysroots/ls2080abluebox
> /media/traffic/Yocto/QorIQ-SDK-V2.0-20160527-yocto/build_ls2080abluebox/
> tmp/sysroots/x86_64-linux
>
>
> What am I doing wrong? My target is arm. I can build my image fine without
> the recipe, so I'm thinking that there is a step I'm missing. Also when I
> export the SDK I can see that all the right libraries and findscripts are
> available (in the sysroot). But whenever I change my source, it still looks
> in the sysroot of the host system. Any help would be greatly appreciated!
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c06c23a00842a055443b14f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Jul 13, 2017 at 10:48 AM, Elmar van Rijnswou <span dir=3D"ltr">=
&lt;<a href=3D"mailto:Elmarblabla@hotmail.com" target=3D"_blank">Elmarblabl=
a@hotmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-6810055190572032317divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p>Hello! I&#39;ve been doing a lot of searching on the internet,but I can&=
#39;t seem to find anybody with my problem. I&#39;m trying to add a recipe =
to my image and deliver it straight with the system. Everything goes fine, =
up until the recipe I created links to other
 libraries. I have dependencies to Qt4. I used the hello world example reci=
pe, which I can bitbake successfully. My recipe is the following:
<br>
</p>
<p><br>
</p>
<p></p>
<div>SUMMARY =3D &quot;Simple helloworld application&quot;<br>
SECTION =3D &quot;examples&quot;<br>
LICENSE =3D &quot;Closed&quot;<br>
SRC_URI =3D &quot;file://media/traffic/Yocto/<wbr>src/elva/&quot;<br>
S =3D &quot;/media/traffic/Yocto/src/<wbr>elva/proj/src&quot;<br></div></di=
v></div></blockquote><div><br></div><div>it looks like you&#39;re trying to=
 build from an &quot;external&quot; source tree. Yocto does support this wi=
th a dedicated class you can inherit (externalsrc). See [1] for the relevan=
t doc. Maybe it can help solving the issue with cmake...=C2=A0</div><div>=
=C2=A0</div><div>[1]=C2=A0<a href=3D"http://www.yoctoproject.org/docs/2.3/m=
ega-manual/mega-manual.html#building-software-from-an-external-source">http=
://www.yoctoproject.org/docs/2.3/mega-manual/mega-manual.html#building-soft=
ware-from-an-external-source</a></div><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div id=3D"gmail-m_-68100551=
90572032317divtagdefaultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);f=
ont-family:Calibri,Helvetica,sans-serif" dir=3D"ltr"><div>
inherit cmake<br>
EXTRA_OECMAKE =3D &quot;&quot;<br>
</div>
<br>
<p></p>
<p>The problem I&#39;m having now is that, using the generated toolchain, c=
make is looking at the wrong directories. The rootpath is also crooked when=
 I print it out in my cmake project file:</p>
<p><span>CMAKE_FIND_ROOT_PATH:/media/<wbr>traffic/Yocto/QorIQ-SDK-V2.0-<wbr=
>20160527-yocto/build_<wbr>ls2080abluebox/tmp/sysroots/<wbr>ls2080abluebox<=
span>/media/traffic/<wbr>Yocto/QorIQ-SDK-V2.0-20160527-<wbr>yocto/build_ls2=
080abluebox/<wbr>tmp/sysroots/x86_64-linux</span></span></p>
<p><span><span><br>
</span></span></p>
<p><span><span>What am I doing wrong? My target is arm. I can build my imag=
e fine without the recipe, so I&#39;m thinking that there is a step I&#39;m=
 missing. Also when I export the SDK I can see that all the right libraries=
 and findscripts are available (in the sysroot).
 But whenever I change my source, it still looks in the sysroot of the host=
 system. Any help would be greatly appreciated!</span></span><br>
</p>
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--94eb2c06c23a00842a055443b14f--
