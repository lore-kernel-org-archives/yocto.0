Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC17AE00A26; Fri,  3 Mar 2017 07:32:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B26DE00867
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 07:32:25 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3vZY8R39ZPz3hjc1;
	Fri,  3 Mar 2017 16:32:22 +0100 (CET)
Received: from localhost (dynscan01.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3vZY8Q3Fwyzvkrx;
	Fri,  3 Mar 2017 16:32:22 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan01.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id bDOaRVXpKeQ7; Fri,  3 Mar 2017 16:32:20 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Fri,  3 Mar 2017 16:32:20 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id E62844540595;
	Fri,  3 Mar 2017 16:31:58 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id TnFo_hFWrHJB; Fri,  3 Mar 2017 16:31:55 +0100 (CET)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id 90D8A45403A1;
	Fri,  3 Mar 2017 16:31:54 +0100 (CET)
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Andy Pont <andy.pont@sdcsystems.com>
References: <alpine.LFD.2.20.1703030819430.10734@uk63952.mitel.com>
	<CAJTo0LaNo5inrbahsW9suovVtP3F2xD28h_Bnbw24sokqOSZ0w@mail.gmail.com>
	<00b801d29425$cfb126c0$6f137440$@sdcsystems.com>
	<alpine.LFD.2.20.1703030902230.11821@uk63952.mitel.com>
	<00cc01d2942a$8eb416f0$ac1c44d0$@sdcsystems.com>
	<alpine.LFD.2.20.1703030940230.12202@uk63952.mitel.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <b79f62a3-075d-864d-2afe-67ea67e2eaec@denx.de>
Date: Fri, 3 Mar 2017 16:32:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1703030940230.12202@uk63952.mitel.com>
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: any rumblings about a newer YP powerpc reference board than mpc8315e-rdb?
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
X-List-Received-Date: Fri, 03 Mar 2017 15:32:29 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hi Robert,

On 03/03/2017 15:53, Robert P. J. Day wrote:
> On Fri, 3 Mar 2017, Andy Pont wrote:
> 
>> Robert wrote...
>>
>>>> I would look at one of the P10xx series QorIQ boards.  Digi-Key list
>>>> the P1021RDB-PC-ND and P1024RDB-PA-ND as being active parts which
>>>> are either single or dual e500 cores.
>>>
>>>   i would start with the machine definition files in the meta-fsl-ppc
>>> layer:
>>>
>>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/conf/machine
>>>
>>> and see what looks promising. however, IIRC, one of the properties of
>>> a YP reference board is that it shouldn't be stupid, crazy expensive,
>>> no? so anything climbing above $500 (USD) might not be an option.
>>> people used to spending $60 for a beaglebone black might have a
>>> seizure to suddenly realize they need $500 for a powerpc reference
>>> board.
>>
>> Using Digi-Key UK as my reference, they list the MPC8308-RDB-ND and
>> MPC8313E-RDBC-ND as being available for less than £250 which makes
>> them sub $300 which is probably the best price I have seen for Power
>> Architecture reference boards.
>>
>> Granted, they are still more expensive than a BBB, RPi or something
>> like that but cheap compared to >$2,000 reference boards we used to
>> have to buy in the old days!
> 
>   in canada, distributors are charging over $400 (CAD) for either of
> those, which you'd normally think would be outside the bounds for a YP
> reference board, but it may be that that's what you have to accept for
> even an inexpensive PPC dev kit.
> 
>   a better question is, what PPC platform are people working with
> these days? it seems pointless to select an older technology just
> because it's cheaper, only to have no one buy it because it's useless.
> so who out there is working with powerpc, and what PPC platform would
> have enough general interest that it would be worth making the YP
> reference board?
> 

One more question is regarding the EOL of some of these processors.
P1010/14 reaches EOL next year, P1021/23 in two years. It should be also
avoided to take a board that has a very short life time. The MPC8313
reached EOL last year :-(.

>   or, perhaps (god forbid) there's no actual point in even *having* a
> powerpc reference board?

IMHO it was always a good point for me to have a reference for e500. I
mainly had projects with P202x, QorIQ.

Best regards,
Stefano

-- 
Meet DENX at the Embedded World Trade Show
14 Mar - 16 Mar 2017, Nuremberg Trade Fair Centre, Hall 4, Booth 581
--
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

