Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FE08E00C4F; Mon,  5 Dec 2016 03:12:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 801C0E00A39
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 03:12:51 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 76DAB68A01C; Mon,  5 Dec 2016 11:12:49 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 7847668A019;
	Mon,  5 Dec 2016 11:12:49 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 0257C67404A2;
	Mon,  5 Dec 2016 12:12:48 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <46bab4e1-e552-12b4-5847-daeeaf93099a@mlbassoc.com>
Date: Mon, 5 Dec 2016 12:12:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
Subject: [meta-raspberrypi] X11 failure
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
X-List-Received-Date: Mon, 05 Dec 2016 11:12:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

With the latest Poky+RaspberryPi master branches, I get no X11
meta              = "fix-kern-tools-native:9e63f81c78e284c9b325fe04a1b59e61c7ad8a1a"
meta-raspberrypi  = "master:44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9"

When I boot (or restart X), I get this:

   Couldn't open libGL.so.1: libGL.so.1: cannot open shared object file: No such file or directory

Indeed, the screen is only black (the mouse pointer is there and moves, but there are no windows)

I looked around and there is no libGL.so.1, just v2:

root@raspberrypi3:~# ls -l /usr/lib/libGL*
lrwxrwxrwx    1 root     root            14 Dec  2 05:17 /usr/lib/libGLESv2.so -> libGLESv2.so.2
lrwxrwxrwx    1 root     root            18 Dec  2 05:17 /usr/lib/libGLESv2.so.2 -> libGLESv2.so.2.0.0
-rwxr-xr-x    1 root     root         80048 Dec  2 05:17 /usr/lib/libGLESv2.so.2.0.0

What do I need to do to get libGL v1 so X11 will work again?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

