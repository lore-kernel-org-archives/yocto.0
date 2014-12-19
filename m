Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F38BE00BF3; Fri, 19 Dec 2014 05:21:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andrea.adami[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCE2CE00BC3
	for <yocto@yoctoproject.org>; Fri, 19 Dec 2014 05:21:10 -0800 (PST)
Received: by mail-lb0-f178.google.com with SMTP id f15so893962lbj.9
	for <yocto@yoctoproject.org>; Fri, 19 Dec 2014 05:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=hUelDHNA/5jqF6yaFSIb1BDMxncLAHOvLwBBKVRvCgw=;
	b=LaO8imzuLUtVGLG1E4k9b+E4FuBg63Y1ASYIWUqMgbC7TjMxqeOdb6H5gxsmOBs79Q
	L69PnmzFgLSJCjXgyuSoochY/wG94dHnZ5VKTH7VnMKjqbGQvCtvEWeoSQPVq2I1VYk6
	nOexmsCisJm79BKcEY9Mwy1mEDa15XFRFsNbAUwbjhUrZOrf4HWhI2TkdMyhL8V0Xo4C
	B9wFpW3CKCYAYCFdoi0Ik3aN8jWhvB2SVEYsRqN2BnGck3CdWItuiXvMjfXudSou0qb9
	fTgrvPnYDNfxa/4H4sJ8UPBSzoWgCEqERTi+YxOESjkiYNHDgyPeRTvSrRCXCZQWS9DQ
	d9Ig==
MIME-Version: 1.0
X-Received: by 10.112.130.65 with SMTP id oc1mr7853694lbb.7.1418995268933;
	Fri, 19 Dec 2014 05:21:08 -0800 (PST)
Received: by 10.112.52.231 with HTTP; Fri, 19 Dec 2014 05:21:08 -0800 (PST)
In-Reply-To: <8F90F944E50427428C60E12A34A309D239F6DB0EE8@carmd-exchmb01.sierrawireless.local>
References: <8F90F944E50427428C60E12A34A309D239F6DB0EE8@carmd-exchmb01.sierrawireless.local>
Date: Fri, 19 Dec 2014 14:21:08 +0100
Message-ID: <CAAQYJAsgCWS+yoL7CusmKpPeVH5paAevOY8Jbo0JzzNgapFGJA@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Microcontroller Cross Compiler
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
X-List-Received-Date: Fri, 19 Dec 2014 13:21:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 18, 2014 at 8:09 PM, Darcy Watkins
<dwatkins@sierrawireless.com> wrote:
> Hello,
>
> In my target system I have a microcontroller (MCU) that handles some I/O,=
 power supplies and system boot up to the point of taking the main CPU out =
of reset.  At present, we build the MCU firmware from source and then the b=
inary file is packaged to be used as payload with an MCU firmware update ut=
ility.
>
> Now my main question...  does anyone have suggestions (or is there a 'yoc=
to' way) to build such a cross compiler for the MCU so that it can be invok=
ed to build MCU firmware from source as part of the bitbake build for the L=
inux target's image.  The idea would be to build MCU firmware image from so=
urce using the MCU cross compiler, but obviously to build drivers and utili=
ties that run on the main CPU using the normal cross-compiler toolchains bu=
ilt under yocto.  Then I could package the payload firmware image along wit=
h utilities all as part of the same RPM package.
>
> The MCU cross compiler we use was originally generated using crosstool-ng=
, and is essentially a gcc cross compiler for 'bare metal' MCU target.
>
> Does anyone who has gone down this road have suggestions?
>
> Thanks in advance!
>
>
> Regards,
>
> Darcy
>
> Darcy Watkins ::  Staff Engineer, Firmware
>
> SIERRA WIRELESS
> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231 =
1100
> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
> [P2]
> dwatkins@sierrawireless.com :: www.sierrawireless.com :: www.inmotiontech=
nology.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Darcy,

if I understand correctly you use the standard toolchain for the
target image and a custom $CC to build one custom binary.

We use klcc for a couple of klibc-static-recipes thus we created a
.bbclass to be inherited.
See http://cgit.openembedded.org/meta-openembedded/tree/meta-initramfs/clas=
ses/klibc.bbclass

Regards

Andrea

