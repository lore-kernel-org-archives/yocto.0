Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 849EBE00950; Sun,  1 Feb 2015 05:54:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67452E0092E
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 05:54:19 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 10AB827E157;
	Sun,  1 Feb 2015 13:54:18 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id O5_MSOt2GScE; Sun,  1 Feb 2015 13:53:55 +0000 (UTC)
Received: from [192.168.1.39] (AMarseille-651-1-264-196.w90-8.abo.wanadoo.fr
	[90.8.255.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id E3B3B27E152;
	Sun,  1 Feb 2015 13:53:54 +0000 (UTC)
Message-ID: <54CE2FA5.6030008@dynamicdevices.co.uk>
Date: Sun, 01 Feb 2015 14:52:37 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: peterengcomau001@adam.com.au, Martin Jansa <martin.jansa@gmail.com>, 
	Simon Bolek <simon.bolek@googlemail.com>
References: <dd6db0bfa347b43e563b4d948b0ae128f94f1c16@webmail.adam.com.au>
In-Reply-To: <dd6db0bfa347b43e563b4d948b0ae128f94f1c16@webmail.adam.com.au>
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
X-List-Received-Date: Sun, 01 Feb 2015 13:54:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


On 31/01/2015 19:10, peterengcomau001@adam.com.au wrote:
>
> Hi Alex,
>
> Thanks for confirming the problem exists.
> I set QT_MODULE_BRANCH ?= "dev" in
> meta-qt5/recipes-qt/qt5/qt5-git.inc, but still get the same problem. 
> Do I have the correct file ?

Hi Lachlan,

I'm sorry, I should been more explicit. I was building with "daisy"
branch and that did get things going.

I'll have a quick look at building with "dizzy" here to check...

Cheers,

Alex


