Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C5ABE0085A; Thu, 21 Jan 2016 22:57:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA72AE007F2
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 22:57:24 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 649CF68A01D; Fri, 22 Jan 2016 06:57:22 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 419C468A01A;
	Fri, 22 Jan 2016 06:57:22 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id E42BC6741628;
	Fri, 22 Jan 2016 07:57:21 +0100 (CET)
To: yocto@yoctoproject.org
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56A1D2D1.1060305@mlbassoc.com>
Date: Fri, 22 Jan 2016 07:57:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: Fixing packaging errors
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
X-List-Received-Date: Fri, 22 Jan 2016 06:57:29 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm getting this packaging error:

ERROR: QA Issue: non -dev/-dbg/nativesdk- package contains symlink .so: graphviz path 
'work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/packages-split/graphviz/usr/lib/graphviz/libgvplugin_gd.so' 
[dev-so]

Looking at the installed image, I see:

$ ls -l tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/image/usr/lib/graphviz/
total 3016
-rwxr-xr-x 3 gthomas gthomas    1107 Jan 22 07:48 libgvplugin_core.la
lrwxrwxrwx 1 gthomas gthomas      25 Jan 22 07:48 libgvplugin_core.so -> libgvplugin_core.so.6.0.0
lrwxrwxrwx 1 gthomas gthomas      25 Jan 22 07:48 libgvplugin_core.so.6 -> libgvplugin_core.so.6.0.0
-rwxr-xr-x 1 gthomas gthomas  341780 Jan 22 07:48 libgvplugin_core.so.6.0.0
-rwxr-xr-x 3 gthomas gthomas    1143 Jan 22 07:48 libgvplugin_dot_layout.la
lrwxrwxrwx 1 gthomas gthomas      31 Jan 22 07:48 libgvplugin_dot_layout.so -> libgvplugin_dot_layout.so.6.0.0
lrwxrwxrwx 1 gthomas gthomas      31 Jan 22 07:48 libgvplugin_dot_layout.so.6 -> libgvplugin_dot_layout.so.6.0.0
-rwxr-xr-x 1 gthomas gthomas  616340 Jan 22 07:48 libgvplugin_dot_layout.so.6.0.0
-rwxr-xr-x 3 gthomas gthomas    1451 Jan 22 07:48 libgvplugin_gd.la
lrwxrwxrwx 1 gthomas gthomas      23 Jan 22 07:48 libgvplugin_gd.so -> libgvplugin_gd.so.6.0.0
lrwxrwxrwx 1 gthomas gthomas      23 Jan 22 07:48 libgvplugin_gd.so.6 -> libgvplugin_gd.so.6.0.0
-rwxr-xr-x 1 gthomas gthomas  141248 Jan 22 07:48 libgvplugin_gd.so.6.0.0
-rwxr-xr-x 3 gthomas gthomas    1155 Jan 22 07:48 libgvplugin_neato_layout.la
lrwxrwxrwx 1 gthomas gthomas      33 Jan 22 07:48 libgvplugin_neato_layout.so -> libgvplugin_neato_layout.so.6.0.0
lrwxrwxrwx 1 gthomas gthomas      33 Jan 22 07:48 libgvplugin_neato_layout.so.6 -> libgvplugin_neato_layout.so.6.0.0
-rwxr-xr-x 1 gthomas gthomas 1949008 Jan 22 07:48 libgvplugin_neato_layout.so.6.0.0
-rwxr-xr-x 3 gthomas gthomas    2504 Jan 22 07:48 libgvplugin_rsvg.la
lrwxrwxrwx 1 gthomas gthomas      25 Jan 22 07:48 libgvplugin_rsvg.so -> libgvplugin_rsvg.so.6.0.0
lrwxrwxrwx 1 gthomas gthomas      25 Jan 22 07:48 libgvplugin_rsvg.so.6 -> libgvplugin_rsvg.so.6.0.0
-rwxr-xr-x 1 gthomas gthomas   10764 Jan 22 07:48 libgvplugin_rsvg.so.6.0.0

I have two questions about this.
* What is wrong with the setup of the libgvplugin_gd library
   and how can I fix it?
* All the rest of the libraries are set up the same.  Why don't
   they get the same error?

Any pointers appreciated, thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

