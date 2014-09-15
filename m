Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFD8DE0078A; Mon, 15 Sep 2014 08:45:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.51 listed in list.dnswl.org]
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA806E0077E
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 08:45:55 -0700 (PDT)
Received: by mail-qa0-f51.google.com with SMTP id i13so4034282qae.10
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 08:45:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=BI42xcNlaBTeQ3mq43vHGGcrNUMlzo5b51P0xf0K8a8=;
	b=NpHw9zRjqmPVccc2tN9+KdTalT/dCoRtMv4TmRKt2fS7wghgp8Wlrh1C3PVeBzEURU
	5GuNdGje4SsuWrsZmIQSWdIe9mKwau3bNeWYIj6Rml2PwD/LmMLhfns+SwYx3sDjKweN
	f6rKpLrMwDHARUnskPDSr8UlSpDad6/Yhh0WwGN+B/3s7jnC+thbpePIBzUBOJ26jdj6
	f2mdSMCzY61lHSIh9bGXLv5d7nKsXGwoDtGwOQAyr8Ir6JNbgxBlIpRXgHHk7zqfgg3N
	Tg3UApi9oZvT+wOm3qwE6XgSnz3HCL7dMHHuSUNpd9BgZ0ZSr/Q2uQGFRoQGhpAGwF1Z
	PTHA==
X-Gm-Message-State: ALoCoQnKAqlet8SrZilO14Gz3YwoOQqyy8+T84WBNeBu/mE/NNwarUqk/J6k7tVW32O58pUoK1Zp
X-Received: by 10.140.97.247 with SMTP id m110mr38087725qge.80.1410795949110; 
	Mon, 15 Sep 2014 08:45:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.29.183 with HTTP; Mon, 15 Sep 2014 08:45:29 -0700 (PDT)
In-Reply-To: <5417057F.5060708@gmail.com>
References: <CABG0-3yDCJo-b4Y7U8GS+cvM8ov6fo6nHH=+xgxM73rPOnj70A@mail.gmail.com>
	<CAJTo0LZk-7nHXid0kf-TC2hhJ-cfFjiCgwccywJ0Ft5eaZWudA@mail.gmail.com>
	<5417057F.5060708@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 15 Sep 2014 16:45:29 +0100
Message-ID: <CAJTo0LZkOzm7V19cNZT4hy_EMh0AZ1ybyUAJaO8OagPrn2rpXw@mail.gmail.com>
To: Arun Kumar <arunkr.linux@gmail.com>
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: Basic build fails
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
X-List-Received-Date: Mon, 15 Sep 2014 15:45:58 -0000
Content-Type: text/plain; charset=UTF-8

On 15 September 2014 16:27, Arun Kumar <arunkr.linux@gmail.com> wrote:
> I am still clueless about the reason though. can available memory be an issue?

Yes, if it's doing multiple builds then you may run out of memory and
the compiler gets killed.

Ross

