Return-Path: <apelete@seketeli.net>
Received: from ms.seketeli.net (seketeli.net [91.121.166.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C49EE0070C
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2012 14:47:55 -0700 (PDT)
Received: from localhost (unknown [109.190.26.176])
	by ms.seketeli.net (Postfix) with ESMTP id 1D0B5EA040;
	Thu, 26 Apr 2012 00:02:37 +0200 (CEST)
Received: by localhost (Postfix, from userid 1000)
	id DC43964345; Wed, 25 Apr 2012 23:47:52 +0200 (CEST)
Date: Wed, 25 Apr 2012 23:47:52 +0200
From: Apelete Seketeli <apelete@seketeli.net>
To: yocto@yoctoproject.org
Message-ID: <20120425214752.GA3525@hermes>
MIME-Version: 1.0
X-Operating-System: Debian GNU/Linux wheezy/sid
X-URL: http://www.seketeli.net/~apelete
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Kristoffer Eriksson <kristoffer.ericson@gmail.com>
Subject: [opkg-utils] Asking for an old patch review
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
X-List-Received-Date: Wed, 25 Apr 2012 21:47:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

I'm trying to get a patch for opkg-utils into oe-classic, and it seems
some of the changes of my patch were already submitted to yocto a
month ago:

https://lists.yoctoproject.org/pipermail/yocto/2012-March/007851.html

Since the opkg-utils recipe in oe-classic is using the yocto
repository as SRC_URI, the patch mentioned in the link above should be
applied to the yocto repository before I make further changes to
opkg-utils.

Could someone here do a review of the above mentioned patch please ?

Best regards.
-- 
        Apelete

