Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 340FFE00CBD; Sun, 28 Feb 2016 02:52:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BACDFE00C34
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:52:01 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id l68so25736583wml.0
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=gwt3vyHyr8ed23zRtfk9MovxLkp1Zy6T80kBJi1zc8U=;
	b=jMpqEUNTvNroID/O33NT4kE/DuAF1I3AJBL8Zv1Zb9ZIZAdzr5fhk4Miu/oKbqTMyT
	EtQbnwI6stOnzvjQ61wxb0ClDlV1ecofKC9Fj/Eg2cowafpasnuDGSrHPZcrjlwEqqkO
	Lsq+ElZV6r0Zg07NC6U3pfuPj86Pf1AB4oaGIBJImGvkP2fZnnZIunDIGe1DLzEgmBE/
	LPhaFzAxVwtgRXy73fKRRRJzy6yqh3P+GoDEjuRKWgSy0pZlv0LRJWMHBfnj0OpqgvhA
	cf8/sJfv418Sm9JE6Ozths/o/Hg/vuCTupLv9wuHcXtlKOa9SAzUldzFnaa8IGulHE1y
	SJMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=gwt3vyHyr8ed23zRtfk9MovxLkp1Zy6T80kBJi1zc8U=;
	b=G4cRtOdyBFWgVMdlOcJ7DMa3UWecyHepMdKsVwZPELhxMdghXwcZYiVyfEQU22P54M
	ywOAAf/ApUSOiPTD4lYuQ4f2wkyU22Gd/8oPQyJiDLAtM/uWkU6yv/eTiqozmc4UAa0K
	PLfGYQu8SkHRl4tGDD5Ee9l+ZKL1JHzLhWSdYVD2DYR4ytYzetuS0hbc+yuG1saFpojX
	7MrzL06dGzW9DzJKSeSm4xziGyeeVrMFmv9o3/iba55qxUKOGjkjpwk93YOXZJhrE769
	OmVPV4NCs3uQWUt86wyNsSdoUWkU0bI3P0tneSas1U+dUccX6buJXKMXZmudR4y/kTih
	iEKw==
X-Gm-Message-State: AD7BkJKI9IdyP7Me7BAuPiJkud4NOiSkC00CEl6qiF/8m0u6A4R6JHwQhZiJgalTpeZgsA==
X-Received: by 10.28.214.6 with SMTP id n6mr6552168wmg.49.1456656720833;
	Sun, 28 Feb 2016 02:52:00 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	cb2sm20763128wjc.16.2016.02.28.02.51.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 28 Feb 2016 02:51:59 -0800 (PST)
Date: Sun, 28 Feb 2016 11:51:58 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160228105158.GF12618@resin.home>
References: <1452789643-17903-1-git-send-email-petter@technux.se>
	<1452789643-17903-4-git-send-email-petter@technux.se>
	<decadab49c1ce664ee1e7b5e52cbfcaa@technux.se>
MIME-Version: 1.0
In-Reply-To: <decadab49c1ce664ee1e7b5e52cbfcaa@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 3/7] linux-raspberrypi: Update 4.1 recipe to 4.1.15
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
X-List-Received-Date: Sun, 28 Feb 2016 10:52:05 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Feb 28, 2016 at 08:56:33AM +0100, Petter MabÃ¤cker wrote:
>    2016-01-14 17:40 skrev Petter Mabäcker:
> 
> [Support #69]
> 
> Signed-off-by: Petter Mabäcker <[1]petter@technux.se>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.1.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linu
> x/linux-raspberrypi_4.1.bb
> index 3a3cf40..cae459a 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> @@ -1,6 +1,6 @@
> -LINUX_VERSION ?= "4.1.10"
> +LINUX_VERSION ?= "4.1.15"
> 
> -SRCREV = "b74df9228c27f55361c065bc5dbfba88861cc771"
> +SRCREV = "02a8ee530e32b08e5df44f10e24d5fd82bb960e3"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y
> "
> 
>  require linux-raspberrypi.inc
> 
>    Hi Andrei,
> 
>    This commit can be skipped, since Khem have done an even newer update
>    of the 4.1 kernel (4.1.10 --> 4.1.17) in the large series of commits
>    from yesterday
>    (https://lists.yoctoproject.org/pipermail/yocto/2016-February/028754.ht
>    ml). Do you want me to send an updated version of this series of commit
>    without it or not?
> 
>    BR Petter
> 
> References
> 
>    1. mailto:petter@technux.se

Thanks Peter. No need to bother. I'll keep in mind not to pull this patch. 

-- 
Andrei Gherzan

