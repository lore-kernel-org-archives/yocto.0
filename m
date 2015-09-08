Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90DAEE00B19; Tue,  8 Sep 2015 05:52:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D877E00A3B
	for <yocto@yoctoproject.org>; Tue,  8 Sep 2015 05:52:06 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 5130AF811DD; Tue,  8 Sep 2015 06:52:05 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CF8E7F811DD;
	Tue,  8 Sep 2015 06:52:04 -0600 (MDT)
To: Vivek Per <pervivek@gmail.com>
References: <CALLyC8S3eegCzqCiZk3+e0H2fdrLoJZbxkG6=jis7E45L4DMvQ@mail.gmail.com>
	<55EED365.3020809@mlbassoc.com>
	<CALLyC8SKe937onNKJwX9Zmc65FO0DqM10krLFyThXRZYBw7WGg@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <55EEDA34.2080403@mlbassoc.com>
Date: Tue, 8 Sep 2015 06:53:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CALLyC8SKe937onNKJwX9Zmc65FO0DqM10krLFyThXRZYBw7WGg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: do_unpack task getting failed when tar files are added to download directory manually
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
X-List-Received-Date: Tue, 08 Sep 2015 12:52:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-09-08 06:47, Vivek Per wrote:
> Hi Gary Thomas,

Please keep replies on the mailing list so that all may benefit.

>
> I am getting this error
>
> ERROR: Function failed: Unpack failure for URL: 'http://vlan.sourcearchive.com/downloadss/1.9-3ubuntu9/vlan_1.9.orig.tar.gz'. Unpack command
> PATH="/data/work/vivek/yocto/poky/ossdk/poky/scripts:/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-linux-linux-gnueabi:/data/work/vivek/yocto/poky/build/tmp/sysroots/iukram/usr/bin/crossscripts:/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/sbin:/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/bin:/data/work/vivek/yocto/poky/ossdk/poky/scripts:/data/work/vivek/yocto/poky/ossdk/poky/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
> tar xz --no-same-owner -f /data/work/vivek/yocto/poky/downloads/vlan_1.9.orig.tar.gz failed with return value 2
> Log data follows:
> | DEBUG: Executing python function do_unpack
> | DEBUG: Executing python function base_do_unpack
> | NOTE: Unpacking /data/work/vivek/yocto/poky/downloads/vlan_1.9.orig.tar.gz to /data/work/vivek/yocto/poky/build/tmp/work/cortexa8t2hf-vfp-neon-linux-linux-gnueabi/vlan/1.9-r0/
> |
> | gzip: stdin: unexpected end of file
> | tar: Child returned status 1
> | tar: Error is not recoverable: exiting now

Have you tried unpacking _exactly_ this file by hand?  It looks to be damaged.

> | DEBUG: Python function base_do_unpack finished
> | DEBUG: Python function do_unpack finished
> | ERROR: Function failed: Unpack failure for URL: 'http://vlan.sourcearchive.com/downloadss/1.9-3ubuntu9/vlan_1.9.orig.tar.gz'. Unpack command
> PATH="/data/work/vivek/yocto/poky/ossdk/poky/scripts:/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-linux-linux-gnueabi:/data/work/vivek/yocto/poky/build/tmp/sysroots/iukram/usr/bin/crossscripts:/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/sbin:/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin:/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/sbin:/data/work/vivek/yocto/poky/build/tmp/sysroots/x86_64-linux/bin:/data/work/vivek/yocto/poky/ossdk/poky/scripts:/data/work/vivek/yocto/poky/ossdk/poky/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
> tar xz --no-same-owner -f /data/work/vivek/yocto/poky/downloads/vlan_1.9.orig.tar.gz failed with return value 2
> ERROR: Task 0 (/data/work/vivek/yocto/poky/ossdk/openembedded/meta-networking/recipes-connectivity/vlan/vlan_1.9.bb <http://vlan_1.9.bb>, do_unpack) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 361 tasks of which 359 didn't need to be rerun and 1 failed.
> No currently running tasks (361 of 372)
>
> Summary: 1 task failed:
>    /data/work/vivek/yocto/poky/ossdk/openembedded/meta-networking/recipes-connectivity/vlan/vlan_1.9.bb <http://vlan_1.9.bb>, do_unpack
> Summary: There were 2 WARNING messages shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> Thanks and regards
>      vivek
>
> On Tue, Sep 8, 2015 at 5:54 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     On 2015-09-08 06:10, Vivek Per wrote:
>
>         Hi,
>         I want to build vlan_1.9.bb <http://vlan_1.9.bb> <http://vlan_1.9.bb> (open-embedded recipe) in my system . I downloaded vlan_1.9.orig.tar.gz tarball manually (same version
>         specified in recipe) and
>         placed in download (DL_DIR) directory and created an empty vlan_1.9.orig.tar.gz.done in download directory and try to *bitbake vlan*. It is giving error while do_unpack
>         task and
>         vlan_1.9.orig.tar.gz.lock file is getting created in download directory(DL_DIR). I can able to build other yocto recipes normally like this but i am facing problem with
>         open-embedded recipes only .I have added open-embedded path in bblayers.conf file. Can any one please tell me how can i make this file get included from download directory.
>
>
>     What is the exact error message you are getting?
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

