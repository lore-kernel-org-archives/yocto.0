Return-Path: <sandro.stiller@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD4CFE00F16; Thu, 30 Jun 2016 23:26:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68DFCE00E77
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 23:26:20 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id a66so14652213wme.0
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 23:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=Q4f4+gdpz/Zrs2CPHrsWAX87AjDJCRTOp2OO+P2ylo0=;
	b=Oe2CMbVUy3HalOuEQ1ujGH9ou5MgdGNTsk2q68MZz+ujBKcPh+UXFbHet7ULOwptAD
	8rgeSlR67OTUYi2380h284k5G49hxk8gMqkgaNy065Ggk1eU+P2OBKrhydl9tXp/aSY9
	gKRvQwrZW2xQlokbGohdxvwtmuWK+cGlv3AJu9MRd6z39hjxH20ld0vHmR00GQ6uJF95
	S9XsyY/kSJsJNmJCly1CxBu0T3dbgZNI1n/ef6c+WLq9LSUtzCIBmiTfiBL0K1jQYkyN
	SetVJ9s1KSiy99WQXiHRoREP7APnRdytGsozYDAV+mN99EKovXDypoT3+GTelxaFA2r+
	n79Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=Q4f4+gdpz/Zrs2CPHrsWAX87AjDJCRTOp2OO+P2ylo0=;
	b=PDqR8TkGktvw6+kj4UE4sp52JhJ0Kgcq5Vv+SFMUaBklud2fjxklFB8V5S7IgLo/ar
	WTXab/7TM6Bk3qvcm+cflwtUVyLzz4J1hFK3nF3Wb4otgLHl6dmxh85DgBoz/4CWk9DF
	OCCR3VxCjV0HXmh1SceuuxGycdrhi8fzW3Ir/IPV1tGsLKofoDFZpwjukWtTRg4hyRrn
	HugIEP9h0EEWRv9E23LuUfvVYz5nDD1T/E3JKNnAidVwlrVlHgxKwP6cffzKPzA8TEdO
	lpDuYIqPML9HIThNHhqqpFRShtwGQ53iGl4JlyCrBAsJQzSycGoTL3VDp+dPmVOMRJPz
	fO0g==
X-Gm-Message-State: ALyK8tKd6UsKL9MNORagg7lvxnwb4M5h4U/x60zxsWU7RTCzoj3HNwAhFYOgheOgKgEA/Q==
X-Received: by 10.28.17.132 with SMTP id 126mr31238037wmr.90.1467354379272;
	Thu, 30 Jun 2016 23:26:19 -0700 (PDT)
Received: from [192.168.2.147] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.googlemail.com with ESMTPSA id
	bo1sm1317374wjb.35.2016.06.30.23.26.18 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Jun 2016 23:26:18 -0700 (PDT)
To: yocto@yoctoproject.org
References: <87dfc212084f42678b1ba6d86becb6bf@Ek.usurf.usu.edu>
From: Sandro Stiller <sandro.stiller@elfin.de>
Message-ID: <57760D09.3030309@elfin.de>
Date: Fri, 1 Jul 2016 08:26:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <87dfc212084f42678b1ba6d86becb6bf@Ek.usurf.usu.edu>
Subject: Re: [meta-raspberrypi] Disable kernel option via fragment Rpi3
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
X-List-Received-Date: Fri, 01 Jul 2016 06:26:24 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jonathan,

Am 25.06.2016 um 06:44 schrieb Jonathan Haws:

> I've tried adding
> kernel configuration fragments to disable this option, but with no luck.

Kernel config fragments are currently not supported in meta-raspberrypi.
There is a patch for this here:
https://lists.yoctoproject.org/pipermail/yocto/2015-October/027034.html

It has to be modified a little bit to apply:
https://github.com/sstiller/meta-raspberrypi/commit/0a8ee50c264d6472ea12dcf56e55e04d763962a0
(add ".patch" to the url to download a patch)

Sandro

