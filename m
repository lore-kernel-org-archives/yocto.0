Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0837E010B5; Fri,  6 Jul 2018 06:13:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55259E00AD8
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 06:13:13 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id i12-v6so23361464oik.2
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 06:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nnaPLwyWVRpm81eCut65ufVhAhn8SSre2RfRF7xT318=;
	b=ePZIJeiiELKr9Qbhq7iiwowzC20ACGX9qhYGVzl82PxgI/n2BoWAcJUEQ2B33K5xVH
	TM9eEUhvmYM5cgloOaFe8ubFqsRr7UyUbq3l+moqljHkFU49Fb2wH6VsNbxZ87IlLsy+
	o5MNoU3nLFJYbgxpP2F8px3mySFdklXWF9u8Ibv/BCTO9wfP2AMUaBOVWVHnPK5z8ML9
	iAt5Gl985HAz2a3KM08R7tMAZd6h0K9/BiXfzrTajkA5czDpIHiO57NWhTV9Kv4bIocS
	l3J1UqVdkyDGvCiYKUe/Juz6COi3Eh2LKuCEwuIAhDE4H+sqpIGLvzqoB5SGpoV4Lszi
	REaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nnaPLwyWVRpm81eCut65ufVhAhn8SSre2RfRF7xT318=;
	b=ei2zpmxv28Xn/fd5tuw/ZXnvkafrFv3Aezbqk2Nu8bslr76kTO7+D3vt2o518TO+uu
	yUBaj2UhBfabUArvEjDzNkeNxmCpFHquJl4+Ui8kfVof9fSx6MW+267gkz8HNzksYpfu
	YSHv8E/TbNVlcIWH7ZssC98VtmzZfySyC9BC5suQiHOVoO25k5Nmmex7j5zz1486IPmO
	LkG64MPgEapIKLkWLv7F/b94Neuaywd+QJaQxcqMUnBukhrS6k2w3bhtDRzrtt5fr71B
	mt2231KdwVOPqacJ0AHhNh2HO0nIU3QrMHswjgPkl+YCqE9GdHOa2ZnpKxFpDEC0GRYe
	wtyA==
X-Gm-Message-State: APt69E3O/a2IEXAKWI+Z4CniTMtvzbXGHy9Vu2zTXHeXDiQx+UwHdmdd
	rxQO9bnhiz2sF6LVMd4PXeGSbSlQMzAtqGQJKL+dbg==
X-Google-Smtp-Source: AAOMgpe85afCl9AuQcOoLEJ9kq3p0DU10os4D8Q+oF1Co/QzEonmiE1nIouwnph2/rsbJ5Cn4UG4iz3QplMJ9lTR8RU=
X-Received: by 2002:aca:e185:: with SMTP id
	y127-v6mr12168001oig.245.1530882792745; 
	Fri, 06 Jul 2018 06:13:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:434d:0:0:0:0:0 with HTTP;
	Fri, 6 Jul 2018 06:12:52 -0700 (PDT)
In-Reply-To: <CAGKr=yc-cZArRiH=reK35FCLvUxRs7Rye8eZKnA4evBy+kDCXA@mail.gmail.com>
References: <CAGKr=yesOWOFUHJrvkgeBkw4LzqeNod6kG=6NpUkDzCJb8DDdQ@mail.gmail.com>
	<CAJTo0LaKC868wFeNd8V4MTgnW=e5BJpqSG8Ou_K9Ms__JHOSpQ@mail.gmail.com>
	<CAGKr=ydT_93m6GmGbhR0U21ewX6=OyvjaskX1hNCzNVu=eAeug@mail.gmail.com>
	<CAJTo0LaiQ2oXL2VJA3VKSqNWpp7Vdd-UB+qCQH-EOD6gBwgxeQ@mail.gmail.com>
	<CAGKr=yfs7shznSGNcpGz9vJbwXhHr8XAPNuhafsBgjpFPxkfOQ@mail.gmail.com>
	<CAJTo0LZTbW7RRUt1rA62VxdwitR9Xac5KrBbuSLtdx5reHrdVQ@mail.gmail.com>
	<CAGKr=yc-cZArRiH=reK35FCLvUxRs7Rye8eZKnA4evBy+kDCXA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 6 Jul 2018 14:12:52 +0100
Message-ID: <CAJTo0LYcHNQoZjEZ8D=dqt9-3i7_e8ivNfXxvLt_qAF0QQj-9Q@mail.gmail.com>
To: Oliver Westermann <owestermann@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Creating a recipe for python3-pillow
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
X-List-Received-Date: Fri, 06 Jul 2018 13:13:13 -0000
Content-Type: text/plain; charset="UTF-8"

On 6 July 2018 at 14:06, Oliver Westermann <owestermann@gmail.com> wrote:
> Of course, thats the reason I'm here ;)
>
> SUMMARY = "Pillow (The friendly PIL fork)"
> HOMEPAGE = "http://python-pillow.org/"
> LICENSE = "EPLv1"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=c6379001ecb47e2a0420c40177fc1125"
>
> SRC_URI[md5sum] = "52d93a34f4180abcff04876f23eaa9b9"
>
> PYPI_PACKAGE = "Pillow"
>
> inherit pypi setuptools3
>
> BBCLASSEXTEND = "native nativesdk"
>
> DEPENDS = "jpeg zlib"
>
> CLEANBROKEN="1"

Move your DEPENDS up, as the inherits are setting up DEPENDS with
python3-native python3-setuptools-native, and you're overwriting it.

Put the DEPENDS after PYI_PACKAGE but before inherit.

Ross

