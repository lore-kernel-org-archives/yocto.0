Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93FD9E01425
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 04:37:24 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 185C7F81223; Wed,  6 Jun 2012 05:37:24 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1DADBF8121C;
	Wed,  6 Jun 2012 05:37:23 -0600 (MDT)
Message-ID: <4FCF40F3.20606@mlbassoc.com>
Date: Wed, 06 Jun 2012 05:37:23 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org, Mark Hatle <mark.hatle@windriver.com>
References: <A5935CA1C3864E4F87CAF536E3331CBF0FD2BF13@SHSMSX102.ccr.corp.intel.com>
	<953BC298FE16B64A865952E4C88593020FD37A2F@SHSMSX102.ccr.corp.intel.com>
	<4FCF3F85.20207@linux.intel.com>
In-Reply-To: <4FCF3F85.20207@linux.intel.com>
Subject: Re: about syslog configurable
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Jun 2012 11:37:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-06-06 05:31, Mihai Lindner wrote:
> Hello,
>
> Somehow `/etc/syslog-startup.conf` ends up to be a symlink of `busybox` and, apparently, `/etc/syslog-startup.conf` is `/etc/syslog-startup.conf.busybox`.
>

This happened in this change:

commit 92482cb4962fd79a07078f0fea372fdc200ed76c
Author: Mark Hatle <mark.hatle@windriver.com>
Date:   Tue May 15 18:34:17 2012 -0500

     busybox: use new update-alternatives

     (From OE-Core rev: fbbc96aed5086f853a1179f1478ccd252af24094)

     Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Mark,

Perhaps the conf file should just not be listed in the alternatives??

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

