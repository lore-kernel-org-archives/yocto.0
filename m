Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 378BDE002A8
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 04:10:19 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1SrS90-0003Dg-6l
	for yocto@yoctoproject.org; Wed, 18 Jul 2012 13:10:14 +0200
Received: from 134.191.244.18 ([134.191.244.18])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 13:10:14 +0200
Received: from gmane by 134.191.244.18 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 13:10:14 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 18 Jul 2012 14:05:49 +0300
Organization: Reliable Embedded Systems
Message-ID: <ju65ad$k9a$2@dough.gmane.org>
References: <CANwz6nwhuBHFHKr491qAXrfX8jYe_aedoA1oQQyfLwy66e-0ag@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 134.191.244.18
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.24) Gecko/20111108 Thunderbird/3.1.16
In-Reply-To: <CANwz6nwhuBHFHKr491qAXrfX8jYe_aedoA1oQQyfLwy66e-0ag@mail.gmail.com>
Subject: Re: beagleboard not booting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jul 2012 11:10:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 07/18/2012 03:54 AM, Edward Vidal wrote:
> Hello,
> The beagleboard that I am using is XM.

Which revison? C?

Can you try to build a mainline 3.4.x kernel and a mainline u-boot and
see what happens?


..."I'm afraid that I've seen too many people fix bugs by looking at
debugger output, and that almost inevitably leads to fixing the symptoms
rather than the underlying problems." --Linus

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



