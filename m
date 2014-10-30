Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1080E0084D; Thu, 30 Oct 2014 13:14:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45938E007BA
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 13:14:52 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id lf10so6116721pab.5
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 13:14:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=4aLxMFMOWRokjv8tN2bABXguZIu5pbn2IyDNo/jVRuU=;
	b=Ij0IE9DZABNcDoz1YYW62q0fU38LRAHkuLPW3qnXUmhRayZd51Di9HQvEciO8P5F3L
	ieNw5zz8KyT9lfjvAsRrNcAmq1Q4sEiWpKZN211J5InVVwHR/1IYrI/dqCPH5Slcj8rn
	VCk2uXWS5TwaKinQZIeeNOXJm8NBWU12jLqfbCqYVN3u72C4aII/D7EXPtbEGw3L9Brv
	71Xnz5UygwyDBKMRPsGPnxg5nIAJ84b1wsZiGrRbp+rQnMxKjBeDjPuLMCEWFr5LNYQ4
	4gkdDp4ACNnDgVdLQd9GqOplfcl4YrQMRTyk5BaiPbnMKNAzSkcsMOUb5oX5fCTETffE
	1B6g==
X-Gm-Message-State: ALoCoQk+DdZDAYmwTOK5xur3KNaVvKR/FtxQV0NMTpofmKCh71lr/ufWunG9gQrRkIBBd/dZGGrV
X-Received: by 10.66.218.168 with SMTP id ph8mr19734051pac.51.1414700091979;
	Thu, 30 Oct 2014 13:14:51 -0700 (PDT)
Received: from [10.7.100.251] (64.2.3.194.ptr.us.xo.net. [64.2.3.194])
	by mx.google.com with ESMTPSA id ug6sm7891997pbc.72.2014.10.30.13.14.50
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Oct 2014 13:14:51 -0700 (PDT)
Message-ID: <54529C3A.6060007@mvista.com>
Date: Thu, 30 Oct 2014 13:14:50 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>, 
	Yocto Project Discussion <yocto@yoctoproject.org>,
	'Patches and discussions about the oe-core layer'
	<openembedded-core@lists.openembedded.org>
References: <545281C5.2020004@linux.intel.com>
In-Reply-To: <545281C5.2020004@linux.intel.com>
Subject: Re: [OE-core] Package Upgrading for 1.8
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
X-List-Received-Date: Thu, 30 Oct 2014 20:14:54 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 10/30/2014 11:21 AM, Saul Wold wrote:
>
> Folks,
>
> Just a reminder now that master is open again for patches, now is a
> great time to consider doing package Updates.  Based on some rough
> estimates from 1.7 we did around 300 updates from 34 contributors, that
> got us about 73% packages upgrades.
>
> We currently have about 180 packages due to be updated based on the
> Package Reporting from this last week, about 65 of those where not
> updated in 1.7 so should be given some priority (see attached file),
> there are also 10 that need maintainers, let me know if you are
> interested in any of them.

I will take pinentry.

- Armin
>
> Here are the stats from 1.7 on who has upgraded packages (I guess I
> don't have enough to do!).  Thanks to everyone who contributed package
> updates.
>
>       61 Saul Wold
>       43 Cristian Iorga
>       25 Ross Burton
>       23 Bruce Ashfield
>       15 Armin Kuster
>       14 Richard Purdie
>       12 Laurentiu Palcu
>       11 Paul Eggleton
>        9 Hongxu Jia
>        9 Cristiana Voicu
>        9 Chen Qi
>        8 Valentin Popa
>        7 Chong Lu
>        7 Carlos Rafael Giani
>        6 Khem Raj
>        5 Tim Orling
>        4 Roxana Ciobanu
>        4 Robert Yang
>        4 Marko Lindqvist
>        4 Mark Hatle
>        3 Paul Barker
>        3 Maxin B. John
>        2 Yasir-Khan
>        2 Nicolas Dechesne
>        2 Fathi Boudra
>        1 Ricardo Neri
>        1 Peter Seebach
>        1 Peter Kjellerstedt
>        1 Martin Jansa
>        1 Jackie Huang
>        1 Darren Hart
>        1 Ciobanu Roxana
>        1 Chunrong Guo
>        1 Andreas Müller
>
>
>
>

