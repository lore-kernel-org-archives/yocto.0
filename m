Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98005E006E9; Tue,  1 Nov 2016 14:37:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F972E0049B
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 14:37:07 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 7DC8412ADB8;
	Tue,  1 Nov 2016 22:37:05 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id h8bcaAHTDNMA; Tue,  1 Nov 2016 22:36:46 +0100 (CET)
Received: from whisper.local (541CD0EC.cm-5-5d.dynamic.ziggo.nl
	[84.28.208.236]) (Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id 9E31512AB2F;
	Tue,  1 Nov 2016 22:36:46 +0100 (CET)
To: "Burton, Ross" <ross.burton@intel.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
	<21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
	<CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
From: Bas Mevissen <abuse@basmevissen.nl>
Message-ID: <307cf616-d7a0-be5b-1aa9-4b12f3c9abb0@basmevissen.nl>
Date: Tue, 1 Nov 2016 22:36:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
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
X-List-Received-Date: Tue, 01 Nov 2016 21:37:11 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/11/16 18:11, Burton, Ross wrote:
>
> On 1 November 2016 at 17:05, Bas Mevissen <abuse@basmevissen.nl
> <mailto:abuse@basmevissen.nl>> wrote:
>
>     What are the criteria to call a distro supported?
>
> The short version is that it's a distro that doesn't change too much, is
> still supported, and we have builders on autobuilder.yoctoproject.org
> <http://autobuilder.yoctoproject.org> running that distro.
>

OK, clear. However, the "still supported" part would exclude older 
Fedora releases, even while perfectly usable for Yocto.

> The Centos mismatch is annoying, can you please file a bug?
>

Done: https://bugzilla.yoctoproject.org/show_bug.cgi?id=10577

> Of course this is just a notice and you're entirely welcome to ignore
> it,

It is not really bothering me, but it might be for a novice user or 
someone wanting to run official, central builds on a Centos 7.x host.

> or even set SANITY_TESTED_DISTROS to "" if you're using poky.
>

I added that in the bug report as a side note to add that as a comment 
to poky.conf.

Regards,

-- 
Bas.

