Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 636B2E00A21; Mon, 17 Oct 2016 13:55:33 -0700 (PDT)
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
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30D17E009DA
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 13:55:28 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id 83so168956536vkd.0
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 13:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=9ERa7SoU/29mMTSDGmiFS+96avG+C7hOuwRoMqtyZXc=;
	b=uLyDpreykw91J6m2zudjWUrBuOIRYi1VZx+pPLZj6xuRVwu3QhTpXb0bOs19OEabAh
	S86mZ0t41HvkWcgG8Sonmr0Q6Y1MU5EwX03ccplojObF0yM3E8/r5egBpiI+BHMGDCAN
	AfmvuCzZSPG3dYBpGpazDNHyKrsYs43jxmQ558czKljb6PK2yA6DQL5Zq96v3oJb+LGI
	+NQUoz07o0iXlj6Ksnh22HUEk2hElZHqr4QcjmCSRAKjU4hjscSUxgh5Nnf3cIDLimuR
	gS0x49FPHVT6Un5wCbCNlhfkPZ+sN3e+yTZf7ItOUy3nTRkuQbWlOrec3CCAjjyn0I9+
	rO9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=9ERa7SoU/29mMTSDGmiFS+96avG+C7hOuwRoMqtyZXc=;
	b=fNAMb4mgK4DJTJ3rrGb3NqcyPWXrsuUDS/jovbaSEfqyxUb5eFiQkloc+iSNWbEexc
	E4h8Tts1WMCXgORGzv7SPxeJyHbCVP16WbfsI17yoATAYrgKKgWOwS4KESkvswcSqBjY
	clUaOfpNBwzo0H3U6S8fTc91lnP9ptk60DBC7tS59eWWJ/OT5mmkKSgf2vzqq7Cuy4N4
	7veNBmT87ngo6AyscV/7+Kur/TkJM2ywQitR38q+o4ct4ik/zoCKhZJZDi59CGG1dwFz
	XSUuQyhPJNPed9hNiUxAsF6sFKi0NMOS4fAFii2ZqGXBZjxoAkLtlRBUbWDe+/xA5FSy
	Sgug==
X-Gm-Message-State: AA6/9Rlf2mxr2RE6eBVzUHo2mEAk7ra76nLxKCCTlR7GK9+N1KwFopyJENF1PpJP/YMVPOgZ1iPa15AKd3iOlA==
X-Received: by 10.31.180.132 with SMTP id d126mr19607321vkf.139.1476737728462; 
	Mon, 17 Oct 2016 13:55:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Mon, 17 Oct 2016 13:54:58 -0700 (PDT)
In-Reply-To: <561533617.145482749.1476713463652.JavaMail.root@spooler3-g27.priv.proxad.net>
References: <290444271.145314951.1476711189434.JavaMail.root@spooler3-g27.priv.proxad.net>
	<561533617.145482749.1476713463652.JavaMail.root@spooler3-g27.priv.proxad.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 17 Oct 2016 13:54:58 -0700
Message-ID: <CAMKF1sqy7BQUZS76_iCdqBNxHfbajjAaeOAXYQSDU6GVuXAgLQ@mail.gmail.com>
To: "Michel D'HOOGE" <michel.dhooge@free.fr>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Using debian packages management
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
X-List-Received-Date: Mon, 17 Oct 2016 20:55:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 17, 2016 at 7:11 AM, Michel D'HOOGE <michel.dhooge@free.fr> wro=
te:
> Hi,
>
> From time to time I try to use the debian packages management instead of =
RPM because I feel more "at home"... And every time, there is a problem -- =
but this time, I felt like I'll try to understand and solve it!
>
> I tried first with core-image-minimal, and it worked.
> But then I switched to core-image-sato and had the following error:
>
> ERROR : core-image-sato-1.0-r0 do_rootfs: Unable to install packages. Com=
mand '/mnt/Yocto/Fabric-x64/build/tmp/sysroots/x86_64-linux/usr/bin/apt-get=
 install --force-yes --allow-unauthenticated apt packagegroup-base-extended=
 packagegroup-core-ssh-dropbear dpkg packagegroup-core-x11-base packagegrou=
p-core-boot packagegroup-core-x11-sato-games psplash packagegroup-core-x11-=
sato' returned 100:
> Reading package lists...
> Building dependency tree...
> Reading state information...
> Some packages could not be installed. This may mean that you have request=
ed an impossible situation or if you are using the unstable distribution th=
at some required packages have not yet been created or been moved out of In=
coming.
> The following information may help to resolve the situation:
>
> The following packages have unmet dependencies:
> packagegroup-core-x11-base : Depends: packagegroup-core-x11-utils but it =
is not going to be installed
> E: Unable to correct problems, you have held broken packages.
>
>
> I checked: The package exists in /tmp/deploy/deb/all/packagegroup-core-x1=
1-utils_1.0-r40_all.deb, but it is *empty*. It looks as if it is just there=
 to create some RDEPENDS in the recipe.
>
>
> So... I played the game to explicitly add packages one by one to the imag=
e:
> IMAGE_INSTALL_append_pn-core-image-sato =3D " packagegroup-core-x11-utils=
 xserver-nodm-init x11-common xserver-common"
>
>
> But now I have the following error:
> The following packages have unmet dependencies:
>  xserver-common : Conflicts: x11-common but 0.1-r47 is to be installed
>
>
>
> So my question is:
> Is using debian packages management definitely broken in Yocto? Or has so=
meone managed to use it with some tweaking?

dpkg is a supported platform in OE/Yocto

>
>
> Many thanks for your feedbacks
> Michel
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

