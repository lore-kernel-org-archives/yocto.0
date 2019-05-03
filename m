Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84097E00D4D; Fri,  3 May 2019 02:25:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 585E9E00D4D
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 02:25:35 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id u12so4681779iop.0
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 02:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=v2Ep6GI3Fjjy0LIQKWSZi8sD8gHEKgyREgKR+k+uNqk=;
	b=y6eQBZfTfD4TnPWHu1HgC/5xAqWXvACODo7CbWPWC0Kdj20wpQFA0exKSQAJnVi1hi
	e0aM+A+AN7BGL2glOQ3kZkOvUUOaPoHyhzxpzzzJjSXCsf9uukpgTTXWkxAIrOrPVg4L
	+OYWKfKUV7xwSMCTvlTpS1Rk2tmSp5sZutFzHZhzY2Y6CjVk7zHfpJ5n0kqiewyh0Yxq
	infHwFRl7JfE6ecSBu1tS5Jda9ulVexSFaXFGpa+VZ+60QVZZ5dq1Q3i+L5mp0vKsvta
	ZeqFBkdOvn6KdWeeuWeda6ykhxE7wQrfB02apoLyku7/inb40PEa/vRdmCdH4KFF6E+/
	LkiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=v2Ep6GI3Fjjy0LIQKWSZi8sD8gHEKgyREgKR+k+uNqk=;
	b=XyBHUMBZ97gtoBV33orq3MGn4M9oZFMjpkkTKVA9K00gYl9iy95+ogaV3QRI8o/+fm
	3SgmG+Y/hGR4vVwq3cHl/4R3Dl+4v4p5vR5IFtCBff++Ih3CxdZaCgCf4YkoRtff2+a4
	VTaM/uaRsx3YoU1BEyLLq5KqKaMuYFaNuXcGTqRU6WcD1xWXX/Tfyejih+WI1S1V90Yl
	zqBgk0F5E/1g7if91fzyLYz98vYEMlf+gSnlaCD/t0NY//43WUswpeNaIBzYBXnrsORB
	aS1oRTBAGlqqnNb4BI4gwrOE7I/xCQWb2i8jcPVwYz4a1qo07piUcRGsaGxNH4/dyHR9
	Zv3w==
X-Gm-Message-State: APjAAAV4mJLwXv86m5DhEKP5LiuIFGH8pmqiFX12NXSG09XBQCSCBWng
	5iznTc+9R7tF/VZ1o9aTl0zQJXn4k1BiM3rBuGH3331ihu91bQ==
X-Google-Smtp-Source: APXvYqzjG/1rPd9iGvX9NlB650SRdoWffJIdxVlNXFhJaj3R+IlXDwF5BvavgTdeG6gw9MuF6s1ks1g/jdkjTwP/GMg=
X-Received: by 2002:a05:6602:11a:: with SMTP id
	s26mr5767067iot.201.1556875534831; 
	Fri, 03 May 2019 02:25:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWQwNRM6M=vd82w=EbX2NGGyKcQ9tT-VC00A2a3KoQ_anw@mail.gmail.com>
	<1B42944FBA87A746A9D8A2C7197FD39EBBC758@SRVEXCH2010.CPA-GROUP.LOCAL>
In-Reply-To: <1B42944FBA87A746A9D8A2C7197FD39EBBC758@SRVEXCH2010.CPA-GROUP.LOCAL>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 3 May 2019 10:25:23 +0100
Message-ID: <CAJTo0LbtVzwxgR4grmh8-=-whNvD40hbMjCYd_jPFvf8pM4KBg@mail.gmail.com>
To: Jaquier Cyril <Cyril.Jaquier@asyril.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto concept and support for dual version firmware upgrad and boot
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
X-List-Received-Date: Fri, 03 May 2019 09:25:36 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 3 May 2019 at 07:46, Jaquier Cyril <Cyril.Jaquier@asyril.com> wrote:
> There are a few other solutions available for Yocto:
>
> https://wiki.yoctoproject.org/wiki/System_Update#Comparison

That list needs updating as there's a few more available now such as
Balena and UpdateHub, but both Mendor and swupdate are both still
going strong and have supported integration.  I've heard good things
about swupdate, and it can be used to implement your design:
https://sbabic.github.io/swupdate/overview.html#double-copy-with-fall-back

Ross

