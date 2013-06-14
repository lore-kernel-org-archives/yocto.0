Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F045E013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 04:36:42 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ha12so343915vcb.35
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 04:36:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=lbw+MSiB3dZHtaYhglkEhWRia1qM1P4z8d2MtrQpTmI=;
	b=B+YnCqM95qt71BcFbm3u0hETL9EeY0vrsP0MD87NdlJVfJM2bjKA0iJpwQc72UHuex
	jHatJJB4otbWHjWtwDStXsVt3aJBvmVCKKmBZERqxQGr3czlJZ7PeejS3omAYanKn7SQ
	4yk7t6J/brNYBIrDroqjfGOLvWiFrtb0gsvFGmznFQpgAdV7JpkQwlWPZRfIUnfTAHNP
	cDqUrgU8quxfSA0khXiR2amh+RBTudEY9pgt4uFp8ufLi7PyJp4J8lhysTQ2clFAT2Eo
	SCV19gZv6BxKA5I38IY8cfsUN0hO9ue5yjGTCQ2uzxjcB+mtivg0TF6cJ9EMB95Rsly0
	7QuA==
X-Received: by 10.52.231.36 with SMTP id td4mr655662vdc.92.1371209802266; Fri,
	14 Jun 2013 04:36:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Fri, 14 Jun 2013 04:36:22 -0700 (PDT)
In-Reply-To: <CAM1ZcoVjQ83ecfrQasDY29CYs+RNEUmUqJbjg6XseS-qBF-n1g@mail.gmail.com>
References: <CAM1ZcoU1VZLQeKCt=xySb8ji0v-dYTQkiXwPDG_oDOwafUdgjg@mail.gmail.com>
	<CAJTo0Lbzzb1X7N_micY3qBTprcK8ZV4i8=g5pd_6BMptQtdgpA@mail.gmail.com>
	<CAM1ZcoVjQ83ecfrQasDY29CYs+RNEUmUqJbjg6XseS-qBF-n1g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Jun 2013 12:36:22 +0100
Message-ID: <CAJTo0LYb8pL5O_1yj-6FwvhsU1mfxdFpmeLTpXg_K0Py0mJKnQ@mail.gmail.com>
To: Katu Txakur <katutxakurra@gmail.com>
X-Gm-Message-State: ALoCoQlhFGwcvITcvYbxCqp2iZc5IFapa/m/w4M7d+Hyz4hziAlM1wffrbzdTn6B0wKZQD2G6Qo7
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe using waf installation location
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
X-List-Received-Date: Fri, 14 Jun 2013 11:36:45 -0000
Content-Type: text/plain; charset=UTF-8

On 13 June 2013 17:08, Katu Txakur <katutxakurra@gmail.com> wrote:
> Thanks a lot Ross,
> you are absolutely right. Just that the --prefix in waf it's done in the
> configure so I now have
>
> do_configure() {
> ./waf configure --prefix=${prefix} --debug --alsa --clients=128
> }

At this point it would be sensible to write a waf class so that
someone else doesn't have to do the same again.

> and it's working. I still get the same warning for /usr/lib/.debug/* files.
> I guess that the prefix has to be setup differently for debug? I'm new to
> waf too...

/usr/lib/.debug/ should automatically end up in $PN-dbg, so that's
odd.  Was that the exact path it was moaning about?  If they're
somewhere else, like /usr/lib/jack/.debug, then you can add that to
FILES-$PN-dbg in the recipe.

Ross

