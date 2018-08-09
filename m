Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58BF6E00875; Thu,  9 Aug 2018 01:28:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.221.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F338E00875
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 01:28:49 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id e7-v6so4352900wrs.9
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2018 01:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=33DGJkUDctMScOfSUrv49w7ctlvbln6j/Bqke3SNsQg=;
	b=Ly29HCp02FnmOigVTAURZMnERReq8HGgtGX21y8TuOIZESuHnb88UPKWUsC7zf6dHN
	0iMnneTiy7l2lJj1500w39B4wEFoGl/1xphSttaYu6bx+Ay/ai/oTCHH6i/rSyagU9Qu
	JcLWEFBnLFyEsoa3BYsgm8TeAOc9kQg/XpWOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=33DGJkUDctMScOfSUrv49w7ctlvbln6j/Bqke3SNsQg=;
	b=QZF7Q7NED/YeVZf4V3VrWfMaisuMCzjxaN2EVtEqu0DfjdwQsnl/kEqBkQ0ikTe+rH
	8DAnJiRDocBwKY+Uo3jsk04f9jb8/Mmd1auzSEGPOvDShro+WrMbRhjAQ7pX1U3FFgyP
	IarP1XV67W4n34PnuLA+P0Ay3DGGFUHwxdONKAtJBE0yBJtlUaKY2uytl2cz5AXR6TX2
	AtuVteyisRRmbjU2cJu41Wt2Cf0I5bLPOnd2kNfjGRq4ubgEm53Lct9gG3XwEkj5jn9o
	6PJAmKxukESRRoKZsNzHtOFh7RJZucg/neIeZ9ZahxbYxQLiiipsePmyHV7GLoY1a19s
	rEKA==
X-Gm-Message-State: AOUpUlG1j96xgDyCOKkVKgsK2wilK6sRAkpa/8SCQW0UTNaetA9+0McW
	XP8kWhU0Yv0/mVTMjd9FOkxTFQ==
X-Google-Smtp-Source: AA+uWPzrPX9uPqrjZ9bQaChRINz58aYs5wxcyopqsbqeQyJM5v4xIxZTm+Xk194CV6CnP6NoIZen8g==
X-Received: by 2002:adf:eb4c:: with SMTP id
	u12-v6mr803242wrn.174.1533803328543; 
	Thu, 09 Aug 2018 01:28:48 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	t19-v6sm4176200wmi.42.2018.08.09.01.28.47
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 09 Aug 2018 01:28:47 -0700 (PDT)
Message-ID: <ed173dd2acac1eedc258b5f505b59cbcfcdb4b6e.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>, 
	"Eggleton, Paul" <paul.eggleton@intel.com>
Date: Thu, 09 Aug 2018 09:28:46 +0100
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D04335E9749B@PGSMSX109.gar.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D04335E9749B@PGSMSX109.gar.corp.intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.6 M2 RC1
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
X-List-Received-Date: Thu, 09 Aug 2018 08:28:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2018-08-09 at 05:57 +0000, Yeoh, Ee Peng wrote:
> ======= Summary ========
>  
> All planned tests were executed except a few SDK automated tests were
> skipped in Autobuilder (testrun# 9830-9836, 9796-9797).  Team found
> that these SDK automated tests were running successfully in core-
> image-sato-sdk image but not the existing core-image-sato used by
> Autobuilder, investigating why these automated tests were skipped in
> core-image-sato and no message available in testsdk logfile to
> explain why it was skipped.

I think Ross just sent a patch for this, assuming it was the galculator
test?

>   Team also found that eSDK devtool automated testcase(s) were
> skipped unexpectedly due to the unknown error on testcase dependency
> logic, temporary removing the dependency logic and successfully
> executed the devtool tests.

We should probably have a bug to track and resolve this issue as it
hasn't been resolved yet as far as I know. I believe its a problem
introduced by the parallelism changes. We may have to rework the
dependency logic.

> New Bugs
> [1] Bug 12866 - [2.6 M2 rc1] wic test_fix_size failed
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12866
>  
> [2] Bug 12864 - [2.6 M2 rc1] buildhistorydifftest failed
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12864
>  
> [3] Bug 12869 - [2.6 M2 rc1] libxml test cases failed
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12869

The good news is that these have all already been fixed in master and
are understood issues with good resolutions. I don't believe any of
them are enough to warrant an rc2. My recommendation is we release rc1
subject to my question below.

Why does the QA report not show 100% of tests were completed in all
cases?

We do need to take the list of bugs in the QA report itself and see if
we can resolve some of them for the final release, Stephen, your help
in driving/tracking that would be appreciated.

Cheers,

Richard

