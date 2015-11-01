Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF82DE00BC2; Sun,  1 Nov 2015 10:18:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A96C1E0086A
	for <yocto@yoctoproject.org>; Sun,  1 Nov 2015 10:17:59 -0800 (PST)
Received: by lfbn126 with SMTP id n126so52993848lfb.2
	for <yocto@yoctoproject.org>; Sun, 01 Nov 2015 10:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan_ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=cXdq12NX4QEFeCKcpnpxs6hk95No5S57eD4Ly+biAx0=;
	b=ZApMgltVdM26SZ4pSNaEYFz2bHFRQTAHnTI+9Nx+M4CTuJ+dNRRZBjIqvto4DbGuwz
	/AQ521wZ1wnPE0OPGRshThkk17WaKH4pfQoVk+klw5sVh+yIaRPaYUJUT9zlu4wfK13U
	P4RcBttRbXBK+U9fjfQfSL0YWGmg2D9xwXO8yziq1LY6Flho2Vi8KyKL+IBat7C91Ceq
	TppGyCTSKeGIkdjw2fVg9REsN5+uBoIhCktguIUCH0mrB5S9oy5cRKY5O/G0ueT4mEt7
	hUzZz+BBgejEnH5OQ9KMtBBHC2D07gJ72Ag8Q2kxRy8W8G7mhrDl2/4Txhag/G/S6V5V
	UBJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=cXdq12NX4QEFeCKcpnpxs6hk95No5S57eD4Ly+biAx0=;
	b=SAERGWEt7uv3i27s24hb9JLsbsWax9CQXlzob5mYkBqMQzMnqRRRvyejAI0byBi4Ls
	iUhfH0xBN2a2dbldWEogcH6q60dJbtCRpCl+sxje+uRQIYVj94Go/AuoyTArewSI+5Bx
	rGdVWhkJ7531YYiTPMeBeg1BnmvOuBN8Y0TbhxqTXi7YxarMbIsTOgBHVDuup2r3IhK2
	fvgjSs+mcpaCongyHiCsle74eJVgMSTlkrCesuesp99kd0Z9It/2qxrBiVtVBZOjpNmM
	H4I0eWyfRvXAn+zlhj71kgFHaFMH3QT00kFuDHbNQh17Iypiu/qaDC747vooRx+Td3M6
	TG5Q==
X-Gm-Message-State: ALoCoQnT3AN3LkhO1LN99bhKYWtEbqGEo2SA/aFF8JNirjRs0AP4qb5AlhhnmFoLfSSi8fwreYhm
X-Received: by 10.25.145.209 with SMTP id t200mr5444397lfd.88.1446401877209;
	Sun, 01 Nov 2015 10:17:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.61.195 with HTTP; Sun, 1 Nov 2015 10:17:17 -0800 (PST)
X-Originating-IP: [92.217.115.210]
In-Reply-To: <CAMKF1srraL3_z6_AOG9Yo+P_5FY3E9Lv-ZywyQd+CGt7UsK77w@mail.gmail.com>
References: <CAG=op9dOD9-phw9V+ceuvLhDxuPYQJPmNUJrrneC9_ywS+f5aw@mail.gmail.com>
	<CAMKF1srraL3_z6_AOG9Yo+P_5FY3E9Lv-ZywyQd+CGt7UsK77w@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 1 Nov 2015 19:17:17 +0100
Message-ID: <CAK18fxFTcYS0YLAbPnEycfUBBD3GxdRF_BbGX=332fnYd=eJLQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Missing config.txt in rpi-basic-image.bb
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
X-List-Received-Date: Sun, 01 Nov 2015 18:18:01 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

On Sun, Nov 1, 2015 at 4:41 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Sun, Nov 1, 2015 at 5:41 AM, Chaitanya Dhere
> <dherechaitanya@gmail.com> wrote:
>> Hello all,
>>               I am working on rpi-basic-image. After flashing this
>> image, raspberry pi 2 boots up fine. But I'm unable to locate
>> config.txt under /boot directory. I want to put :
>>
>> dtparam=i2c1=on
>
> just create one and see what happens.
>

Indeed that's definitely one way to do it.

But I'm wondering how is this possible? The image type class dumps the
entire bootfiles directory in the first partition. And the rpi
bootfiles depend on this txt configuration file which gets deployed in
the same directory. So I'm really confused by this behavior. Anyway, I
just ran a new build and baked basic image which, in my setup,
includes the configuration txt file. Are you sure that the file is not
deployed? Did you check
tmp/deploy/images/raspberrypi2/bcm2835-bootfiles? What files do you
have there? As well what revisions of meta-raspberrypi are you on?

Regards,
Andrei

