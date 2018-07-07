Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3472E00DCE; Sat,  7 Jul 2018 15:41:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A4E7E00D35
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2018 15:41:21 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id v8-v6so29748161oie.5
	for <yocto@yoctoproject.org>; Sat, 07 Jul 2018 15:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vWuVWdB//MJM+KqB34FjnXGK6UlYIBHL/GVz7BocxOk=;
	b=QuViG7yAvCkb6pKOv71GksrmDTCqb252zI48VTgIROml6bxkIUjd/lNP8remLlwjQ4
	tvatrspBudbrOcl+0C2HAKx0TlmrJVZ0dQznLP8USCRkjpY12cJIRh8aAOl8P0i7lgMa
	w0zjx59rXMXE5z3Y9R532uQBkgqqsVwq6ZU8f6cDtQN1nZHjBey0gFE+rYpfWyryBIu5
	ErIWhGiCADYr517b5zKJmBWk0/6MgcVcq8RFvMR7qHf6xFPSd/194rS3XcMgflTPna33
	U2CJgKye+eeu2VPshRRJt2MNR09/zyQ5PY2oE2eVOHBozko5EddpiDpN4NEPGoSA17Rx
	+eGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vWuVWdB//MJM+KqB34FjnXGK6UlYIBHL/GVz7BocxOk=;
	b=twYfn/myw54hiIG8+EUpZbXtCL7K6FpusRXaKsY35lKQPDduuE0vuU+28jUHMi9bpf
	6OYShjoGrKLmALGE1H/M+YXzmyku5SycvOj63HjQkeLYiomYyS/LWqxDNyU0nxs2KOzH
	gYblfuNZCEbiU2y5jcJL9SYehxvjD4gOMne/ifoF4aviLhnmLTYmJ7q5GfHojgKMgS6a
	m2Jw018InfU14cBwSaMVjT9yB9N0g8MpKB9o0oGxoYaOe1G66wsnSEq4z/5yCRjUk5bI
	eLaz2eIZUNozbbDDiX9VW4sH+NH6ZCNuriKPq88hr0mGG9c5KCTQ643wzhTjg7PGEVzD
	/SHQ==
X-Gm-Message-State: APt69E1WfEYKuCgQG1DLUmda/24DtZfk1KtSwxbFd93tebJoIYbUGNG0
	e1uJIj5D5sXSYrdPKIU/oGZuhh6q4zQixCivha9nuQ==
X-Google-Smtp-Source: AAOMgpeylIppmloba9IbNbmLdsummBGgV5uZE2oGOvf4RwBPM3GPdC1kODU2an3HMg/F3Q5fKfW7ODK+zjpMnSRGeQI=
X-Received: by 2002:aca:f409:: with SMTP id
	s9-v6mr18181482oih.102.1531003280925; 
	Sat, 07 Jul 2018 15:41:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP;
	Sat, 7 Jul 2018 15:41:00 -0700 (PDT)
In-Reply-To: <MWHPR19MB11832EE45DE3D590BC782414C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB11832EE45DE3D590BC782414C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 7 Jul 2018 23:41:00 +0100
Message-ID: <CAJTo0LZDtCuKvvG7D9qfFQVAfSFd2xvOZiWMgdiiz1QriNYHTg@mail.gmail.com>
To: Raymond Yeung <rksyeung@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to remove openssl from sysroots
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
X-List-Received-Date: Sat, 07 Jul 2018 22:41:22 -0000
Content-Type: text/plain; charset="UTF-8"

Presumably you've a recipe for the vendor openssl.  If it has the same
name but is a different version then just set PREFERRED_VERSION.  If
it has a different name too, it should PROVIDE openssl and you can
just set PREFERRED_PROVIDER.

If it doesn't do either of those things, then it is broken.

Ross

On 6 July 2018 at 23:06, Raymond Yeung <rksyeung@hotmail.com> wrote:
> I've changed the subject heading to make it more specific to our problem.
> Hopefully this generates some responses.
>
>
> It has been blocking us for close to one week now.  We want to use our 3rd
> party vendor openssl, not the one that comes with the source.  Apparently,
> even with "minimal" instead of "base" or "sato" cannot exclude it.
>
>
> Any idea [e.g. how do we systematically find out how it's included now, and
> possibly what other packages/recipes we may also need to remove due to
> dependency]?
>
>
> Thanks,
>
> Raymond
>
>
>
> ________________________________
> From: Raymond Yeung <rksyeung@hotmail.com>
> Sent: Monday, July 2, 2018 11:05 PM
> To: yocto@yoctoproject.org
> Subject: How to remove a package from a build
>
>
> We've our own non-yocto openssl that we want to use.  At the moment, we're
> using "sato" image, rather than "minimal" and includes its openssl that is
> out-of-date.  What is the best way to exclude it from our image (and from
> sysroots)?
>
>
> We have thought about two ideas -
>
>
> Use smaller image like core-image-base, or core-image-full-cmdline (but not
> -minimal that may remove too much functionality).
> Use INSTALL_IMAGE_remove += " openssl"
>
>
> Would either one work?  Also, how do I follow the .bb files etc (e.g.
> starting from the one for sato) to trace down which sub-package includes
> openssl?
>
>
> Thanks,
>
> Raymond
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

