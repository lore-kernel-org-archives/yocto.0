Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66FF2E00D05; Fri, 28 Jul 2017 00:37:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 202 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Jul 2017 00:37:43 PDT
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6C00E00CEF
	for <yocto@yoctoproject.org>; Fri, 28 Jul 2017 00:37:43 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v6S7YDGM005804
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Fri, 28 Jul 2017 08:34:14 +0100
Message-ID: <1501227253.22282.177.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jacob Chen <jacobchen110@gmail.com>, yocto@yoctoproject.org,
	ed.bartosh@linux.intel.com
Date: Fri, 28 Jul 2017 08:34:13 +0100
In-Reply-To: <CAFLEztQDBvr0iDvBhC6xCqvs=0nUrVk8wSrZ8ndebyBOxPjpDg@mail.gmail.com>
References: <CAFLEztQDBvr0iDvBhC6xCqvs=0nUrVk8wSrZ8ndebyBOxPjpDg@mail.gmail.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.11
	(dan.rpsys.net [192.168.3.1]);
	Fri, 28 Jul 2017 08:34:14 +0100 (BST)
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: localhost toaster faild after commit 4602408c6
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
X-List-Received-Date: Fri, 28 Jul 2017 07:37:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-07-28 at 14:48 +0800, Jacob Chen wrote:
> Hi,
> 
> I have use a localhost toaster server as the CI server, and recently
> it failed to runbuild.
> 
> I try to fix it by editing
> "bitbake/lib/toaster/bldcontrol/localhostbecontroller.py", but then I
> give up, i'm not familiar with it....
> 
> Can anyone give it a fix?

I believe there is a patch on the toaster list?

Cheers,

Richard

