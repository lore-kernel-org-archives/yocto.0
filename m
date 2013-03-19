Return-Path: <insop.song@gmail.com>
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB47DE0147E;
	Tue, 19 Mar 2013 04:14:28 -0700 (PDT)
Received: by mail-oa0-f43.google.com with SMTP id l10so301564oag.16
	for <multiple recipients>; Tue, 19 Mar 2013 04:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=sTHpV+M2O1rR2EOilljQmypOIz3VTqua5Ba/vA7l2xk=;
	b=aNPMI25tiTgKTiqilJ+/CVNZKwpylDDIiaAcUw6MyDw9nUa2K50hZjFfHje1uzB7fq
	DGrSVXQmFuAxP88b2yzK6U17iMHftiC/3LxUbgcjoxLBbMq5mWgdVHDA8Byn1Q34SBAm
	Y4SFCXCaQiekmVTElqu3qPrrYX7QWDfNvXJz3UrfoWT0pIWskzZC/KhSsi/9mgWBygTp
	UeAZ+Riem4XBF404bYE0YFfkiKncwcYcWdXm3Q9jf1aDBv6o3ctiWH9UYetMxeyMo2jv
	XlGwKAyJTU2j8enhCKHktIsqXDbAAKg3EwqU8qEzye+h7OkSPjbTOvfkDeGlervtQFuh
	fr+g==
X-Received: by 10.60.5.165 with SMTP id t5mr950196oet.117.1363691668234;
	Tue, 19 Mar 2013 04:14:28 -0700 (PDT)
Received: from sputnik.gateway.2wire.net
	(76-218-13-253.lightspeed.sntcca.sbcglobal.net. [76.218.13.253])
	by mx.google.com with ESMTPS id ek4sm10610631obc.6.2013.03.19.04.14.25
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 19 Mar 2013 04:14:26 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
To: insop.song@gmail.com, bruce.ashfield@gmail.com, dvhart@linux.intel.com,
	linux-yocto@yoctoproject.org, yocto@yoctoproject.org
Date: Tue, 19 Mar 2013 04:14:19 -0700
Message-Id: <cover.1363691191.git.insop.song@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <insop.song@gmail.com>
References: <insop.song@gmail.com>
Subject: [meta-realtime][PATCH 0/1] create a script directory and add a script to run test program and collect data
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
X-List-Received-Date: Tue, 19 Mar 2013 11:14:29 -0000


    create a script directory and add a script to run test program and
    collect data

    - test scripts will help to run and collect the data, automate the test and re-producible by others
    
    - run_rt-app.py runs rt-app on the target machine and collects the
      output log to host
    
    - how to run:
    $ fab -f run_rt-app.py run_app
    
    Note: requires fabric (python program) on the host

--------------
Run example
--------------


 $ fab -f run_rt-app.py run_app
[root@192.168.1.78] Executing task 'run_app'

===========================================================
1. Conecting remote : root@192.168.1.78
===========================================================

running script on host [fri2], OS[Linux fri2 3.8.1-yocto-standard #1 SMP PREEMPT Sat Mar 16 03:20:59 PDT 2013 i686 GNU/Linux]

===========================================================
2. Running rt-app 1 times..
===========================================================

[root@192.168.1.78] run: echo "test log (period = 100000, execution time 20000) run 1 times on each 10 sec 

" > /home/root/rt-app_run_log-2013-03-19-03-52.txt
[root@192.168.1.78] run: /usr/bin/rt-app -t 100000:20000:d -D 10 >> /home/root/rt-app_run_log-2013-03-19-03-52.txt
[root@192.168.1.78] out: [rt-app] <notice> [0] Using SCHED_DEADLINE policy:
[root@192.168.1.78] out: [rt-app] <notice> [0] starting thread with period: 100000, exec: 20000,deadline: 100000, priority: 10
[root@192.168.1.78] out: [rt-app] <notice> [0] Locking pages in memory
[root@192.168.1.78] out: [rt-app] <notice> [0] Exiting.
[root@192.168.1.78] out: 

[localhost] local: /usr/bin/scp root@192.168.1.78:/home/root/rt-app_run_log-2013-03-19-03-52.txt .
rt-app_run_log-2013-03-19-03-52.txt                                                                                                100% 7552     7.4KB/s   00:00    

==============================================================================
3. Run finished, and log file rt-app_run_log-2013-03-19-03-52.txt is copied to host.
==============================================================================


Done.
Disconnecting from root@192.168.1.78... done.


--------------
Log file output
--------------

cat /home/root/rt-app_run_log-2013-03-19-03-52.txt
test log (period = 100000, execution time 20000) run 1 times on each 10 sec 


#idx	period	min_et	max_et	rel_st	start		end		deadline	dur.	slack	Budget	Used Budget
0	100000	20000	20000	33061	1859244267	1859264275	1859344264	20008	79989
0	100000	20000	20000	133176	1859344382	1859364389	1859444264	20007	79876
0	100000	20000	20000	233177	1859444383	1859464391	1859544264	20009	79873
0	100000	20000	20000	333174	1859544380	1859564389	1859644264	20009	79875
0	100000	20000	20000	433186	1859644392	1859664402	1859744264	20010	79862
...
0	100000	20000	20000	9533182	1868744388	1868764398	1868844264	20009	79867
0	100000	20000	20000	9633185	1868844391	1868864400	1868944264	20010	79864
0	100000	20000	20000	9733182	1868944388	1868964398	1869044264	20010	79867
0	100000	20000	20000	9833141	1869044347	1869064356	1869144264	20009	79908
0	100000	20000	20000	9933162	1869144368	1869164375	1869244264	20007	79889
$

Insop Song (1):
  create a script directory and add a script to run test program and   
     collect data

 docs/00-INDEX         |    4 +--
 docs/00-README        |    6 ++--
 scripts/README        |    1 +
 scripts/run_rt-app.py |   88 +++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 94 insertions(+), 5 deletions(-)
 create mode 100644 scripts/README
 create mode 100644 scripts/run_rt-app.py

-- 
1.7.9.5


