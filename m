Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA2A4E003FA
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2013 13:57:08 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1V7XGa-0003Ht-0t
	for yocto@yoctoproject.org; Thu, 08 Aug 2013 22:57:04 +0200
Received: from 213.249.12.89 ([213.249.12.89])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2013 22:57:04 +0200
Received: from gmane by 213.249.12.89 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2013 22:57:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 08 Aug 2013 23:56:49 +0300
Message-ID: <52040611.8020106@reliableembeddedsystems.com>
References: <ku083q$oa8$1@ger.gmane.org>
	<CABcZAN=mQ-LOVPeEoi5CUDndj2Xyi1BVq8J7deby+fZQxMFKSw@mail.gmail.com>
	<5203B0D7.809@mlbassoc.com>
	<5203B4AC.2030609@reliableembeddedsystems.com>
	<5203B7F9.20001@mlbassoc.com>
	<5203D594.8090400@reliableembeddedsystems.com>
	<5203DAD9.9080101@mlbassoc.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 213.249.12.89
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
In-Reply-To: <5203DAD9.9080101@mlbassoc.com>
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
X-List-Received-Date: Thu, 08 Aug 2013 20:57:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 08/08/2013 08:52 PM, Gary Thomas wrote:
> 
> I'm trying this now with my Ubuntu 12.04 laptop and the same NFS server.
> Looks like it's working just fine, it's already made it through the first
> phase of a fresh build (building all the necessary 'native' tools), so I
> think it will work as expected (it's way past where you had problems).
> I'll let it complete and report back if there were any problems.
> 
> n.b. building this way is glacially slow :-(
> 

So let's assume it's the nfs server. Can you please tell me what's the
file system on your nfs server and how you export it?

A possible problem is, that with nfs symbolic links are not followed by
default.

My problem might be that I use a FreeBSD based nfs server.

Maybe with something like ext3, ext4 it might work.

Also do you use dylan-9.0.1 or something more recent?

Regards,

Robert
..."Premature optimisation is the root of all evil" -- Knuth

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



