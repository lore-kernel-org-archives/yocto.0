Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D5AFE00823; Thu, 26 Apr 2018 12:12:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44033E005A9
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 12:12:51 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id b21so15275403wme.4
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 12:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=czBkvXF356HAr4LccthMbhTSZSfRzETg3t4HsvtOQlY=;
	b=ZHXE6UWgNLtEdBf4hAEUfYBoFkL5mCrggleWxMa9Mvqc/lP4tvdqGaNHOz4dstfVuP
	fzRRT/VLVeklEJ6xAR3xOg1xh16AUmJ5xE12PKa6yjFS8pEL+VVIde+Y7YZZId/PRPlS
	lkC1wqkUrY9DOIIRgjYRmEQ3p281C+MF+sR17NFvGk8RvSlyNYnewMqCF5xDdsLHj+YA
	vThb1v2bIUR31XTmWKKT4cYqXhuL//85ktdeIcx0dqldEbI6phflkYvezxZVNUFyBi/3
	nSVUP8VbgtJUCtKtGZH4TpHUoNh3le0NIdJdAGuYpJj9LCFlMq7f4QVxvwwPOaLbiZig
	rGkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=czBkvXF356HAr4LccthMbhTSZSfRzETg3t4HsvtOQlY=;
	b=DUtRkwhYMCOlhPMTHd1J9TEP8yhXEAGxoDx6E0As1lGIfm1/wUyPIgK1W820ZxTkUu
	mSF7pLpMyqGQXg6R3Y/Fb0Fw8TPaM9BO4N4qR2CPauyKdayM7qxmI9gZe8G1rDMwAgq7
	4E2RnkGqe7Au/iZcL80Zs4woFnCxtMDabpd34JPWkOVchygyaPhR2ty8Nzr2+nqk6Xug
	rebGsJZsKLEC05R3BAAeDClPCzzuStPcxDK1pNiqrL4Pu1DheEn7eivW1Ivy/BlfC6yl
	OEWJpPEidlC0jbszykTOVK6DPf+sbBeqFTYyZGFRDaFVeaGjCsT35qkipU2qPBRrF2sU
	1/nQ==
X-Gm-Message-State: ALQs6tDCVo7VF6wqYtR4zYrEf+U7qRYl30nO9N88vKybJVKQfiXZxos1
	XtCWxw3HQYCgB0c4tFU/PTEfMpjsEfHHr3r7H98=
X-Google-Smtp-Source: AB8JxZpz7GZyzAuJXadujU7L1uaDLQWnxdGVUYCApmbrdx4rHkqcrZooNRmj6bsXd7nFtgNFpvVxd3/TM04wNe2kJg0=
X-Received: by 10.28.90.197 with SMTP id o188mr19977846wmb.151.1524769970950; 
	Thu, 26 Apr 2018 12:12:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.229.210 with HTTP; Thu, 26 Apr 2018 12:12:50 -0700 (PDT)
In-Reply-To: <B007846B-3D1C-4320-A089-E0B1E1C1B8A9@cisco.com>
References: <3292C1BE-5786-4639-8EF8-9376A0FF00B2@cisco.com>
	<CAJ86T=X1naDA79_0qBAnfttnLea956FBvgKYJzTesPze6KULTw@mail.gmail.com>
	<B007846B-3D1C-4320-A089-E0B1E1C1B8A9@cisco.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 26 Apr 2018 12:12:50 -0700
Message-ID: <CAJ86T=W5rNGyS4_T3aB4spR-wRsfR+vxA_=OWJXKBGFJ7t1g7Q@mail.gmail.com>
To: "Shakthi Pradeep (tpradeep)" <tpradeep@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New Recipe Integration Issue
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
X-List-Received-Date: Thu, 26 Apr 2018 19:12:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 26, 2018 at 11:36 AM, Shakthi Pradeep (tpradeep)
<tpradeep@cisco.com> wrote:
> Thanks for the info Andre. What you are suggesting it to be done while bu=
ilding an application over these libraries right?

No. The soname needs to be set when the library is linked.

> Any idea why the packaging is failing?

I don't think packaging is failing.

> Regards,
> Shakthi
>
> On 27/04/18, 12:00 AM, "Andre McCurdy" <armccurdy@gmail.com> wrote:
>
>     On Thu, Apr 26, 2018 at 11:03 AM, Shakthi Pradeep (tpradeep)
>     <tpradeep@cisco.com> wrote:
>     > Hello Folks,
>     >
>     > I am trying to integrate an SDK which is very simple and small. Bui=
lding the
>     > SDK generates an executable and few .so libraries.
>     >
>     > =E2=80=9Cbitbake sdk=E2=80=9D command goes through fine but when I =
run =E2=80=9Cbitbake
>     > wrlinux-image-glibc-std=E2=80=9D to generate an ISO with SDK packag=
es I am get
>     > following error
>     >
>     > ...
>     >
>     >                 install -m 0755 ${S}/lib/libmvudrv.so
>     > ${D}/${libdir}/libmvudrv.so.1.0.1
>     >
>     >     ln -sf libmvudrv.so.1.0.1 ${D}/${libdir}/libmvudrv.so
>
>     Unfortunately, creating versioned libraries requires more than just
>     renaming and creating a symlink.
>
>     If the library is going to be renamed during installation, then the
>     soname (which is set within the library when the library is linked)
>     needs to match a name which will exist in the target rootfs at
>     runtime.
>
>     In this case, since "libmvudrv.so.1.0.1" is the name which will be
>     present at runtime, when the build creates libmvudrv.so, it needs to
>     set the soname to "libmvudrv.so.1.0.1". ie add the following to the
>     linker commandline:
>
>       -Wl,-soname,libmvudrv.so.1.0.1
>
>

