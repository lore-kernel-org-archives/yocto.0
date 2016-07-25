Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 893BEE00C3E; Mon, 25 Jul 2016 01:27:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDF14E00972
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 01:27:38 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id f65so125578001wmi.0
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 01:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fHX6P+ug6oyggiLmkgO8W78dHH/TvNI2QpWiqra4pI4=;
	b=Sr10t2lUn91CcCkgeVz9MlFkTWDIlOccOjAq1hX2+YZHzKLPn7WwgtFyx/DYKOdHji
	Dk9ApiEdo9adlCHG0g9ePahg54kKJvv4IxnuqcaWxkob2Rmnn51BQC7CpUWIFJf62MDl
	9RvMxs6OAHHIW7gUOSov0kQh21hzcXcIk7TuM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fHX6P+ug6oyggiLmkgO8W78dHH/TvNI2QpWiqra4pI4=;
	b=TaxQCW6GMfY4NYBDkftpxeOg1axdKUQLiwPfdOPeRH/YegOtRtMIJaoT313KYd2Edp
	psS308dNATvL81rHBvJg229FmPGRluvRHy9fpHPv2nR0FTqP/+x5yRPz2Wu54q1mdJMq
	W20eqPIGO3p+2+ApvNLtvVoVLHV8PuX4t3mg2o24klvlYX+s4UP/9uO+570mG4KrE7kF
	xlAKWVNLJqPjr/9EAkzoXQa6MSlm4qCdjqJuXnop+tN7B6e3T6SIxShSqoprGZW/9Y1c
	TVGy5dYNaBCA4nLyOpIey6YVzHs122cSJM/GcNZ9Gd3vNRwwqzzsXUzQoYxWqV1FPh+A
	1yTw==
X-Gm-Message-State: AEkoouvXvKe4PQc3GMyerrMfos6q/sASgm2v5jkVN3uih7EdFKtJ0Xi2fnEy+6QMdHwnl5ATgMzq8cFonxtxerC9
X-Received: by 10.28.193.8 with SMTP id r8mr17983367wmf.13.1469435257976; Mon,
	25 Jul 2016 01:27:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.163.225 with HTTP; Mon, 25 Jul 2016 01:27:18 -0700 (PDT)
In-Reply-To: <CAGMdoFmv_bWWtNB1QMz+G24Ezd_Y1bdx15sR_9qkHX5GK_yVCA@mail.gmail.com>
References: <CAGMdoFkMe=gbzKMsS-WPF5ORJ8uV8S+XCuR+bHNT-reC63Er7w@mail.gmail.com>
	<CAMKF1sqUWtfx46-sYuGo+s8ynR24JdA_EH92BZVH+3Gh_WM=NA@mail.gmail.com>
	<CAGMdoF=Jhd=42QcmvLgtsMt+G5kkTg8urQhG-8TryOdG-5Kw3A@mail.gmail.com>
	<CAGMdoF=HzcT+of5D09Yv49AB1OkbSzLZnf6mEF4wyQ_N=kYy3Q@mail.gmail.com>
	<CAMKF1srfGGE29S1qNYDmg+OqGWVgUSbuz5ODu0Rw+q2uYr+34g@mail.gmail.com>
	<CAGMdoFmv_bWWtNB1QMz+G24Ezd_Y1bdx15sR_9qkHX5GK_yVCA@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 25 Jul 2016 12:27:18 +0400
Message-ID: <CAP71WjwJ7MZSjT70shU7Y3HiZhHQZS6_bQ=UXQH+DX7We672xQ@mail.gmail.com>
To: Edward Wingate <edwingate8@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with DISTRO settings
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
X-List-Received-Date: Mon, 25 Jul 2016 08:27:45 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 25, 2016 at 9:13 AM, Edward Wingate <edwingate8@gmail.com> wrote:
>> Just conf/distro/mydistro.conf is needed.
>
> Well, it didn't work if it is only in conf/distro/mydistro.conf.  I
> had to have it in conf/layer.conf as well.

hmm. you shouldn't set DISTRO in conf/layer.conf, that doesn't sound
right. DISTRO needs to be set in local.conf (or any of the other build
specific conf files). DISTRO is then used by bitbake.conf file which
does :

include conf/distro/${DISTRO}.conf

this is how your DISTRO config file gets used in the build configuration.

