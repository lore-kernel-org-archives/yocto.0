Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27A51E0084A; Mon,  8 Dec 2014 11:28:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E56F3E007C1
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 11:27:50 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D2837F81205; Mon,  8 Dec 2014 12:27:49 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id F009AF81204;
	Mon,  8 Dec 2014 12:27:47 -0700 (MST)
Message-ID: <5485FBB4.4020501@mlbassoc.com>
Date: Mon, 08 Dec 2014 12:27:48 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: .bbappend and require
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
X-List-Received-Date: Mon, 08 Dec 2014 19:28:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I have a base image in my distribution (e.g. xyz-image-base.bb).
Many of my layers will build on this using 'require', e.g.
   require recipes-base/images/xyz-image-base.bb

Sometimes a given layer may create many such image recipes, each
using 'require' to fill in the base.  It would be nice to be able
to adjust the base recipe using a .bbappend in the layer so that
all images built by that layer use the same changes.  I've found
that this doesn't work as .bbappend files do not seem to be used
by 'require'.

It's easy to see this bug in action - just create a file
'core-image-minimal.bbappend' which contains:
   CORE_IMAGE_EXTRA_INSTALL += " non-existent-package"
With this, you *can* build core-image-minimal-dev (which uses
'require' to build on core-image-minimal) but not core-image-minimal.

Is there some [good] reason for this behaviour or a bug?
Could it be made to work the way I had hoped/expected?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

