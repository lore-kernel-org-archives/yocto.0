Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E983E007DC; Fri, 26 Sep 2014 12:49:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC1E2E00781
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 12:49:24 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id w7so4322129qcr.26
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 12:49:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=eFsDiAW6HmmRR0d2RTdZI4wgTlJtkPirXp+OvBg2cpQ=;
	b=FMpJ+L+11AkZiC4vMWBWd/UeKdljbPclwvw1skrpO/amwL0zz/Nzs15qohnG8VTot2
	riK3Zipn+ro0vjB4VDh4kUppaYorijpu29Gtk1oowpP3F05vGIYpTyp2IXYYZFpuGGlf
	OKYZQtImiPpHOTr6VpQvhiDQ+zoytQsDEvwQnizBcXQZ95e7VHNodnKsrDZdXWWeFfC/
	t82iu+JJ4xOJkve/R4TKFCUy7tD3VU28jIAgIUKn5UD4hV8xnq2sCz5RtmbL1cyUF1pB
	rNsbWQ1c2Lahjr+5XelqNdnwLbgL5ZUXf8FUInm5kF7n98ELeiAJdVCSLAiokqwu5jVx
	FA9A==
X-Gm-Message-State: ALoCoQnoe/SeSapFmhToR5Y0p21bgy64GBl1zf+c9K58n8wYeHzx+VlccKL6e36nc4yzOaoC3FQQ
X-Received: by 10.224.121.80 with SMTP id g16mr22423681qar.64.1411760963024;
	Fri, 26 Sep 2014 12:49:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Fri, 26 Sep 2014 12:49:02 -0700 (PDT)
In-Reply-To: <1233487069.187046.1411752591849.JavaMail.root@eircom.net>
References: <1233487069.187046.1411752591849.JavaMail.root@eircom.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Sep 2014 20:49:02 +0100
Message-ID: <CAJTo0LYgOAofG+MsM93mW6Qe2j3OCM69eAp=jH1USkOtYY-mEA@mail.gmail.com>
To: eublack@eircom.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Ccompiler on 3.8.11-yocto-standard
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
X-List-Received-Date: Fri, 26 Sep 2014 19:49:27 -0000
Content-Type: text/plain; charset=UTF-8

On 26 September 2014 18:29,  <eublack@eircom.net> wrote:
> Looking to install C compiler on the above. Any links or documentation would be appreciated.

The easiest way is when generating your image:

http://www.yoctoproject.org/docs/1.6.1/mega-manual/mega-manual.html#ref-features-image

Ross

