Return-Path: <lukas@htc-linux.org>
Received: from edison.awellconnected.net (edison.awellconnected.net
	[83.167.180.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F991E011C6
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 04:36:09 -0700 (PDT)
Received: from nrbg-4d05769a.pool.mediaways.net ([77.5.118.154]
	helo=[192.168.1.33])
	by edison.awellconnected.net with esmtpa (Exim 4.69)
	(envelope-from <lukas@htc-linux.org>) id 1QvpH0-0004cw-Fu
	for yocto@yoctoproject.org; Tue, 23 Aug 2011 12:36:02 +0100
From: Lukas-David Gorris <lukas@htc-linux.org>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 13:34:30 +0200
Message-ID: <1314099270.12908.5.camel@laptop>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.3 
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - edison.awellconnected.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - htc-linux.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: bitbake: pause build ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Aug 2011 11:36:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

While in the process of compiling a large image I had to do some cpu/mem
intensive stuff on the build machine. Usually I would just cancel the
build, letting the running tasks finish and then start the build again
when done. This works well but the downside is that unnecessary log data
will show and that the metadata will have to be parsed again when you
start over.

So I thought why not add a 'pause mode' to bitbake ?

Best,

Lukas


