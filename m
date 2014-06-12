Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F37CE00BDF; Thu, 12 Jun 2014 11:54:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C42CE00BB1
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 11:54:29 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id oy12so344978veb.13
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 11:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:content-transfer-encoding;
	bh=x92Y9shbfrqevQXHQlTsCui1bip6mFlIAlVsqlhuPks=;
	b=OrPn/23kpzLq4bFfoXN2wHl+TmBVo65YezD4n7bS/BICTOhuMqIfEF3+GwJD/uI3Jr
	ElHomlL5tvvBqKzDd/NhuNysK6LCwI1cqVYfXySedW9Yqv8rRCAlmCNC6LRAoJIBE0dx
	rMpz90WEBO1zexhqncWG0bpKYmyN4V5OUBA6EHmxo6gQ/Mg/BgDR5Yt4e9AZ40zJ/gkh
	FnD6rqHLzgoB3k9wQ/uFK/DkkQzGKh76oDuHkx1lymraCTC3dtl3f+kr5eznzq2+0V9i
	iIhbFfagFPzKbIYlfuWgPmTTip2PuAu+t6LRrK59rBQWnKff/8hI3uotTsa1EOxlOSH9
	TSyg==
X-Received: by 10.58.29.76 with SMTP id i12mr150109veh.67.1402599268499; Thu,
	12 Jun 2014 11:54:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Thu, 12 Jun 2014 11:53:58 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 12 Jun 2014 14:53:58 -0400
Message-ID: <CAF_dkJAy-nn0SyUNUNMdSiqpkXHFPZoOeNFgME8w6U4BqMWp-g@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to determine which tasks bitbake just ran?
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
X-List-Received-Date: Thu, 12 Jun 2014 18:54:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I'm sure I'll get tired of looking at this eventually, and learn to
love the normal ncurses style interface of bitbake.  But things are
still new enough to me that I want to know what's going on.

As you know, when we bitbake a recipe, we see lots of messages about
individual tasks that are run as they are being run (do_fetch,
do_configure, etc=E2=80=A6), and then a final summary message that reads
something like:

NOTE: Tasks Summary: Attempted 690 tasks of which 677 didn't need to
be rerun and all succeeded.

I'm curious:
1) What were the 13 tasks that ran?
2) Why are there 690 tasks for my simple recipe anyway?

Is there some way to preserve the list of 13 tasks that were run?  Are
they listed in a logfile through which I could grep "running task
<blah>" or "task <blah> skipped"?

Also, as I've been playing with my simple recipe, I find myself
frequently wanting to start from a totally clean slate, so I

$ bitbake myrecipe -c cleanall

But I notice that tmp/work/arm<TAB>/myrecipe still exists, so, in my
paranoia, I like to rm -rf tmp/work/arm<TAB>/myrecipe just to make
sure that my clean slate really is clean.  I don't see a
"cleanevenmorethanall" task listed with -c listtasks.
1) Is there any harm done in rm -rf tmp/work/arm<TAB>/myrecipe?
2) Is there an eqivalent to a cleanevenmorethanall task that would do
that for me?

--wpd

