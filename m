Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6E1FE00BB5; Mon, 23 Jul 2018 04:38:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 433D7E00A04
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 04:38:04 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id n84-v6so494907oib.9
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 04:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZzhiHn8wWheRO/UPrqYURJRLGXfBwpVgujSVqXhc3Ak=;
	b=CeaW/WFJ8XMUsd2/ZCo72u5TcBHevMbb4wSLnrGBMveMowHrMD1dZcUHJeR3RrLmLt
	9raFJ3Z1TXQYFZwk40BhAhpT4h1LxktRCWupoe85w7ilfIv+j0hCg1bDQWaDVAAUs8xq
	LYhyiefQl6s652cX1ULXHHjyLobH4Lq8e+x0xgVfAyYNl5/WAIJuIAKlguCnmCAs6EOa
	ragzdTn6kOVUWe2FPHupx3iGnti1/rQC/xruWW1Bg9oN9BDT1cqEPFojvSVAcLndbO2U
	VTHVftPU+eLBeTGgCRCCvmLiiOOmsa/PK2QwbxpwgyTHRBEKpmzEoL9vpRhmKZRrfnK3
	nVVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZzhiHn8wWheRO/UPrqYURJRLGXfBwpVgujSVqXhc3Ak=;
	b=eVzGof6mEzAQpZkVQ2S2Ptyph3O4ob0KYv/D3KieSPOysyBNhhKkmgZjFhjxXuF2Ub
	aoudNvnVB7Fu8FXhcP8h1d3DLM4h1s0dBM3LAe8fitL2aFngweBQjmoi85at05hhgiM5
	68PJ0j6hdIDHUhmxd+7BXLhU72DWdIR2K963HSGYlHSs1Ye1v2lsptC+YIMhE2zS9xTI
	OWlyurJjeERY4SAhXobjfSxOmXqcDunUYvih9stULD6AqE1Q4mOg/zNF5e0SU+BnqMxD
	C983qGDzqh4zA1bYU9CocuXELp7sWgHVotQhNNk0dmZPXJ6kKVWJA7UkQFKZGG5LMxar
	V3Hg==
X-Gm-Message-State: AOUpUlE1IYpCAcVYx+O1BJcTdb349d2/IoVhEp8BoSZqFp5hKiDHP3M8
	QlCovAYd++R5AimGhkoKeHgZhJaJC1oA6jhVxyiawg==
X-Google-Smtp-Source: AAOMgpe4i+8aUMIPTW1JX75mZi7Q8Ii9X/zhPWBMVm4jHVv4gNZW/1OExYURyyAVys3cY7HQ1J+xhG1kE/JH78ceE5w=
X-Received: by 2002:aca:3f41:: with SMTP id m62-v6mr616457oia.18.1532345884193;
	Mon, 23 Jul 2018 04:38:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 23 Jul 2018 04:37:43
	-0700 (PDT)
In-Reply-To: <7c2d86c9.c4ae.164c6df4642.Coremail.13824125580@163.com>
References: <3fcef217.a96b.164c6616b92.Coremail.13824125580@163.com>
	<CAJTo0LYL1eMn_-UceCKC9iKXw55DHAtW-QXQe6_3mTxEOHitWg@mail.gmail.com>
	<3c97b7e9.c148.164c6c42e67.Coremail.13824125580@163.com>
	<CAJTo0LayFeK4Vx4VJqqVVKXuBsvxJhtq1NQhq3wG4jm7-ojjxw@mail.gmail.com>
	<7c2d86c9.c4ae.164c6df4642.Coremail.13824125580@163.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Jul 2018 12:37:43 +0100
Message-ID: <CAJTo0LbvWjx-H84LSoecJwRxpNuPU-TaWd5YcLa+p4=UtjJw3A@mail.gmail.com>
To: tugouxp <13824125580@163.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: "Unable to find header curl/curlbuild.h" error on porting
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
X-List-Received-Date: Mon, 23 Jul 2018 11:38:07 -0000
Content-Type: text/plain; charset="UTF-8"

On 23 July 2018 at 12:21, tugouxp <13824125580@163.com> wrote:
> hi burton:
>   sorry for that. :-|
>
> i still cant get what you said, forgive me for my foolish on that,  can you
> show me how to do this?  thanks for your kindly help.

Find the curl recipe, open it in an editor.  They'll be a block of
code which calls oe_multilib_header, delete it all.

At the end of the day this is a broken upgrade and is either something
you, a colleague, or a supplier did.  If a supplier did it then they
broke it, and you should tell them.

Ross

