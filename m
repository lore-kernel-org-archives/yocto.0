Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF4B5E0151C
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 08:20:51 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id hz11so859893vcb.10
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 08:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:x-google-sender-auth:message-id
	:subject:to:content-type;
	bh=68rvIZJ0OpfbHwKAM4rWRA46GkpyJmPuj+CHX5vZmH4=;
	b=qGcnc6r5uOSVwPV4OcRoMJ9eOYpOVcq0k98G1v0lPidMHCVAjBJoDayRt1Tlaic3wN
	00SWHvIgQ+Xq4f++aWxpkKtLVmnVOi3L1hXqaj+2AXxOqjXvgS6KRdXDoB+BItChls8D
	lJ9ffZoHjjcOC7Tn97vmnvgZUDDwOL15fUOO3VXF9y/5BhVrMCNJIe5qFEXnj8/dzL2s
	BcufkXwnSw6hnykzx7yJZoeUqnpwheQdpz0hVaIdxOyfu4OxLzlqS9tOBXkpXo3JMVdi
	gX401wTCaAolzwBt7rzvZmsXUgFQW3ql2lNm4Oc8kPkumPu/549+QFvZmo+IwyNkS3es
	n/Yg==
X-Received: by 10.220.215.73 with SMTP id hd9mr5969262vcb.19.1370877651111;
	Mon, 10 Jun 2013 08:20:51 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.110.6 with HTTP; Mon, 10 Jun 2013 08:20:11 -0700 (PDT)
From: Paul Barker <paul@paulbarker.me.uk>
Date: Mon, 10 Jun 2013 16:20:11 +0100
X-Google-Sender-Auth: qTTIR4DWUHy5Q-uwIQr3N6_6gXs
Message-ID: <CANyK_8esxSRq1VPAHYgZ8D-pXRGQF_+wL=w=Xiqi+vu7KeRpHg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>,
	Andrei Gherzan <andrei@gherzan.ro>
Subject: Re: [meta-raspberrypi][PATCH v2] rpi-gpio: renamed from RPi-GPIO
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
X-List-Received-Date: Mon, 10 Jun 2013 15:20:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 8 May 2013 10:06, Paul Barker <paul@paulbarker.me.uk> wrote:
> Package names shouldn't contain capital letters.
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  .../python/{RPi-GPIO => rpi-gpio}/don-t-install-setuptools.patch          | 0
>  recipes-devtools/python/{RPi-GPIO_0.2.0.bb => rpi-gpio_0.2.0.bb}          | 0
>  2 files changed, 0 insertions(+), 0 deletions(-)
>  rename recipes-devtools/python/{RPi-GPIO => rpi-gpio}/don-t-install-setuptools.patch (100%)
>  rename recipes-devtools/python/{RPi-GPIO_0.2.0.bb => rpi-gpio_0.2.0.bb} (100%)
>
> diff --git a/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch b/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
> similarity index 100%
> rename from recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
> rename to recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
> diff --git a/recipes-devtools/python/RPi-GPIO_0.2.0.bb b/recipes-devtools/python/rpi-gpio_0.2.0.bb
> similarity index 100%
> rename from recipes-devtools/python/RPi-GPIO_0.2.0.bb
> rename to recipes-devtools/python/rpi-gpio_0.2.0.bb
> --
> 1.8.2.2
>

Just a quick bump on this patch - doesn't seem to have been merged.
Looks like I missed [meta-raspberrypi] off when sending v2. I've put
it back on the subject of this email.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

