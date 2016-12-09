Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C0C3E00C40; Fri,  9 Dec 2016 08:03:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89746E00B57
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 08:03:25 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3tZxpv1r6Gz3hjRy;
	Fri,  9 Dec 2016 17:03:19 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3tZxpt3rLRzvxT6;
	Fri,  9 Dec 2016 17:03:18 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id 6E9wRcyc7cln; Fri,  9 Dec 2016 17:03:16 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Fri,  9 Dec 2016 17:03:16 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id C360B4540332;
	Fri,  9 Dec 2016 17:02:33 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id WPcVW_964wlk; Fri,  9 Dec 2016 17:02:29 +0100 (CET)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id 750D74540034;
	Fri,  9 Dec 2016 17:02:28 +0100 (CET)
To: Patrick Ohly <patrick.ohly@intel.com>, Stefano Babic <sbabic@denx.de>,
	Kristian Amlie <kristian.amlie@mender.io>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
	<1481017522.17535.38.camel@intel.com>
	<8e1fdcb8-d9fb-0e51-2e21-91e7e7c6f450@linux.intel.com>
	<c3ce9528-f2eb-dd3f-cc68-331435aeda35@balister.org>
	<16ca1a50-f46a-196f-66b8-91f0d14f59c2@denx.de>
	<1481296433.17535.170.camel@intel.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <4515f6e0-a99b-09ae-e233-786ceed4847d@denx.de>
Date: Fri, 9 Dec 2016 17:03:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <1481296433.17535.170.camel@intel.com>
Cc: "Lopez, Mariano" <mariano.lopez@intel.com>, yocto@yoctoproject.org,
	=?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>
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
X-List-Received-Date: Fri, 09 Dec 2016 16:03:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi Patrick,

On 09/12/2016 16:13, Patrick Ohly wrote:
> Hello everyone!
> 
> Thanks for contributing directly to the page. It's great to see this
> done collaboratively.
> 
> On Tue, 2016-12-06 at 23:38 +0100, Stefano Babic wrote:
>> Hi Philip,
>>
>> On 06/12/2016 19:45, Philip Balister wrote:
>>> On 12/06/2016 06:11 AM, Lopez, Mariano wrote:
>>>> I agree with you, that we need to have a section per project, the table
>>>> is too limiting.
>>>
>>> I just skimmed the page and the table format isn't working well with the
>>> length of the blocks of text.
>>>
>>
>> Agree - I think it is better to have a section per project.
> 
> That always has been the goal, and I now updated the page accordingly.

Page is really better now :-)

> I
> tried to summarize the key aspects of each mechanism in the table
> itself. That's something that I haven't seen elsewhere and something
> that the page can  I tried to be as fair and objective as possible,
> please shout if I messed something up or you don't agree with my
> summary.
> 
> In particular the "complexity" column is a bit subjective. Stefano, I
> hope you don't mind that I did not quite buy the "easy to use"
> characterization of swupdate ;-)

No worry...and I have not written myself. It was inserted by Mariano, so
it looks like that swupdate at least for Mariano is "easy to use".
I think it is correct to point out that customization is required.

> For a system that is as flexible as
> swupdate, I'd expect a more difficult learning curve and some need to
> customize the system before using it, so I added a "(but requires
> customization!?)" comment to that statement.

Agree.

> 
> Kristian, I added a comment that Mender requires U-Boot. That is
> correct, isn't it? I understand that this restriction allows you to
> implement things like automatic rollback, but it's worth mentioning that
> this comes with that limitation.

Best regards,
Stefano

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

