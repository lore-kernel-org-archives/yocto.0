Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A821EE006ED; Tue, 15 Jul 2014 10:29:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 455DDE00543
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 10:29:08 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id la4so4295041vcb.9
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 10:29:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=vyJnOQZT3yM9ekqO7RjhbFtX5+YYPik6VCK5PDKkp/I=;
	b=F4pju0QE2O0hhAyz9Z9wvvZJooqxCXIGGzlnE5fKN4EKGbpI7KbN7/OEgTYGJ4Np61
	MQzt+2LnJ+lKtbr3gag+IATX7EdPdc+ol2UhJxzvNaOqFUL9aDjhdHGYeq4dFCBuad31
	rK02aYUeuR75bcomJNhH2TOnh322ulKXiiS+hJIzQD2HagXk2UahmYpJ9Zm0KNXt+vpz
	29Kq0Cxwvv5QXjhu2HmtjeoVJSPvAeNVm/xpf9S2A93jDWQZ/uE5BmdN1ZfGTLLwmTxL
	XHNd0jCJBx+hh5DVsn0nMef7iwvM3T5o9fyuZYtzfWqIcxRqhn0AIBTwTShI21dmrvtv
	H6mA==
X-Gm-Message-State: ALoCoQnh7lPLEZSTr4V1fP2g19sx7Z/TCp+1/3a1nvHA7UVnHZQ8qaTnD/vrFTK89lCWwAYsuqjm
MIME-Version: 1.0
X-Received: by 10.220.182.5 with SMTP id ca5mr2323200vcb.50.1405445347977;
	Tue, 15 Jul 2014 10:29:07 -0700 (PDT)
Received: by 10.52.135.50 with HTTP; Tue, 15 Jul 2014 10:29:07 -0700 (PDT)
In-Reply-To: <53C55C76.2080907@windriver.com>
References: <53C55C76.2080907@windriver.com>
Date: Tue, 15 Jul 2014 10:29:07 -0700
Message-ID: <CAPhnLPA7SruANaY7Gvby4j8SpzCa+iA55QDRzoO3N3Yz1i9Tcg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: YP 1.7 poky build tags?
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
X-List-Received-Date: Tue, 15 Jul 2014 17:29:11 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 15, 2014 at 9:53 AM, Mark Hatle <mark.hatle@windriver.com> wrote:
> I think the YP 1.7 build tags are missing in the Poky repository.
>
> It looks to me (based on the test reports) that the following tags should be
> created:

We've actually stopped doing rc build tags as of 1.6_M2, as there were
community complaints about the vast number of tags. We still utilize
milestone tags (1.7_M1) and final release tags (yocto-1.7 and
daisy-11.0.1), but for release candidates we utilize the email sent
out that an rc is available.

>
> 1.7_M1.rc1: 68824d9b8f6e290da078383316b3f4b732585f2b
> 1.7_M1.rc2: a5531a2b8983318b99c119a87b78a92cf84160b8
>
> --Mark

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

