Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AFE4E01409
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 12:15:08 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UjaDf-0004qT-BF
	for yocto@yoctoproject.org; Mon, 03 Jun 2013 21:15:03 +0200
Received: from host-148-202.smpp.northwestern.edu ([165.124.148.202])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 21:15:03 +0200
Received: from dtran11 by host-148-202.smpp.northwestern.edu with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 21:15:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Dat Tran <dtran11@gmail.com>
Date: Mon, 3 Jun 2013 18:56:40 +0000 (UTC)
Message-ID: <loom.20130603T205457-413@post.gmane.org>
References: <CANwz6nxsxvzY7w=VGjqBEbi1Eh2A4QaMKdrQLCDHFosBvtS+cA@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 165.124.148.202 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.94
	Safari/537.36)
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Mon, 03 Jun 2013 19:15:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Edward Vidal <vidal.develone@...> writes:

> Hello,
> I want to add support for FORTRAN in my image.
> On target gcc -v shows --enable-languages=c,c++
> This needs to --enable-languages=c,c++,fortran.based on my host system.
> How does the variable FORTRAN in 
/home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/gcc-
configure-common.inc get set?  Can this be done in the local.conf file?
> 
> Does the FORTRAN ?= ",f77" this need to be FORTRAN ?= ",fortran" since we 
are building gcc4.7?
> Any and all help will be appreciated.
> Thanks


Hi Edward, 

I am having the same problem as you. Did you solve this issue. I am looking 
for gfortran recipe but I don't see it.

thanks


