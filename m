Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5FF1E013DE
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 08:55:20 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id id13so609549vcb.4
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 08:55:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=YpYNtnswWmn/fgvBX2lUVlLeiNtDywUzUOMqB4T+uNk=;
	b=QFJ3mA+xEBlc+S2jOx0/Z3HJoeTrylEyACAU1Ef/gJnBVQaboqSkfi5SErhDPpWomy
	Z+aZv4N/dKxyr7G6vDYFiR7opBfeI2VqX6y1lhpwPITf0nQhbD9zdC7qI53/Z7W+qjjW
	yacurf44rvV/S2bbbIZFyYrxkdIzDUbkJSXfeyrfsMERUig1W4cSfWcDdX5z2PCrTxnx
	JeAWmX8D7XT3SNcV/dU+w4mGEFwH0PnsyjnoUfCdw6/UvFl37NUSf7anqTwY1rY2ujEs
	iXdipk/yAV3LHgaapxYTlnh39gp9TkS16JW9b/JbxdksSr8XsOVKVtJ62r/ae5PKjrZz
	N9Yg==
X-Received: by 10.58.171.4 with SMTP id aq4mr20563148vec.26.1374854119648;
	Fri, 26 Jul 2013 08:55:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.30.15 with HTTP; Fri, 26 Jul 2013 08:54:59 -0700 (PDT)
In-Reply-To: <51F29A98.4030006@mlbassoc.com>
References: <51F29A98.4030006@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Jul 2013 16:54:59 +0100
Message-ID: <CAJTo0LYbiY-qiAgcSEBD2GVO7m9bF1VU4YTu0qP4W4ydhuNixg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQkh31dtrVk8H2H+Jzt8otY0HdP2c4s8A5T1JnbUrnu5Jyv06U2bJBohfbYAETVfH4I4DPIM
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: It's a [PERL] lie...
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
X-List-Received-Date: Fri, 26 Jul 2013 15:55:22 -0000
Content-Type: text/plain; charset=UTF-8

On 26 July 2013 16:49, Gary Thomas <gary@mlbassoc.com> wrote:
>  It turns out that PERL is the only package
> that cares about this DISTRO_FEATURE and it builds incorrectly
> if it's left out :-(  Adding this feature back into my settings
> made PERL build properly and now Amanda runs as well.

According to grep it's perl, cmake and libarchive that respect the
largefile feature.

If perl is known to break without largefile it's simple enough to make
it error when building if the feature isn't enabled, but to be honest
should we just remove this feature as it's so infrequently used?

Ross

