Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26499E00C09; Thu,  3 Nov 2016 05:59:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D66EFE00BB0
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 05:59:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 7174212AECC;
	Thu,  3 Nov 2016 13:59:39 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 9X2OcYSs4SCr; Thu,  3 Nov 2016 13:59:17 +0100 (CET)
Received: from whisper.local (541CD0EC.cm-5-5d.dynamic.ziggo.nl
	[84.28.208.236]) (Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id 9A42412AD13;
	Thu,  3 Nov 2016 13:59:17 +0100 (CET)
To: Joshua Lock <joshua.g.lock@linux.intel.com>,
	"Burton, Ross" <ross.burton@intel.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
	<21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
	<CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
	<1478081125.22552.6.camel@linux.intel.com>
	<0627d708-e6f4-df7e-5653-2e8ae1008d1b@basmevissen.nl>
	<1478122306.22552.59.camel@linux.intel.com>
	<1478169252.31055.5.camel@linux.intel.com>
From: Bas Mevissen <abuse@basmevissen.nl>
Message-ID: <8cf56f7e-f7d2-564f-db4c-ab4bbdab799b@basmevissen.nl>
Date: Thu, 3 Nov 2016 13:59:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <1478169252.31055.5.camel@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Thu, 03 Nov 2016 12:59:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/11/16 11:34, Joshua Lock wrote:
> Not to worry, I used a CentOS container to test this myself:
>
> # lsb_release -ir
> Distributor ID: CentOS
> Release:        7.2.1511
>

I got the same result.

> The problem is that we check multiple sources for a distro's name,
> favouring the output of lsb_release -ir.
>
> If you have lsb_release available your system is reported as CentOS,
> otherwise we fall back to reading os-release or redhat-release and get
> CentOSLinux.
>

It appears that I got lsb_release on my CentOS host by installing the 
Google Chrome RPM, which required lsb >= 4.0.

> I've filed a bug to track this issue:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=10591
>

Thanks, tracking it.

-- 
Bas.

