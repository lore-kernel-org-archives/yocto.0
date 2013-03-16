Return-Path: <insop.song@gmail.com>
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FEB1E01439;
	Sat, 16 Mar 2013 03:16:21 -0700 (PDT)
Received: by mail-qa0-f45.google.com with SMTP id g10so790237qah.18
	for <multiple recipients>; Sat, 16 Mar 2013 03:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=U/sXAhURWft9yKclHMY3t5HTcHMZYn/i0mlXxb96mDo=;
	b=fzXEjI6wandJDHPX2d1b3EJv6ssX5ypRpNp6JoXkthX6R3TL+lnVVG4bBWbQWuPTNZ
	8J5TSC8fqLmUDXl/dEW/d2AQjOAu6OthPM6y7yuqX7/9+ZiOP+0r5bwNEaspLKkhheQU
	fhcoFAjIX2XvE+7BoGOFkGt6zjiXKZ3ftbQziHAMxzWtizgWbVEWcXKajviHe81tIU4F
	oOUyn7zXdPFGRgKXW5OyGn6OI5zoQ6vdjPtWtUMGB1Gkpsep3r3BuwZwqJv3MVfwBjGe
	6AlhRMmmmmQ7mHvPwdYMj2+ViTw4mF25Kx+Vz5xp5fXL56dcTGjjRQY5MzkDSIg02SFC
	3TEw==
X-Received: by 10.224.149.69 with SMTP id s5mr10443270qav.56.1363428980686;
	Sat, 16 Mar 2013 03:16:20 -0700 (PDT)
Received: from sputnik.gateway.2wire.net
	(76-218-13-253.lightspeed.sntcca.sbcglobal.net. [76.218.13.253])
	by mx.google.com with ESMTPS id et9sm11955534qab.9.2013.03.16.03.16.17
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 16 Mar 2013 03:16:19 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
To: insop.song@gmail.com, bruce.ashfield@gmail.com, dvhart@linux.intel.com,
	linux-yocto@yoctoproject.org, yocto@yoctoproject.org
Date: Sat, 16 Mar 2013 03:16:10 -0700
Message-Id: <cover.1363428594.git.insop.song@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <insop.song@gmail.com>
References: <insop.song@gmail.com>
Subject: [PATCH 0/1] [meta-realtime] Add rt-app, schedtool, define core-image-realtime, and append recipies-kernel
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
X-List-Received-Date: Sat, 16 Mar 2013 10:16:21 -0000

meta-realtime layer for testing sched_deadline and other real-time applications

Add rt-app, schedtool, define core-image-realtime, and append recipies-kernel

*applications tested are shown below:

1. rt-app
- "rt-app" is a test application that starts multiple periodic threads
  in order to simulate a real-time periodic load

- run example

  root@qemux86:~# rt-app -t 100000:35000:d -D 1
  [rt-app] <notice> [0] Using SCHED_DEADLINE policy:
  [rt-app] <notice> [0] starting thread with period: 100000, exec:
  35000,deadline: 100000, priority: 10
  [rt-app] <notice> [0] Locking pages in memory
  idx	period	min_et	max_et	rel_st	start		end
  deadline	dur.	slack	Budget	Used Budget
  0	100000	35000	35000	64705	305724113	305759126
  305824105	35013	64979
  ...
  0	100000	35000	35000	965099	306624507	306659526
  306724105	35019	64578
  [rt-app] <notice> [0] Exiting.

2. schedtool
- scheduler test tool
- run example
  root@qemux86:~# schedtool -E -t 10000:100000 -a 0 -e yes > /dev/null&
  root@qemux86:~# schedtool -E -t 30000:100000 -a 0 -e yes > /dev/null&
  root@qemux86:~# jobs
  [1]-  Running                 schedtool -E -t 10000:100000 -a 0 -e yes
  > /dev/null &
  [2]+  Running                 schedtool -E -t 30000:100000 -a 0 -e yes
  > /dev/null &

  $ top
  Mem: 33616K used, 84308K free, 0K shrd, 2684K buff, 13904K cached
  CPU:  37% usr   5% sys   0% nic  56% idle   0% io   0% irq   0% sirq
  Load average: 911.65 428.84 84.32 35501/62 715
  PID  PPID USER     STAT   VSZ %VSZ %CPU COMMAND
  714   688 root     R     2352   2%  28% yes
  713   688 root     R     2352   2%   9% yes
  715   688 root     R     2724   2%   4% top

Insop Song (1):
  Add rt-app, schedtool, define core-image-realtime, and append
    recipies-kernel

 recipes-extended/images/core-image-realtime.bb     |   12 +++++++++
 recipes-kernel/linux/linux-yocto_3.8.bbappend      |    9 +++++++
 ...adline-as-a-default-to-go-around-yocto-bu.patch |   26 ++++++++++++++++++
 recipes-tools/rt-app/rt-app.bb                     |   28 ++++++++++++++++++++
 recipes-tools/schedtool-dl/schedtool-dl.bb         |   23 ++++++++++++++++
 5 files changed, 98 insertions(+)
 create mode 100644 recipes-extended/images/core-image-realtime.bb
 create mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend
 create mode 100644 recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch
 create mode 100644 recipes-tools/rt-app/rt-app.bb
 create mode 100644 recipes-tools/schedtool-dl/schedtool-dl.bb

-- 
1.7.9.5


