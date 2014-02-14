Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3873CE007C8
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 06:42:48 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B350EF811EA; Fri, 14 Feb 2014 07:42:47 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E8C11F811D7;
	Fri, 14 Feb 2014 07:42:46 -0700 (MST)
Message-ID: <52FE2B80.9030907@mlbassoc.com>
Date: Fri, 14 Feb 2014 07:43:12 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <20140214142722.1D01B3804C0@gemini.denx.de>
In-Reply-To: <20140214142722.1D01B3804C0@gemini.denx.de>
X-Enigmail-Version: 1.5.2
Subject: Re: Known toolchain bug?
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
X-List-Received-Date: Fri, 14 Feb 2014 14:42:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2014-02-14 07:27, Wolfgang Denk wrote:
> Hello,
> 
> in message [1] on the Linaro mailing list, Koen Kooi reported a
> toolchain problem.  I can reproduce the same problem both in Yocto
> 1.5.1 and witht he current top-of-tree; for example, using the latest
> autobuilder result
> core-image-sato-sdk-imx53qsb-20140213124023.rootfs.tar.bz2
> I get this [source of Koen's test program attached]:

Source code attachment missing?

> 
> root@imx53qsb:/tmp# g++ -Wall -std=c++11 -o b -lpthread b.cpp 
> root@imx53qsb:/tmp# ./b
> pure virtual method called
> terminate called without an active exception
> Aborted
> 
> Is this a (known?) tool chain issue, or am I missing something?
> 
> 
> [1] http://article.gmane.org/gmane.linux.linaro.toolchain/3925
> 
> 
> Best regards,
> 
> Wolfgang Denk
> 

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

