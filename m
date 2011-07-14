Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id CFF2A4C80908
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 04:31:43 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6E9Vc8h006582;
	Thu, 14 Jul 2011 10:31:38 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 05176-08; Thu, 14 Jul 2011 10:31:34 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6E9VVgI006576
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 14 Jul 2011 10:31:31 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1107130653460.4203@localhost6.localdomain6>
References: <alpine.DEB.2.02.1107130653460.4203@localhost6.localdomain6>
Date: Thu, 14 Jul 2011 10:31:28 +0100
Message-ID: <1310635888.20015.1125.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: docs: how to spell "bitbake", and docbook semantic markup for user input
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
X-List-Received-Date: Thu, 14 Jul 2011 09:31:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-07-13 at 06:57 -0400, Robert P. J. Day wrote:
> just perusing the documentation in my typically pedantic fashion and
> a couple questions about style.  first, is the proper spelling
> "Bitbake" or "BitBake" since the doc source seems to bounce back and
> forth and it really should be consistent.
> 
>   and second, this just doesn't seem right as semantic docbook markup:
> 
>     "When the <filename>bitbake</filename> command completes ..."
> 
> in that context, bitbake is not a filename, it's "userinput".  is
> there a reason all user input like that is marked up as "filename"?

I guess it could have been so certain parts appeared in bold but I
suspect there isn't a good reason.

Cheers,

Richard


