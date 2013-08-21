Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 037D2E00406
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 22:59:08 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VC1Ri-0004JH-G0
	for yocto@yoctoproject.org; Wed, 21 Aug 2013 07:59:06 +0200
Received: from 213.249.12.21 ([213.249.12.21])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 07:59:06 +0200
Received: from gmane by 213.249.12.21 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 07:59:06 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 21 Aug 2013 08:58:54 +0300
Message-ID: <5214571E.7040904@reliableembeddedsystems.com>
References: <ku083q$oa8$1@ger.gmane.org>
	<CABcZAN=mQ-LOVPeEoi5CUDndj2Xyi1BVq8J7deby+fZQxMFKSw@mail.gmail.com>
	<5203B0D7.809@mlbassoc.com>
	<5203B4AC.2030609@reliableembeddedsystems.com>
	<5203B7F9.20001@mlbassoc.com>
	<5203D594.8090400@reliableembeddedsystems.com>
	<5203DAD9.9080101@mlbassoc.com>
	<52040611.8020106@reliableembeddedsystems.com>
	<52041846.8010201@mlbassoc.com>
	<52113215.5090102@reliableembeddedsystems.com>
	<c98ff6d31f5118f8f3154ed5746e3fc7@denx.de>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 213.249.12.21
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
In-Reply-To: <c98ff6d31f5118f8f3154ed5746e3fc7@denx.de>
Cc: public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org
Subject: Re: can not build yocto on NFS mounted NAS
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
X-List-Received-Date: Wed, 21 Aug 2013 05:59:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 08/20/2013 07:45 PM, lothar@denx.de wrote:
> 
> Hi,
>  I have just two points here to ask:
> 
> 1) Wouldn't simply using SSTATE_MIRRORS be a better solution here, instead?

It's not the same.

SSTATE and DL_DIR are on an nfs export anyhow and this works.

The problem here is with TMP dir (and an nfs server with a funny
underlying filesystem like UFS) and hard links.

> 
> 2) Patch: wouldn't it be nicer to try the cp -al, and catch the
> CalledProcessError Exception, if it is thrown, and then run the brute
> force cp -a? Perhaps even as a general approach?

In theory yes, in practice you will find out that if you build something
like core-image-sato-sdk "cp -al" is not the only place which creates
hard links.

Regards,

Robert
..."There's an infinite number of ways to make a simple problem seem
difficult; only a handful to make a difficult problem seem simple" -
Jack Crenshaw's Law #1

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



