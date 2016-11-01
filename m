Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FAE8E0049A; Tue,  1 Nov 2016 10:05:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96ABCE00444
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 10:05:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id B20EC12AD51
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 18:05:30 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id nJXaYyzaedbm for <yocto@yoctoproject.org>;
	Tue,  1 Nov 2016 18:05:11 +0100 (CET)
Received: from whisper.local (541CD0EC.cm-5-5d.dynamic.ziggo.nl
	[84.28.208.236]) (Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id 8284512AA59
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 18:05:11 +0100 (CET)
From: Bas Mevissen <abuse@basmevissen.nl>
To: yocto@yoctoproject.org
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
Message-ID: <21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
Date: Tue, 1 Nov 2016 18:05:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
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
X-List-Received-Date: Tue, 01 Nov 2016 17:05:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/11/16 16:27, Burton, Ross wrote:
>
> That's a mistake, I consider the whitelist assignment in poky.conf to be
> canonical and that includes 16.04.
>

What are the criteria to call a distro supported?

> Scott, can you update the list
> at http://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html#detailed-supported-distros
> so that it reflects the list in the code:
>
> SANITY_TESTED_DISTROS ?= " \
>             poky-1.8 \n \
>             poky-2.0 \n \
>             poky-2.1 \n \
>             poky-2.2 \n \
>             Ubuntu-14.04 \n \
>             Ubuntu-14.10 \n \
>             Ubuntu-15.04 \n \
>             Ubuntu-15.10 \n \
>             Ubuntu-16.04 \n \
>             Fedora-22 \n \
>             Fedora-23 \n \
>             Fedora-24 \n \

Fedora 25 should be released in two weeks time 
(https://fedoraproject.org/wiki/Releases/25/Schedule). Can it then still 
be added as a Morty supported distro version?

>             CentOSLinux-7.* \n \

I see in Poky current master when running bitbake:

WARNING: Host distribution "CentOS-7.2.1511" has not been validated with 
this version of the build system; you may possibly experience unexpected 
failures. It is recommended that you use a tested distribution.

It runs fine, but it seems to fail the distro test.

Cheers,

-- 
Bas.

-- 
Bas.

