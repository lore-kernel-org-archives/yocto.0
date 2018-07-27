Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73563E00CEA; Fri, 27 Jul 2018 03:57:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C41FE00C8B
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 03:57:45 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id s198-v6so8319837oih.11
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 03:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sOWc0lmsKDnw3hKdKJLii5+q5kqRn+2dou7CrwLvH7M=;
	b=00rLv1q9C4lfzknn93MyKadOnoCqjBobuJriMoWN9Tf1qlw57nMuIr+z47Rqv1Emte
	vnVl+Df6oCWdNj4b7tF0mQCJp62z0Ii49E/uF5KzhnlacJsgm3tmlGDrj7ux3sXyjStt
	+K3tBDYfr8WxDdWLfufmeTm5FShcoly9qPEdgcAeyFwbF+DEdC2LTvcNKrDp+tiIbvQB
	ck0EVOb+KVZuq1m0op6Iks49dozlqa+i0rg74I+yPqgEHrqPve9+b0sT+wfANJfydj99
	DSLv0ZJtxNOLDk+TIq6FPLMagzvxA9Wb1CZeT1PuxlEvhuKaq37Pwe0OCZ+yKy3PN8wH
	h1/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sOWc0lmsKDnw3hKdKJLii5+q5kqRn+2dou7CrwLvH7M=;
	b=qlppzFuv28RZnvUaDMR23ojfmRxlJTjzLdbXPc022quJm8pgANO68l3blcSD6alX1N
	fmXpZLNXw+T2EEjhVTDDDz3KRaCzYIJux+NBxB+A5BZWMBIVBqpb6mjBr/Zu8ab04V4J
	snQGbeM3VHkUt733H3BHGgORDAOVowBrrEGgmchgCiMp0qef89MJdZuo4Mys9P9dYCnw
	7aEJgO/Wei4I2bpn6v567LXUIZnOFZeAq1WRIaICILXcKB6hIoGf/0PQranx+9uDM+Xm
	TiN1GOC1/mY4MnfRQnnMd+MUxJ+gPCFfB6P2xMpRAMVG9HNuCIpX/YgmnaqDGuxIlg17
	1Zzg==
X-Gm-Message-State: AOUpUlF5jz1Lz5PR11t9QU/FuVEH9PEGkAdWkcF4+XOiXj7glqnttFSw
	SSrBVDJWQerhOibSL9gxxh7Uze057cVKD+QfAqnUlw==
X-Google-Smtp-Source: AAOMgpfyVPa+VS5O0KExBlbBh4MX8BBg5iD4eT1ySrUKx7dXEXcSLnOXGBujyvCHUIwY1Sh+OZOfkqRDnnAuYrtqGTU=
X-Received: by 2002:aca:3f41:: with SMTP id
	m62-v6mr6461937oia.18.1532689064845; 
	Fri, 27 Jul 2018 03:57:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Fri, 27 Jul 2018 03:57:24
	-0700 (PDT)
In-Reply-To: <CA+-BmJaMgfVEbZM8tLW6vxDC_0fdKnKkJqFt-KMVNUj=PDf+nA@mail.gmail.com>
References: <CA+-BmJY3L5ur9MWSG4G-+T_5zd3H+8Wo0-cPD7qONimtoXfjUg@mail.gmail.com>
	<CANNYZj8uUuZeLB-ij=towgBEuhxKrLxgxK+XrKpGhCnZtPgECA@mail.gmail.com>
	<5e27708f-be93-08cf-13c3-9d0e494723a5@windriver.com>
	<CA+chaQeBRWX+vKPskEju6h2+BGt=h4Y1vfVKJFxTo6CY8+jP0Q@mail.gmail.com>
	<CA+-BmJaMgfVEbZM8tLW6vxDC_0fdKnKkJqFt-KMVNUj=PDf+nA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 27 Jul 2018 11:57:24 +0100
Message-ID: <CAJTo0LYBZ1tAY6CAQCusyZytmf2_=Onvs3dsvpO+4A4kaST=9g@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@googlemail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Intel machine with 64 Bit kernel and 32 Bit user space
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
X-List-Received-Date: Fri, 27 Jul 2018 10:57:46 -0000
Content-Type: text/plain; charset="UTF-8"

On 27 July 2018 at 11:23, Ayoub Zaki <ayoub.zaki@googlemail.com> wrote:
> The ERROR: lib32-my-image-1.0-r0 do_image_wic: The file
> /usr/share/gcc-7.3.0/python/libstdcxx/__init__.py is installed by both
> lib32-gcc-runtime and gcc-runtime, aborting is not self-explanatory!
>
> gcc-runtime is anyway not part of the image ?!

It will be as you'll need it to run many binaries built by gcc.

Those files should be in gcc-runtime-dbg though, so I suggest you look
at your local customisations and see why they're in that package.

See gcc-runtime.inc:

# include python debugging scripts
FILES_${PN}-dbg += "\
    ${libdir}/libstdc++.so.*-gdb.py \
    ${datadir}/gcc-${BINV}/python/libstdcxx \
"

Ross

