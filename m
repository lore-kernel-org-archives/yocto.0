Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0805E008E3; Mon, 15 Oct 2018 05:35:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 371B0E00826
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 05:35:39 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id w81-v6so14906799oiw.9
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 05:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=HxC+fIBlUREq9VroDfm0WSU2/P9x+eZKhB8vHucN8aM=;
	b=ru8IwdxrMBKzBQXBXNVZlZFL0s9AqHX2Q2OLr8ykiogSmifzq7FBylGyBxxQxaHHCe
	mhGBiN0J2lQ71APwNlFGGamnRfKlGWa+996gZt7jlj43/tCrB1h/m9D/oZsNl/x+Nq7m
	HokCoeCrcd3RvvvTD9qIyZxbSwvhlvFPsN6NAzADNPX7mhdg1gL4ZNRdh/we0qBUh1Ro
	C9bQ08DNwjDJrCT/y0w5aHFd//wb9A7h4MLq3yU/98aJLFaUY317dLVDAOtpXsKB78OG
	mw0pvClwEZSnaAopw0KRXfd4FDkUxiwAlh0TB8Z7VfY9lkSDC/ccMs2HHfQSw1+7Eqcy
	+ggA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=HxC+fIBlUREq9VroDfm0WSU2/P9x+eZKhB8vHucN8aM=;
	b=mBTkwwwD3UzJTZUsTSza3SzhYxP+TiQaaVwsn12lcikIuZ2Fyao7Fr23gFRz0b6Sdq
	yWG3lB2IdPi+PzifbZ9iRET88LGRP8QtJMKhxgW8BNBQzYe4eNsT6hsRAV4B96iTPd+V
	XSSd00tueeobfZkK9Qpji0wHvhHkzdXPHnvPxMI+WKN+h6zc0DpVFOGIaKBMPaFf49k7
	ZYYYjy9MSI2FeKjIU7gCITsWrpBGdnUfSoiIB9xmDG52aNCCoR/xZeyxszyTEX1ZPJln
	73tdTt9HskAOPalbSr0x3Nncc1du4xlZNPsN02R1PFWCrrY6jlnQUZVgiBFv1fpyzibJ
	Z9Rw==
X-Gm-Message-State: ABuFfogTQyGq82+hdzAQApICpriDEFmMWQo/+Lt7eeIlygNV8ZxMO67K
	s1H6ITOfiVI+mFlp3/+HjBT4DbX620JzLvZqXeiEXA==
X-Google-Smtp-Source: ACcGV63WHc3ows+ThPIrf8DDJICwhVVcsog6weqValm/rHJ5e1rbPt8TZQwpcHu211VLo6+sk17kxiwxvlDw05emYf8=
X-Received: by 2002:aca:f0d6:: with SMTP id
	o205-v6mr8479537oih.138.1539606938508; 
	Mon, 15 Oct 2018 05:35:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36x=np5fcK96ozCHoXe-CFjvpMTdJDA4shpXBMRvd10Hg@mail.gmail.com>
In-Reply-To: <CAAfyv36x=np5fcK96ozCHoXe-CFjvpMTdJDA4shpXBMRvd10Hg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 15 Oct 2018 13:35:26 +0100
Message-ID: <CAJTo0LYbBU4s7w7TEDJwt6Wp8Vr9bsFCxmf1WYM-sX_=5wWkDA@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: permissions when installing scripts
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
X-List-Received-Date: Mon, 15 Oct 2018 12:35:39 -0000
Content-Type: text/plain; charset="UTF-8"

As you've discovered, cp doesn't preserve permissions.  Using install
-m755 is the idiom.

Ross
On Mon, 15 Oct 2018 at 11:12, Belisko Marek <marek.belisko@gmail.com> wrote:
>
> Hi,
>
> I have package which contains bunch of scripts (with +x flag for
> user). When installed in do_install method (simply by copying them to
> destination) they loose +x flag. I know copying directly is not best
> approach but there exists better way how to keep scripts permissions
> like in repo (except calling install -m 755 for all of them)? Thanks.
>
> BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

