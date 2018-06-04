Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E089E00CE9; Mon,  4 Jun 2018 02:43:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B33C2E00CE2
	for <yocto@yoctoproject.org>; Mon,  4 Jun 2018 02:43:41 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id f1-v6so10324259ioh.6
	for <yocto@yoctoproject.org>; Mon, 04 Jun 2018 02:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZZ13RpVN5I5h9F4c4b//tNq+w6zdS/VrSNVq1F4en2Q=;
	b=VSGQlzo08hu+gv99130/BNvVdSlJVQia6tOgZftdVLes+z41qJc3BNi+SjCY9/9mSS
	Y6WRbONUyxW6+9VZigQPQdNhjKrBVve0RKVJx+2h6P2AAFHdzc3JK9CTQ7S13xq8lV3+
	WF1TJnX6fmcOXIDP8kDi0FXQ/2fgec2H3Ek7MwRZIrDMhJdojxGF117aqrf8+IXsWN2v
	cJ+k3pfQKZoDaGBDTfd9mMjqZ3011oEojPE1jHVkPDo18ftk+QUX9NcoFAsJ6+C2ua6C
	rgDGCa7S2n3XNUaD0Wg/i/5w5E/0BFNkjLguGhVJ7adGebzrdw6dniEkZH2pKxmDXIDq
	+E+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZZ13RpVN5I5h9F4c4b//tNq+w6zdS/VrSNVq1F4en2Q=;
	b=Q2L6BwhbSHqM0+4iWuTo7FWk1mATdy2i8+CDVU9TqwqX74zxhQshOoZVIaEpomIqDA
	5G0V9D1L9wXTwSFAdTFtyGxSAg0JwPn1Hu8DXUVjfgOfUhEC7HYjzSYXK6mCmXfGUP/J
	8I6+LRWn7o0nlU4iqP/jR3fXqnCprNMxPlYFFBV4AsXdv1uPokrsvSSjDwVxIqXJ04fm
	DwzvPRbFHRvUEvtKvaFcHaoHrErMFBwWeUMeyF74Wly74+38sNgI/vvtkm4hGsZDUdsi
	xnOFxS3xVR4KPxH4D5T59W5ZiivO4XInp7lenKdRnzCIqFIshDuP4VeT2zoalDlmIsJn
	6vOQ==
X-Gm-Message-State: APt69E1rHXgGY9BdA5BIo7gn39DExoB3Kk/OIQ/q6WMpz/D/JFXZk3Cc
	MVGoi1FLZ8d5txVY/owe7ehchCcfHJUi2mbzHRZtjg==
X-Google-Smtp-Source: ADUXVKKd0DooLxE5wJuNYpHI3OpnmT6bJpTHtJV8ewINOSIKv21rmIJ4PsanvfRE0/83aYekRtV1SR7fYn/ig3MlqsA=
X-Received: by 2002:a6b:6b16:: with SMTP id
	g22-v6mr20486853ioc.20.1528105420865; 
	Mon, 04 Jun 2018 02:43:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:f614:0:0:0:0:0 with HTTP;
	Mon, 4 Jun 2018 02:43:20 -0700 (PDT)
In-Reply-To: <357124699.6943089.1527612640596@mail.yahoo.com>
References: <357124699.6943089.1527612640596.ref@mail.yahoo.com>
	<357124699.6943089.1527612640596@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 4 Jun 2018 10:43:20 +0100
Message-ID: <CAJTo0LYKhYrMD7cFmNwTkRU5EPmWrCY2GC+_EXaoggOnaZiffg@mail.gmail.com>
To: Ugesh Reddy <kumar.ugesh003@yahoo.com>
Cc: Yocto Discussion List <yocto@yoctoproject.org>
Subject: Re: Enabling Macro from .bb file
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
X-List-Received-Date: Mon, 04 Jun 2018 09:43:42 -0000
Content-Type: text/plain; charset="UTF-8"

You want to pass -DSOME_MACRO to the compiler, so extend CPPFLAGS in
your recipe:

CPPFLAGS += "-DSOME_MACRO"

Note that this assumes the build system that the code is using is
listening to $CPPFLAGS.

Ross

On 29 May 2018 at 17:50, Ugesh Reddy <kumar.ugesh003@yahoo.com> wrote:
> Hello,
>   I have the source code were the part of the code kept inside the #ifdef
> SOME_MACRO  and what would be the correct place to define SOME_MACRO  this
> macro?
> note: This define is specific to the recipe.
>
> Regrds,
> Ugesh
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

