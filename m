Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C99AFE00809; Mon,  2 Feb 2015 03:34:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54941E0070B
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 03:34:51 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 7004A27E158;
	Mon,  2 Feb 2015 11:34:49 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id XQAaREDnA4H4; Mon,  2 Feb 2015 11:34:18 +0000 (UTC)
Received: from [192.168.1.39] (AMarseille-651-1-264-196.w90-8.abo.wanadoo.fr
	[90.8.255.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 39FD127E152;
	Mon,  2 Feb 2015 11:34:17 +0000 (UTC)
Message-ID: <54CF6069.1000109@dynamicdevices.co.uk>
Date: Mon, 02 Feb 2015 12:32:57 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: peterengcomau001@adam.com.au, Martin Jansa <martin.jansa@gmail.com>, 
	Simon Bolek <simon.bolek@googlemail.com>
References: <64fa0479f90c516365f694030f1382566d5b25b7@webmail.adam.com.au>
In-Reply-To: <64fa0479f90c516365f694030f1382566d5b25b7@webmail.adam.com.au>
Cc: yocto@yoctoproject.org
Subject: Re: meta-qt5 problem in yocto 1.7
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
X-List-Received-Date: Mon, 02 Feb 2015 11:34:54 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


On 02/02/2015 04:27, peterengcomau001@adam.com.au wrote:
>
>  
> Alex, I have completely separated daisy and dizzy. all of my daisy
> stuff goes into ~/poky-1.6 and I clone only daisy branches there such
> as poky, meta-openembedded, meta-qt5, etc. All of my dizzy stuff goes
> in ~/poky-1.7 so there is never a mix between them. 
>
>
> For dizzy i originally cloned the dizzy meta-qt5 branch and got a lot
> of do_fetch failures for v5.3.2. I then cloned the master branch of
> meta-qt5 from an idea from Simon, but still get the same do_fetch
> failuers but now for v5.4.0.  The files are there because I can
> manually download them, but I cant get the do_fetch to work inside
> bitbake.

So I've successfully built up the latest now, which builds 5.4.0. This
all seems to work OK, excepting that I need to modify the qtbase recipe
as I mentioned to copy examples across to the image tree if I want
qtbase-examples.

Not sure why your do_fetch() step is failing with this...

Regards,

Alex


