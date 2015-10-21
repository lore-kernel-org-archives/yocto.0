Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B845E009D9; Wed, 21 Oct 2015 05:14:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9344CE00985
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 05:14:35 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so71331928wic.1
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 05:14:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=FfzhH9eJK4TVZ67IKS7DNfKDC0uwl65uC7AdA0P2WFg=;
	b=KxF5VSwwvvm+vm9PZOBm/xR5zXRMjw4bbJVJ7TieaDFxJ8MQtCePLUdWNW4R29XT8k
	PNLyp7swZtoDgKh76hNV198f4yno6Yn66o5W0tazc3wn+dZQRwGcX+Oi6jo02p2VTKxh
	U+t7VMFwxaI7tOarQCLxn+9BNBRtlAjBEntCNvulsTWSmZUpTzIDRa6qBFucAaHTWaFa
	yPMfNFfQraTZP5BpMw1G0ZWrVRWg3Xna0hvvYitt/KHXpx1wKqHUJTsL9ca5gcSogObI
	ZHWfXAbPy10xjVh9rm29/11J+Ojsozjcz97THjljJ7j24yLrsoZshsAyMyKuLgViKB+W
	HYRA==
X-Gm-Message-State: ALoCoQnpvqz2eDxK6t1Alv9aNn/Xn1vbbLrBJXajEC5Aye2gws/k4CJlR9x0lXBNdKBSBRGbspJo
X-Received: by 10.194.24.100 with SMTP id t4mr11665420wjf.121.1445429674474;
	Wed, 21 Oct 2015 05:14:34 -0700 (PDT)
Received: from resin (220.204.eduroam.dynamic.rbg.tum.de. [131.159.204.220])
	by smtp.gmail.com with ESMTPSA id
	lg1sm23505969wic.17.2015.10.21.05.14.32
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Oct 2015 05:14:32 -0700 (PDT)
Date: Wed, 21 Oct 2015 14:14:30 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Colin Helliwell <colin.helliwell@LN-Systems.com>
Message-ID: <20151021121430.GC5610@resin>
References: <55ECF934.80902@gmail.com> <55F2304B.6070601@gmail.com>
	<CANwerB3PB=JQRQmjcHkCrpW8_fTSN1DrmPFFT70CA3WJtN6CYw@mail.gmail.com>
	<20150923201253.GA23493@resin>
	<019701d0f69b$bfb88890$3f2999b0$@LN-Systems.com>
MIME-Version: 1.0
In-Reply-To: <019701d0f69b$bfb88890$3f2999b0$@LN-Systems.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] du giving non-integer result?
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
X-List-Received-Date: Wed, 21 Oct 2015 12:14:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 24, 2015 at 08:36:34AM +0100, Colin Helliwell wrote:
> On my 'to do' list is pulling together the fs partitions into a single SD
> card image file that can be copied in-one using a Windows tool (such as
> Win32 Disk Imager) - primarily because my build machine is off-site.
> I've seen a few recipes along those lines (I'm on a BeagleBone), but perhaps
> wic is a better way to go. Can wic create a single card image?
>

Yes it can.
http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html#creating-partitioned-images

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Andrei Gherzan
> Sent: 23 September 2015 21:13
> To: Jonathan Liu
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-raspberrypi] du giving non-integer result?
>
> ....
>
> Hi guys,
>
> I'm testing and reviewing this as we speak. As well, it would be a good idea
> to drop the sd card generation class for good and replace it completely by
> wic support.
>
> Something to be done. Wnat to pick this up? I know that there were people
> around testing wic and we had configuration too.
>
> Regards,
>
> --
> Andrei Gherzan
> --
>
>

--
Andrei Gherzan

