Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1FE2E00ECA; Wed, 30 Sep 2015 16:42:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
Received: from mail-yk0-f179.google.com (mail-yk0-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40F22E009D9
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 16:42:23 -0700 (PDT)
Received: by ykdt18 with SMTP id t18so63246313ykd.3
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 16:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xwctCQQH0BgqWReKb2rVYpBtBf2EHHO7lV5wr6RO5Ts=;
	b=cXtD3XxLtrpFt6/IXvuoG0j+Y1Q8Men3vuPCL7I7YQS5xwkxp3jv87tuzb1xBI3Pqn
	rLc+OkxO3lxpHWutk7h8pASYJBeb5VeEvmkVwHnMKIV1FCiIc5I+l86zGH4UUYO84EBP
	mhvhFfN9lKLAxbPehphiUT1b1uaBF+yA8L+BMX+pnZRDJgaLCSGSYRq6IxxtkCqHcU/T
	op3uv4ca5Wm8ZaGooEpz9FT8Faupd/JvAovi2xURwMP11QVrsj8MwrGaPYPct0bs4wU/
	EVzxydgD8LTjWXPOrQaz/2dF65M3dL+M5CWy0EFJFIXdqYOaCJoiTA8zNXMnf6DjSmQD
	13qg==
MIME-Version: 1.0
X-Received: by 10.13.255.4 with SMTP id p4mr5724233ywf.88.1443656542932; Wed,
	30 Sep 2015 16:42:22 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Wed, 30 Sep 2015 16:42:22 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Wed, 30 Sep 2015 16:42:22 -0700 (PDT)
In-Reply-To: <560C54B1.20307@mender.io>
References: <560C54B1.20307@mender.io>
Date: Wed, 30 Sep 2015 20:42:22 -0300
Message-ID: <CAF3SDA7Uyme5tZ1KoXfLj5nUk7CWrO+5iFXaCDjTDv9sdsaeJQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: =?UTF-8?B?RXlzdGVpbiBNw6Vsw7h5IFN0ZW5iZXJn?= <eystein@mender.io>
Cc: yocto@yoctoproject.org
Subject: Re: Run-time discovery of machine for image compatibility check
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
X-List-Received-Date: Wed, 30 Sep 2015 23:42:27 -0000
Content-Type: multipart/alternative; boundary=94eb2c0874e66b595d0520ff7b01

--94eb2c0874e66b595d0520ff7b01
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi in my case I have a machine for each board and I choose the right
device-tree at "machine".conf. So MACHINE can be determined by the device
tree Im running.

Other option would be echoing the machine to /etc/issue of the image. I do
this with DISTRO_VERSION. You can use  ROOTFS_POSTPROCESS_COMMAND to
achieve this.

Regards
Em 30/09/2015 18:32, "Eystein M=C3=A5l=C3=B8y Stenberg" <eystein@mender.io>=
 escreveu:

> Hi,
>
> Before starting a bitbake build, we input the MACHINE variable in
> local.conf (e.g. MACHINE ?=3D beaglebone).
>
> Is there a way to detect this variable at run-time? I.e. if I have built
> the image, written it to a device, and I'm now logged in to it.
>
> The reason I want this is that I'm working on a project to deploy image
> updates (remotely), and I only want to write the image if the device is
> compatible with the image file. So I need to know both the
> hardware/board type and what the image target is (assuming this is the
> MACHINE variable alone). Then I will only write the image if they are
> the same.
>
> Also, do you think using the MACHINE variable is the right approach for
> this problem? Maybe someone has had a similar problem?
>
> I'm new to Yocto, sorry if I'm asking something obvious (but I could not
> find an answer in the docs).
>
> Thanks!
>
> --
>
> Eystein
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c0874e66b595d0520ff7b01
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi in my case I have a machine for each board and I choose t=
he right device-tree at &quot;machine&quot;.conf. So MACHINE can be determi=
ned by the device tree Im running.</p>
<p dir=3D"ltr">Other option would be echoing the machine to /etc/issue of t=
he image. I do this with DISTRO_VERSION. You can use=C2=A0 ROOTFS_POSTPROCE=
SS_COMMAND=C2=A0to achieve this.</p>
<p dir=3D"ltr">Regards</p>
<div class=3D"gmail_quote">Em 30/09/2015 18:32, &quot;Eystein M=C3=A5l=C3=
=B8y Stenberg&quot; &lt;<a href=3D"mailto:eystein@mender.io">eystein@mender=
.io</a>&gt; escreveu:<br type=3D"attribution"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">Hi,<br>
<br>
Before starting a bitbake build, we input the MACHINE variable in<br>
local.conf (e.g. MACHINE ?=3D beaglebone).<br>
<br>
Is there a way to detect this variable at run-time? I.e. if I have built<br=
>
the image, written it to a device, and I&#39;m now logged in to it.<br>
<br>
The reason I want this is that I&#39;m working on a project to deploy image=
<br>
updates (remotely), and I only want to write the image if the device is<br>
compatible with the image file. So I need to know both the<br>
hardware/board type and what the image target is (assuming this is the<br>
MACHINE variable alone). Then I will only write the image if they are<br>
the same.<br>
<br>
Also, do you think using the MACHINE variable is the right approach for<br>
this problem? Maybe someone has had a similar problem?<br>
<br>
I&#39;m new to Yocto, sorry if I&#39;m asking something obvious (but I coul=
d not<br>
find an answer in the docs).<br>
<br>
Thanks!<br>
<br>
--<br>
<br>
Eystein<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--94eb2c0874e66b595d0520ff7b01--
