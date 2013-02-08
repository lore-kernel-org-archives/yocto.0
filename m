Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id E981BE00502
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 07:31:49 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1U3pvn-0001U0-If
	for yocto@yoctoproject.org; Fri, 08 Feb 2013 16:32:03 +0100
Received: from ppp005054066050.access.hol.gr ([5.54.66.50])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 08 Feb 2013 16:32:03 +0100
Received: from gmane by ppp005054066050.access.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 08 Feb 2013 16:32:03 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 08 Feb 2013 17:31:28 +0200
Message-ID: <51151A50.7030902@reliableembeddedsystems.com>
References: <kf0pth$hu9$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp005054066050.access.hol.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
In-Reply-To: <kf0pth$hu9$1@ger.gmane.org>
Subject: Re: gcov on beagle-xm with kernel module
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
X-List-Received-Date: Fri, 08 Feb 2013 15:31:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

Looks like it's an issue with the arm eabi compiler producing code,
which the kernel gcov framework can't deal with.

I guess there are 2 options:

1) toolchain not eabi (not feasible)
2) patch gcov framework in kernel

Regards,

Robert
..."In the beginning, there was software. And it wasn't good."

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



