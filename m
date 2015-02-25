Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C54AEE00777; Wed, 25 Feb 2015 06:17:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3F00E00750
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 06:17:47 -0800 (PST)
Received: by mail-vc0-f177.google.com with SMTP id hy10so1393633vcb.8
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 06:17:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=BRs+sVnxYb4GcANB9HvIuxDWCsM+Z3Ef1ZwbsMccSAY=;
	b=Ny4Yjo5YVZwObSc5Gin42PGW/ZNjbP8rLD/x8zVgtPqA5XTt2qQUVGDdcpvFdNsMfz
	6GLJPAY9GPaYSHoF6jm1oJEwaHpwSwsxiAy/cehNjNAlU/DcgUcSwoRMfUHVKcao/gUd
	hjmoL2QO3ufS9p2NF4/HMhR8aZR3yy58JAAxwvoPpr5031YZ3jRfzB+SXNp28Odzk+z/
	BbwnPZs+E6QG+4k7FMOpegDNmNVLD/Je8rT9WjD8AqP1nSSEUE8IDnc9dtonV/+S19E7
	jZXm+KL+KKVpKxLdhY+144zpuh2i7yqLhgnjt3kK8DJMmPlSySGS2sbmj56jMLq/Hva4
	MTjQ==
X-Gm-Message-State: ALoCoQl4srP5jckliZ9nXtKYNfSTBHZz2Dxtoy7W2Y3oDiPRLCtR+pHEbGcEt6UZ/9S3B0jNYSRm
MIME-Version: 1.0
X-Received: by 10.52.12.169 with SMTP id z9mr4008500vdb.69.1424873866521; Wed,
	25 Feb 2015 06:17:46 -0800 (PST)
Received: by 10.52.124.76 with HTTP; Wed, 25 Feb 2015 06:17:46 -0800 (PST)
In-Reply-To: <1424869930.7658.6.camel@intel.com>
References: <1424869930.7658.6.camel@intel.com>
Date: Wed, 25 Feb 2015 14:17:46 +0000
Message-ID: <CAPhnLPBW7fTVaUVzUyTKrPQtF8uTcWAKGTFyo8kiDPDbmyMTKA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Minchev, Todor" <todor.minchev@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: merging eclipse-poky-juno & eclipse-poky-kepler
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
X-List-Received-Date: Wed, 25 Feb 2015 14:17:52 -0000
Content-Type: text/plain; charset=UTF-8

On 25 February 2015 at 13:12, Minchev, Todor <todor.minchev@intel.com> wrote:
> Hello,
>
> I just wanted to check if anyone is using the Yocto ADT Eclipse plug-in
> from the eclipse-poky repo here:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky/
>
> This repo hasn't been maintained for a couple of years. The most
> up-to-date code for the ADT plug-ins for Eclipse Juno & Kepler can be
> found in these two repos.
>
> http://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky-juno/
> http://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky-kepler/
>
> We have decided to merge the two repos above and maintain the plug-in
> under the original eclipse-poky repo for all versions of Eclipse.
> In other words, we are planning to overwrite eclipse-poky with the merge
> result from eclipse-poky-juno and eclipse-poky-kepler.
>
> I am planning to do this on Friday, 27 Feb 2015. If anyone has any
> objections please let me know before then.
>

My only concern is that we:

- maintain history
- get autobuilder changes in when the merge is done

If you could explain the eventual layout of the new merged repo, that
would be grand.

Other than those concerns, I'm fine with the merge.

> Thanks,
>
> Todor
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

