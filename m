Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58150E00C84; Thu, 30 Nov 2017 09:43:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,URIBL_SBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.6 URIBL_SBL Contains an URL's NS IP listed in the SBL blocklist
	*      [URIs: waveshare.com]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52096E00AF2
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 09:43:44 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id 64so13880684wme.3
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 09:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=BSZUyNntKzFyhETXMIVqGD6HDSFa/wrJH5h/wj8TMLI=;
	b=HlLrS3dUTtpdGhus524MdsXeIrxXYTDLMuTD61B7AtQ7+8soXTZXQIS5M8kJGfM/8y
	DxBBu1js4TK9Hzbz/lldzSsS8McP6LOP7kgDA8AlGhM4f90cha7KSQbG+a2oRb6G2iZk
	fb0CZSfu+IZdUx+ug5XMsMKwouLmGtsks4P4l0r951PfebE4QfGDxJKwpbt96EcTV7rs
	ZNGqlMQ7O36OC48k2uxEN7cQu3I8GgxWNZbn/XPlaAnW8dhtR6HY+qXQInrnpsfVqny0
	C5xb3jE+pgw4cL5Oh7n1AiAlPoUq4v4aXSgclCkQLJNv29B9TeAm+fnybr86Y5BUK5N7
	uLTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=BSZUyNntKzFyhETXMIVqGD6HDSFa/wrJH5h/wj8TMLI=;
	b=IVckI8WVw5cgYX1vcrL0FBCMFlO6omVBhpOfRcyGcZLYA1QP5tUR/7ZQyg0FJ92CGG
	/pLoOEHKKJfRI3M1C21g9fvFh9yhH8S9XWq1a+7YeXcQusQ1IRnDH1y8wzk6M02vNjjF
	1LnXUl1+dmYjxdW/JyiA368LzVQA3snWHX8HrNfyNw5xBeA5rK3+5YkVzjlPgb4fZCH+
	ELl8P7YcNNqk6Hjxyfezzj/fnFT+71g+onzGc6PU4J2QIjYg7+kOQ6574FzR7WW1PBnj
	sO+JeNJQORmI6gXPrnzZaV0A+I95n4ubjw73+Jd5/St65YDYU7NxI43+v5bVGgOYRwy6
	ioAg==
X-Gm-Message-State: AJaThX7uXL90iVDb34VTi0KPaaMwdLbS4OThHyhkFV9cZjVqDulmfrlh
	AYP/8TdwrPRa0CqdPnQqNnkNZ0KsY3o6rwUdlH1pLg==
X-Google-Smtp-Source: AGs4zMZ09N3N+apyzUEzZ0xt5QHtLsFaWT8ah/MgHbRy1j1/G0DNl+1sVc7IGTOra19Yyir/Rk7KFwmrRIRpXjiVp8A=
X-Received: by 10.28.71.5 with SMTP id u5mr2452567wma.84.1512063823955; Thu,
	30 Nov 2017 09:43:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.199.199 with HTTP; Thu, 30 Nov 2017 09:43:43 -0800 (PST)
In-Reply-To: <CAPyrkgz4w-EW6Q+Erv3DL391NTUSiCKG-DPrydDmX9NEapwrNg@mail.gmail.com>
References: <1511994009-11240-1-git-send-email-drew.moseley@northern.tech>
	<CAPyrkgz4w-EW6Q+Erv3DL391NTUSiCKG-DPrydDmX9NEapwrNg@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Thu, 30 Nov 2017 17:43:43 +0000
Message-ID: <CAPyrkgwCUkbo+XOF-fXf3WNpqGrgB0jp6GOxDFzsR2U6_1PyUg@mail.gmail.com>
To: drew.moseley@northern.tech
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: Setup lcd_rotate for Raspberry Pi display
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
X-List-Received-Date: Thu, 30 Nov 2017 17:43:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2017 at 5:16 PM, Paul Barker <pbarker@toganlabs.com> wrote:
> On Wed, Nov 29, 2017 at 10:20 PM,  <drew.moseley@northern.tech> wrote:
>> From: Drew Moseley <drew.moseley@northern.tech>
>>
>> Signed-off-by: Drew Moseley <drew.moseley@northern.tech>
>> ---
>>  docs/extra-build-config.md              | 6 ++++++
>>  recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
>>  2 files changed, 12 insertions(+)
>>
>> diff --git a/docs/extra-build-config.md b/docs/extra-build-config.md
>> index 380d969..0390eee 100644
>> --- a/docs/extra-build-config.md
>> +++ b/docs/extra-build-config.md
>> @@ -170,6 +170,12 @@ Screen LCD, HDMI interface (<http://www.waveshare.c=
om/7inch-HDMI-LCD-C.htm>) Rev
>>
>>      WAVESHARE_1024X600_C_2_1 =3D "1"
>>
>> +If you would like to use the Raspberry Pi, 7 inch Capacitive Touch Scre=
en
>> +LCD (https://www.raspberrypi.org/products/raspberry-pi-touch-display/),=
 please
>> +set the following in your local.conf:
>> +
>> +    RASPBERRYPI_DISPLAY =3D "1"
>> +
>>  ## Enable UART
>>
>>  RaspberryPi 0, 1, 2 and CM will have UART console enabled by default.
>> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootf=
iles/rpi-config_git.bb
>> index ca4160b..e9a4fe2 100644
>> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
>> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
>> @@ -127,6 +127,12 @@ do_deploy() {
>>          echo "hdmi_cvt 1024 600 60 6 0 0 0" >> ${DEPLOYDIR}/bcm2835-boo=
tfiles/config.txt
>>          echo "hdmi_drive=3D1" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.=
txt
>>      fi
>> +
>> +    # Raspberry Pi 7" Display/Touch screen (https://www.raspberrypi.org=
/products/raspberry-pi-touch-display/)
>> +    if [ "${RASPBERRYPI_DISPLAY}" =3D "1" ]; then
>> +        echo "# Raspberry Pi 7\" display/touch screen" >> ${DEPLOYDIR}/=
bcm2835-bootfiles/config.txt
>> +        echo "lcd_rotate=3D2" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.=
txt
>> +    fi
>>  }
>>
>>  do_deploy_append_raspberrypi3-64() {
>
> This all looks good in general. Just a quick check though - are all
> users of this display going to want that lcd_rotate value? I've never
> used this display so not sure if that's specific to particular use
> cases or not.
>
> If you're happy that this is applicable for everyone could you submit
> this as a pull request on github
> (https://github.com/agherzan/meta-raspberrypi).
>

Someone has come back off-list and said they use that display without
the lcd_rotate setting. I think we'll have to drop this then.

It may be good to have an RPI_EXTRA_CONFIG variable or similar to add
arbitrary text to the config file, so you could do something like
this:

RPI_EXTRA_CONFIG =3D " \
    # Raspberry Pi 7\" display/touch screen \
    lcd_rotate=3D2 \
    "

How does that sound?

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

