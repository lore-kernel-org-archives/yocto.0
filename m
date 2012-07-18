Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE9EEE00283
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 04:04:24 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1SrS3K-0002AB-3k
	for yocto@yoctoproject.org; Wed, 18 Jul 2012 13:04:22 +0200
Received: from 134.191.244.18 ([134.191.244.18])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 13:04:22 +0200
Received: from gmane by 134.191.244.18 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 13:04:22 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 18 Jul 2012 14:04:10 +0300
Organization: Reliable Embedded Systems
Message-ID: <ju657a$k9a$1@dough.gmane.org>
References: <CANwz6nzPNmX4SOcfCXWjNj7d8GYvDXikgGopxxc98HeWHkN-eA@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 134.191.244.18
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.24) Gecko/20111108 Thunderbird/3.1.16
In-Reply-To: <CANwz6nzPNmX4SOcfCXWjNj7d8GYvDXikgGopxxc98HeWHkN-eA@mail.gmail.com>
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
X-List-Received-Date: Wed, 18 Jul 2012 11:04:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/18/2012 01:40 PM, Edward Vidal wrote:
> 
> # CONFIG_PREEMPT_RCU is not set
> CONFIG_PREEMPT_NONE=y
> # CONFIG_PREEMPT_VOLUNTARY is not set
> # CONFIG_PREEMPT is not set
> For beagleboard XM should this value be CONFIG_PREEMPT_NONE=n

I guess this is what Bruce would like you to try out.


..."I believe it was Andrew Koenig who commented that purists who accept
no compromises in programming languages use either machine code or
lambda calculus :-)" - Kevlin A P Henney (kevlin@wslint.demon.co.uk)

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



