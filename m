Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5EFFE006B5
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 21:35:11 -0800 (PST)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Rg8dw-0005GB-8k
	for yocto@yoctoproject.org; Thu, 29 Dec 2011 06:35:08 +0100
Received: from c-98-216-48-64.hsd1.ma.comcast.net ([98.216.48.64])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2011 06:35:08 +0100
Received: from a_schweitzer by c-98-216-48-64.hsd1.ma.comcast.net with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2011 06:35:08 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Andrew Schweitzer <a_schweitzer@yahoo.com>
Date: Thu, 29 Dec 2011 05:26:32 +0000 (UTC)
Message-ID: <loom.20111229T062302-471@post.gmane.org>
References: <CANSwnwggQwOgZk61xvppWXnz3+Wks9jSaNcp0+cBf9eS2xNNOg@mail.gmail.com>
	<4EF20847.1030106@gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 98.216.48.64 (Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/535.2 (KHTML, like Gecko) Ubuntu/11.10
	Chromium/15.0.874.106 Chrome/15.0.874.106 Safari/535.2)
Subject: Re: build error on meta-cedarview
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
X-List-Received-Date: Thu, 29 Dec 2011 05:35:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Jim Abernathy <jfabernathy@...> writes:

> 
> 
>     While running a build of the core-image-sato using the edison latest
>     commits and the meta-cedartrail bsp, I notices some errors fly by
>     and thought I'd see if anyone knows the reason.  The build is just
>     to test the bsp with no changes.  Basically, doing the Appendix A of
>     the Development manual substituting cedartrail for crownbay.
>     snippet of the console log below:
>     NOTE: package icon-naming-utils-native-0.8.7-r3: task do_unpack:
>     Started
>     ERROR: Function 'Unpack failure for URL: 
'http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz'.

I don't know the reason, but I did get the same error when trying to build yocto 
per the getting started page, changing local.conf to create qemuarm

I would be interested in knowing the reason too. 

Andy


