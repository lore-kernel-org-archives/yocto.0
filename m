Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5871FE009F5; Wed,  2 Dec 2015 14:07:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C57EEE00406
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 14:07:11 -0800 (PST)
Received: by wmec201 with SMTP id c201so77736979wme.1
	for <yocto@yoctoproject.org>; Wed, 02 Dec 2015 14:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Ejtn3/jfXhWd5bwgZvUmzavhi13pDzUEYfoD51oHGvs=;
	b=o55zlaVBvubxPE+AX/PGoEItZFB2S5SXyg5rqk1QGmsvcMQ6xrLFYZvdRudEiIwRyL
	ZpvanhLDyzVWUSKyyswMUhe15MDYZgEMEYpHcfrs5GxElvhCORmbU7C/zaVyPB4bXbk9
	KpCQhwnt492VI2d8ZW7/EfomFUq3lhXB6pi9sZ9+A2qWr9p9DKwP8rp3/umE3ZjGAkji
	YSLQD8bmLUF9jvhq5aXtVsp16O2+gNg6aDnkRxvFg+kfxTLZWCBBz3VNq2Q0IQ9cKjla
	5zMRfXgeR4hvq3Q486ix4A+fKV9fXz1WSMHLk+fJAFUulAvvDdXszvJJ1Wf1KFGVXndx
	Z3ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=Ejtn3/jfXhWd5bwgZvUmzavhi13pDzUEYfoD51oHGvs=;
	b=DhpmaoN6z7bi2DhTOtM3I4nzgOQK+88z+OXN9cVC1c8d/cer9irsljLMpcT92LcFGc
	ZKvOeHQLPXmgnmKsIzULARDpLw2LKZAMsFsjPYnKkNMJv7y3oFNmP/8wvJy0oWB3ibq8
	Y1qkeyWWI9gRQFq6zE9iFJdT89Gu4BM96UYfEyEQ7hblSFM0SgK+PPDKr/L82rGVv6SW
	u8rxbYSdMwj82aizjHGe5s2Cyavai1aAfYdft5jO1WDtiq9mp2LOZuMLLDOAobjucyel
	z5RoFArsWlQHEwRodBkl4SKh4CArirmCLuUfsLArQRFTNG8fIaurS2IuuKuA2gTHfc55
	PK0Q==
X-Gm-Message-State: ALoCoQleaJSVeczIMJRb4EU1heByacC87II/h1IvY5kLT57BtnP7tjIahi/axPXgk3UIxSq640zh
X-Received: by 10.194.179.33 with SMTP id dd1mr8323159wjc.133.1449094030634;
	Wed, 02 Dec 2015 14:07:10 -0800 (PST)
Received: from resin (ipservice-092-217-115-210.092.217.pools.vodafone-ip.de.
	[92.217.115.210])
	by smtp.gmail.com with ESMTPSA id q74sm1399456wmd.0.2015.12.02.14.07.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 Dec 2015 14:07:10 -0800 (PST)
Date: Wed, 2 Dec 2015 23:07:08 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20151202220708.GD8209@resin>
References: <1447590854-8280-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1447590854-8280-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] README: Fix documentation to disable overscan
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
X-List-Received-Date: Wed, 02 Dec 2015 22:07:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Nov 15, 2015 at 11:34:14PM +1100, Jonathan Liu wrote:
> To disable overscan, DISABLE_OVERSCAN should be set to 1 rather than 0.
> 
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---

Merged to master. Thank you.

-- 
Andrei Gherzan

