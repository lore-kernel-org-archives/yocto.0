Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AC0FE00C46
	for <yocto@yoctoproject.org>; Tue,  8 Apr 2014 00:36:00 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WXQZa-0005hF-ID
	for yocto@yoctoproject.org; Tue, 08 Apr 2014 09:35:58 +0200
Received: from ppp005054168166.access.hol.gr ([5.54.168.166])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 08 Apr 2014 09:35:58 +0200
Received: from gmane by ppp005054168166.access.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 08 Apr 2014 09:35:58 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 08 Apr 2014 10:35:35 +0300
Message-ID: <5343A6C7.5030909@reliableembeddedsystems.com>
References: <CAD78y+7r_2_nyzizGccLkyFj1PL2q3TBn4czTGsJr5dp6vos5Q@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp005054168166.access.hol.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
In-Reply-To: <CAD78y+7r_2_nyzizGccLkyFj1PL2q3TBn4czTGsJr5dp6vos5Q@mail.gmail.com>
Subject: Re: [meta-raspberrypi] Problem building core-image-sato-sdk
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
X-List-Received-Date: Tue, 08 Apr 2014 07:36:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 03/09/2014 02:08 PM, Federico Vitali wrote:
> Hi everyone,
> 
> I've succesfully build core-image-sato for raspberry pi, but when I try
> to build the sdk version I obtain the following error:
> 
> ERROR: Multiple .bb files are due to be built which each provide
> virtual/libgles2
> (/home/vitalife/yocto/poky/meta-raspberrypi/recipes-graphics/userland/userland_git.bb
> <http://userland_git.bb>
> /home/vitalife/yocto/poky/meta/recipes-graphics/mesa/mesa_git.bb
> <http://mesa_git.bb>).
>  This usually means one provides something the other doesn't and should.
> ERROR: Multiple versions of mesa are due to be built
> (/home/vitalife/yocto/poky/meta/recipes-graphics/mesa/mesa_9.1.6.bb
> <http://mesa_9.1.6.bb>
> /home/vitalife/yocto/poky/meta/recipes-graphics/mesa/mesa_git.bb
> <http://mesa_git.bb>). Only one version of a given PN should be built in
> any given build. You likely need to set PREFERRED_VERSION_mesa to select
> the correct version or don't depend on multiple versions.
> 
> What could be the problem? 

I hit the same problem and tried something like this [1] and
PREFERRED_VERSION_mesa ?= "9.1.6", but the problem persists.

Did you find a solution?

[1]
http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/common/recipes-graphics/mesa/mesa_9.1.6.bbappend?h=dora

Regards,

Robert

> 
> Thank you in advance
> 
> Federico
> 
> 
> 
> -- 
> 

..."German programmers tend to take it as a personal insult when a fault
is detected in code that they have written." - Debora Weber-Wulff
weberwu@tfh-berlin.de [comp.risks 16.94]

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



