Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8750E00C41; Tue, 23 Feb 2016 20:21:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f181.google.com (mail-yw0-f181.google.com
	[209.85.161.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 437D3E00C02
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 20:21:15 -0800 (PST)
Received: by mail-yw0-f181.google.com with SMTP id g127so6087632ywf.2
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 20:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=BW/ZfTO9sxXg5tkCyuFO12ZDxwLyItst+qtff19V16A=;
	b=Br5iSToeUg9FJJIZm085e4yoEJ4EhkLvG6P05fIP5aCj6EBbTLPVPMwP/uidc69RO/
	NmLyjD+NA16PNs7zYMCMUCV65sUKb8YooSs0hu2EwJxder6nnOjSXJFCLDHuz/+AncgK
	IguP324373akdlU/hHZO+kXFIeu0NB0kstAkHLeh/Eba80RbC8ZRkuSwitKq66R6Moon
	MyOOFTh1oi+NTpNeMfyb65vUTjEFmxf8QFMbLnoXin6nY3ABaL5lBqepoDdayfJwgTXt
	MzodomW77dXOSD7usMrjSOEF/E0UcQvaQJv5o/LzwdghUk/jdLGcnTBCqaXSK65PDbOX
	VjTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=BW/ZfTO9sxXg5tkCyuFO12ZDxwLyItst+qtff19V16A=;
	b=iZ8IHId2K5znrnJpKhe3netMhlK67VbbBaLxcr/KPwIXxZSj/yH8UX2Y86ammimKY7
	+iZjgUwV57NgoTtqFfPDCOiLI+vLnEza/ZFEtAELN+Z99qr0prHxMaFFY9LPSM/9fa/9
	8cGKzM0qRy4T5/4slN4H7RGesYb6kUDUIWwVtyjWpRWvJeda6RazoPytCflCUbq/dBW/
	2n7UIrlzTrj/hK8c3bePYHBI1U95tQwGkDO9FwYZJBGHdTnhEgardXR+U28Dpv37e2j4
	KLG4cMz7jWTvSyht8tK/7yzLUzwWBdVIdkMVz39xNyudFb4/danYQGkEtJqx+N9e/ULS
	POPA==
X-Gm-Message-State: AG10YOTl8qAOq39AXaryaF2JTc/xZG3mJB6zzGvt5/TJik9556A5edkhYT14lKQ8PO+fFw==
X-Received: by 10.129.4.132 with SMTP id 126mr20444206ywe.184.1456287674515;
	Tue, 23 Feb 2016 20:21:14 -0800 (PST)
Received: from 10.16.213.37-ra01.murfreesboro.tn.nash.comcast.net
	(fw01.nashville.tn.nash.comcast.net. [69.241.93.245])
	by smtp.gmail.com with ESMTPSA id e4sm997179ywb.0.2016.02.23.20.21.13
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 23 Feb 2016 20:21:13 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CALbNGRSLRGvmdTNg6hF8YwGXRPza5Xn8sLLjrcgOrT+B1--+yA@mail.gmail.com>
Date: Tue, 23 Feb 2016 23:21:07 -0500
Message-Id: <B9B47CEE-1922-4EEA-99E2-F7C28366DC35@gmail.com>
References: <1454173548-5806-1-git-send-email-raj.khem@gmail.com>
	<20160223210251.GC10598@ad.chargestorm.se>
	<CALbNGRSLRGvmdTNg6hF8YwGXRPza5Xn8sLLjrcgOrT+B1--+yA@mail.gmail.com>
To: =?utf-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
X-Mailer: Apple Mail (2.3112)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Adjust for libexecdir changes
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
X-List-Received-Date: Wed, 24 Feb 2016 04:21:18 -0000
X-Groupsio-MsgNum: 28597
Content-Type: multipart/signed;
	boundary="Apple-Mail=_19225DB8-9718-461A-8812-CDF76C40D6C6";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_19225DB8-9718-461A-8812-CDF76C40D6C6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Feb 23, 2016, at 4:37 PM, Andreas M=C3=BCller =
<schnitzeltony@googlemail.com> wrote:
>=20
> On Tue, Feb 23, 2016 at 10:02 PM, Anders Darander =
<anders@chargestorm.se> wrote:
>> Ping?
>>=20
>> We can't build on master branch without this fix...
>>=20
>> Cheers,
>> Anders
>>=20
>> * Khem Raj <raj.khem@gmail.com> [160130 18:07]:
>>=20
>>> libexecdir has changed its location in latest OE core, it used to be
>>> pointing to /usr/lib which was essentially same as libdir and when
>>> hardcoded in do_rpiboot_mkimage it worked.
>>=20
>>> Fixes kernel build failures e.g.
>>=20
>>> DEBUG: Executing shell function do_rpiboot_mkimage
>>> =
/a/builder/mnt/build-oe/tmp-musl/work/raspberrypi2-oe-linux-musleabi/linux=
-raspberrypi/1_4.1.10+gitAUTOINC+b74df9228c-r0/temp/run.do_rpiboot_mkimage=
.5543:
>>> line 111:
>>> =
/a/builder/mnt/build-oe/tmp-musl/sysroots/x86_64-linux/usr/lib/rpi-mkimage=
/mkknlimg: No such file or directory
>>=20
>>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>>> ---
>>> recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
>>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>>> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc =
b/recipes-kernel/linux/linux-raspberrypi.inc
>>> index 70e8bfe..0798788 100644
>>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>>> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>>> @@ -60,7 +60,7 @@ do_rpiboot_mkimage() {
>>>     if test "x${KERNEL_IMAGETYPE}" !=3D "xuImage" ; then
>>>         if test -n "${KERNEL_DEVICETREE}"; then
>>>             # Add RPi bootloader trailer to kernel image to enable =
DeviceTree support
>>> -            ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg =
--dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
>>> +            ${STAGING_DIR_NATIVE}${libexecdir}/mkknlimg --dtok =
${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
>>>         fi
>>>     fi
>>> }
>> --
>> Anders Darander, Senior System Architect
>> ChargeStorm AB / eStorm AB
>> --
> This patch is mandatory but there was a serial with additional fixes
> send by Maciej Borzecki on Feb 2nd. I think this is worth taken into
> account.

You can try to use github.com/kraj/meta-raspberrypi kraj/master
I plan to test out more and more pending submissions on that branch

>=20
> Andreas
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_19225DB8-9718-461A-8812-CDF76C40D6C6
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlbNL7gACgkQuwUzVZGdMxTR3QCfbsyzoCtPzMjYmfajGHb/EQjL
kOIAnRjR4f5I7/HPlR6fLXxgX8XLxSmE
=DgQD
-----END PGP SIGNATURE-----

--Apple-Mail=_19225DB8-9718-461A-8812-CDF76C40D6C6--
