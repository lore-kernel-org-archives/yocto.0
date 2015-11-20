Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8764CE00B5E; Fri, 20 Nov 2015 06:47:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F1C2E00B30
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 06:47:06 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 20AAAF811E7; Fri, 20 Nov 2015 07:47:06 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 92030F811E5;
	Fri, 20 Nov 2015 07:47:01 -0700 (MST)
To: Yocto Project <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <564F3276.10602@mlbassoc.com>
Date: Fri, 20 Nov 2015 07:47:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
Subject: Change in behaviour
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
X-List-Received-Date: Fri, 20 Nov 2015 14:47:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

This commit:
   commit 536b73f55f51fcea555338f9a557fe86c09d00cb
   Author: Richard Purdie <richard.purdie@linuxfoundation.org>
   Date:   Sun Oct 11 10:21:20 2015 +0100
     bitbake: data_smart: Only support lowercase OVERRIDES
breaks the use of capital letters, specifically in MACHINE names.
I use this a lot, along with COMPATIBLE_MACHINE, to share recipes
amongst similar machines.

The commit says it could be conditional.  How hard (and how)
would it be to do that?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

