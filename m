Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CC31E00C19; Tue,  6 Dec 2016 14:38:37 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 232FBE00BC0
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 14:38:33 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3tYGkD1lrxz3hj1D;
	Tue,  6 Dec 2016 23:38:28 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3tYGkD0p9yzvlVY;
	Tue,  6 Dec 2016 23:38:28 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id 0phhpNodWrJS; Tue,  6 Dec 2016 23:38:26 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Tue,  6 Dec 2016 23:38:25 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 980E945404A3;
	Tue,  6 Dec 2016 23:37:48 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id dYEIg8cw-Nqt; Tue,  6 Dec 2016 23:37:45 +0100 (CET)
Received: from [192.168.178.166] (stefano-MacBookPro.fritz.box
	[192.168.178.166])
	by babic.homelinux.org (Postfix) with ESMTPS id E1E12454025B;
	Tue,  6 Dec 2016 23:37:44 +0100 (CET)
To: Philip Balister <philip@balister.org>,
	"Lopez, Mariano" <mariano.lopez@linux.intel.com>,
	Patrick Ohly <patrick.ohly@intel.com>, Stefano Babic <sbabic@denx.de>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
	<1481017522.17535.38.camel@intel.com>
	<8e1fdcb8-d9fb-0e51-2e21-91e7e7c6f450@linux.intel.com>
	<c3ce9528-f2eb-dd3f-cc68-331435aeda35@balister.org>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <16ca1a50-f46a-196f-66b8-91f0d14f59c2@denx.de>
Date: Tue, 6 Dec 2016 23:38:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <c3ce9528-f2eb-dd3f-cc68-331435aeda35@balister.org>
Cc: =?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>, "Lopez,
	Mariano" <mariano.lopez@intel.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 06 Dec 2016 22:38:37 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Philip,

On 06/12/2016 19:45, Philip Balister wrote:
> On 12/06/2016 06:11 AM, Lopez, Mariano wrote:
>>
>>
>> On 12/6/2016 3:45 AM, Patrick Ohly wrote:
>>> On Tue, 2016-12-06 at 10:01 +0100, Stefano Babic wrote:
>>>> Hi Patrick,
>>>>
>>>> On 30/11/2016 15:59, Patrick Ohly wrote:
>>>>> I've started a Wiki page
>>>>> https://wiki.yoctoproject.org/wiki/System_Update - rudimentary at the
>>>>> moment, but might as well be mentioned already now.
>>>> I have seen Mariano added an entry for SWUpdate, too, thanks  - I would
>>>> like to edit for better explanation on some parts. Should I try to edit
>>>> directly the page or is it better to discuss it here ?
>>
>> It will be interesting to have your input directly, I tried to fill the
>> table with my experience with SWUpdate but I think you could give a
>> better insight of this. Thanks for joining the effort.
>>
>>> Use your own judgment. If its uncontroversial, the feel free to edit the
>>> page directly, otherwise let's discuss it here.
>>>
>>> If feel that putting information directly into the table is too limiting
>>> (it should be brief), then feel free to start a complete section about
>>> SWUpdate.
>>>
>>> I'll do the same for swupd. Editing the sections should be possible
>>> without conflicts, we just have to be more careful about editing the
>>> table concurrently.
>>>
>>
>> I agree with you, that we need to have a section per project, the table
>> is too limiting.
> 
> I just skimmed the page and the table format isn't working well with the
> length of the blocks of text.
> 

Agree - I think it is better to have a section per project.

> I'd also suggest referencing Matt Porter's talk from ELCE 2016 about
> software update technology:
> 
> http://elinux.org/images/3/31/Comparison_of_Linux_Software_Update_Technologies.pdf
> 
> https://youtu.be/pdHV9H9nZks?list=PLbzoR-pLrL6pRFP6SOywVJWdEHlmQE51q
> 

I have added references to the talks at last ELCE from Matt, Chris and
Silvano.

Stefano


-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

