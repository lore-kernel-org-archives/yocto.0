Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1410E00956; Thu, 21 May 2015 05:59:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBFF5E004F6
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 05:59:16 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 22A86F811D9; Thu, 21 May 2015 06:59:15 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A4DFFF811D9;
	Thu, 21 May 2015 06:59:15 -0600 (MDT)
Message-ID: <555DD6B1.8010608@mlbassoc.com>
Date: Thu, 21 May 2015 06:59:29 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Strangeness with devshell
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
X-List-Received-Date: Thu, 21 May 2015 12:59:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to run emacs inside of devshell.  For some reason,
emacs can't find my startup files (emacs configuration).  When
I look, I see very different startup behaviour for emacs when
I'm running in devshell vs. my normal shell (bash).  Inside
the devshell it seems to be totally lost and I get messages
like "User gthomas has no home directory".  Indeed when running
in the devshell, I can see that emacs is trying to access paths
like this:
   /usr/share/emacs/23.2/site-lisp/~gthomas/.emacs.elc

What's even more odd is that emacs does manage to find _some_
of the correct files such as
   /home/gthomas/.emacs.d/auto-save
   /home/gthomas/.emacs.d/auto-save-list

Any idea why the confusion?

I'd really like to have emacs behave properly within devshell :-)
I can only imagine what else might be "weird" under the covers
while using devshell...

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

