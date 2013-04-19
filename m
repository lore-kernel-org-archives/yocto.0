Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E91F0E0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:51:59 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 84A0DF811F5; Fri, 19 Apr 2013 08:51:59 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 51BBBF811F4;
	Fri, 19 Apr 2013 08:51:58 -0600 (MDT)
Message-ID: <51715A12.60007@mlbassoc.com>
Date: Fri, 19 Apr 2013 08:52:02 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Change in 'devshell' behaviour
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
X-List-Received-Date: Fri, 19 Apr 2013 14:52:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

CAUTION!! giant security hole awaits!

I've just discovered that recent Poky/Yocto runs 'devshell' as ROOT!

If I run 'bitbake SOME-RECIPE -c devshell' with a somewhat older
metadata (poky rev 09359e6ec00901abfe49157f1f9730117b4d284b)
the shell is run using my user id.

With a newer poky rev 90b98764555945a186562ca8d501a9585ce2b23f,
the shell runs as 'root'.

This change came with this revision:

commit 4dc31a327be1a506e78e1d028db08ceee22a216f
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Thu Mar 28 13:17:12 2013 +0000

     base.bbclass: When we use fakeroot, also use it for devshell

     Its generally useful for devshell to end up in the fakeroot environment. If
     a user needs to exit it, PSEUDO_UNLOAD=1 <command> works, its usually
     harder to enter the envionment.

     [YOCTO #3374]

     (From OE-Core rev: e6ffc747a8ca5142c9bc6fbd2b06b5808bb38b02)

     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Isn't this a horrible security flaw?  Or is 'fakeroot' actually safe?
The change description doesn't tell me why it's "useful".

Whatever the case, to me at least it's very unnerving...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

