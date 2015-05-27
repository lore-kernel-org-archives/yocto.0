Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5F2AE0095D; Wed, 27 May 2015 00:04:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F939E00293
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 00:04:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 9A67327E25A
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 07:04:51 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id h1BCEiWL1SPA for <yocto@yoctoproject.org>;
	Wed, 27 May 2015 07:04:47 +0000 (UTC)
Received: from [192.168.1.16] (AMarseille-651-1-226-72.w86-210.abo.wanadoo.fr
	[86.210.105.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id E754D27E224
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 07:04:45 +0000 (UTC)
Message-ID: <55656C86.6070500@dynamicdevices.co.uk>
Date: Wed, 27 May 2015 09:04:38 +0200
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1557247313.1068092.1432671190294.JavaMail.root@cdi.com>
In-Reply-To: <1557247313.1068092.1432671190294.JavaMail.root@cdi.com>
Subject: Re: Help getting started developing.
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
X-List-Received-Date: Wed, 27 May 2015 07:04:58 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Rafael,

On 26/05/2015 22:13, Rafael E. Herrera wrote:
> Hello, 
> I have purchased a TI UEVM5432 board. I have also successfully setup the development environment as described on the online documentation from the TI web site (http://processors.wiki.ti.com/index.php/OMAP5_GLSDK_Software_Developers_Guide). My developement environment is the recommended Ubuntu distribution.
>
> I have also successfully build the Yocto filesystem (as per the instructions in the link above) and successfully booted the generated image in the evaluation board.
>
> Where I need help is on how to port an application to the Yocto filesystem.  In particular, I need to build an X Window client.
>
> The instructions in the link above don't explain well how to prepare/configure my environment so I can compile my application. 
>
> If it were a typical development environment, I would configure my Makefiles and just compile. The method used with this development environment (bitbake) is not that clear to me.

If you prepare your application build environment using autotools then
it should "just work" (tm)

This walkthrough might help -

https://wiki.yoctoproject.org/wiki/Building_your_own_recipes_from_first_principles

Also here -

http://www.codeproject.com/Articles/774826/Adding-rd-party-components-to-Yocto-OpenEmbedded-L

Regards,

Alex


