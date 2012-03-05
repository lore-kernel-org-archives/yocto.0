Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3380E013BA
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 06:20:06 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1S4Ylg-0004q4-GV
	for yocto@yoctoproject.org; Mon, 05 Mar 2012 15:20:05 +0100
Received: from 59.145.122.192 ([59.145.122.192])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2012 15:20:04 +0100
Received: from praveen.vk by 59.145.122.192 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2012 15:20:04 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: praveenvk <praveen.vk@lnties.com>
Date: Mon, 5 Mar 2012 14:14:22 +0000 (UTC)
Message-ID: <loom.20120305T143727-31@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 59.145.122.192 (Mozilla/5.0 (Windows NT 5.1;
	rv:10.0.2) Gecko/20100101 Firefox/10.0.2)
Subject: Re: How to Create SDK
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
X-List-Received-Date: Mon, 05 Mar 2012 14:20:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

 Hi,
     I am very new to Yocto so kindly help. I wish to create bsp for our project
in which we are using arm1136 processor. I have created a layer (meta_prj) same
as meta for our project and have made required changes in
meta/conf/bblayers.conf.sample to consider meta_prj for compilation of recipes. 

Now what should be my first step? Am i supposed to cross compile toolchain
first. I have noticed we can download external toolchain, if i have to produce
one of my own how i can do it? Am i supposed to compile meta-toolchain-qte.bb to
get this toolchain?


Thanks & Regards,
praveen



