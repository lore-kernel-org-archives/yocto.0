Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 244F4E00C1E; Fri, 23 Nov 2018 08:07:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E06BFE00A6B
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2018 08:07:32 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id 96so12854504wrb.2
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2018 08:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=VB7/OhaatYTcIblO/dReQt8pJKXxmI0pcAYUzpYU6z0=;
	b=O0UXBPSyQBm+dojmtTZqgKOnn6zFCiuWITKZMGvGv/9juSfsu2LUXPa8lUn97LjxtX
	+1qHR+ojdtvknlGmZGCJinA+FsQs5ZZ2/xPb0x7yrKK8B+4OWBeHVG58yYf+2xEh64ET
	lIz4E5IXvpAPWCAtmQJccZGeKlPYQee/oV4iI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=VB7/OhaatYTcIblO/dReQt8pJKXxmI0pcAYUzpYU6z0=;
	b=uP6Xv0ZTiJDLGph4XKtxT1jEucKCdQm/u4O2JS65JDzA7en3dM/N3QHwGWHG0nNt9y
	Ssa+7IbhhJbhzkkIb5IFk3ZusrSfoxTErp+o37NGMt+O752kcHyOT8RtbTPhAqb7bG6o
	uRFJvwTVf5SH73TgTezjFBtoBXs9dfn1uC9bhj3IG6Q1jIX1TFp149TMBDQyZSwEyO6p
	OT6rV+sV2kARzeqeY+6RGkcxeIL3HkpBSJ1iCR+XySvL5Xmiq4XFzLBgGS7nkhvECpRT
	eyXke+VwtyHqQ/z3yxvJ4rsy/IYJ1uqpQTfAK12L3CJ6GmKxsWxF7fYAThfgVCap/AVd
	+qBQ==
X-Gm-Message-State: AA+aEWaiCCPqORQ/LBtzDE+PsYpuB++OuIavaNSUEbhdXNBkhtLAV1zo
	VjRpVzxukdyExUh+zWvVwN28Ow==
X-Google-Smtp-Source: AFSGD/VJ0WgQoUcPrjJhoDQy9XEgctAL/gaXTct0EnBdLCxW488xvfvWKb0ZMLoFD3DhrvB0L0VptA==
X-Received: by 2002:a05:6000:100f:: with SMTP id
	a15mr9289200wrx.298.1542989251686; 
	Fri, 23 Nov 2018 08:07:31 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	x81sm5517229wmg.17.2018.11.23.08.07.30
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 23 Nov 2018 08:07:30 -0800 (PST)
Message-ID: <5a3e9c82256c75c451d6a406fe5b16db394ff9d7.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>,
	"Graydon, Tracy" <tracy.graydon@intel.com>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 23 Nov 2018 16:07:29 +0000
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634CEF595@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634CEF595@PGSMSX110.gar.corp.intel.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.4.4 RC1
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
X-List-Received-Date: Fri, 23 Nov 2018 16:07:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2018-11-23 at 03:23 +0000, Jain, Sangeeta wrote:
>  
> Hello All,
>  
> This is the full report for 2.4.4 RC1: 
> 
https://wiki.yoctoproject.org/wiki/WW46_-_2018-11-14_-_Full_Test_Cycle_2.4.4_RC1
>  
>  
> Summary
>  
> All planned tests were executed.
>  
> Total Test Executed – 3330
> Passed Test – 3318
> Failed Test – 8
> Blocked Test - 4
>  
> There were zero high priority defect.  Team had found 2 new defects. 
>  
> New Bugs
>  
> [1] Bug 13033 -  [2.4.4RC1] [Bitbake] [Case 142] PR number is not
> getting increased with remote server/local client mode
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13033
>  
>  [2]Bug 13038 - [2.4.4RC1][Package Management][Getting Error Message
> "Failed to synchronize cache for repo 'repository'"]
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13038

Thanks for running the QA for this. I do have some
questions/observations.

Firstly, this report is a little misleading as there are only two bugs
mentioned but 8 failures. The full report shows other bugs which were
for example reopened or already open.

Taking the above bugs first, I believe they're both manual versions of
tests which are already automated. I believe the automated tests have
passed and there appears to be some kind of problem with the manual
execution such as the wrong process being documented. I'm not quite
sure why these are being run manually? Was the list of manual tests we
received from Intel incorrect?

Looking at other bugs in the QA report:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=12670

It was reopened as it had been fixed in sumo onwards but not rocko.
I've backported the fix to the rocko branch. I don't believe its a
release blocker.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=12991

This is webkitgtk failing to build in the build-appliance and looks
entirely related to resources in the VM. How this could have worked in
the past yet fail now makes me wonder about whether it was in fact
tested previously, whether the VM configuration changed or quite what
happened. I don't believe its a blocking bug as it does seem to be a VM
resource problem, not a real failure or problem with build-appliance.
Its hard to tell for sure with the limited data we have though.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=12240

A reopened lsb testing bug but its not really showing problems with the
actual image, just testing difficulties.


Based on this, I think 2.4.4 is good to be released, I don't see any
blocking issues. I would like to understand what tests are actually
being run and why though.

Cheers,

Richard



