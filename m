Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4AC5E013A8
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 21:04:25 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UnLFO-0007Il-8Y
	for yocto@yoctoproject.org; Fri, 14 Jun 2013 06:04:22 +0200
Received: from c-68-51-81-31.hsd1.il.comcast.net ([68.51.81.31])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 06:04:22 +0200
Received: from dtran11 by c-68-51-81-31.hsd1.il.comcast.net with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 06:04:22 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Dat Tran <dtran11@gmail.com>
Date: Fri, 14 Jun 2013 04:04:07 +0000 (UTC)
Message-ID: <loom.20130614T060308-378@post.gmane.org>
References: <CANwz6nxO25BCt2B-H8T9_SO5F3DqfE1w2QDSoXPVnP-qxq994Q@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 68.51.81.31 (Mozilla/5.0 (Windows NT 6.2;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110
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
X-List-Received-Date: Fri, 14 Jun 2013 04:04:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Anyone know of any clues that will help us? Thanks.



Edward Vidal <vidal.develone@...> writes:

> 
> 
> 
> Dat Tran 
>     dtran11 at gmail.com wrote > Hello,
> > I want to add support for FORTRAN in my image.
> > On target gcc -v shows --enable-languages=c,c++
> > This needs to --enable-languages=c,c++,fortran.based on my host system.
> > How does the variable FORTRAN in 
> /home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/gcc-
> configure-common.inc get set?  Can this be done in the local.conf file?
> > 
> > Does the FORTRAN ?= ",f77" this need to be FORTRAN ?= ",fortran" since 
we 
> are building gcc4.7?
> > Any and all help will be appreciated.
> > Thanks
> 
> Hi Edward, 
> 
> I am having the same problem as you. Did you solve this issue. I am 
looking 
> for gfortran recipe but I don't see it.
> 
> thanks
> They had recommended adding libgfortran to poky/meta/recipes-
devtools/gcc/gcc-configure-runtime.incRUNTIMETARGET = "libssp libstdc++-v3 
libgomp".  This did not work either,
> If you find a solution I would be interested in getting the fix.
> Thanks
> 
> 
> <div><div dir="ltr">
> <div>
> <div>Dat Tran 
>     <a href="mailto:yocto%40yoctoproject.org?
Subject=Re%3A%20%5Byocto%5D%20gcc%20enable-languages&amp;In-Reply-
To=%3Cloom.20130603T205457-413%40post.gmane.org%3E" title="[yocto] gcc 
enable-languages">dtran11 at gmail.com</a> wrote <br>&gt; Hello,
> &gt; I want to add support for FORTRAN in my image.
> &gt; On target gcc -v shows --enable-languages=c,c++
> &gt; This needs to --enable-languages=c,c++,fortran.based on my host 
system.
> &gt; How does the variable FORTRAN in 
> /home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/gcc-
> configure-common.inc get set?&nbsp; Can this be done in the local.conf 
file?
> &gt; 
> &gt; Does the FORTRAN ?= ",f77" this need to be FORTRAN ?= ",fortran" 
since we 
> are building gcc4.7?
> &gt; Any and all help will be appreciated.
> &gt; Thanks
> 
> Hi Edward, 
> 
> I am having the same problem as you. Did you solve this issue. I am 
looking 
> for gfortran recipe but I don't see it.
> 
> thanks
> They had recommended adding libgfortran to poky/meta/recipes-
devtools/gcc/gcc-configure-runtime.inc<br>RUNTIMETARGET = "libssp libstdc++-
v3 libgomp".&nbsp; This did not work either,<br>
> </div>If you find a solution I would be interested in getting the fix.<br>
> </div>Thanks<br><br>
> </div></div>
> 





