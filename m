Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12C5DE00A40
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 07:15:16 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7D5AFF811DE; Wed, 23 Apr 2014 08:15:14 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 51E3AF81199;
	Wed, 23 Apr 2014 08:15:13 -0600 (MDT)
Message-ID: <5357CAF3.1070702@mlbassoc.com>
Date: Wed, 23 Apr 2014 08:15:15 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: How does python-native work?
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
X-List-Received-Date: Wed, 23 Apr 2014 14:15:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

How is python-native supposed to work?  I can see that it's
built and installed in my tmp/sysroots/HOST but it's installed
in a sub-directory which is not found by normal means.

In particular, I'm trying to build a package which uses configure
to discover python support and if present package a python interface
library.  In the config.log, I see this:
   configure:12109: checking for python
   configure:12127: found /usr/bin/python
   configure:12140: result: /usr/bin/python
which only makes sense since there is no python in my sysroots (directly).
   $ find tmp/sysroots/x86_64-linux/usr/bin -name "python*"
   tmp/sysroots/x86_64-linux/usr/bin/python-native
   tmp/sysroots/x86_64-linux/usr/bin/python-native/python-config
   tmp/sysroots/x86_64-linux/usr/bin/python-native/python2
   tmp/sysroots/x86_64-linux/usr/bin/python-native/python2-config
   tmp/sysroots/x86_64-linux/usr/bin/python-native/python2.7-config
   tmp/sysroots/x86_64-linux/usr/bin/python-native/python
   tmp/sysroots/x86_64-linux/usr/bin/python-native/python2.7

Even if I convince configure where to find python, e.g. adding
   --with-python=$OECORE_NATIVE_SYSROOT/usr/bin/python-native/python
   --with-python-config=$OECORE_NATIVE_SYSROOT/usr/bin/python-native/python-config
this still isn't right since python-config gives incorrect answers:
   $ tmp/sysroots/x86_64-linux/usr/bin/python-native/python-config --includes
   -I/usr/include/python2.7 -I/usr/include/python2.7

I would think that python-native would install python on my path
(from tmp/sysroots) and as well provide python-config which gives
the answers I can use, e.g. --includes which point to the python
includes in tmp/sysroots/HOST, etc.

What am I missing and how do I work with this?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

