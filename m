Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B808BE00D7B; Wed, 13 Dec 2017 23:57:28 -0800 (PST)
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
	*      [209.85.128.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f170.google.com (mail-wr0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35B3AE00D71
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 23:57:27 -0800 (PST)
Received: by mail-wr0-f170.google.com with SMTP id z34so4330063wrz.10
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 23:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=o+LGLIN15A/Xn5MmM5UsHgR3V6SPTxcZJThqbnAXgMw=;
	b=SzDXXOyikhXwP0KLFFQ7XlmgchltHFVbE8ko472H6iHMjWOrc4uDCbaZYe0xai2SJT
	GlrOtgD3+BeChhelHpYA1flc2uEdx5Br8iNZ6Ca92gKPGCmsdgUS2+jSJt44a17rWHOc
	m5I0IaqBQ5My7CUNK5jdF5pXKS3PkU7Xe1m7QfEkq2dR31K6rrc4U8L/deFPBbCb6Pv/
	CX2kTzgIbexHIrS37MKURS/EgnDnNnvsmDEgmfd6kYugn4tXoGf1HXDSTMRKLN7TjxK3
	yhemnoWBmgaE0e0MPFS5rBKOsxk79LGr5oUB+355DsJi5y0SNWYDjWOAUnsYaAsoV+2I
	haww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=o+LGLIN15A/Xn5MmM5UsHgR3V6SPTxcZJThqbnAXgMw=;
	b=rNBZxw7TkOBA5coCo6q4tSvVrx4m9h8HMMi9qzePB2eganHXnpXtzjIWORBxaBeRYW
	PEuLqshzVsDLB5Kpt1SaxLAgovx5n5C/jKfJB+qLwkLqSLE6dHO2GK0gb6SSDrYadM7p
	bDi2+1zfvLd/0FQtnzMWr1seCTwStuxs3vIRjjZJteVn3v7nox0NBEcTncmZV9ZWpsuD
	GWadTqw5gVt1lM2XLOn8KMBX7zAZpiuM7E4H38/d3EVfG+8zl0HYPuqLuzTPN9vvimYV
	ga5RpvHVu/lA4RRQ42roL3iQgXzbZDOCjc3WXHRzaGajM4syEt5TG5GsqKHIYAM1+6Pk
	6rKw==
X-Gm-Message-State: AKGB3mIgRTeJa9ufQJ3gDqROMtqHwkf5Hc6sxyUdzO8MOhytVX7irhE9
	mbzNdCNk/KZlnH5wFi85b+DmMAfa71sbvKnTM/w=
X-Google-Smtp-Source: ACJfBovw8sBrTyDLr3MheE9acsIM5/y7xLedS2ixDTycInkCjSFiSYyrca25MqeKEygFvgGwacsSJpidZySO8uH2Zo4=
X-Received: by 10.223.173.67 with SMTP id p61mr4465525wrc.226.1513238247096;
	Wed, 13 Dec 2017 23:57:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.133.68 with HTTP; Wed, 13 Dec 2017 23:57:26 -0800 (PST)
In-Reply-To: <CAPb0b+OCpt2Y4UmcPsnmFA18hn16zkKpLkPfzUjCivDe+B6aRw@mail.gmail.com>
References: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
	<7ace9fbf-b13d-5097-fe44-ac74c55abdd6@topic.nl>
	<CAPb0b+PBqB5qJr0cinXNBNnr4Sm9Kkayr6Voa8Bd=MF_dHJAMw@mail.gmail.com>
	<084c90b0-1b18-d85f-3418-4b43e2b64d61@topic.nl>
	<CAPb0b+MZzZFS+goVDWpX1Wm7+RSM1+AxH-zONm+x+C5diNLMcg@mail.gmail.com>
	<20181cde-bfa7-aeee-96b9-dba232ae0179@topic.nl>
	<CAPb0b+OCpt2Y4UmcPsnmFA18hn16zkKpLkPfzUjCivDe+B6aRw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 13 Dec 2017 23:57:26 -0800
Message-ID: <CAJ86T=UskuPALqZEjmp8LK6cRjETo3rEfwS2NWHw2w0uVVYmcw@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: recipe to clean up files from rootfs
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
X-List-Received-Date: Thu, 14 Dec 2017 07:57:28 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Dec 13, 2017 at 11:06 PM, Sherif Omran
<sherifomran2000@gmail.com> wrote:
> Here is my recipe, it runs suceeds but does not delete the files
>
> mypostprocesfunction() {
> rm -r ${IMAGE_ROOTFS}/etc/init.d/psplash.sh
> rm -r ${IMAGE_ROOTFS}/usr/bin/psplash*
> }
>
> ROOTFS_POSTPROCESS_COMMAND += "mypostprocessfunction; "
>

I think you are fundamentally misunderstanding how recipes work. At a
very high level, recipes are used to compile sources into installable
packages (e.g. ipk or rpm files) and then (as a separate step) an
image recipe creates the rootfs by unpacking a set of installable
packages.

One recipe can depend on the output of another (e.g. an image recipe
depends on the installable packages created by other recipes) but each
recipe has it's own execution environment. You can't expect to write a
recipe which changes the behaviour of another recipe, so writing a new
recipe to remove some files from the rootfs created by the image
recipe is fundamentally wrong. It's never going to work, even if you
fix every typo.

As suggested already, the normal and recommended way to remove files
from the rootfs is:

  1) Remove the package which provides the file(s) from the image you
are building (ie don't install the files in the rootfs at all).

If the file(s) you want to remove don't match the granularity of the
installable packages (ie you want to keep some files provided by a
package but remove others) then you have two basic options:

  2) Spilt the installable package into multiple smaller installable
packages (ie modify the packaging rules in the recipe which creates
the installable package).

  3) Postprocess the rootfs. For that to work, you need to add the
postprocessing function ** TO THE IMAGE RECIPE **.

