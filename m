Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 475C0E00942; Sat, 25 May 2019 06:33:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBCDEE0049C
	for <yocto@yoctoproject.org>; Sat, 25 May 2019 06:33:05 -0700 (PDT)
Received: by mail-it1-f177.google.com with SMTP id m141so20279036ita.3
	for <yocto@yoctoproject.org>; Sat, 25 May 2019 06:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=77ct9RZTIMHRV+sMfmSFLdhgdPqhDLR/RdIFovu0xC8=;
	b=yAfmSXEjFLznhjzGqiR0d5astZGEkGDt4u/DlSvyUgCdxj0IcoSG0HqoYty+wj6yKg
	94wOWT5KqPgl+be15IyOHhvY1jgiAhCkO3LfOKhnZPzpZZjmIqxjSfKUCBDAzM6nTvuM
	2wLK1T0UgDdaljACqNUVqf54mWxO3wFvdCRKhLcStlp2oyFNBb6GnzLX1sniA6pkosV3
	wqC/r85ZIxSuqHrkTiwdLoyrd9gEio4ybGv6XxOgMZzfgULHj6Oj0vwN/4YaRZ/lk7HL
	3zKFxCSsj/eis8x/msnDnoKkS5SNhp9Mi+5aNcGf1euW8Z18EE4Th7KV7GjB2OK0wMuz
	kBqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=77ct9RZTIMHRV+sMfmSFLdhgdPqhDLR/RdIFovu0xC8=;
	b=mRv2VMGGfFnWZGqRr9cQGFFKYl47A6UY0kHE+hXW2seOHOqfsZ/Ig5z90MBi70ltbD
	JQYaBUQVwcLp1ld/qBVLRVQLHqkUOB4P1N+Xs1WSppAwHWzTLHmQbHhfZv/AqEviPdnF
	H6oRfzZW+N7fusRE2feKdV1Y1SnoiB1L2g8ysfEcxhl9H6RjoGKwLLhN2lvUjxOFiDlK
	Xu9nb8O6tVaGIsMYYbs/ZEjvdXHwmzXwgOeRa/67zRkIoYQDSYp1ir1PgKYEsjmcYEGv
	GHNa+Lsgq6xPRJZcZ6oIL7AWodr37QRvKiLkf+kafWmjnDLhXikhOrI3PuBdIhcclPSB
	TBXA==
X-Gm-Message-State: APjAAAVYRIoHQU7pThKBZqlIhOK7zLEEwksI6Akpn0L0k/RNh5YHhrPw
	M2bJd1Uy4Bx/9JV+B/yzrNttrbq1SWQ/+PM3tVGbIg==
X-Google-Smtp-Source: APXvYqz1IYy+4qAmzru4iBut/WY2rh/9nOsXIrz1bOdOgHcoII19vWn2wAzvWGAhoJJ9m5WnjUAWVlphkiR12n1w5qU=
X-Received: by 2002:a24:19cd:: with SMTP id b196mr23053224itb.74.1558791185196;
	Sat, 25 May 2019 06:33:05 -0700 (PDT)
MIME-Version: 1.0
References: <1558705171.9936.16.camel@toshiba-tsip.com>
In-Reply-To: <1558705171.9936.16.camel@toshiba-tsip.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 25 May 2019 14:32:53 +0100
Message-ID: <CAJTo0LYAG01HYA3tPMQ_82eDikm7r9Lv9Pu38LEVKhcBMcbbCA@mail.gmail.com>
To: Archana Polampalli <Archana.c727@toshiba-tsip.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Difference between DEPENDS and BUILD-DEPENDS
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
X-List-Received-Date: Sat, 25 May 2019 13:33:06 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, 25 May 2019 at 14:28, Archana Polampalli
<Archana.c727@toshiba-tsip.com> wrote:
> i am working on one open source project,for this i have to add some
> debian packages as yocto recipies.
> i am trying to add "audit" recipe,so iam trying to understand the audit
> debian package ,i got struck between "depends" and "build-depends"

Debian Build-Depends == OpenEmbedded DEPENDS
Debian Depends == OpenEmbedded RDEPENDS

Ross

