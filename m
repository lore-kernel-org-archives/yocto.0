Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5070E01561
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 03:20:23 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VJhX1-0004T4-7w
	for yocto@yoctoproject.org; Wed, 11 Sep 2013 12:20:19 +0200
Received: from 14.Red-2-139-162.staticIP.rima-tde.net ([2.139.162.14])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 12:20:19 +0200
Received: from jose.ferreiro by 14.Red-2-139-162.staticIP.rima-tde.net with
	local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 12:20:19 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: jfc <jose.ferreiro@horus.es>
Date: Wed, 11 Sep 2013 10:20:01 +0000 (UTC)
Message-ID: <loom.20130911T102526-294@post.gmane.org>
References: <522F013F.7070002@horus.es>
	<CAAA4K6JvKPBSUZAwYwUVFCj_n64B-L1N3xN5cwuUs4Cg6ijPNg@mail.gmail.com>
	<522F5635.3040803@horus.es> <522F7000.5030103@philipp-wagner.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 2.139.162.14 (Mozilla/5.0 (Windows NT 5.1;
	rv:23.0) Gecko/20100101 Firefox/23.0)
Subject: Re: Add new module to recipe + meta-toolchain-qt: add gdb
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
X-List-Received-Date: Wed, 11 Sep 2013 10:20:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Philipp Wagner <lists@...> writes:

> 
> Hi Jose,
> 
  ...
> 
> To do that, just start a new console, do *not* source the
> /opt/poky/1.4.2/environment-* file. This should give you an empty
> PYTHONHOME variable and an unmodified PATH, so you can just use the
> regular tools on the desktop.
> 
> Philipp
> 

Hello Philipp

That works. But then we have to use a qtcreator.sh with the poky PYTHOHOME
to debug Target and another qtcreator2.sh without it to debug Desktop.

There is another workaround also: we can add to the
QTCreator-Project-Options-Desktop-Environment a new PYTHONHOME value and it
seems to have preference over the environment.sh value. This is to be done
for every project. 

However we are new to Yocto and have problems finding and understanding
things. For example this gdb/pythons thing:
  Why python is recompiled and created on /opt/poky sdk environment? 
  Why not use host python? 
  What are the steps to create gdb (or any other utlity) on the sdk
directory  (/opt/poky/..)? 
  Where is the python recipe to introduce it in host sdk to follow as an
example?

Thanks and best regards.



