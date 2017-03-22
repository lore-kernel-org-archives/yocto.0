Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DD58E0093F; Wed, 22 Mar 2017 02:58:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 004DAE00655
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 02:58:40 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id EF49568A01C; Wed, 22 Mar 2017 09:58:38 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 83B9768A019;
	Wed, 22 Mar 2017 09:58:38 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 05A1C67400BB;
	Wed, 22 Mar 2017 10:58:37 +0100 (CET)
To: yocto@yoctoproject.org
References: <e8ebee466331a613ef4786c7fc3c6@cweb29.nm.nhnsystem.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <aaf01457-bffd-dfc8-4ca4-2ae6da8759cb@mlbassoc.com>
Date: Wed, 22 Mar 2017 10:58:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <e8ebee466331a613ef4786c7fc3c6@cweb29.nm.nhnsystem.com>
Subject: Re: Can I change the value of D in a task?
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
X-List-Received-Date: Wed, 22 Mar 2017 09:58:43 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-03-22 09:58, 윤영석 wrote:
> Hi,
>
>
>
> I want to change the value of D in tasks, like do_install, do_compile ...
> - It is useless to change outside.

Why do you want to do this?

>
> What should I do?
>
> I tried the following but it did not work.
>
> 1.
>
> do_install () {
>     D = "<path>"
> }
>
>
>
> 2.
>
> do_install () {
>     export D = "<path>"
> }
>
>
>
> Thanks
>
>
>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

