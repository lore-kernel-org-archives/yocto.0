Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2D2BE0094C; Mon, 17 Apr 2017 15:12:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0721AE00826
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 15:12:04 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id w64so42920978wma.0
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 15:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bXC2RNXuaneZz/yM9DehD0On6kWkmxTM/POnDRqR1No=;
	b=vMJbg0MJQhMbMXiRaxm3EPBmLca5KHwSMZXxqi1UGTB+X6Dz0Yuq0H5/Csk1Mb6ynR
	CJRri6pdc4uW9mL+jiM2BD1katKdNDN3dSxEhJ6jckkrqfZAIqIbHDsDbmHfxdA0G99O
	Xb+VJvMBkFdSOAfuoqUr7VlftQScaxSCrb1qsAJOCUCV9ddqa9jPtbSVKHyWRN2ItzX0
	yiICWtNpaMEWNMOUbMjoWl9CjGrCQrU4XEsqXQeG8a1uRyoOYBvTs/m/cCB6xtB+H+5N
	RneU8fPh91TdtVSLlYl97eZBFbTSvVD2KLQ9RxYfujKOblFSJT9Zfu+VaSqwgkEsJtPS
	mhNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bXC2RNXuaneZz/yM9DehD0On6kWkmxTM/POnDRqR1No=;
	b=EKpK9O7ihtFKQZ2YdiznGBUGKG2D5A1kFRgvxgVZNaRK3SWLavriWwyTjSKjKQLVtS
	mjFn43Vzd8VZ0VbsDoFixKVR5YQrD70yilwaKfIehMOaLKGNziQ+vVmB95oR3C7ffwB9
	9E2Iirzo2rbqQO3j/Uc9JBU+WB/W9UbyMvjBPVd70/swJ38/t9189qettS8O9wOSHOyr
	OgC1eylQ+LBSLKY6LUwH/NPAuQDK0ves/IdEBHty5PCGda/rG2gpZX9WMWscylpp4Xz9
	xL0tuq1vqgGkVrWgbJEDqdaFt2FiaT5pl5wrm55ViuSCXMEorglZcAAGx0Fo7pa3r+g+
	bHXA==
X-Gm-Message-State: AN3rC/5hPQDkVUNdXD5LjP5wvKi8cFopR9EmImp/Pqc76jr0ATd+nrJl
	tArXg/qIupi4XH4NKjGwu7hpBOSyKg==
X-Received: by 10.28.87.70 with SMTP id l67mr9752035wmb.37.1492467123815; Mon,
	17 Apr 2017 15:12:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Mon, 17 Apr 2017 15:11:33 -0700 (PDT)
In-Reply-To: <CAOiuDAXJJq5zRUEZOOLiyp2WMXBr0EPh1oAthKL_LWhkCBGYAQ@mail.gmail.com>
References: <CAOiuDAXJJq5zRUEZOOLiyp2WMXBr0EPh1oAthKL_LWhkCBGYAQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 17 Apr 2017 15:11:33 -0700
Message-ID: <CAMKF1sob9a5Z2xHw1jkzc1rviYa-pJoTPXVMW_Bp5rGM12P8Nw@mail.gmail.com>
To: Giuseppe Di Guglielmo <giuseppe.diguglielmo@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-tensorflow
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
X-List-Received-Date: Mon, 17 Apr 2017 22:12:06 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 17, 2017 at 2:19 PM, Giuseppe Di Guglielmo
<giuseppe.diguglielmo@gmail.com> wrote:
> Hi,
> is there any of the meta- layers supporting the installation of Google
> TensorFlow? Does a package-specific layer make sense in Yocto?
>

Don't think so. There is tensor rt recipe in tegra bsp layer

https://github.com/madisongh/meta-tegra/tree/master/recipes-devtools/gie

but it would be interesting to have a tensor flow layer if its going
to involve multiple packages.

> GDG
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

