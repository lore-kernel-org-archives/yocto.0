Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC474E00283
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 04:56:00 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1SrSrF-0000UR-NO
	for yocto@yoctoproject.org; Wed, 18 Jul 2012 13:55:57 +0200
Received: from 134.191.244.18 ([134.191.244.18])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 13:55:57 +0200
Received: from gmane by 134.191.244.18 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 13:55:57 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 18 Jul 2012 14:55:46 +0300
Organization: Reliable Embedded Systems
Message-ID: <ju6882$edr$1@dough.gmane.org>
References: <CANwz6nzm8mpMAhKBfHOcxvQdy-=xOnnS6Y5R3rw70TsTnOhLkg@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 134.191.244.18
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.24) Gecko/20111108 Thunderbird/3.1.16
In-Reply-To: <CANwz6nzm8mpMAhKBfHOcxvQdy-=xOnnS6Y5R3rw70TsTnOhLkg@mail.gmail.com>
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
X-List-Received-Date: Wed, 18 Jul 2012 11:56:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/18/2012 02:27 PM, Edward Vidal wrote:
> Hello,
> Close to the USB I see a C and close to speaker XM I am assuming the
> This is XM-C

OK

> What would be the process to use
> 
> 3.4.x kernel and a mainline u-boot.
> I am new to poky and don't know much about bit bake and openembedded.
> 
> Can you suggest where to read about using a different kernel.
> Thanks every thing helps.
> 

I know people here will beat me up for my suggestion, but just use the
toolchain you get with Yocto/Poky and build kernel/u-boot as ususal
without it.

Regards,

Robert
..."Rules of Optimization: Rule1: Don't do it. Rule 2 (for experts
only): Don't do it yet." - M.A. Jackson (not the singer)

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



