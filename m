Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33AB4E00D03; Tue, 24 Oct 2017 09:22:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BE48E00CF2
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 09:22:51 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id j3so14939331pga.1
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 09:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=IW78K6fOtlWy+9nxUW7svyC82zuGTiRsBQiozb88HnA=;
	b=mG7xUdmO0hhQ/zcKt5kp/SBYRG7useonLniy1FSfg8S2gpMGjAEZXkjA07O1L4YuIy
	U4ws8JjRr87G7HWxLTbSkqdc4BNNdGmTDBzs7vuyoUWlNxuDL4VH+EpWzYQSU2D1ukol
	n7zUX2l8tqw1j6uZpsp+gHmcItEuCZgXi9ZkKsnSAYpTMvRJTnaAegaeCjVCrTYopCNY
	CUNxd0xLnVHP1/3Hnd3irbzXejnC6OKDBDdr19DoH8TVMWf5vYKvAh1VmPqDxOBuo54N
	IEIRopoByypUKeaJ0bGYZSRcZ7oX1rCR8HbnQD058J/qup4InhQQT9rwNJSPcl0TNfWH
	gOXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=IW78K6fOtlWy+9nxUW7svyC82zuGTiRsBQiozb88HnA=;
	b=hGGxoLFeAYAfMOs1uznfdIMAMc2ROWVgy2vMjrKGbWGZqy4KtYFSoG9V6YTyO6//zR
	2dwtYbaB1RUNXwwF5SQTnzSKv6HtAuLH8yM/tbMGvSHNQcZ2wWjAGKRpQqkYGqfB+K6H
	YPJKjUk/zPBkedfK2qjsU7p9Bcp5M6Rspa6OFNfBn6mKkNyEF8EzEW1hLXXqG1tKCLPg
	/LfgZ4c0I5NwmULv49lXivPstD/XahbbN9OWxpE3Q9mxuHsqnqNDZGHRPArnTch6DRg4
	H2aInZC0kIkVor/jiiRZc1BffBFxwtGiZDBitRdSWi1HK48dB0oumaNHAq7ZWKiSAWHQ
	IfhA==
X-Gm-Message-State: AMCzsaU9BbBjQF1iNEKF7ThedKP2nfGbFCI7QSj61Q+Es/DSWOBGS5dE
	Ayu/Ffld5hETHwlb+fy0L4uCUJO41NlJ29guWx8Veg==
X-Google-Smtp-Source: ABhQp+QH/hGJu9iGRXbpTeOSVShH6bjIHb149NDOu40Sc80te5FLdejYdEhL6bdch7+eX4ZyxsPV6L7tgsoI9CHBSqI=
X-Received: by 10.98.102.132 with SMTP id s4mr17335806pfj.168.1508862171448;
	Tue, 24 Oct 2017 09:22:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Tue, 24 Oct 2017 09:22:21 -0700 (PDT)
In-Reply-To: <4b2b01b16549fc2c8a21edf445b53ee0@beryllium.net>
References: <4b2b01b16549fc2c8a21edf445b53ee0@beryllium.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 24 Oct 2017 09:22:21 -0700
Message-ID: <CAMKF1spuHyhrDty_J0ECmAPYss6S=uv1M8PUV==Eew+9DGfF2w@mail.gmail.com>
To: Remco Poelstra <remco+vogels@beryllium.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libcap compile error
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
X-List-Received-Date: Tue, 24 Oct 2017 16:22:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2017 at 2:23 AM, Remco Poelstra
<remco+vogels@beryllium.net> wrote:
> Hi all,
>
> I=E2=80=99m new with the Yocto project and I=E2=80=99m still trying to fi=
nd my way.
> I=E2=80=99m using a Hachiko board using Architech SDK and have managed to=
 build and
> run the standard image.
> As a next step I wanted to include the avahi mdns implementation. In orde=
r
> to do so I included IMAGE_INSTALL_append =3D =E2=80=9C avahi=E2=80=9D
> When I now run bitbake, I get the following error for libcap_2.22.bb:
> | cap_file.c:8:23: fatal error: sys/xattr.h: No such file or directory
>
> The compiler has a switch
> =E2=80=98--sysroot=3D/home/architech/architech_sdk/architech/hachiko-tiny=
/yocto/build/tmp/sysroots/hachiko=E2=80=99,
> which indeed does not include this file.
> Is that the location where the file should be? How can I add it? Is this =
a
> more general bug in Yocto or just my local setup?
>

it seems you might be using uclibc, and xattr is absent in DISTRO_FEATURES,=
 add

DISTRO_FEATURES_append =3D " xattr"

in your conf/local.conf and see if that helps.


> Thanks in advance.
>
> Kind regards,
>
> Remco Poelstra
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

