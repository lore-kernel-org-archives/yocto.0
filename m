Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 110A5E009AD; Wed, 22 Feb 2017 07:29:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 161 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Feb 2017 07:29:51 PST
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D33D0E0098A
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 07:29:51 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	v1MFR6XW020263; Wed, 22 Feb 2017 15:27:06 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id rPTbfayEBU8f; Wed, 22 Feb 2017 15:27:06 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	v1MFQvTj020249
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 22 Feb 2017 15:27:01 GMT
Message-ID: <1487777217.29224.2.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Pepe Perez <pp.perez@yahoo.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 22 Feb 2017 07:26:57 -0800
In-Reply-To: <1595002721.1496048.1487658650023@mail.yahoo.com>
References: <1595002721.1496048.1487658650023.ref@mail.yahoo.com>
	<1595002721.1496048.1487658650023@mail.yahoo.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.1 
Mime-Version: 1.0
Subject: Re: task is executed even when sstate-cache md5 matches
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
X-List-Received-Date: Wed, 22 Feb 2017 15:29:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2017-02-21 at 06:30 +0000, Pepe Perez wrote:
> I have following siginfo packages:
> 
> Generated in my build sstate-cache
> build/sstate-cache/be/sstate:proc-
> fifo::1.0.3:r1::3:be9c419f0caa05042d43c03d576d2e15_fetch.tgz.siginfo
> 
> Previously existing in my build SSTATE_MIRRORS:
> /central/sstate-cache/be/sstate:proc-
> fifo::1.0.3:r1::3:be9c419f0caa05042d43c03d576d2e15_fetch.tgz.siginfo
> 
> I had many other targets where setscene was successful and no task
> was executed. Why fetch is executed in the target above, if md5 is a
> match?

do_fetch is not an sstate task and there is no ".tgz" file, only a
siginfo file which is data about how the checksum is constructed and
for debugging of other sstate checksums. Pulling the downloads from a
download mirror would likely be just as successful as it would be if
do_fetch were an sstate task.

Cheers,

Richard

