Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE6D0E003FA; Fri, 18 Jul 2014 11:28:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FFC3E00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 11:28:38 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 385D9F811D7; Fri, 18 Jul 2014 12:28:37 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E8153F8119A;
	Fri, 18 Jul 2014 12:28:35 -0600 (MDT)
Message-ID: <53C9675A.2080109@mlbassoc.com>
Date: Fri, 18 Jul 2014 12:28:42 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: su.shadow: Change in behaviour
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
X-List-Received-Date: Fri, 18 Jul 2014 18:28:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I just noticed a difference in how su.shadow functions with
the latest code.  If I run this
   # su -c /home/root/test -l root
with the previous version (4.1.4.3) I see this flow:
   6761  execve("/bin/su", ["su", "-c", "/home/root/test", "-l"], [/* 13 vars */]) = 0
   6761  execve("/bin/sh", ["/bin/sh", "-c", "/home/root/test"], [/* 7 vars */]) = 0
   6762  execve("/home/root/test", ["/home/root/test"], [/* 8 vars */]) = 0
with the latest version (4.2.1) I see:
   961   execve("/bin/su", ["su", "-c", "/home/root/test", "-l"], [/* 13 vars */]) = 0
   961   execve("/bin/sh", ["-su", "-c", "/home/root/test"], [/* 7 vars */]) = 0
which fails with 'su: applet not found' if /bin.sh is busybox and
succeeds if the /bin/sh is bash.

Is seems that the new version is expecting the shell to take
care of the user switch (maybe it doesn't realize that it's
already 'root') and the busybox shell doesn't handle this.
That said, I can see that busybox is built with 'CONFIG_SU=y',
but there is no 'su' applet.

Who's wrong here (su.shadow or busybox)?  Has anyone else seen
this or does everyone just use bash?

Note: I noticed this because with the latest Poky/Yocto master
with these changes, the X server no longer comes up because it
relies on su (su -l -c "/etc/X11/Xserver&" root) and this now
fails when using /bin/sh==busybox.

Thanks for any pointers or ideas

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

