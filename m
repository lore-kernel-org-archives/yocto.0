Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F69EE013A2
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 07:02:36 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UzSJM-0001KT-T8
	for yocto@yoctoproject.org; Wed, 17 Jul 2013 16:02:33 +0200
Received: from 12.221.11.42 ([12.221.11.42])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 16:02:32 +0200
Received: from squirem by 12.221.11.42 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 16:02:32 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: squirem <squirem@fbdfrozen.com>
Date: Wed, 17 Jul 2013 14:02:15 +0000 (UTC)
Message-ID: <loom.20130717T160011-414@post.gmane.org>
References: <6E33FFB9BDF84745959E176E9A6B59BE4078954D@FBDLP-EX2010.fbdlp.local>
	<CA452391058F6D4E9715FB2C29D9312A01625D60@039-SN2MPN1-023.039d.mgd.msft.net>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 12.221.11.42 (Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko)
	Chrome/26.0.1410.43 Safari/537.31)
Subject: Re: Enabling SFTP on libcurl package
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
X-List-Received-Date: Wed, 17 Jul 2013 14:02:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Luo Zhenhua-B19537 <B19537@...> writes:

> Add "--with-libssh2" when configure curl. 

I found that the curl bitbake recipe has the "--without-libssh2" 
configuration option set. 

I'll try changing that option and seeing what happens.

I appreciate the help.


