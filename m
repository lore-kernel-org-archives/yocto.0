Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BA6FE00EDC; Thu,  8 Mar 2018 18:23:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D19FFE00D6D
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 18:23:25 -0800 (PST)
Received: by mail-pg0-f44.google.com with SMTP id r26so3008485pgv.13
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2018 18:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=z1KcvFVvYHCXISDBOTTf8+6Larl0JoJJYCEdCZNxHAQ=;
	b=mWbudEPbC1EoGL61dv4ZoTHF3vVq6xZH3lwd/jURxSCVQaUcNz/6DgLOmBCzkincZf
	jC1r7ccfxU6+sa/JoiZGRQwNGjWfaMtuPcNPdlPplsBfMAjRFvC1OjoyOjiyvefAlxRw
	9KZWyKQko7HTZsPChlYUvSqaZYmN0/Z6FPfFGVF8VNM3YAfAOHi9gkT63gZCxYvlJmW0
	CAXwhakeyqZ8/tZpRbkGeQdGfQVTAWIvVDooNT9kQpHFBp1BJRDF3bVQcliZrC2T4ZXr
	mLC75OGVXfAM9Y2P1mc9SGYIU6Kytp194jdfRT9LQnnBnZlY79MeXFpdb1XhA6zYOcN2
	BLfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=z1KcvFVvYHCXISDBOTTf8+6Larl0JoJJYCEdCZNxHAQ=;
	b=LuiDk9CcZrkC7vJ3uMpQlElYKxKyG4j59kFMuv1/siEgNgMTg0IZuSRJAsBjUPBRQs
	DSMQMroXQi/f/yF7XkO1iIE54+YVN+OQJbdZYLhhD6GH8MIueeiLvq+qjuLQpwoNJbrf
	NBxk79AJl+crYLAMvv5apdSyHpnrLGNXc9TLslYLH4gxZqS+FweGgB0jP2TIHHW2lCjX
	9Fo7OX3JzL2R7QAT6lvPihXWoEnDMDyC8pfTSLY3/+vj//8kYBY1SSKNfCUTy8ZrrBLG
	0M137M1AwwkZ4aaz95a6dP36mvzFh6e05CHCgrNnJAmT4nF4Iip6fN/YT0cXFO/sRZnZ
	z43Q==
X-Gm-Message-State: APf1xPCBx/hWGYlFI8FCSB/8WyfuNxmNfxmgtUWhdI6rcBRVcuT3AkfS
	sdYPtoKpnrGmywY+A6UMpBKcRG5xPSo=
X-Google-Smtp-Source: AG47ELvl7Fwsbzv+wNrjWXOW3o6Tp2IwC1OwmLh44cxIL1UB/2mQJRsAd8JZMu99x9dEbNOBecsC4g==
X-Received: by 10.98.206.1 with SMTP id y1mr28376073pfg.196.1520562204452;
	Thu, 08 Mar 2018 18:23:24 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1184:809e:9241:bcad:fcc4?
	([2601:202:4000:1184:809e:9241:bcad:fcc4])
	by smtp.gmail.com with ESMTPSA id n26sm32282pfk.94.2018.03.08.18.23.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 Mar 2018 18:23:23 -0800 (PST)
To: Stephano Cetola <stephano.cetola@linux.intel.com>, yocto@yoctoproject.org
References: <f45f1c68-10fa-524f-7d56-fa291dbe8608@linux.intel.com>
From: akuster <akuster@mvista.com>
Message-ID: <f127ca71-f46e-ef25-cdb0-3fd25c0a4841@mvista.com>
Date: Thu, 8 Mar 2018 18:23:21 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <f45f1c68-10fa-524f-7d56-fa291dbe8608@linux.intel.com>
Subject: Re: New Release Number 2.99 in Bugzilla
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
X-List-Received-Date: Fri, 09 Mar 2018 02:23:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Stephano


On 03/08/2018 10:46 AM, Stephano Cetola wrote:
> The Yocto Project team is moving to a new release planning process and I
> want to provide an overview as there will be some things I need from
> those of you making changes and adding things to Bugzilla.
>
> Overview:
> We are moving to a “Pull” process for planning rather than a “Push”
> process.  What this means is that we will start with an empty 2.6
> release bucket and pull bugs and enhancements in that map to our top
> priorities rather than push things out of a giant bucket.  We are hoping
> this will help us start 2.6 with a very clear idea as to what we will
> focus on and be much less overwhelming than pushing a giant snowball
> through each release.
>
> How does this effect you?
> If you are pushing bugs/enhancements to the next release or adding new
> bugs/enhancements for the next release you need to be aware of the
> following:
>
> -We have a M+ Future status that holds items that are important and need
> to be addressed soon.  This bucket is pretty big.
> -We have moved all 2.6 features and bugs to a 2.99 release.  This bucket
> is a temporary hold for the items that didn’t make it into 2.5 and are
> at the very top of our list for review to pull in.  We don’t want them
> to get lost in the M+ Future bucket.  Once 2.6 planning is complete,
> this 2.99 bucket will be empty and removed.
> -If you are adding new bugs and enhancements that you believe should be
> slotted for 2.6, please enter them as 2.99.
> -If you are pushing anything from 2.5 to 2.6, please enter it as 2.99.
>
> Please let me know if you have any questions about this.

thanks for the explanation. I wonder if this should be sent to core list
as I believe some bug categories may be non yocto project based or folks
using Poky may not be on list list, like bitbake, yocto-linux etc. Cross
posting may be ok in this case.

- Armn
>
> Thanks,
> Stephano
>


