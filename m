Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D33BE0127D
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 01:33:18 -0800 (PST)
Received: from [192.168.0.51] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 79FF327497
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 09:13:41 +0000 (GMT)
Message-ID: <4F2663B6.1030801@communistcode.co.uk>
Date: Mon, 30 Jan 2012 09:32:38 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAFZh4h_X5Ub+et3R68K1z3wvYpcZxdAv2mf2tQV6HtiWp7xNqw@mail.gmail.com>
	<4F201635.7090505@communistcode.co.uk>
	<CAFZh4h8nrZMK7mQeMBZOv8Y2+VkqsbE1EV0fVM3_G_MTKVyojQ@mail.gmail.com>
	<CAEsOVNfPSCTTyVDmmOfqF52FXoWajDZtY-n9MNq0mVn+kUw_wg@mail.gmail.com>
In-Reply-To: <CAEsOVNfPSCTTyVDmmOfqF52FXoWajDZtY-n9MNq0mVn+kUw_wg@mail.gmail.com>
Subject: Re: Is there a recipe for evtest package?
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
X-List-Received-Date: Mon, 30 Jan 2012 09:33:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 28/01/12 02:16, McClintock Matthew-B29882 wrote:
> On Wed, Jan 25, 2012 at 7:36 AM, Brian Hutchinson<b.hutchman@gmail.com>  wrote:
>> On Wed, Jan 25, 2012 at 9:48 AM, Jack Mitchell<ml@communistcode.co.uk>  wrote:
>>> Hi Brian,
>>>
>>> Your best bet is to adapt the one from meta-oe here:
>>>
>>> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/evtest
>> Hi Jack,
>>
>> I'm still trying to get up-to-speed on how to work with Yocto ....
>> would adding this layer be just like adding say poky extras?
> Yes, although other issues can present itself. If you start using
> meta-oe you need to make sure you pick one that is compatible with
> your oe-core layer.
>
> -M

Just to wrap this up, I was suggesting he take a single recipe from 
meta-oe, bring it into his own layer and adapt it to fit the Yocto build 
environment.

I would be interested to know, how Yocto and OE are working together. Is 
the aim of the game to merge features upstream to OE and then on the 
back of that packages in meta-oe will be easier to transfer into a Yocto 
layer? I try to keep on top of the OE mailing lists but as I'm sure you 
know they're much higher volume than this list and are often solely 
patch based rather than discussion.

Cheers,
Jack.

