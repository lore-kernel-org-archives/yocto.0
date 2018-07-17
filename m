Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C0DFE013CD; Mon, 16 Jul 2018 17:56:16 -0700 (PDT)
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
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DB42E00887
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 17:56:13 -0700 (PDT)
Received: by mail-ua0-f180.google.com with SMTP id k8-v6so10664468uaq.12
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 17:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ra5BK6qFnea/wkoYxHdvQWlezE0H1ZYrxnZz9kaabfk=;
	b=PHx38/nuYjapB7ePnNNHgjBIll14oLi40H7sJ2GqWixnwtV3XH3//qT/rWhQG/l0Uq
	mZUsXRtmw5YSMp/k933JnOZE9nbKq9ljctgJok+x7lnASrQMOKNuxpj9aO8HiKfCzWsM
	TXIGsbGS4+puR6QLdnsgdObQCAtUqZN9lsD0pZHDiGf2DYaFqPsrqaOq5f3B44DvlzIJ
	DUXP2lqz68saik6JDdcJL51evyT9AkbazCVS7G9UWInSOE3tIVCZPmkN5LmP8dBd4a9H
	3Hwb8+ekSKQYLOy/DWqgLCrYbw5d3e9pfj1vAWiX3sOdD5MoRzrcPGbj7Jui+S5k85D+
	kzBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ra5BK6qFnea/wkoYxHdvQWlezE0H1ZYrxnZz9kaabfk=;
	b=hsSyOCF2/2wOX7BynTZhnoQqMjNlC7llmHTUUnhmPxVTlRrPbUNxy6nJi2R7FoaD6M
	drLOFiwj02Ak+aczxanY/6cjQack2ZYurOzDju3qyULP6AP07ua3DKXfWgqAyOEch48D
	53jUVlfUSbWaaCJml/dcM8tCgl5kMk5SIPlzkAViTJMUAQWSRZ5uulS+GvWrJWcu+QT7
	MXL33aEv2B9A7nt17/mIf0RRrVDFsxg9/4CXRfTmhwCEsH748mZZP6yM1iLAcp/nx8ts
	PKwQ9ThU5x0l6nmicaIkTLAjy8T3lkFGAmJhUmASJbCVaZG8EitfrFmk0woWy21ezn4L
	2nBA==
X-Gm-Message-State: AOUpUlGbBJRKRHqceg1FFyGSGjw7Xfa8E3RIlBYAZNEKs/DhwbAD1BnL
	DNsnXoClyJ4QR3xqlmhtKtrfMcQ8k4LxstI5QAc=
X-Google-Smtp-Source: AAOMgpfbP+qWjgK2EZoCeoLxHM21IKhtqnidqTZXi0bh2MuBzep7AuFERt6btmmwMU2nXb1hL19/v8eXYbIm+EcFPOU=
X-Received: by 2002:ab0:1544:: with SMTP id
	p4-v6mr12735979uae.81.1531788972501; 
	Mon, 16 Jul 2018 17:56:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Mon, 16 Jul 2018 17:56:11 -0700 (PDT)
In-Reply-To: <CE2E43470FE5444A811B580382FE5EDF4C405D0DFA@KEMPMAIL2.woodward.com>
References: <CE2E43470FE5444A811B580382FE5EDF4C405D0DFA@KEMPMAIL2.woodward.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 16 Jul 2018 17:56:11 -0700
Message-ID: <CAJ86T=X9MDaTTRD9ykVvHG3yokjuMf85KOOrKsLyxO7N_5Z50Q@mail.gmail.com>
To: Lukasz Zemla <Lukasz.Zemla@woodward.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to split rootfs image?
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
X-List-Received-Date: Tue, 17 Jul 2018 00:56:16 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 11, 2018 at 12:16 PM, Lukasz Zemla
<Lukasz.Zemla@woodward.com> wrote:
> Dear All,
>
> Because of some formal reasons, we would like to split our rootfs image into
> 2 parts:
>
> 1. base system - to be reused between different project variants, typical
> rootfs content.
>
> 2. application/data - less critical application, configuration, data, logs.
>
> How to generate in Yocto application/data image(2)?
>
> It is about generation of empty image containing only requested packages,
> like Package-A, Package-B...
>
> We tried following:
>
> inherit image
>
> IMAGE_FEATURES = ""
>
> DISTRO_FEATURES = ""
>
> IMAGE_INSTALL = " \
>                Package-A \
>                Package-B \
>                "
>
> IMAGE_FSTYPES = "ubi tar.gz"
>
> But it produces classical rootfs image with (unwanted): bin, boot, etc,
> lib... We'd prefer to have it built in an efficient way, so we'd like to
> avoid generating full image and then removing files by hand in postprocess
> command.

Yes it's harder than you might expect to create an image which
contains only the specific packages you define, without any of their
normal dependencies.

If your goal is just to split a single rootfs into two image files
instead of one, then a possible approach could be to define your own
custom image type (ubisplit, or whatever) which separates the rootfs
into two temp directories and then creates separate image files for
each one.

