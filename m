Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B186AE00DAB; Sun,  4 Sep 2016 15:18:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E892E00CE9
	for <yocto@yoctoproject.org>; Sun,  4 Sep 2016 15:18:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u84MIKXd030730; Sun, 4 Sep 2016 23:18:20 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id rAR7ZLQIIcYr; Sun,  4 Sep 2016 23:18:20 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u84MIJCp030727
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Sun, 4 Sep 2016 23:18:20 +0100
Message-ID: <1473027499.20226.7.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Daniel." <danielhilst@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sun, 04 Sep 2016 23:18:19 +0100
In-Reply-To: <CAF3SDA7xnKy6nGNqzzOcp+nwERrT522OdZVUnaFqyjhR9y3_ng@mail.gmail.com>
References: <CAF3SDA7xnKy6nGNqzzOcp+nwERrT522OdZVUnaFqyjhR9y3_ng@mail.gmail.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
Subject: Re: libSegFault.so crashing on Daisy
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
X-List-Received-Date: Sun, 04 Sep 2016 22:18:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-09-02 at 16:36 -0300, Daniel. wrote:
> Hi everybody,
> 
> I was trying to use libSegFault.so to capture stacktraces but the
> libSegFault it self is crashing? Can someone try to reproduce this?
> 
> 1) Install libc6-dbg. This will give you access to libSegFault.so at
> /lib/.debug/libSegFault.so
> 2) Set LD_PRELOAD: export LD_PRELOAD=/lib/.debug/libSegFault.so
> 3) Running any executable results in a crash for me :/

I suspect you want a /lib/libSegFault.so rather than the file in a
.debug directory since the .debug version is just the debug symbols.
Try the libsegfault package itself?

Cheers,

Richard

