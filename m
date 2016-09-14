Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70AB8E009C9; Wed, 14 Sep 2016 02:02:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EB0AE009B8
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 02:02:31 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id DD57668A01C; Wed, 14 Sep 2016 10:02:29 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 9316A68A019;
	Wed, 14 Sep 2016 10:02:29 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 4AD8F6740346;
	Wed, 14 Sep 2016 11:02:29 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <d53dce10-2665-20e3-cf39-2addb85e7e28@mlbassoc.com>
Date: Wed, 14 Sep 2016 11:02:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
Subject: [meta-raspberrypi] Schizophrenic build
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
X-List-Received-Date: Wed, 14 Sep 2016 09:02:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I just built for my shiny new RaspberryPi-3 and noticed this:
   $ ls -l tmp/work
   total 32
   drwxrwxr-x  13 gthomas gthomas  4096 Sep 13 05:40 all-amltd-linux
   drwxrwxr-x   3 gthomas gthomas  4096 Sep 13 05:36 all-amltd-linux-gnueabi
   drwxrwxr-x 271 gthomas gthomas 12288 Sep 13 09:20 cortexa7hf-neon-vfpv4-amltd-linux-gnueabi
   drwxrwxr-x   3 gthomas gthomas  4096 Sep 13 05:31 cortexa7t2hf-neon-vfpv4-amltd-linux-gnueabi
   drwxrwxr-x  20 gthomas gthomas  4096 Sep 13 18:42 raspberrypi3-amltd-linux-gnueabi
   drwxrwxr-x 145 gthomas gthomas  4096 Sep 13 07:05 x86_64-linux

Interestingly, the cortexa7t2hf-neon-vfpv4-amltd-linux-gnueabi tree [currently]
only contains webkitgtk (which currently isn't building, under investigation).

Any idea why this split?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

