Return-Path: <gary@mlbassoc.com>
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC9A9E013EC
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 22:22:58 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 41F4368A01C; Thu, 20 Jun 2013 06:22:56 +0100 (BST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	loki.analogue-micro-ltd.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.12.145] (unknown [192.168.12.145])
	by mail.analogue-micro.com (Postfix) with ESMTP id 7F94768A01B;
	Thu, 20 Jun 2013 06:22:55 +0100 (BST)
Message-ID: <51C291AF.1070508@mlbassoc.com>
Date: Thu, 20 Jun 2013 06:22:55 +0100
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Build doesn't interrupt cleanly
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
X-List-Received-Date: Thu, 20 Jun 2013 05:22:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Using Yocto master (1dd643b142c69ac9035e29bff11d02201638dc65)

I forcefully interrupted a bitbake build with ^C^C.  When it
shut down, I made some changes to my local.conf and then tried
to fire it up again, only to get this error:
   ERROR: Only one copy of bitbake should be run against a build directory

It looks like bitbake didn't totally get cleaned up in this case.
   $ ps ax | grep bit
   16319 pts/4    S      0:01 python /home/local/poky-multi/bitbake/bin/bitbake-worker decafbad

Killing this left over worker let me continue.

I've never seen this before, so perhaps it's new behaviour.
If it happens again, I'll file a bug.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

