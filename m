Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA41FE013DE
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 09:15:36 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E8DC7F81205; Fri, 26 Jul 2013 10:15:35 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 42E82F811FF;
	Fri, 26 Jul 2013 10:15:34 -0600 (MDT)
Message-ID: <51F2A0A7.4060202@mlbassoc.com>
Date: Fri, 26 Jul 2013 10:15:35 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Build/install question
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
X-List-Received-Date: Fri, 26 Jul 2013 16:15:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

One final tidy-up for my Amanda recipe.  In do_install() I have:
     install -d -m 0777 -o amandabackup -g amandabackup ${D}/amanda
     install -d -m 0777 -o amandabackup -g amandabackup ${D}/amanda/vtapes/slot{1,2,3,4}
     install -d -m 0777 -o amandabackup -g amandabackup ${D}/amanda/holding
     install -d -m 0777 -o amandabackup -g amandabackup ${D}/amanda/state/{curinfo,log,index}

The problem I have is that /amanda and /amanda/holding end up with
the correct file owner/group, but the others (anything that has
multiple names) end up being owned by 'root'. When I install my package,
I get this on the target:
    # ls -lR /amanda/
    /amanda/:
    total 3
    drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 holding
    drwxr-xr-x 5 root         root         1024 Jul 26 15:44 state
    drwxr-xr-x 6 root         root         1024 Jul 26 15:44 vtapes

    /amanda/holding:
    total 0

    /amanda/state:
    total 3
    drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 curinfo
    drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 index
    drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 log

    /amanda/state/curinfo:
    total 0

    /amanda/state/index:
    total 0

    /amanda/state/log:
    total 0

    /amanda/vtapes:
    total 4
    drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 slot1
    drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 slot2
    drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 slot3
    drwxr-xr-x 2 amandabackup amandabackup 1024 Jul 26  2013 slot4

    /amanda/vtapes/slot1:
    total 0

    /amanda/vtapes/slot2:
    total 0

    /amanda/vtapes/slot3:
    total 0

    /amanda/vtapes/slot4:
    total 0

Is this to be expected, or is it a bug?  If so, where do I look
and/or report it?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

