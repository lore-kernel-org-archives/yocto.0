Return-Path: <belatronix@freenet.de>
Received: from mout0.freenet.de (mout0.freenet.de [195.4.92.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55CC5E002A8
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 05:10:28 -0700 (PDT)
Received: from [195.4.92.140] (helo=mjail0.freenet.de)
	by mout0.freenet.de with esmtpa (ID belatronix@freenet.de) (port 25)
	(Exim 4.76 #1) id 1SrT5G-0001Sn-Ot
	for yocto@yoctoproject.org; Wed, 18 Jul 2012 14:10:26 +0200
Received: from localhost ([::1]:52733 helo=mjail0.freenet.de)
	by mjail0.freenet.de with esmtpa (ID belatronix@freenet.de) (Exim 4.76
	#1) id 1SrT5G-0006DL-L4
	for yocto@yoctoproject.org; Wed, 18 Jul 2012 14:10:26 +0200
Received: from [195.4.92.28] (port=53589 helo=18.mx.freenet.de)
	by mjail0.freenet.de with esmtpa (ID belatronix@freenet.de) (Exim 4.76
	#1) id 1SrT2G-0005Vu-ES
	for yocto@yoctoproject.org; Wed, 18 Jul 2012 14:07:20 +0200
Received: from a89-182-207-125.net-htp.de ([89.182.207.125]:48349
	helo=[192.168.1.151])
	by 18.mx.freenet.de with esmtpsa (ID belatronix@freenet.de)
	(TLSv1:CAMELLIA256-SHA:256) (port 465) (Exim 4.76 #1)
	id 1SrT2G-0001qU-4P
	for yocto@yoctoproject.org; Wed, 18 Jul 2012 14:07:20 +0200
Message-ID: <5006A6F6.3040208@freenet.de>
Date: Wed, 18 Jul 2012 14:07:18 +0200
From: Axel Beierlein <belatronix@freenet.de>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5006A190.6090508@freenet.de>
In-Reply-To: <5006A190.6090508@freenet.de>
Subject: [Solved] Re: Error: PATH contains '.' or '', which will break the build, please remove this.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jul 2012 12:10:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hello,

i've solved the Problem.
A few posts ago there was a hint with a trailing : in a PATH Var.
This was my Problem. Deleting the last : an it works!

This hint could be also integrated in the error message.

Regards

Axel

Am 18.07.2012 13:44, schrieb Axel Beierlein:
> Hello,
> 
> when i start bitbake core-image-minimal i get the Error
> "PATH contains '.' or '', which will break the build, please remove this."
> 
> But there is definitly no '' a whitespace or a point in my PATH.
> 
> What could be the reason for this Error?
> 
> Regards
> 
> Axel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 


