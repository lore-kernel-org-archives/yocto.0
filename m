Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEB8CE00D6B; Tue, 16 Jul 2019 11:24:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80282E00D67
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 11:24:46 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id q22so41522988iog.4
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 11:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=lk4xRomIDe9NNVimGGV+D0mQjZZwcrJJn0QE4HPOLT8=;
	b=oIj0dTtYfrtqB1OZ6cv4W8ONVXm1jNN4mF2CHAV1TZ00sENhEKKT/Q9jhOvfofyvjR
	p5XCIcLjj03WGuwGLC/ZQrhRN6Xq5dtmVTx/KE0WuLicNW02ctACThDaBdsspV7+aTpY
	Bn0EGtqjf6Cc2IiBjD2syaDnVtyKi/C+RMxnLPEVdSV9lYMpx3IYkQMJAar6se7hIe8O
	NTwQu7E1+edyxW3PULAT2/7zOYNhnBIZhKnCxOLJYh+ODGjVr/+C61QKnm0I1TlpbnYM
	Qidks7J3ZDnLRNSqqwpX60y96V3WIr9/Fycz3FX96KpFc69FxOmGZbrRm5bst9ixNWfO
	1RJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=lk4xRomIDe9NNVimGGV+D0mQjZZwcrJJn0QE4HPOLT8=;
	b=B4jDVSiqtynBQOgUyBPFvj+lF/s2wSfVErj+yYbKXEhz06HhzDyT2HUuWk+LHfOoTM
	UCwgR1xd0lYuWVbYwnQlEsNTxvM4A7PlqIMsxEmoj3FJYmr/+k4MCB7YxfdSl13yXoR+
	ac+ioyFJjenNRsAPt7jDVIwSCcnK4IoZcHhiLFKSL4yezs9DpiKVoqs5amJ4xra34M4b
	O/KhXO7yw4lj5ToalzugJ/38RBaYHIoIIhmE9SoZu5PFbE+4PC3pHUUmHkFVwiq7Y0a4
	NvXDyxn7d3PTZhbO4jzC+Ge84I+LNRLbBfsyNu3NHGsVUIHzImV3V0WV2ZvCoOT8UvQq
	K+HQ==
X-Gm-Message-State: APjAAAXgrDNLHDlOv6Bq/HnEdEUyaTl4UV93GjIZlaFvQxohsc0rjJGC
	scqG9rKC0OMBpKajenfxC3NdayBxaJtE3cNwt0O9IA==
X-Google-Smtp-Source: APXvYqyYHnTQ34lZ9/8TCzFMRkeApzFXwT0qq/jG+bb83aT8jkQ3DMy6bdtnFy6kk0fznZFxuo5KNjArQFJ45nY9/r0=
X-Received: by 2002:a02:b883:: with SMTP id p3mr37630208jam.79.1563301485956; 
	Tue, 16 Jul 2019 11:24:45 -0700 (PDT)
MIME-Version: 1.0
References: <em1f413de5-81b2-4304-ba58-358a033d5bf7@andys-imac.local>
	<CAJTo0LZ54xu1as_EtmenHkTxq0JmonmUUm24ZnoaVWO3ujDVDw@mail.gmail.com>
	<emab60b5bf-fc36-4f84-9f82-34972ce7b708@andys-imac.local>
	<19139793-90fa-6f48-729b-71327366a6f6@gmail.com>
	<emc0ea84ff-4bf5-4b4e-89c1-299102a74f86@andys-imac.local>
In-Reply-To: <emc0ea84ff-4bf5-4b4e-89c1-299102a74f86@andys-imac.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Jul 2019 19:24:33 +0100
Message-ID: <CAJTo0LYmuCZma7ERtbU7ujX9OUVXLqGEe7qfmdN6OjxSmzgKvQ@mail.gmail.com>
To: Andy Pont <andy.pont@sdcsystems.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: wpewebkit, cog and libgles2
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
X-List-Received-Date: Tue, 16 Jul 2019 18:24:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 16 Jul 2019 at 18:37, Andy Pont <andy.pont@sdcsystems.com> wrote:
> ERROR: Nothing PROVIDES 'libepoxy' (but /home/me/yocto/sources/meta-webki=
t/recipes-browser/wpewebkit/wpewebkit_2.24.2.bb DEPENDS on or otherwise req=
uires it)
> libepoxy was skipped: missing required distro feature 'opengl' (not in DI=
STRO_FEATURES)
>
> despite my local.conf containing:
>
> DISTRO_FEATURES_append =3D " opengl libepoxy=E2=80=9D
>
> Can someone put me out of my misery?

Remove libepoxy from there, DISTRO_FEATURES are abstract and libepoxy
isn't a valid one.

My best suggestion would be:

$ bitbake -e libepoxy | less

Search that until you find the DISTRO_FEATURES=3D and see if it it
contains opengl.  It presumably doesn't, and above the assignment it
will tell you what removed it (or the absence of something adding it).

Ross

