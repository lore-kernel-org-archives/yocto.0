Return-Path: <stefan@herbrechtsmeier.net>
Received: from dd19416.kasserver.com (dd19416.kasserver.com [85.13.139.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70527E007DC
	for <yocto@yoctoproject.org>; Tue, 24 Dec 2013 01:49:22 -0800 (PST)
Received: from [192.168.1.100] (blfd-4d08612c.pool.mediaWays.net [77.8.97.44])
	by dd19416.kasserver.com (Postfix) with ESMTPSA id 8CFD81840EE4
	for <yocto@yoctoproject.org>; Tue, 24 Dec 2013 10:49:20 +0100 (CET)
Message-ID: <52B9589E.6040009@herbrechtsmeier.net>
Date: Tue, 24 Dec 2013 10:49:18 +0100
From: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <l9a7ft$2rm$1@ger.gmane.org> <1775123.hQ8z5s0CFj@helios>
In-Reply-To: <1775123.hQ8z5s0CFj@helios>
Subject: Re: u-boot 2013.10 LIC_FILES_CHKSUM points to an invalid file
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
X-List-Received-Date: Tue, 24 Dec 2013 09:49:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Am 23.12.2013 21:56, schrieb Paul Eggleton:
> Hi Robert,
>
> On Monday 23 December 2013 22:47:00 Robert Berger wrote:
>> I try to build instead of u-boot v2013.07 [1] the latest and greatest
>> released version i.e. v2013.10[2].
>>
>> ... which does not build because LIC_FILES_CHKSUM points to an invalid
>> file ...
>>
>> ... and yes it does, since the COPYING file is gone ...
>>
>> The licencense info is contained in the source code itself as
>> SPDX-License-Identifiers.
> Hmm, I'm not sure upstream should really have removed it, but I guess it's up
> to them...
The project switch to the Software Package Data Exchange (SPDX) and move 
the license information in a Licenses directory.


