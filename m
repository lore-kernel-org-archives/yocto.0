Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 468B0E00B8F; Sun, 25 Oct 2015 12:11:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F0F4E00B7F
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 12:11:32 -0700 (PDT)
Received: by wijp11 with SMTP id p11so138162245wij.0
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 12:11:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=BeWj6Co260pY42YPic+Mgjxku7C6/86dLvXFNO/M1Y0=;
	b=hXvSHwJ/W+U8BW6hue4GpdJGQb4qCsdRWJvIODlQereLNkQe9LUerPHy94rSjZl4wZ
	9Yx/uoxbbChLbsqzqC97KxuW0xizdyv5kOxFoKaVxtXcMrwb59TAGyHcIAEnUcVT+3Xf
	Xa19URgsg3rDjD5igws7flePeydY45OZDcUVu0AD/hQxChsmR166JV/cK60DyIYfJXMc
	Mj7pOosgDkVVj1uMoqRaYEmxuLU5TauTPPW04S/8kR45V5rywuNC9vO6kJYKpaeHsWgs
	7t9WBnjVSngokaGecf4OFw1vxD+nWO24VYaCQtg1iRMjjf/YF5ezL2C22rbK46+ed4PN
	Gndw==
X-Gm-Message-State: ALoCoQmItVSfE1S2ONatKMvfIWeyr25jfKN+FzKoNxChQcr7RNeE6gq/AmXpV5w76eERKOhve+HB
X-Received: by 10.194.91.143 with SMTP id ce15mr17951461wjb.93.1445800291900; 
	Sun, 25 Oct 2015 12:11:31 -0700 (PDT)
Received: from resin (dslb-088-067-185-162.088.067.pools.vodafone-ip.de.
	[88.67.185.162]) by smtp.gmail.com with ESMTPSA id
	p2sm34901121wjb.21.2015.10.25.12.11.30
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Oct 2015 12:11:30 -0700 (PDT)
Date: Sun, 25 Oct 2015 20:11:28 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20151025191128.GA11349@resin>
References: <1445777072-13955-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1445777072-13955-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-base.inc: add i2c-rtc overlay
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
X-List-Received-Date: Sun, 25 Oct 2015 19:11:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Oct 25, 2015 at 11:44:32PM +1100, Jonathan Liu wrote:
> The update of the kernel in 10a5bace87c19e50014f838031e8f3db334b45b7 to
> 3.18.16 missed the separate rtc overlays being replaced by the i2c-rtc
> overlay.
>

Merged to master. Thanks.

--
Andrei Gherzan

