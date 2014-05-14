Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2B61E00975; Wed, 14 May 2014 06:59:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f50.google.com (unknown [209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B60BAE006EF
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 06:59:03 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id z60so2879810qgd.9
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 06:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Wmx1ijYkjqoD1r4+E1eNNbe2+DAKvm+9gIDl8MyDiSY=;
	b=ebkHIHE+3SePsr11aksyqJF4dUXRmvp5ndCK+/7PpWkB71WSvvOdCGOkOUhiNx5cQ5
	lcUcnYI4vYE9BKE+egIHkGPADK1B9Bbbp28CPCpduNr6bOAJUDPpviq1rYoOw1TftDN1
	FF3cQ95ZCT2YLR1fyqYTnl5tb1uavetEc3csBk8FLrvaaZisYa1aTAz4AUpgFFgnRl/K
	IPFTppRoBq6HXjlLjk0zZzx72YeF3R/YF0I6yje3QgUPu3VDghx3KjZw1Xga3wuYBD14
	YznaB/3giI3gJPcfU809+g9euIs5eTR7p6DI3Li2SeKIaQUsJapqG5PD+Axluxw6d/vZ
	jhgA==
X-Gm-Message-State: ALoCoQkZs39Pb1x39lGqUOvzxO6fy6bY22eSrxwD+lp1iyyZGdENE0Q8n27FIA4ntg4L1GzErQlU
X-Received: by 10.224.160.142 with SMTP id n14mr3739761qax.17.1400075943523;
	Wed, 14 May 2014 06:59:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 14 May 2014 06:58:43 -0700 (PDT)
In-Reply-To: <lkvsj2$vof$1@ger.gmane.org>
References: <lkvpl2$e8q$1@ger.gmane.org>
	<1400074572.84934.YahooMailNeo@web122502.mail.ne1.yahoo.com>
	<lkvsj2$vof$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 May 2014 14:58:43 +0100
Message-ID: <CAJTo0Laq27nBx+vPbch=PQigAhvRTMKiM7jkKUYHWgxDfgnSEw@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best way to remove DISTRO_FEATURES?
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
X-List-Received-Date: Wed, 14 May 2014 13:59:09 -0000
Content-Type: text/plain; charset=UTF-8

On 14 May 2014 14:54, Neuer User <auslands-kv@gmx.de> wrote:
> to my image.bb file. Guess, this is then the recommended way to go?

Not in your image recipe, no, as then e.g. connman will still think
that you need 3g and nfc.

Ross

