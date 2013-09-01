Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 339BBE00282
	for <yocto@yoctoproject.org>; Sun,  1 Sep 2013 08:07:27 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VG9FN-0001yl-Cb
	for yocto@yoctoproject.org; Sun, 01 Sep 2013 17:07:25 +0200
Received: from ppp089210245158.access.hol.gr ([89.210.245.158])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 01 Sep 2013 17:07:25 +0200
Received: from gmane by ppp089210245158.access.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 01 Sep 2013 17:07:25 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sun, 01 Sep 2013 18:07:13 +0300
Message-ID: <52235821.3070302@reliableembeddedsystems.com>
References: <CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bnrx4A@mail.gmail.com>
	<1377881765.14029.4.camel@dvhart-mobl4.amr.corp.intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210245158.access.hol.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
In-Reply-To: <1377881765.14029.4.camel@dvhart-mobl4.amr.corp.intel.com>
Cc: Asier <public-atamayoarbide-Re5JQEeQqe8AvxtiuMwx3w@plane.gmane.org>,
	public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org
Subject: Re: Embedded Linux with Xenomai support
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
X-List-Received-Date: Sun, 01 Sep 2013 15:07:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 08/30/2013 07:56 PM, Darren Hart wrote:

>> Is there any Linux distribution based on the Yocto project that lets
>> me configure my embedded kernel with Xenomai? If not, has anybody got
>> any experinece in adding Xenomai to the Yocto project? 
> 
> I am not aware of anyone using Xenomai with Yocto to date (although that
> doesn't mean nobody is). Our Real-Time focus has been on the PREEMPT_RT
> Linux kernel, which we do have recipes for.

googling for meta-xenomai reveals:

[1][2]

> 
> It appears as though Xenomai has changed quite a bit over the years. If
> my quick re-reading of their material is correct, the Xenomai core is
> implemented as a Linux kernel module which can built in to a standard
> Linux kernel?

... kind of ...

kernel space:

You need to apply a patch to a certain kernel version and configure the
kernel afterwards.

So for an ARM architecture there is a patch for the 3.8 kernel[3]

user land:

But unlike with preempt-rt you also need to build the Xenomai userland
stuff.

> 
> Out of curiosity, what sort of real-time requirements do you have?
> 

That's a good point. Shameless self promotion [4].

Regards,

Robert

[1] https://github.com/nojgosu/meta-xenomai
[2] https://github.com/DrunkenInfant/beaglebone-xenomai
[3]
http://git.xenomai.org/?p=xenomai-head.git;a=tree;f=ksrc/arch/arm/patches;h=c6045f00819318970d6bba65c397609052c9414e;hb=HEAD
[4] http://www.reliableembeddedsystems.com/pdfs/2010_03_04_rt_linux.pdf


..."A language that doesn't affect the way you think about programming
is not worth knowing." - Anonymous

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



