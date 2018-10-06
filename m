Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C172E00A0C; Fri,  5 Oct 2018 18:13:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7C2BE009CF
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2018 18:13:07 -0700 (PDT)
Received: by mail-qt1-f175.google.com with SMTP id c56-v6so15730296qtd.11
	for <yocto@yoctoproject.org>; Fri, 05 Oct 2018 18:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=GjLXJkkZLprEcNvt3i/RSzWETN6CVtjXd3ZYb4vwaM8=;
	b=HrE/a+mb8NBzq1FQD+MgVEVyGqk9R8Su1SUw2r+5arytz7Uh+fL7KLyxyLIpxVSiLV
	o4fn8a3jH5SJQTf/3OBjI1yD/hF21IYTLd6einQhasSzy0mdtXcLFwJT8QHsDDy9C65e
	0MhNJSfxpxjAqdqFIBH6aInBkRECfI6TlfcNFfR0kz1FWfUy16HTEFGjI4HkJFf7/4p4
	zVc/rywXWV8LJPNUnm1T4XhqvW0iIGIaUqkNx8Pj0CPr7VHsLNn5Ej5BIm86Da+Itnoj
	Nr9t1TYR7M9scE+0NdV40kQMVxrw0yDowdmFBiYKaAo8pUQmaoTUyc86zrBVZ5aNSGsg
	sEig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=GjLXJkkZLprEcNvt3i/RSzWETN6CVtjXd3ZYb4vwaM8=;
	b=AmiYCgPL0lXV3itoU/+LcmSJKCuhGDWa4GUOWblG89TFhhXYrJ+ZtezPqOTm1WYisr
	yXHkpm0E2iQt52m9kmeXenOXgwSKyqYVLoasUxDaaeWEJB9Blcni3j7Frs+nMh4slox+
	Mz4B43VpBhx5bSvjm/rCcnlQB1Xz6YQuDhN11pxis7ewxW9U3PH3eeeDP3TAngAaYV7T
	LgPZkb1qiasD+yU3lLgzj+DFyQeg+SfpovW7CmtdH3nQkN/axCLQeGleXWankoksLOBW
	8KO3Kl/tkBLYPuquy06fh0OclOJLcweeyMrhcKr6TtBgDd3RF0gFTPajIWReEosmWiGd
	DcPg==
X-Gm-Message-State: ABuFfoj6YT9g4zPghaM98yvYcJNBXT8tLgzqUJsixpbV3A/Q0/w8Gw5G
	LtHsyvBiPfl+gtckQQ13jpTT/XlXDHlDmpFVxj4=
X-Google-Smtp-Source: ACcGV61LCR0okJHM2egKcsn+DPQpqwwSLrs5HU5qUPg+nBs99yYnfJkAHe/TKhUlEO1T28IMRZge1Uogha8DlOmxZU0=
X-Received: by 2002:ac8:7584:: with SMTP id
	s4-v6mr11808543qtq.161.1538788386967; 
	Fri, 05 Oct 2018 18:13:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAFd=ocjm2E-pKH5sDbradN=qsTMYAvcWKyjXa2An-Rnb7MKWwA@mail.gmail.com>
	<CAK18fxFLb2dMSrXJ9PKtsEP60GE7un+VSJvZ==HiAf7PNUCHbQ@mail.gmail.com>
In-Reply-To: <CAK18fxFLb2dMSrXJ9PKtsEP60GE7un+VSJvZ==HiAf7PNUCHbQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 5 Oct 2018 18:12:40 -0700
Message-ID: <CAMKF1srZcR7YGuQ4JdV7qcYLR3-u-eZ19KTew4Ha4AfoCNxyPA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: markus4dev@gmail.com, Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Problem enabling w1-gpio
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
X-List-Received-Date: Sat, 06 Oct 2018 01:13:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 5, 2018 at 9:27 AM Andrei Gherzan <andrei@gherzan.ro> wrote:
>
> Hi Markus,
>
> On Fri, Oct 5, 2018 at 4:28 PM Markus W <markus4dev@gmail.com> wrote:
>>
>> Hi!
>>
>> I'm creating a yocto image (sumo) for the raspberrypi and got stuck on h=
ow to enable the one-wire interface on boot.
>>
>> I have enabled the SPI bus and I2C in my local.conf file.
>>
>> ENABLE_SPI_BUS =3D "1"
>> ENABLE_I2C =3D "1"
>>
>> and checked that they are loaded on boot.
>>
>> I'm struggling to figure out where to set  "dtoverlay=3Dw1-gpio" and how=
 to enable the w1-gpio module on boot. The /boot/config.txt file doesn't ex=
ist by default after startup. If I create this file with the line above dir=
ectly on the rpi and reboot it, the w1-gpio interface is still not enabled.
>
>
> /boot when you run up the image is on the rootfs while the file you are l=
ooking for is in the boot partition. You will need to mount (or set a boot =
mount - fstab, systemd etc) the boot partition (p1) and you will see the fi=
le afterwards. Alternatively, just mount the SD card's partitions on your w=
orking station and modify the file offline.
>

if one starts using wic image instead of old sd-card image types then
boot is automounted.

Just add

IMAGE_FSTYPES +=3D "wic.xz"

for nice xz compressed wic image.

> ---
> Andrei
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

