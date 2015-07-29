Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 755CCE00A8E; Wed, 29 Jul 2015 06:10:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 819E0E00A81
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 06:10:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 1EB0E27E2F3;
	Wed, 29 Jul 2015 13:10:26 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id N0Yh4sGr5m61; Wed, 29 Jul 2015 13:10:24 +0000 (UTC)
Received: from [192.168.0.11] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id A01FB27E2EC;
	Wed, 29 Jul 2015 13:10:24 +0000 (UTC)
To: J.Spriggs@raylase.de
References: <2238EDC6081C944E97E4EE915AE5CBEC5476A872@EXCHANGE-B.raylase.de>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <55B8D0BD.3050803@dynamicdevices.co.uk>
Date: Wed, 29 Jul 2015 14:10:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <2238EDC6081C944E97E4EE915AE5CBEC5476A872@EXCHANGE-B.raylase.de>
Cc: yocto@yoctoproject.org
Subject: Re: Which repo for meta-altera ?
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
X-List-Received-Date: Wed, 29 Jul 2015 13:10:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 28/07/2015 10:10, Spriggs, Jim wrote:
> Hi Guys; confused noob here...
>
> There appear to be (at least) two "official" repos for meta-altera:
>
>         github.com/kraj/meta-altera
>
> and
>
>         git.rocketboards.org/meta-altera.git
>
>
> So how should I choose between them?
>
> Thanks!
> --
> Jim
>
> Sorry about the company sig.: I can't switch it off.
>

fwiw I would usually start with the official index

http://layers.openembedded.org/layerindex/branch/master/layers/

This seems to point to github

Cheers, Alex


