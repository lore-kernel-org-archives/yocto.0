Return-Path: <saswati.n@phytecembedded.in>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78A75C77B61
	for <webhook@archiver.kernel.org>; Thu, 13 Apr 2023 07:16:51 +0000 (UTC)
Received: from cloud1.hoststud.com (cloud1.hoststud.com [159.69.73.38])
 by mx.groups.io with SMTP id smtpd.web11.6707.1681370208144996165
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Apr 2023 00:16:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: phytecembedded.in, ip: 159.69.73.38, mailfrom: saswati.n@phytecembedded.in)
Received: from [::1] (port=28918 helo=cloud1.hoststud.com)
	by cloud1.hoststud.com with esmtpa (Exim 4.96)
	(envelope-from <saswati.n@phytecembedded.in>)
	id 1pmrCG-0035ua-1L
	for yocto@lists.yoctoproject.org;
	Thu, 13 Apr 2023 12:46:45 +0530
MIME-Version: 1.0
Date: Thu, 13 Apr 2023 12:46:42 +0530
From: saswati.n@phytecembedded.in
To: yocto@lists.yoctoproject.org
Subject: "mandatory chunk of type 'Atom' not found " "| escript: exception
 error: undefined function rebar3:main/1"
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <c12f852788a7da41800086e5cf98c7fb@phytecembedded.in>
X-Sender: saswati.n@phytecembedded.in
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cloud1.hoststud.com
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - phytecembedded.in
X-Get-Message-Sender-Via: cloud1.hoststud.com: authenticated_id: saswati.n@phytecembedded.in
X-Authenticated-Sender: cloud1.hoststud.com: saswati.n@phytecembedded.in
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Apr 2023 07:16:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59702

Hello All,

i want to add a recipe lorawan-server in my source. here i am facing 
some errors as below.
Can anyone help me out to solve these errors,

************************************************************************************************************************************
NOTE: Executing RunQueue Tasks
WARNING: lorawan-server-0.6.7-r0 do_fetch: Failed to fetch URL 
git://github.com/gotthardp/lorawan-server.git;branch=master, attempting 
MIRRORS if available
ERROR: lorawan-server-0.6.7-r0 do_compile: oe_runmake failed
ERROR: lorawan-server-0.6.7-r0 do_compile: Function failed: do_compile 
(log file is located at 
/home/saswati/rugged_board/yocto_rba5d2x/build/tmp/work/cortexa5hf-neon-poky-linux-musleabi/lorawan-server/0.6.7-r0/temp/log.do_compile.1026662)
ERROR: Logfile of failure stored in: 
/home/saswati/rugged_board/yocto_rba5d2x/build/tmp/work/cortexa5hf-neon-poky-linux-musleabi/lorawan-server/0.6.7-r0/temp/log.do_compile.1026662
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8 release
| wget https://s3.amazonaws.com/rebar3/rebar3 || curl -Lo rebar3 
https://s3.amazonaws.com/rebar3/rebar3
| --2023-04-13 06:49:35--  https://s3.amazonaws.com/rebar3/rebar3
| Resolving s3.amazonaws.com (s3.amazonaws.com)... 52.216.221.160, 
52.217.113.136, 54.231.137.64, ...
| Connecting to s3.amazonaws.com 
(s3.amazonaws.com)|52.216.221.160|:443... connected.
| HTTP request sent, awaiting response... 200 OK
| Length: 794893 (776K) [binary/octet-stream]
| Saving to: ‘rebar3’
|
|      0K .......... .......... .......... .......... ..........  6%  
109K 7s
|     50K .......... .......... .......... .......... .......... 12%  
219K 5s
|    100K .......... .......... .......... .......... .......... 19% 
42.5M 3s
|    150K .......... .......... .......... .......... .......... 25%  
435K 2s
|    200K .......... .......... .......... .......... .......... 32%  
416K 2s
|    250K .......... .......... .......... .......... .......... 38% 
10.0M 1s
|    300K .......... .......... .......... .......... .......... 45% 
12.8M 1s
|    350K .......... .......... .......... .......... .......... 51%  
502K 1s
|    400K .......... .......... .......... .......... .......... 57%  
438K 1s
|    450K .......... .......... .......... .......... .......... 64% 
41.2M 1s
|    500K .......... .......... .......... .......... .......... 70% 
3.55M 0s
|    550K .......... .......... .......... .......... .......... 77% 
23.8M 0s
|    600K .......... .......... .......... .......... .......... 83% 
44.2M 0s
|    650K .......... .......... .......... .......... .......... 90% 
26.5M 0s
|    700K .......... .......... .......... .......... .......... 96%  
529K 0s
|    750K .......... .......... ......                          100%  
370M=1.3s
|
| 2023-04-13 06:49:37 (617 KB/s) - ‘rebar3’ saved [794893/794893]
|
|
| =ERROR REPORT==== 13-Apr-2023::06:49:38 ===
| Loading of 
/home/saswati/rugged_board/yocto_rba5d2x/build/tmp/work/cortexa5hf-neon-poky-linux-musleabi/lorawan-server/0.6.7-r0/git/rebar3/rebar/ebin/rebar3.beam 
failed: badfile
|
| =ERROR REPORT==== 13-Apr-2023::06:49:38 ===
| beam/beam_load.c(1189): Error loading module rebar3:
|   mandatory chunk of type 'Atom' not found
|
|
| escript: exception error: undefined function rebar3:main/1
|   in function  escript:run/2 (escript.erl, line 757)
|   in call from escript:start/1 (escript.erl, line 277)
|   in call from init:start_it/1
|   in call from init:start_em/1
| make: *** [Makefile:35: release] Error 127
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at 
/home/saswati/rugged_board/yocto_rba5d2x/build/tmp/work/cortexa5hf-neon-poky-linux-musleabi/lorawan-server/0.6.7-r0/temp/log.do_compile.1026662)
ERROR: Task 
(/home/saswati/rugged_board/yocto_rba5d2x/sources/poky/../meta-rbgateway/recipes-example/lorawan-server/lorawan-server_0.6.7.bb:do_compile) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 622 tasks of which 607 didn't need to be 
rerun and 1 failed.

Summary: 1 task failed:
   
/home/saswati/rugged_board/yocto_rba5d2x/sources/poky/../meta-rbgateway/recipes-example/lorawan-server/lorawan-server_0.6.7.bb:do_compile
Summary: There were 8 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit 
code.
*************************************************************************************************************************************

Thank you all in advance.
Saswati

