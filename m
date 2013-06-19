Return-Path: <gary@mlbassoc.com>
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3342EE014BF
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 07:03:21 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 9FFF768A01C; Wed, 19 Jun 2013 15:03:18 +0100 (BST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	loki.analogue-micro-ltd.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.12.145] (unknown [192.168.12.145])
	by mail.analogue-micro.com (Postfix) with ESMTP id C9B0868A019;
	Wed, 19 Jun 2013 15:03:17 +0100 (BST)
Message-ID: <51C1BA25.6080200@mlbassoc.com>
Date: Wed, 19 Jun 2013 15:03:17 +0100
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Cross building question
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
X-List-Received-Date: Wed, 19 Jun 2013 14:03:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm asking on this list since this is a pretty general question.
If it's more appropriate for another venue, just let me know.

I'm trying to build a new package for my target which has never
been ported to OpenEmbedded/Yocto/...  (It's the Amanda backup
server if anyone has ever looked at this).  The code is a
giant mass that I'd hoped not to have to delve into very deeply.
Basic configuration (autoolized) went well, but one of the
first things it wants to do is run a [target] program which
has been linked against the [target] libraries that were just
built.  In this case, it's just a utility to interrogate the
libraries and CONFIG.h files and print a user summary.

What's the best way to handle this and how?  I recall in the
dark old days that there were many such things that relied on
running QEMU to actually execute target code.  Is this still
possible (and being done)?  If so, is that a solution and how
might I force it to happen?

It may turn out that this is just a small problem that I can
patch my way through, but I fear there may be other such utilities
that get built and used, so I'd like to understand my way forward.

Thanks for any pointers/ideas

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

