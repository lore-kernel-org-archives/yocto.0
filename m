Return-Path: <stefan@herbrechtsmeier.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 116C4E00D9F; Fri,  4 Oct 2019 00:00:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [85.13.157.12 listed in list.dnswl.org]
X-Greylist: delayed 433 seconds by postgrey-1.32 at yocto-www;
	Fri, 04 Oct 2019 00:00:25 PDT
Received: from dd41138.kasserver.com (dd41138.kasserver.com [85.13.157.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE888E00AB6
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2019 00:00:25 -0700 (PDT)
Received: from [192.168.178.37] (i59F77ED3.versanet.de [89.247.126.211])
	by dd41138.kasserver.com (Postfix) with ESMTPSA id 2169D11A06BC
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2019 08:53:10 +0200 (CEST)
To: yocto@yoctoproject.org
References: <1078346093.8578188.1570117048745.JavaMail.zimbra@savoirfairelinux.com>
From: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
Message-ID: <51c5973e-2c1a-f212-f963-9a2b321f480d@herbrechtsmeier.net>
Date: Fri, 4 Oct 2019 08:53:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1078346093.8578188.1570117048745.JavaMail.zimbra@savoirfairelinux.com>
Subject: Re: [npm] duplicate code
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
X-List-Received-Date: Fri, 04 Oct 2019 07:00:28 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Jean-Marie,

what work do you plan to do on npm and recipetool?

I have start to rework the complete npm integration to synchronize it 
with other languages like python. I replace the bitbake npm fetch with 
the wget fetcher and download the npm tgz files direct. The idea is to 
handle every package as a separate recipe and move the package 
dependencies into the recipes. Therefore I parse the package.json and 
the npm server json to create a recipe.

Regards
   Stefan


Am 03.10.19 um 17:37 schrieb Jean-marie Lemetayer:
> Hi all,
> 
> I am planning to do some work on npm and recipetool.
> 
> I have seen that there is some duplicate code between bitbake/lib/bb/fetch2/npm.py and scripts/lib/recipetool/create_npm.py but there is some inconsistencies.
> 
> Here is an example, the _parse_view() function which I patched recently has differ:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetch2/npm.py#n157
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/lib/recipetool/create_npm.py#n244
> 
> I think merging this "npm utility functions" is a good idea. But where ?
> 
> I think about creating a new file: bitbake/lib/bb/npm_utils.py
> 
> Or maybe use the existing bitbake/lib/bb/utils.py ?
> 
> What do you think ?
> 
> 
> Jean-Marie LEMETAYER
> Enthusiast embedded systems engineer
> Savoir-faire Linux
> 


