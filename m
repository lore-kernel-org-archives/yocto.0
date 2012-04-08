Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BFC4E0030B
	for <yocto@yoctoproject.org>; Sun,  8 Apr 2012 15:29:00 -0700 (PDT)
Received: from [192.168.0.2] (host86-133-44-87.range86-133.btcentralplus.com
	[86.133.44.87]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id E7CD299C2
	for <yocto@yoctoproject.org>; Sun,  8 Apr 2012 23:28:58 +0100 (BST)
Message-ID: <4F821129.2020007@r-finger.com>
Date: Sun, 08 Apr 2012 23:28:57 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto <yocto@yoctoproject.org>
Subject: managing layer priorities
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
X-List-Received-Date: Sun, 08 Apr 2012 22:29:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

Is there a way to change the priority that a layer assigns itself in its
layer.conf? E.g., I want to add meta-oe alongside of meta-yocto, but I
want it to have a lower priority than the latter. Currently meta-yocto
gives itself "5" and meta-oe "6", I'd like to change this without having
to modify meta-oe/conf/layer.conf, but can't find a way to do this.

Tomas

