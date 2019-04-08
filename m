Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5A13E00AA9; Mon,  8 Apr 2019 14:01:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f194.google.com (mail-it1-f194.google.com
	[209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76F33E00A54
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 14:01:35 -0700 (PDT)
Received: by mail-it1-f194.google.com with SMTP id f22so1476321ita.3
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 14:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=iQ5cbsNHhGbyhYoequxSeIMpec9QrSkTjCgW4TP/Fcs=;
	b=jVJAuH5PP4goWhpHKUnL0uW9dtRWKOnrYOuzjpy8P1Z7JMJCm/xe8aW9KDx8yM4lWn
	FIvmCs1HutUyvsBxiHq87JeGxm1JdNYqpAIoi1IvNKLxAOolwkNFco7SBUij46vRoQuk
	myhC8vR6PbkbG6XkY9WaaDUntR+Oe7rHKI43kOSXi1f1AINPKKkR/NXQ7MH72I2e5vnI
	tPLnyFvJ2Xn2/V4Uzvc9PkMAEbnAkB3ntA9FTeojNw49HmFFnE6xZoQjExrYGuNYDl5d
	V5kAJ8D/JtR77tkoc/zRD6WSoJ5maNoXWwXbsJ7yMlGrCnziohDxoc+ILDd7AyXfNu3R
	jViQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=iQ5cbsNHhGbyhYoequxSeIMpec9QrSkTjCgW4TP/Fcs=;
	b=d8mlFOBkJ4hANYCw9usONL75VFSJjT/XhDGFoMDzv5/hHHJgjDBS4gM/CIHAX7+zTG
	H6RWkaw8l9GtG5UyB8mt2K0s4Lfq1pQm9jqgtKAn/zmlzYFQuXTppIkMGI1PpsHEegyt
	7fUO2b5NZ6hE1FlaFqaVMXeT/1pCBsY247WeTy+bCs7pML8ra4x6EkCq7Ltzd9MZVm2p
	iPlIQ3YVcczFA7WJL5IkyVzulY6Vg+7H1aZFazhdvEaqG8InEMPuZxbfqZmaCDVC2IJp
	cm90b0C9uo0RAMZlwSgP7jPYKEq9mFeIVsdZWMJdjnnO+6FvQvKNtQXqmU3MZkm8Dy7E
	/pkA==
X-Gm-Message-State: APjAAAVX/KMsT+tUeIDD44i4iCreMJDfqAnoTiILzC18BOOScbtvOUCN
	/bIgrOcRjjQakr/2rFcbUbAmZAlGTUtS0nk62wwMkg==
X-Google-Smtp-Source: APXvYqzn/13FZMU2ZPBaXNOVnahVUACoL5ckcVN7i2ByW4krs4+1a+9ZrkOLSl6vqvR+VKzcDgf69Za11HzYl4WkiCA=
X-Received: by 2002:a24:ad2:: with SMTP id 201mr21294116itw.26.1554757294851; 
	Mon, 08 Apr 2019 14:01:34 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.1904081613420.23184@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.1904081613420.23184@localhost.localdomain>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Apr 2019 22:01:23 +0100
Message-ID: <CAJTo0LYVR2L137Gt5s0-6HUcTKhx=KKwi=Lz_Fgx5nExf5bzQA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: m4-mative: "Please port gnulib fseeko.c to your platform!"
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
X-List-Received-Date: Mon, 08 Apr 2019 21:01:36 -0000
Content-Type: text/plain; charset="UTF-8"

Looks like that bug in gnulib that broke m4 (and others) when glibc changed.

Fixed upstream https://git.savannah.gnu.org/cgit/gnulib.git/commit/?id=4af4a4a718
and oe-core master/thud/possibly sumo also carry the relevant patch
for m4.

If you're using older releases against a newer release then 1) this is
why we have supported host distros and 2) the patch is easy to
backport.

Ross

On Mon, 8 Apr 2019 at 21:45, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>
>   a few months ago, i ran into (and asked about) a failure building
> m4-native that you can read here:
>
> https://yocto.yoctoproject.narkive.com/6KyM5UvS/m4-native-zedboard-please-port-gnulib-fseeko-c-to-your-platform
>
> first, i will admit i'm not sure where the fault lies -- is it m4, or
> gnulib, or glibc, and whose responsibility is it to fix what. i'll be
> honest -- i don't understand what the bug is or who should be
> resolving it.
>
>   i ask all this as i just had *exactly* the same error trying to
> build agl-image-minimal with the AGL code base. what is the proper
> solution to this? BTW, i'm trying this on fedora 30 branched, so this
> is definitely not a supported build distro, but i'm still curious as
> to what would be the proper fix.
>
>   finally, it occurs to me that, if building a native package like
> "m4" fails, would it be a reasonable workaround to simply say
>
>   ASSUME_PROVIDED += "m4"
>
> for the time being, to avoid having to build it until i know what the
> proper fix is?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                          http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

