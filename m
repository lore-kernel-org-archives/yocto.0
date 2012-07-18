Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8593CE002A5
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:47:05 -0700 (PDT)
Received: by lboj14 with SMTP id j14so2506189lbo.35
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=OC3BCLGMaAF6nBLepjs/tCLaifsMOpOsYEO855Ra3fQ=;
	b=S3973l7lmzofHX3lTPRihWvkgRxUX4WR8V7980gRByrJcvb9EUPOEomPjfoSRSPaeG
	AkeE47/kRycWb5OhqGY+eJJUY9TmoemDv+MeRuv7BoYJ96fL6ZcTyUERx2PDQ+X7qtJK
	6HjLiGDtsB4QhWV/3CUkBSXswQe3+97L/d8g5K5SBVZXCUlFHjR/YgyHGkIUzla9tSp7
	TJzHoxyWgPChUgf1fiEpnXedUASoif+45nGP0SckxsxNTeYkU5steoNuqx8y+lTVh1Ja
	EDEtCldS0Q3jB01Cxx8xbFhr+B3tnrLLcvbIwRwF1wJNKoLAiksUjeb3q3XJN4SS8jOc
	Z1Dg==
Received: by 10.152.127.98 with SMTP id nf2mr3726158lab.4.1342619224313; Wed,
	18 Jul 2012 06:47:04 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.64.180 with HTTP; Wed, 18 Jul 2012 06:46:44 -0700 (PDT)
In-Reply-To: <CAJTo0LbKTyVPKjSxSYBqMj5u574O9YQoKwxgwysmr+hJsu6Azg@mail.gmail.com>
References: <5006A190.6090508@freenet.de> <5006A6F6.3040208@freenet.de>
	<CAJTo0LbGL6hakXLgVf8SuK6A-VxgnJM7JtRJObd4_amdongwWA@mail.gmail.com>
	<CAJTo0LbKTyVPKjSxSYBqMj5u574O9YQoKwxgwysmr+hJsu6Azg@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 18 Jul 2012 06:46:44 -0700
X-Google-Sender-Auth: bDIVAG4lN7p1dXkBDYom4uOWM4I
Message-ID: <CABcZANkbW0vppe82d6mMnsh-rDZSNq_SCLPrKyA_h+N-Z4T=1w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [Solved] Re: Error: PATH contains '.' or '', which will break the build, please remove this.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jul 2012 13:47:06 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 18, 2012 at 6:37 AM, Burton, Ross <ross.burton@intel.com> wrote:
> On 18 July 2012 13:13, Burton, Ross <ross.burton@intel.com> wrote:
>> I'm working on a patch to display the parsed PATH so you'll see the
>> trailing empty element in that case.
>
> How's this?

It's still slightly hard to spot there. I wonder if something like
this would be easier for the user?

ERROR: Invalid PATH entry at character N: /usr/bin:/bin:

         ^

In other words, formatted like a syntax error.
-- 
Christopher Larson

