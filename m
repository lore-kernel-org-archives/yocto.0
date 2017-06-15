Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E798E00B97; Wed, 14 Jun 2017 20:12:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE11BE00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 20:12:22 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id C525068A01D; Thu, 15 Jun 2017 04:12:20 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 63AB968A019;
	Thu, 15 Jun 2017 04:12:20 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id D0FEC674001A;
	Thu, 15 Jun 2017 05:12:19 +0200 (CEST)
To: yocto@yoctoproject.org
References: <bff03cd3-258c-95fd-63de-548168f363d0@gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <9cd8d4c6-cad7-3b26-6894-62aa0fd9f77f@mlbassoc.com>
Date: Thu, 15 Jun 2017 05:12:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <bff03cd3-258c-95fd-63de-548168f363d0@gmail.com>
Subject: Re: devshell not working for Qt or Boundary Devices based yocto
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
X-List-Received-Date: Thu, 15 Jun 2017 03:12:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-06-15 01:58, Jimi Damon wrote:
> Hi ,
> 
> 
> I'm trying out two different yocto distributions and in each one the devshell doens't work. Instead it just gets to the 
> Summary line and returns to my normal shell ( bash ) .

What are you expecting to happen?  'devshell' is just that - a shell environment
(e.g. bash) where you are set up to "develop" (tinker, explore, etc) the given
recipe.

> 
> 
> I'm invoking it with
> 
> bitbake -c devshell core-image-minimal
> 
> 
> bitbake --version = 1.32.0
> 
> 
> I'm getting my distribution from
> 
> 
> |repo init -u http:||//github||.com||/boundarydevices/boundary-bsp-platform||-b morty|
> 
> |or from Qt's boot2qt system using "b2qt-init-build-env init --device nitrogen6x|
> 
> ||
> 
> Any ideas what is going wrong ?
> 
> 
> Thanks,
> 
> 
> 
> 


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

