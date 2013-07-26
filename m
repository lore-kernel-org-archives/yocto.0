Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F0DAE013EC
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 13:27:46 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 603A9F81207; Fri, 26 Jul 2013 14:27:46 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A6A67F81206;
	Fri, 26 Jul 2013 14:27:43 -0600 (MDT)
Message-ID: <51F2DBC1.4010907@mlbassoc.com>
Date: Fri, 26 Jul 2013 14:27:45 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <51F2A0A7.4060202@mlbassoc.com>
In-Reply-To: <51F2A0A7.4060202@mlbassoc.com>
Subject: Re: Build/install question
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
X-List-Received-Date: Fri, 26 Jul 2013 20:27:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-07-26 10:15, Gary Thomas wrote:
> One final tidy-up for my Amanda recipe.  In do_install() I have:
>      install -d -m 0777 -o amandabackup -g amandabackup ${D}/amanda
>      install -d -m 0777 -o amandabackup -g amandabackup ${D}/amanda/vtapes/slot{1,2,3,4}
>      install -d -m 0777 -o amandabackup -g amandabackup ${D}/amanda/holding
>      install -d -m 0777 -o amandabackup -g amandabackup ${D}/amanda/state/{curinfo,log,index}
>
> The problem I have is that /amanda and /amanda/holding end up with
> the correct file owner/group, but the others (anything that has
> multiple names) end up being owned by 'root'. When I install my package,
> I get this on the target:
>     # ls -lR /amanda/
>     /amanda/:
>     total 3
>     drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 holding
>     drwxr-xr-x 5 root         root         1024 Jul 26 15:44 state
>     drwxr-xr-x 6 root         root         1024 Jul 26 15:44 vtapes
>
>     /amanda/holding:
>     total 0
>
>     /amanda/state:
>     total 3
>     drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 curinfo
>     drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 index
>     drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 log
>
>     /amanda/state/curinfo:
>     total 0
>
>     /amanda/state/index:
>     total 0
>
>     /amanda/state/log:
>     total 0
>
>     /amanda/vtapes:
>     total 4
>     drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 slot1
>     drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 slot2
>     drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 slot3
>     drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 slot4
>
>     /amanda/vtapes/slot1:
>     total 0
>
>     /amanda/vtapes/slot2:
>     total 0
>
>     /amanda/vtapes/slot3:
>     total 0
>
>     /amanda/vtapes/slot4:
>     total 0
>
> Is this to be expected, or is it a bug?  If so, where do I look
> and/or report it?
>

A little experiment shows that the problem is only with the directories
that are implicitly created, e.g. /amanda/state/

Indeed, this seems to be how install works and bitbake is using the
native host version:

   root@zeus:/tmp# install -d -m 0755 -o gthomas -g gthomas /tmp/this/is/a/long/dir/tree
   root@zeus:/tmp# ls -lR /tmp/this
   /tmp/this:
   total 4
   drwxr-xr-x 3 root root 4096 Jul 26 14:24 is

   /tmp/this/is:
   total 4
   drwxr-xr-x 3 root root 4096 Jul 26 14:24 a

   /tmp/this/is/a:
   total 4
   drwxr-xr-x 3 root root 4096 Jul 26 14:24 long

   /tmp/this/is/a/long:
   total 4
   drwxr-xr-x 3 root root 4096 Jul 26 14:24 dir

   /tmp/this/is/a/long/dir:
   total 4
   drwxr-xr-x 2 gthomas gthomas 4096 Jul 26 14:24 tree

   /tmp/this/is/a/long/dir/tree:
   total 0

All of the intermediate directories are owned by 'root', not
the designated owner.

Looks like I'll just work around this one...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

