Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4219E01460
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 13:06:33 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-116-162.range81-153.btcentralplus.com
	[81.153.116.162]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 73A269ADE
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 21:06:31 +0100 (BST)
Message-ID: <50450DC6.20303@r-finger.com>
Date: Mon, 03 Sep 2012 21:06:30 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Mon, 03 Sep 2012 20:06:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Hi,

I am wondering why yocto includes a beagleboard.conf when it is unable
to support much of the board's features, and there is a dedicated layer
for TI stuff that defines the beagleboard machine properly.

I actually have a fairly practical gripe here: it is currently not
possible to include both meta-yocto and meta-ti, and have it use the
correct beagleboard.conf from meta-ti! The meta-yocto layer prepends
itself to the BBPATH while meta-ti appends itself, so regarless the
layer arrangement, the (not-much-useful) yocto beagleboard.conf is
always used, and everything is broken. The only way to work around this
that I can think of is to provide yet another beagleboard.conf from a
custom layer that also preppends itself to the BBPATH, which feels like
three sides of a square route.

So, is there a good reason not to get rid of yocto beagleboard.conf?

Tomas

