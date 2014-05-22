Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EE4CE00A44; Thu, 22 May 2014 07:05:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qc0-f179.google.com (unknown [209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BC39E0077C
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 07:05:31 -0700 (PDT)
Received: by mail-qc0-f179.google.com with SMTP id x3so5725785qcv.38
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 07:05:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=cr+cyKFcDZdBwKs4kKVs1KO4vpEBQ6yKwmbBTAnl6qw=;
	b=XLGAIm+PP7HWul8Wvqc9C3XW7b4oLNL038lDCCaPYLz8YUfP/couG+8S4KZLUKnuiC
	ZCrbX8xEIWdwfFwK+YkZXsBevnAIZN1/dZIi9Vg7fCW7JqVnPCF/AN8ZnuIxFy6BAQoI
	C5IZLN/LAe2CxOSCYgjEwRkWdkijy4DknNPcenz4HcGuKPkNIAwm5bOgnAjxjxr1BO2k
	QV3ZjnJVD33mOKpOjGv6v55xd0Mm2YjINJkZxvYph8yXjUSdH3UarBFMRitZVzlLjkvo
	TEOtnz4HNQIaQoywfDqwq17W8mZju+J+JDuu8abuv1NgzAGTgG564bkdNQvQYNQldig7
	SjCw==
X-Gm-Message-State: ALoCoQkV6m+KF+PnLvvRWf+D1YEgXDJREFnxdSUIoqhvOsmw7YZ7H8+e/rAbL3sBQp0hpuR7iXGc
X-Received: by 10.229.198.2 with SMTP id em2mr14037578qcb.21.1400767530949;
	Thu, 22 May 2014 07:05:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Thu, 22 May 2014 07:05:10 -0700 (PDT)
In-Reply-To: <1400765098.42556.YahooMailNeo@web122502.mail.ne1.yahoo.com>
References: <1400754665.64074.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<9159150.KsUY2KZbMf@peggleto-mobl5.ger.corp.intel.com>
	<1400763602.12423.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<1965694.z39UhZdkqB@peggleto-mobl5.ger.corp.intel.com>
	<1400765098.42556.YahooMailNeo@web122502.mail.ne1.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 22 May 2014 15:05:10 +0100
Message-ID: <CAJTo0LZE+y95EY+TJZs177+xHFxjBsvx18vVvdTN8wa4p7z9Ag@mail.gmail.com>
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: help needed
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
X-List-Received-Date: Thu, 22 May 2014 14:05:34 -0000
Content-Type: text/plain; charset=UTF-8

On 22 May 2014 14:24, Alexandru Vaduva <vaduvajanalexandru@yahoo.com> wrote:
> I attached the depends .dot file and also a small perl-ptest.info file with
> only the perl-ptest occurences.

Right, so the dependency comes from perl-modules.  This is a meta
package that depends on all the modules, and clearly perl-ptest
shouldn't be in that list.

(I've almost got a fix sorted)

Ross

