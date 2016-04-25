Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8FDFE00CAE; Mon, 25 Apr 2016 06:06:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9E92E00972
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 06:06:17 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 3C21768A01C; Mon, 25 Apr 2016 14:06:15 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id D100E68A019;
	Mon, 25 Apr 2016 14:06:14 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 73DDB6740363;
	Mon, 25 Apr 2016 15:06:14 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <571E1646.5060809@mlbassoc.com>
Date: Mon, 25 Apr 2016 15:06:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
Subject: Strange dependency
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
X-List-Received-Date: Mon, 25 Apr 2016 13:06:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I have a distribution which normally includes x11.  I just
ran a build with
   DISTRO_FEATURES_remove = "x11 wayland"

Why on earth did this require qemu-native to be rebuilt?
One would think that qemu-native would be independent of the
DISTRO_FEATURES??

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

