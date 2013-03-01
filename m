Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AFFAE01485
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 14:22:54 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D6172F81213; Fri,  1 Mar 2013 15:22:53 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2DC7BF8120D;
	Fri,  1 Mar 2013 15:22:52 -0700 (MST)
Message-ID: <51312A53.7060404@mlbassoc.com>
Date: Fri, 01 Mar 2013 15:23:15 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Missing GDB thread debugging?
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
X-List-Received-Date: Fri, 01 Mar 2013 22:22:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to run GDB on my target.  When I run my program
(actually the Python interpreter) I get this error:
   warning: Unable to find libthread_db matching inferior's thread library, thread debugging will not be available.

I seem to have that library installed:
   # ls /lib/libthread_db* -l
   -rwxr-xr-x 1 root root 26356 Feb 14 01:42 /lib/libthread_db-1.0.so
   lrwxrwxrwx 1 root root    19 Feb 28 17:53 /lib/libthread_db.so.1 -> libthread_db-1.0.so
Which came from:
   # opkg search /lib/libthread_db.so.1
   libthread-db1 - 2.16-r20

How can I get thread debugging to work on my target?

n.b. my target is a clone of the OMAP44xx PandaBoard.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

