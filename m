Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDF82E00C51; Tue, 15 Sep 2015 06:53:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B683E00B51
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 06:53:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t8FDr5eu018664
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 15 Sep 2015 06:53:05 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.235.1; Tue, 15 Sep 2015 06:53:05 -0700
To: <andy.pont@sdcsystems.com>, <yocto@yoctoproject.org>
References: <006a01d0efa7$ed9387b0$c8ba9710$@pont@sdcsystems.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <55F822C0.8030404@windriver.com>
Date: Tue, 15 Sep 2015 08:53:04 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <006a01d0efa7$ed9387b0$c8ba9710$@pont@sdcsystems.com>
Subject: Re: Dumping sysvinit
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
X-List-Received-Date: Tue, 15 Sep 2015 13:53:08 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 9/15/15 6:16 AM, Andy Pont wrote:
> Hello,
> 
> Bit of a newbie question (probably) but what is the easiest way to dump
> sysvinit and use Busybox init in a core-image-minimal image?

It has been a while since I've done this.  But unless things have changed
dramatically.  You will need to define your own custom image.

One that does not include the sysvinit component or base initscripts.  You will
then have to provide your own base initscripts for your system to startup and
function.  (You might be able to copy some from the initscripts, but many expect
the sysvinit [or systemd] to be present on the device.)

You are moving into pure custom boot optimization and implementation at this point.

--Mark

> Thanks,
> 
> Andy.
> 
> 


