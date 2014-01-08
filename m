Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F23CE007C6
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 03:59:58 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 903B5F811EA; Wed,  8 Jan 2014 04:59:58 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E182EF811E8;
	Wed,  8 Jan 2014 04:59:56 -0700 (MST)
Message-ID: <52CD3DCC.9070807@mlbassoc.com>
Date: Wed, 08 Jan 2014 05:00:12 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: PR server question
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
X-List-Received-Date: Wed, 08 Jan 2014 12:00:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm using a local PR server for my builds, working on my Linux
kernel.  When I run this sequence:
   $ bitbake virtual/kernel -c devshell
     ... fiddle with some kernel sources
   $ bitbake virtual/kernel -C compile; bitbake package-index
I notice that the package revision for 'kernel-image-*' goes up
by 3 on every iteration.

Not that it makes much difference (or does it?), but does this
make sense?  Why does it not just increase by 1 since I've only
actually rebuilt the package once?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

