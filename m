Return-Path: <karthik.poduval@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41A50E00D6A; Thu, 17 Oct 2019 11:12:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (karthik.poduval[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
	[209.85.217.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95E1AE00CB9
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 11:12:39 -0700 (PDT)
Received: by mail-vs1-f66.google.com with SMTP id s7so2251669vsl.2
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 11:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xUfYuDNpW+g38wEDVTXLcFdw20mtnLHdvPyvtLPjUGM=;
	b=ZU+5TvEm/71eTSZUHlh/DYYIpZS02KkiPz3j15vG+usc05oNEcTIW1eLMEqtiUT/BK
	DeTMolmSD1zOnka28zI6UeC3c6qz4B3Srw29sKQNhIVNN451U+HeMwfE9ZjTiqrCLjB/
	/GOs4ppvW94LIq2lW+K8/9Falv6hjacjdplYCz7RgncgFBXycxtVNzSL7yFMUjtuVn0C
	vPcEVajrzhPkfJmp/+JWbRRGzzjdlLCUgMHLkdwDF5fBSRVo2FcaqgxF0Xq+yzZi6WNx
	ZhE8QPiEmvfnzxda1bKR6qW3+tHuBW7c0L7STn5vx4KpwbeuJlGJB3ekbRpgN9wdkef1
	So2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xUfYuDNpW+g38wEDVTXLcFdw20mtnLHdvPyvtLPjUGM=;
	b=ZenUY5XADQfOE/35ERSnlZ2iqvxeUTxsKDwtVopOiqWPWql6ArenqLFxMRYuDE5niM
	sSy6tKHB5T7MPXNK1/V7IGOH6598ihfHMgkUzLVtLXKp6VLirhdhz/YuXhcwyintfB77
	sf+/pZt+epQEwjQQZkqVDzqx4Q9BaZKkQCi+4pxlbEiqte67YLYCpXiLBFrO59HwfdZ6
	YOZmJkbkfyFPGF/5dDcJX+1P5wEoQcvLfx2eJYSvXjwQPmdewy8OR5es7jTYP61CU4EZ
	SGZyFwl9QvxaTHRcV0GnBjEwVlW1wqYYJ5UxMY+RQa/J2CSI2HjllAzXqi2qgHJyLP+V
	rckA==
X-Gm-Message-State: APjAAAW+cIXqDe/mIGXfJCpnWM2jMnchBtU4AeC0gAAwroAlep8AQ1LV
	rmWUAcnTkjPLso4MLHZ/nKLiwboGckCvMsDqmq4=
X-Google-Smtp-Source: APXvYqzM4LAi5evsT8k5RLlTvDoj4vbvsiv6R0xOZTBRpFKuWto/uHfybkS/wpKuKc5y4rb18I9Nf/urh+tTHcNkHDw=
X-Received: by 2002:a67:ac45:: with SMTP id n5mr2927496vsh.25.1571335958642;
	Thu, 17 Oct 2019 11:12:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP0Ok-0adUp7F+eixAM5+cNNWWwoOJDQJAkC-hV7mdb_PqbcA@mail.gmail.com>
	<4a28b9db-d4dd-57d8-41d6-bb73a53f2f69@intel.com>
In-Reply-To: <4a28b9db-d4dd-57d8-41d6-bb73a53f2f69@intel.com>
From: karthik poduval <karthik.poduval@gmail.com>
Date: Thu, 17 Oct 2019 11:12:26 -0700
Message-ID: <CAFP0Ok_fbQDs6dBqbvTOmHtkvC+aeY5ywmgVw2ha=mgBLx0EYQ@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: trouble with rootfs generation with mxnet package
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
X-List-Received-Date: Thu, 17 Oct 2019 18:12:40 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Ross,

Thanks a lot, your analysis was spot on, I followed the recommendation
from that wiki you pointed to and it fixed my issue. Really appreciate
the quick response.

--
Regards,
Karthik Poduval

On Thu, Oct 17, 2019 at 2:28 AM Ross Burton <ross.burton@intel.com> wrote:
>
> On 17/10/2019 03:45, karthik poduval wrote:
> > Upon looking at the
> > build/tmp/work/aarch64-xilinx-linux/mxnet/1.5.0-r0/packages-split
> > directory
> > I find that the mxnet sub directory is empty, mxnet-dev,
> > mxnet-staticdev  have libmxnet.so and libmxnet.a respectively under
> > usr/lib.
>
> Don't set PACKAGES, as that's the default anyway.
>
> So it *looks* like the mxnet recipe doesn't ship versioned libraries,
> which is very bad form for something from Apache.  If this is the case
> then read
> https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libraries#Non-versioned_Libraries.
>
> If they do ship versioned libraries (by which I mean the library is
> libxmnet.so.1.2.3 or similar) then remove FILES and INSANE_SKIP, and let
> the packaging happen normally.
>
> You've likely got the library package renamer enabled (it's on out of
> the box) so the resulting package will be libmxnet1 or similar,
> depending on the soname of the library.
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Regards,
Karthik Poduval

