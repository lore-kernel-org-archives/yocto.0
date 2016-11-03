Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CF4BE00C59; Thu,  3 Nov 2016 07:31:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF607E00C45
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 07:31:22 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id E7C2512AEC8
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 15:31:21 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id o7L6PgLc7hyG for <yocto@yoctoproject.org>;
	Thu,  3 Nov 2016 15:31:03 +0100 (CET)
Received: from whisper.local (541CD0EC.cm-5-5d.dynamic.ziggo.nl
	[84.28.208.236]) (Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id DB26012AE90
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 15:31:03 +0100 (CET)
To: yocto@yoctoproject.org
References: <d3a15e96-ecd8-50c5-65e2-c13937d101ee@mlbassoc.com>
From: Bas Mevissen <abuse@basmevissen.nl>
Message-ID: <729c1b8b-4ca2-cce8-c614-aed6f107fc9b@basmevissen.nl>
Date: Thu, 3 Nov 2016 15:31:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <d3a15e96-ecd8-50c5-65e2-c13937d101ee@mlbassoc.com>
Subject: Re: Shallow git clones?
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
X-List-Received-Date: Thu, 03 Nov 2016 14:31:27 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/11/16 14:06, Gary Thomas wrote:
> I recall seeing some discussion in the past about using shallow
> GIT clones when importing repositories?  Is this ever going to
> happen?
>
> The reason I ask is that I routinely save the GIT tarballs and
> some of them are obscenely obese :-(  The worst of the bunch
> is the device firmware for the RaspberryPi (as of today):
>   -rw-rw-r-- 1 gthomas gthomas 6321877646 Nov  3 12:13
> git2_github.com.raspberrypi.firmware.git.tar.gz
>

On the OE-Core mailing list, there is currently a case of downloading 
600MB for gdb alone... I think this concern applies to Yocto and 
OpenEmbedded as a whole.

Cheers,

Bas.

