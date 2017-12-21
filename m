Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4600E00D9C; Thu, 21 Dec 2017 07:51:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CFE3E00D07
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 07:51:03 -0800 (PST)
Received: by mail-ua0-f195.google.com with SMTP id i92so17794851uad.7
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 07:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HXmpb/fBThS1x3Kvj1NVGQMcOaxgA2rSNC2szt+H9GY=;
	b=vx8G9mjM6VYUTptKg05XvJ/+4EAKbK+ve/wbIruy4UaoxNWqAfeXHscrNZwIpRJs/T
	yEiKcx2VEKn9J57b53f5gDKICd+SEvRyHo0Qc2jPmW8qN05XC+f6uw7sY/PaGg/7mgR6
	hyI/S0bkUM4h32FPCCjU7vAusRkC36N6yN0cBt4nhv7HgHD5HJVhNBsq1/CIj9WPddP7
	nZmB+br8yaQIBeVZillImolNObZJT14v6UacWZroqhs4t0d4kSMz00VTlp0xx70GUKa7
	NLmzjEA47QNkPKlQRi+lJT8imE58qp8bvOjVFoyxIs/T/KdiuLLJBQC8pOPatlsIfZuY
	aebA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HXmpb/fBThS1x3Kvj1NVGQMcOaxgA2rSNC2szt+H9GY=;
	b=k63Okp7V7ElAkw/EXqPmB6ErLA0HN+Dh7Su21mlF0non3V3MIKE6wxvSdxX0U4AwsG
	qzoTindhkOkcNa0v5cKIF7ZcXaqI7OZUhzwQW/2EeGZpdOykzeNJR4+W5BagSBQj79ks
	6/PtHNjs7OipNY21A+MT6LNfImDBhi2BHy/Doo8Pz2CMChbfBuSV6EH8nr4vqviM7KaE
	p0THfwSJwM8OED5P/TEFXfV0/JIizWJ5zxX5Y8REPu+qg2dnY0SAtkBgJp+79kmj5yXX
	zlAMP+Hyy72aoBDKxtT5rJNTw03h35BUqEwRXdJBFfCdUc7l0BUT/P8EHpr4pXaVqgU+
	oK6g==
X-Gm-Message-State: AKGB3mKx/eWMBu8dpA1RtPHoBbHM3noOQQSvHV8ol9ipG3B8JWqCs27a
	qvdGuxSU0iUzyH0YKespvhfQG0iTsWkjjkFJJakZyaZu
X-Google-Smtp-Source: ACJfBov1NgZqHftVXTk7FSdM5W+Exen/+pbw7cIoHRrnoCYlDYm//JpuMmZ3yNpeFscGy7yiGvSIde8RSjrIv6sWemg=
X-Received: by 10.176.4.226 with SMTP id 89mr11554076uaw.43.1513871463260;
	Thu, 21 Dec 2017 07:51:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.22.41 with HTTP; Thu, 21 Dec 2017 07:50:22 -0800 (PST)
X-Originating-IP: [86.140.154.13]
In-Reply-To: <aefbfb07-78ea-4a73-ea08-1fd5b2b35fe0@moseleynet.net>
References: <aefbfb07-78ea-4a73-ea08-1fd5b2b35fe0@moseleynet.net>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 21 Dec 2017 15:50:22 +0000
Message-ID: <CAK18fxFDSNhr_5NVqaRkq3Hz-6iP_OHpdsKNiU1GXspocAChzA@mail.gmail.com>
To: Drew Moseley <drew@moseleynet.net>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] How to modify KERNEL_DEVICETREE?
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
X-List-Received-Date: Thu, 21 Dec 2017 15:51:05 -0000
Content-Type: multipart/alternative; boundary="94eb2c125906cdb9750560dbaaee"

--94eb2c125906cdb9750560dbaaee
Content-Type: text/plain; charset="UTF-8"

Hi,

You need to make that variable available in both sdcard generation code
which resides in the image recipe and in the kernel recipe. You can do this
by modifying that variable from local.conf (distro would work too I think
but it doesn't sounds like the right place to be).

--
Andrei Gherzan

On Sun, Dec 17, 2017 at 6:36 PM, Drew Moseley <drew@moseleynet.net> wrote:

> I'm trying to figure out how to properly modify the KERNEL_DEVICETREE
> variable.  It seems that the meta-raspberrypi layer uses that variable
> in the sdcard_image-rpi.bbclass and defines it in the machine conf
> layer.  In poky, the variable is set and appended to in the various
> linux-yocto recipes. If I make a similar change in a linux-raspberrypi
> bbappend file, it works fine for the build of the linux-raspberrypi
> recipe but when it is trying to package up the rpi-sdimg file, the
> changes from the kernel recipe are not available and generally the build
> will fail since the files expected during the image creation will not
> have been created during the kernel build.
>
> I can envision several different workarounds here but I'm struggling to
> come up with a solid fix. Does anyone have any suggestions?
>
> It also looks like the meta-freescale layer will have a similar issue.
>
> Drew
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c125906cdb9750560dbaaee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>You need to make that variable available in bot=
h sdcard generation code which resides in the image recipe and in the kerne=
l recipe. You can do this by modifying that variable from local.conf (distr=
o would work too I think but it doesn&#39;t sounds like the right place to =
be).<br></div><div class=3D"gmail_extra"><br clear=3D"all"><div><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr"><div>--</div>Andrei Gherzan</div></div></div></div></di=
v>
<br><div class=3D"gmail_quote">On Sun, Dec 17, 2017 at 6:36 PM, Drew Mosele=
y <span dir=3D"ltr">&lt;<a href=3D"mailto:drew@moseleynet.net" target=3D"_b=
lank">drew@moseleynet.net</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">I&#39;m trying to figure out how to properly modify the KERNEL_DEVIC=
ETREE<br>
variable.=C2=A0 It seems that the meta-raspberrypi layer uses that variable=
<br>
in the sdcard_image-rpi.bbclass and defines it in the machine conf<br>
layer.=C2=A0 In poky, the variable is set and appended to in the various<br=
>
linux-yocto recipes. If I make a similar change in a linux-raspberrypi<br>
bbappend file, it works fine for the build of the linux-raspberrypi<br>
recipe but when it is trying to package up the rpi-sdimg file, the<br>
changes from the kernel recipe are not available and generally the build<br=
>
will fail since the files expected during the image creation will not<br>
have been created during the kernel build.<br>
<br>
I can envision several different workarounds here but I&#39;m struggling to=
<br>
come up with a solid fix. Does anyone have any suggestions?<br>
<br>
It also looks like the meta-freescale layer will have a similar issue.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Drew<br>
<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c125906cdb9750560dbaaee--
