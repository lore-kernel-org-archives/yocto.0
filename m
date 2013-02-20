Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id DA452E003BC
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 08:39:53 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1U8CiC-0005Es-Hc
	for yocto@yoctoproject.org; Wed, 20 Feb 2013 17:40:06 +0100
Received: from tech.addgrup.com ([89.28.12.86])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 17:40:04 +0100
Received: from aidjek by tech.addgrup.com with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 17:40:04 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Evgheni Antropov <aidjek@gmail.com>
Date: Wed, 20 Feb 2013 16:30:38 +0000 (UTC)
Message-ID: <loom.20130220T173024-685@post.gmane.org>
References: <CADzUK1KR-tyiabskATGp1pH_yUN_AgiBA+EUv9mtsjuXfnB5uw@mail.gmail.com>
	<4F062177.3010706@windriver.com>
	<CADzUK1+xUNsNpUVy1kEPtLVMO7kecL9bxfnOeNYUyrsDUk2u3g@mail.gmail.com>
	<20120121235720.GD12691@sakrah.homelinux.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 89.28.12.86 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57
	Safari/537.17)
Subject: Re: Trying to compile mono on target for machine crownbay
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
X-List-Received-Date: Wed, 20 Feb 2013 16:39:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

In my case I have resolved it in another way: 

correct in Makefile for "eglib" folder SUBDIRS variables and excluded "test" 
from them values:

-----------------------------------------
egrep "SUBDIRS =" ./mono-2.10.2/build/eglib/Makefile
DIST_SUBDIRS = src test
SUBDIRS = src test
#SUBDIRS = src
#SUBDIRS = src
#SUBDIRS = src

+++++++++++++++++++++++++++++++++++++++++
egrep "SUBDIRS =" ./mono-2.10.2/build/eglib/Makefile
DIST_SUBDIRS = src
SUBDIRS = src
#SUBDIRS = src
#SUBDIRS = src
#SUBDIRS = src

"build" is my own directory where I'm compiling mono.







