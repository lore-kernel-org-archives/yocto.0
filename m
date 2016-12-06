Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBCD0E00C75; Tue,  6 Dec 2016 01:08:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 370 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Dec 2016 01:08:02 PST
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31643E00C59
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 01:08:02 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3tXwbw5GYQz3hjYD;
	Tue,  6 Dec 2016 10:01:48 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3tXwbw4VgDzvl7r;
	Tue,  6 Dec 2016 10:01:48 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id Ao3UmfjXGA7k; Tue,  6 Dec 2016 10:01:42 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Tue,  6 Dec 2016 10:01:31 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id AA5AE45405F1;
	Tue,  6 Dec 2016 10:00:54 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id OEmlSZ_W4Buw; Tue,  6 Dec 2016 10:00:50 +0100 (CET)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id AEB0D45404A3;
	Tue,  6 Dec 2016 10:00:50 +0100 (CET)
To: Patrick Ohly <patrick.ohly@intel.com>, =?UTF-8?Q?Andr=c3=a9_Draszik?=
	<git@andred.net>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
Date: Tue, 6 Dec 2016 10:01:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <1480517999.6873.298.camel@intel.com>
Cc: yocto@yoctoproject.org, "Lopez, Mariano" <mariano.lopez@intel.com>
Subject: Re: update mechanisms
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
X-List-Received-Date: Tue, 06 Dec 2016 09:08:05 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi Patrick,

On 30/11/2016 15:59, Patrick Ohly wrote:
> On Wed, 2016-11-30 at 14:31 +0000, André Draszik wrote:
>> On Wed, 2016-11-30 at 12:04 +0100, Patrick Ohly wrote:
>>> On Mon, 2016-11-21 at 12:03 +0000, André Draszik wrote:
>>>> This allows us to completely remove the build time
>>>> depenency on libcheck when not needed, reducing
>>>> overall build time, and in addition tests can be
>>>> converted into a PACKAGECONFIG to enable them if
>>>> needed.
>>>
>>> +1
>>>
>>> Sorry for the delay, I had to check with Joshua first who's going to
>>> merge your patches. I'm currently working on a major update of
>>> meta-swupd (see https://github.com/ostroproject/ostro-os/pull/198) and
>>> if there's enough interest for using it as part of Yocto, might continue
>>> maintaining it.
>>
>> Thanks Patrick. Are you saying you would otherwise abandon meta-swupd
>> completely, or have it be a part of ostro-os only?
> 
> That's undecided. We are currently trying to figure out which update
> mechanism is a good fit for Yocto. Depending on the outcome of that and
> available resources, we may or may not have the time to support
> something.
> 
> I've started a Wiki page
> https://wiki.yoctoproject.org/wiki/System_Update - rudimentary at the
> moment, but might as well be mentioned already now.

I have seen Mariano added an entry for SWUpdate, too, thanks  - I would
like to edit for better explanation on some parts. Should I try to edit
directly the page or is it better to discuss it here ?

Regards,
Stefano

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

