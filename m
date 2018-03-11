Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 664AAE00E66; Sat, 10 Mar 2018 20:32:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D764FE007E1
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2018 20:32:26 -0800 (PST)
Received: by mail-it0-f48.google.com with SMTP id u66so7257815ith.1
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2018 20:32:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=q4zEEG0mCVKSLxyS9YJN528F6W5UhMLfiLXuyBGXeS8=;
	b=p8HycLSbmDXvyZ19Jo54AVvtTYsiGXlJBF6WmTOyyLZk3Zhh5HKt6mZzDIEUDNJ3Pj
	OUfMMXZJlEyTm4wPjTMKGUmcu6c2m9xq21NjsmVLNYAxhfuGC/TK7SWdfdNbl4x7NfVC
	2q19eZbkrowvQ1jh8VJxbYZfvRB1Fv/exqYoZ+mkIhXLKmoyEndfCE4dCG94owLHs0Hs
	dLDxlcexWQ5pb+3PTgx69AWmK+V0IsCPTAbW2ZJ4a3HG5yFCdFNrQ+onaTa+JBBALsrr
	i/oi3iMfzZkubaoM0DyzAhdK6h9eiPh1ZpdDh63AgwANFOHlQ7TShFI+BD1/e4u7M2eo
	33/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=q4zEEG0mCVKSLxyS9YJN528F6W5UhMLfiLXuyBGXeS8=;
	b=jz6768CbmxNup4ttjToo26AinP1E+OpLEfIjP3YgkgyCn6iD+JSM1RJonIFCcs+CGL
	YARgl2HwL1JrUzkibhmUk8ia90EdSOS1IvkroGF6CYl+4ZBPGN8B6WSp3kgoXbBs4sY6
	iPqm094G8PS2WVqsd2U5IyPtQ1E6LZ/4jPlQpdVlrBb3VQ3aq1rsN1uu2nMwvW5hFYFF
	QntEzO1efTnROQRdSpWhxHcnrE5Hsa2mxSzxIPsb7TDCe1X8uyFcKFH2W4BNFt9wuv27
	nNuWwyiZ9rCrk7DUNBaksqA7tdfjpjapxv95b7Nbb8Iw5QsSHGuLzbUPaKfx9KFyrTNe
	WVmw==
X-Gm-Message-State: AElRT7EVmMGFwejaeplIEDmiYJzwCwHaK01cPayQT5j5lACOb5Zb54Fu
	8TIv91V4TmNsZ15BVNSyV0gAq3Wa
X-Google-Smtp-Source: AG47ELtTBIv9/uSpiV6ftLT9m5iTZtOfANBMNzROX4mLR5HDe6Aa0bKZJ1C/t3++l8CYzYcykMFGiA==
X-Received: by 10.36.79.12 with SMTP id c12mr3836253itb.37.1520742746167;
	Sat, 10 Mar 2018 20:32:26 -0800 (PST)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	o197sm3111872ioo.31.2018.03.10.20.32.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 10 Mar 2018 20:32:24 -0800 (PST)
Date: Sat, 10 Mar 2018 23:32:22 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: daryl@daryllee.com
Message-ID: <20180311043222.GA21549@linux-uys3>
References: <20180310191002.Horde.GwvmG_Lp-648oYCF_ByVQbw@www.daryllee.com>
MIME-Version: 1.0
In-Reply-To: <20180310191002.Horde.GwvmG_Lp-648oYCF_ByVQbw@www.daryllee.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: Documentation error report
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
X-List-Received-Date: Sun, 11 Mar 2018 04:32:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Daryl,


On Sat 2018-03-10 @ 07:10:02 PM, daryl@daryllee.com wrote:
> I'm not sure who to send this to, so maybe someone can redirect me...

Scott Rifenbark is responsible for all YP documentation:
srifenbark AT gmail DOT com

Ideally, if you're comfortable with git, you could generate a patch and send
it via email to this list (CCing Scott). You can find the YP sources here:

	http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs

> I'm going through the Yocto Project Quick Start at https://www.yoctoproject.org/docs/2.4.1/yocto-project-qs/yocto-project-qs.html,
> and I encountered a minor error that might be worth fixing.  There are two
> consecutive commands given for cloning Poky and checking out the current
> version:
> 
> $ git clone git://git.yoctoproject.org/poky
> $ git checkout tags/yocto-2.4.1 -b poky_2.4.1
> 
> For myself, I had to insert a
> 
> $ cd poky
> 
> between them to succeed.

Specifically I think you're referring to:

	http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/tree/documentation/yocto-project-qs/qs.xml#n330


I think the "-b <branch>" option (which also takes tags) could be used to
combine the above into one step, thus obviating the need for the "cd ..." or
the "checkout ..."

	$ git clone -b yocto-2.4.1 git://git.yoctoproject.org/poky

But maybe it's simpler as multiple steps?

> And, as always, my sincere thanks to everyone who has ever contributed to
> this endeavor; it's a big help to me.  I've been using it for several months
> now via Xilinx's Petalinux wrapper and now I'm trying to get "under the
> covers" to understand better what kind of magic is going on.

Welcome, and good luck!

