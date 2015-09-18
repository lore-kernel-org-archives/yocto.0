Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 251E6E00DDB; Fri, 18 Sep 2015 04:30:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61A8AE00BF4
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 04:30:34 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D977AF811E0; Fri, 18 Sep 2015 05:30:33 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1E029F811E0;
	Fri, 18 Sep 2015 05:30:33 -0600 (MDT)
To: yocto@yoctoproject.org
References: <5500469A22567C4BAF673A6E86AFA3A40227C5AD19F4@IR-CENTRAL.corp.innerrange.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <55FBF5DF.6000801@mlbassoc.com>
Date: Fri, 18 Sep 2015 05:30:39 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40227C5AD19F4@IR-CENTRAL.corp.innerrange.com>
Subject: Re: Busybox hwclock.sh initscript issues
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
X-List-Received-Date: Fri, 18 Sep 2015 11:30:39 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-09-17 23:28, Craig McQueen wrote:
> I'm using Yocto dizzy. I've found a couple of issues with the Busybox hwclock.sh initscript.
>
> 1) The script checks that /sbin/hwclock exists at the start. But after that it runs hwclock without an explicit /sbin/hwclock path. So it only works if /sbin/ is in the PATH. Thus it doesn't run properly when called from e.g. cronie which doesn't run with /sbin/ in the PATH.
>
> 2) The bootmisc.sh initscript uses the time from /etc/timestamp if the hwclock time is older. That's good. But then by default, hwclock.sh runs after bootmisc.sh, and unconditionally overwrites the system time from the hwclock. So on a system without a functional hwclock, the /etc/timestamp feature basically doesn't work. One solution is modify INITSCRIPT_PARAMS_${PN}-hwclock so it doesn't run at start-up (I am doing that in a busybox bbappend).

Why do you think it doesn't work?  On a system without a
functioning hardware clock, at least the time stamp moves
forward on every boot/shutdown.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

