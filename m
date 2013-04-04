Return-Path: <c.aeschlimann@acn-group.ch>
Received: from 111.com (mail.dns-net.ch [195.160.190.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B691DE0136C
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 07:54:58 -0700 (PDT)
Received: from [172.16.147.83] (unknown [212.98.42.40])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	by 111.com (Postfix) with ESMTPSA id 7660837607F
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 16:54:57 +0200 (CEST)
Message-ID: <515D9454.9000703@acn-group.ch>
Date: Thu, 04 Apr 2013 16:55:16 +0200
From: Christophe Aeschlimann <c.aeschlimann@acn-group.ch>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130328 Thunderbird/17.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <515C4466.5020209@windriver.com>
In-Reply-To: <515C4466.5020209@windriver.com>
Subject: Re: Prevent zImage to be copied to /boot/ in image
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
X-List-Received-Date: Thu, 04 Apr 2013 14:54:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

> On 13-04-03 10:56 AM, Christophe Aeschlimann wrote:
> 
> Have you tried clearing this variable:
> 
> (from kernel.bbclass)
> 
> # Allow machines to override this dependency if kernel image files are
> # not wanted in images as standard
> RDEPENDS_kernel-base ?= "kernel-image"

Thank you for your answer,

I did that but it still didn't work.

I now found out that it is because I have an out-of-tree kernel module
in my layer that inherits module.bbclass.

And module.bbclass does the following :

RDEPENDS += "kernel-image update-modules"

Is there a reason why module.bbclass requires kernel-image ?

Best regards,

-- 
Christophe Aeschlimann

Embedded Software Engineer & IT Manager
ACN Advanced Communications Networks S.A.
2000 - Neuchâtel, Switzerland
Tel. +41 32 724 74 31

