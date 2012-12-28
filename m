Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2831E002AB
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2012 01:37:15 -0800 (PST)
Message-ID: <50DD66CB.4040407@communistcode.co.uk>
Date: Fri, 28 Dec 2012 09:30:51 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAOkC3RaLxgZVNQOB_-o-HKJ=CiS_J8whpAF6gZzk+pYuhoCz=w@mail.gmail.com>
	<20121221182320.0698db75@eb-e6520>
	<CAOkC3RZmx1ph=LKk2n9_oFAD=PjfbG6KCscQheAcRUigOuXiKA@mail.gmail.com>
	<CAOkC3RYPbP=rH-zr9J-vVzWUp9baEzWe=MX7m-+FOjVWhXsg+g@mail.gmail.com>
In-Reply-To: <CAOkC3RYPbP=rH-zr9J-vVzWUp9baEzWe=MX7m-+FOjVWhXsg+g@mail.gmail.com>
Subject: Re: [meta-freescale] hiawatha-8.6 using Yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Dec 2012 09:37:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 12/28/12 06:30, GOPIKRISHNAN S wrote:
> I am getting some errors while building hiawatha(using recipe from 
> openembedded). In investigation I found all return \type and parameter 
> type seems to be same & in all /usr/include/*.h files in declared as 
> extern was added before to make it visible in global. I wonder no 
> problem was not raised while compiling for my host platform (Debian 6 
> on x86), and getting problem only doing it for my freescale board
>
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:39:5: 
> error: conflictin
> g types for 'unsetenv'
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/include/stdlib.h:589:12: 
> note: previous declaration of 'unsetenv' was her
> e
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:49:6: 
> error: conflictin
> g types for 'clearenv'
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/include/stdlib.h:596:12: 
> note: previous declaration of 'clearenv' was her
> e
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:39:5: 
> error: conflictin
> g types for 'unsetenv'
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/include/stdlib.h:589:12: 
> note: previous declaration of 'unsetenv' was her
> e
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c: 
> In function 'strcasecm
> p':/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:49:6: 
> error: conflic
> ting types for 'clearenv'
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/include/stdlib.h:596:12: 
> note: previous declaration of 'clearenv' was her
> e
>
>
[snip]

I build Hiawatha regularly for ARM on x86_64 and have encountered no 
issues like the one you have found. Could you check the following for me 
please:

1) Are you using the latest oe-core
2) Have you changed the recipe in anyway
3) What architecture are you building for

If you satisfy all of these then I would suggest you drop Hugo and email 
who is the Hiawatha developer, his email can be found on the Hiawatha 
website. He is fairly friendly and usually responds to querys quickly.

Regards,
Jack.

