Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BF11E0027F
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 08:33:08 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id EDD1BF811F7; Thu,  6 Sep 2012 09:33:07 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 821DAF811EF;
	Thu,  6 Sep 2012 09:33:07 -0600 (MDT)
Message-ID: <5048C246.4090807@mlbassoc.com>
Date: Thu, 06 Sep 2012 09:33:26 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1CA12C40-FBBD-4CC7-B45A-5867AB64490A@gmail.com>
	<4865264.UZoJkHz8Ho@helios>
	<FA3A0E24-467D-45F1-9809-BED60472FB8C@gmail.com>
	<2515670.URCovxJbBq@helios>
In-Reply-To: <2515670.URCovxJbBq@helios>
Subject: Re: Procedure to setup icecc for performing a distributed build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Sep 2012 15:33:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-09-06 09:29, Paul Eggleton wrote:
> On Thursday 06 September 2012 19:23:53 Elvis Dowson wrote:
>> Unfortunately no. I've got two machines, both with quad-core intel i7
>> processors, but I just couldn't get icecc to work with yocto. I end up
>> regularly perform fresh builds at least 5 to 6 times a day, and it takes me
>> 2 hours to build core-image-minimal.
>
> At its core, icecc.bbclass just sets things up so that icecc is called instead
> of the normal compiler. It would be worth verifying that that is actually
> taking effect by looking at the commands being used as reported in
> log.do_configure for specific recipes.

Is this only for the host compiler or the target (cross) compilers as well?
If it's only the host compiler being used for "native" builds, how much is
there to be gained from distributing the work?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

