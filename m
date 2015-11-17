Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A8CBE00B23; Tue, 17 Nov 2015 07:33:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D015E00B04
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 07:33:28 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 11362F811DE; Tue, 17 Nov 2015 08:33:27 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A4A49F811DE;
	Tue, 17 Nov 2015 08:33:27 -0700 (MST)
To: Yocto Project <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <564B48D3.7050304@mlbassoc.com>
Date: Tue, 17 Nov 2015 08:33:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
Subject: New warning(s)
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
X-List-Received-Date: Tue, 17 Nov 2015 15:33:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

When I run bitbake using layers that are not GIT repos, I'm
now getting a lot of messages like this:
   fatal: Not a git repository (or any parent up to mount point /raid)
   Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).

This seems to be new (I've built from such trees many times
before with no such messages) and it hardly seems "fatal".
The messages apparently are coming from 'git' (I tested with
git version 1.9.1 and 1.7.11)

Why the change?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

