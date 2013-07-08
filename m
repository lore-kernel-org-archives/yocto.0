Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9200CE01409
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 04:10:05 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Uw9KW-0000wr-63
	for yocto@yoctoproject.org; Mon, 08 Jul 2013 13:10:04 +0200
Received: from p5099b24a.dip0.t-ipconnect.de ([80.153.178.74])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2013 13:10:04 +0200
Received: from m.meier by p5099b24a.dip0.t-ipconnect.de with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2013 13:10:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Michael <m.meier@plusoptix.de>
Date: Mon, 08 Jul 2013 13:05:53 +0200
Message-ID: <kre6ei$f78$1@ger.gmane.org>
References: <0342A6AD36648742A199353A51DDC70311546C9C@ESESSMB305.ericsson.se>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: p5099b24a.dip0.t-ipconnect.de
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130211 Thunderbird/17.0.2
In-Reply-To: <0342A6AD36648742A199353A51DDC70311546C9C@ESESSMB305.ericsson.se>
Subject: Re: SSTATE_MIRRORS problems, libpthread.so.0 not found ...
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
X-List-Received-Date: Mon, 08 Jul 2013 11:10:07 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Am 11.04.2013 15:19, schrieb Jonas Jonsson L:

> The package that I’ve built builds clean without any warnings in the
> ‘clean’ build.  However, if I _don’t_ build my package in the clean
> image, but in one of my ‘configured’ images, it fails.  All of a sudden,
> the linker can’t find neither /lib/libpthread.so.0 nor
> /usr/lib/libpthread_nonshared.a L

Same problem here. Already any solution for this problem?

Best regards,
Michael Meier



