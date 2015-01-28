Return-Path: <clemens.lang@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1053BE00815; Wed, 28 Jan 2015 00:55:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.245.222.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 159 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Jan 2015 00:55:00 PST
Received: from mail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFC8EE00753
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 00:55:00 -0800 (PST)
Received: from exchange2010.bmw-carit.intra ([192.168.100.28]:26246
	helo=mail.bmw-carit.de)
	by mail.bmw-carit.de with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Clemens.Lang@bmw-carit.de>)
	id 1YGOMB-0003hm-0k
	for yocto@yoctoproject.org; Wed, 28 Jan 2015 09:52:15 +0100
Received: from localhost (172.20.20.163) by Exchange2010.bmw-carit.intra
	(192.168.100.28) with Microsoft SMTP Server (TLS) id 14.1.218.12;
	Wed, 28 Jan 2015 09:52:14 +0100
Date: Wed, 28 Jan 2015 09:52:14 +0100
From: Clemens Lang <clemens.lang@bmw-carit.de>
To: Discussion of all things Yocto Project <yocto@yoctoproject.org>
Message-ID: <20150128085214.GC30548@ulm-bmuc496424.bmw-carit.de>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Originating-IP: [172.20.20.163]
Subject: Automated license incompatibility checks
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
X-List-Received-Date: Wed, 28 Jan 2015 08:55:13 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

I have written a bbclass that does license conflict checking before
building images for distribution. I am wondering if that is something
you as a project would be interested in integrating, e.g. into poky.

I am also looking for feedback to my approach and ideas on how to handle
corner cases, such as the OpenSSL exception. To give you a short and
rough overview and to avoid wasting your time with a code review before
we discussed the general approach, here's the commit message for my
local change implementing this:

> Implement automatic license conflict checking as QA check. This check
> adds a hook to the do_rootfs task, gathers a list of packages to be
> installed into the root file system, their licenses and dependency
> relations. It then walks this list and removes all licenses or part of
> license expressions that are not satisfiable using licenses from a
> configurable whitelist. For example,
>   (GPL-3.0 & LGPL-3.0+) | GPL-2.0
> with a whitelist of "GPL-2.0" will be transformed to
>   GPL-2.0
> before running license conflict checking. This ensures none of the
> licenses you don't want to distribute in your image is required to
> fulfill all license constraints.
>
> Afterwards, each package's license is checked against those of its
> dependencies one by one. To detect conflicts, the two license
> expressions are converted into conjunctive normal form, concatenated
> with all relevant license conflicts read from a configuration file and
> handed over to a SAT solver (currently minisat via the satispy python
> library). If the solver indicates the expression is satisfiable, there
> is no license conflict. If the expression cannot be solved, the
> licenses conflict.

What are your thoughts on the additional minisat dependency? I assume it
would be possible to make it a requirement only if somebody is actually
using the bbclass?

Most distributions I checked do not currently ship satispy. Would
bundling it with poky (or wherever the bbclass + tests would go) be a
viable option?


-- 
Clemens Lang • Development Specialist
BMW Car IT GmbH • Lise-Meitner-Str. 14 • 89081 Ulm • http://bmw-carit.com
-------------------------------------------------------------------------
BMW Car IT GmbH
Geschäftsführer: Michael Würtenberger und Reinhard Stolle
Sitz und Registergericht: München HRB 134810
-------------------------------------------------------------------------

