Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2373CE00DB3; Sun, 15 May 2016 16:33:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F07BE00DAD
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 16:33:23 -0700 (PDT)
Received: by mail-pf0-f177.google.com with SMTP id 77so60601154pfv.2
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 16:33:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=XGA8HxgNKLzdNL71ddL0YuWSwFCye0bEIMLG4hdJTzU=;
	b=FD/zyq58JEycTsyaQzxHP7x8NmydkPeyB0zFmUKb3Aa0IWsfXm5oybXl/OnbhhHa3g
	s/Ptvbp8kTn5i6vD8sTyYuRYQVxOEkGBGrf0LSrrIeL36vhaQg3yHyiyGY5/WDWAJvlO
	W0lErSdSjpPyxN5xQbKmSRotBxKINgZSwweZDrDIRYeo041YMfCW+jYk5m3su1i19Jc7
	HFYh+hvXF0eNNfOPfuSl+Um2LXbpa4WBQ78Y/vzcbsnR6V4VJaK/H0+wBWTLMxGQ7/zi
	kzquSe4XducCeOmrno2UZr1zOUJcWo6oJwrzWgHuAgn/aTzzngxvPA4Ox3DGZqU9lwkY
	XhUQ==
X-Gm-Message-State: AOPr4FUKWYAsIOdSAY49dDE4EFJ7L50iic/QjmN5QghPganMqZqcm9AQoVyQE0kQGS7XT4ap
X-Received: by 10.98.48.71 with SMTP id w68mr40236798pfw.18.1463355202819;
	Sun, 15 May 2016 16:33:22 -0700 (PDT)
Received: from Akusters-laptop.local ([2601:202:4000:1239:85a4:49df:d3cf:56a7])
	by smtp.gmail.com with ESMTPSA id
	w187sm42621257pfw.50.2016.05.15.16.33.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 15 May 2016 16:33:22 -0700 (PDT)
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	akuster808 <akuster808@gmail.com>
References: <0aebe0be-53fd-76ed-261b-0ea19b2215db@gmail.com>
	<1552912.7NQTUkVNeO@peggleto-mobl.ger.corp.intel.com>
From: akuster@mvista <akuster@mvista.com>
Message-ID: <fb4cdaa1-fc7f-9098-56c5-49dd2a9e877c@mvista.com>
Date: Sun, 15 May 2016 16:33:19 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <1552912.7NQTUkVNeO@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org, "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: https://layers.openembedded.org/
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
X-List-Received-Date: Sun, 15 May 2016 23:33:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 5/15/16 3:22 PM, Paul Eggleton wrote:
> On Sun, 15 May 2016 14:17:26 akuster808 wrote:
>> Is the layer index down?
> 
> It has been yes - Michael has been looking into it and I believe he's located 
> the problem - for now it's still unavailable though I expect it will be back 
> imminently.

Working now. thanks.

 -armin
> 
> Cheers,
> Paul
> 

