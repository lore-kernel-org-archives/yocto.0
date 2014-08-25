Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1F21E006B5; Mon, 25 Aug 2014 14:30:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E9E6E004FF
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 14:30:07 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id hz1so21586545pad.36
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 14:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=7pKMIBAj3wJVpAJVpxa4t4+FN0P55l0O0qvxqhp9Uv0=;
	b=S3XI97ipSX3u29SkX2RNgYUNRF/p2q4wVe/wZTbQrQm6qDleETDsIz6lwkJIcZ64Wy
	XzBFm/gZqcQPE1MzG2BoHKruk8U2IMUsJ+0lyBvke79X3rG7MOUsnye2o6evxEQJBJBc
	dJRJSCTBuH5bwo1YDDZ1N2x2UrOYO24X73fKtMH9WQUBmbwr5mY46gVfied54tqgiwaw
	tyhhPGhlgJWkiV5wtzRAm/PnMIocqPTJCDBba0PWKm/w1susSrNLKDRoq167/DoXazMF
	e0I9Ogy+NnbYvRuyQlJS8kcr0Z+FPHjIq971TwNE+MarKR+wH6/JPNMgpe/1uboZ7AQC
	a69g==
X-Received: by 10.68.208.8 with SMTP id ma8mr31723816pbc.88.1409002206869;
	Mon, 25 Aug 2014 14:30:06 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id i10sm1290796pdn.26.2014.08.25.14.30.05
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Aug 2014 14:30:05 -0700 (PDT)
Date: Mon, 25 Aug 2014 14:33:51 -0700
From: Khem Raj <raj.khem@gmail.com>
To: "Crast, Nicholas" <Nicholas.Crast@saabsensis.com>
Message-ID: <20140825213351.GC23339@haswell>
References: <36A43B0E1E88D84791516F9D44BC48331B3C9E7D@corpmail01.corp.sensis.com>
	<20140825053448.GD1014@haswell>
	<36A43B0E1E88D84791516F9D44BC48331B3CA501@corpmail01.corp.sensis.com>
MIME-Version: 1.0
In-Reply-To: <36A43B0E1E88D84791516F9D44BC48331B3CA501@corpmail01.corp.sensis.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bundling initramfs with uImage
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
X-List-Received-Date: Mon, 25 Aug 2014 21:30:16 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-25 19:33:44, Crast, Nicholas wrote:
> Thanks,
> 
> This seems like a clean way to do what I want to do. So this means whenever I do a build, it will 
> 
> 1.) Build the kernel
> 2.) Build the filesystem (initramfs)
> 3.) Rebuild the kernel with the bundled intramfs
> 
> Correct?

yes

