Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B4DAE00C78; Thu, 31 Aug 2017 11:49:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.173 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01382E00C09
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 11:49:17 -0700 (PDT)
Received: by mail-wr0-f173.google.com with SMTP id 40so1124850wrv.5
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 11:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pIkYniNi3KojCZXvDtR+bOiBdaclhGfQ4xF06oTq6X8=;
	b=Rw1as4uDVSbevo7cCK2EjW7QGLRnhJ+ol9196X9rA1o+dYkAnhOzUerNpu8P/kG6ib
	Z2oXIQKkZ9kXANjUn4V3za8neZYefXb82qJs2KHQl5+ol8Mj0pcSQX2OuRkKCjr8HKBP
	GG9ndMeKwy7RtL+AE5gbuAjg+YP28kphZrWJfIpr8ZriC5tp1b+fKp2yoPySLGxjQ3GE
	KDyblddGC/tdwP+OEi8uTMsdH2A5ffZFFtj7ZBKxPiIiYkWX26jb/G3n8obli8k5+F4t
	Q2XKBlX9ePGPWjXSP5R4zbSLXsL7zS3oAm9foWOcyu9MhRGa87kesaah6OxtHOB4/3Cn
	Zlew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pIkYniNi3KojCZXvDtR+bOiBdaclhGfQ4xF06oTq6X8=;
	b=VXUPv1fNE2NaJghNsoZev1kfReet7OpSDpkuof6ZWIe8G9gWY1wonm6WepI+9fWQqd
	SsZKl4FyQgCs6gdwT5c5ay4hsYYFm6SJWGfJH6h29sjUsGlEkOiQ6SfRgeizPOYYUtsJ
	1YqYWczTBvqvRoWiy9bRypdXxVX9zpeYrHuolwpWdW+x410Aqoa/QC2MnC4cduYsXhD5
	1NUxH5Ht7tl5eLXdsviKGUJiPLCHuMsHfpVoi4gzZai0y18PARoiphvwNHu6HwhQQG3s
	mHk66HuTvPs1T1Lze/EygZwguZ6/0usahQp+mtK47Y4Wchc0ICntBSTPqxQ/tfQBdngE
	mO0w==
X-Gm-Message-State: AHYfb5jxpByszCKfEvJG1Y+6mK+2t9m8w0eV6Nko8bCsFDrg38cbgJzt
	24viSnFwDY8PzM+Bf62nQpHyGNb0k+dG
X-Google-Smtp-Source: ADKCNb4MXt6gPcCpFC+ctiqx6uOH7J3vDYx6iqn6XEVILDDrt3xuKsuG3DV+qQdM+Dtc0Aikrbq7L/LyYfyLx74kSaY=
X-Received: by 10.223.153.238 with SMTP id y101mr3414083wrb.27.1504205356595; 
	Thu, 31 Aug 2017 11:49:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.184.147 with HTTP; Thu, 31 Aug 2017 11:49:16 -0700 (PDT)
In-Reply-To: <1503708616-11645-1-git-send-email-armccurdy@gmail.com>
References: <1503708616-11645-1-git-send-email-armccurdy@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 31 Aug 2017 11:49:16 -0700
Message-ID: <CAJ86T=VufG+uMKJPmencdqtEi_5KMtTi92DGZVT-snWmwVUaRQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-gplv2][PATCH] gmp_4.2.1: prevent calls to mpn_add_nc() if HAVE_NATIVE_mpn_sub_nc is false
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
X-List-Received-Date: Thu, 31 Aug 2017 18:49:19 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 25, 2017 at 5:50 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
> When building for aarch64 (ie relying only on generic C code rather
> than asm) libgmp.so contains undefined references to __gmpn_add_nc
> and __gmpn_sub_nc which causes attempts to link with -lgmp to fail:
>
>  | .../usr/lib/libgmp.so: undefined reference to `__gmpn_sub_nc'
>  | .../usr/lib/libgmp.so: undefined reference to `__gmpn_add_nc'
>
> Solution based on a historical patch posted to the gmp mailing list:
>
>   https://gmplib.org/list-archives/gmp-discuss/2006-May/002344.html
>
> Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
> ---

Ping.

