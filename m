Return-Path: <stefan@herbrechtsmeier.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 430FDE00D9E; Wed, 21 Aug 2019 12:25:01 -0700 (PDT)
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
Received: from dd41138.kasserver.com (dd41138.kasserver.com [85.13.157.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E27DEE00D98
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2019 12:24:59 -0700 (PDT)
Received: from [192.168.178.29] (i59F77EFE.versanet.de [89.247.126.254])
	by dd41138.kasserver.com (Postfix) with ESMTPSA id 7992811A0072;
	Wed, 21 Aug 2019 21:24:58 +0200 (CEST)
To: Jonas Andersson <jonaskgandersson@gmail.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <CAKpuFdcoJr0c5fjCweYmkHxp1ap4Y7OpRvop4QF-6LORb3=_UA@mail.gmail.com>
From: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
Message-ID: <6583e8cf-ad27-f1d4-153c-cfc875fc59e8@herbrechtsmeier.net>
Date: Wed, 21 Aug 2019 21:24:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKpuFdcoJr0c5fjCweYmkHxp1ap4Y7OpRvop4QF-6LORb3=_UA@mail.gmail.com>
Subject: Re: npm nodejs
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
X-List-Received-Date: Wed, 21 Aug 2019 19:25:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Jonas,

Am 21.08.19 um 14:55 schrieb Jonas Andersson:
> I have used Yocto and npm/nodejs now for about 1 year and think it works 
> but I not without some extra work. Are there any group working on 
> npm/nodejs? As I use it quite frequent and puts some extra work every 
> time i create an recipe I have some interest in supporting the work on 
> npm/nodejs to make it an better experience.
> 
> I thinks It quite hard to follow all the npm/nodejs parts of 
> Yocto(devtool, fetcher and meta-oe/../nodejs), I get the feeling that 
> all parts not are in sync.

I have start reworking the nodejs support but haven't the time to finish it.

I have remove the use of the bitbake npm fetcher. I create a recipe per 
npm package major version. Thereby the recipe downloads the npm archive 
via https, extract it to /usr/lib/node_modules/name-major and creates 
links for the dependency packages and binaries. This avoids duplicated 
npm packages and allows a per package optimization like the remove of 
scripts, tests and documentations. Furthermore I can patch npm packages 
to use dynamic linking or build native packages.

I have add a new plugin to the recipetool which creates a recipe from a 
npm package. It extract the license, dependencies and binaries from the 
package.json. Thereby the dependencies string is parsed and translated 
into a <package name>-<major version> or <package name>-0.<minor 
version> if major version is below 0. I assume that I can ignore the 
minor and patch version number and always use the latest compatible version.

On top of recipetool I have a script with creates a recipe for a npm 
package and all its dependencies.


Regards
   Stefan

