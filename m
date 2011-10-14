Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53BECE01277
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2011 12:25:24 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:36845
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1REnNg-0005um-1p
	for yocto@yoctoproject.org; Fri, 14 Oct 2011 20:25:20 +0100
Message-Id: <31252427-C1DF-44EF-ADBE-F1763350A9E4@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4E9860A3.1070107@linux.intel.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 14 Oct 2011 20:25:17 +0100
References: <D03B2E35-B463-4120-8B97-D52C736B7D56@keylevel.com>
	<CAMKF1sqBeaNSGNzGK=vqr9aVG9KOq60YxuqZ1QAXaib0Wua_NA@mail.gmail.com>
	<6660D129-DDBB-4EC7-B99D-2EB728D1A00E@keylevel.com>
	<4E9860A3.1070107@linux.intel.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: Adding mp3 support to gstreamer
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
X-List-Received-Date: Fri, 14 Oct 2011 19:25:25 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 14 Oct 2011, at 17:17, Joshua Lock wrote:

> On 10/14/2011 12:18 AM, Chris Tapp wrote:
>> On 14 Oct 2011, at 01:26, Khem Raj wrote:
>>
>>> On Thu, Oct 13, 2011 at 4:36 PM, Chris Tapp  
>>> <opensource@keylevel.com>
>>> wrote:
>>>> I'm trying to add mp3 support to gstreamer.
>>>>
>>>> I've got a task that RDEPENDS on gst-meta-audio. The image produced
>>>> includes
>>>> gstreamer, as expected.
>>>>
>>>> However, there is no mp3 decoder included. I've tried setting:
>>>>
>>>> COMMERCIAL_AUDIO_PLUGINS = "gst-plugins-ugly-mad", but there was
>>>> still no
>>>> mp3 support.
>>>>
>>>> I then tried adding an RDEPENDS on gst-ffmpeg. gst-inspect -b  
>>>> showed
>>>> this as
>>>> 'blacklisted'.
>>>>
>>>> So, I then tried gst-fluendo-mp3, but I get a "nothing provides"
>>>> error at
>>>> build time.
>>>>
>>>> What do I need to do to get mp3 decoding added to the image?
>>>
>>> what does COMMERCIAL_LICENSE has in it ?
>>> You might want to see that package is part of this variable or not
>>
>> bitbake -e reports:
>>
>> COMMERCIAL_LICENSE="lame gst-fluendo-mp3 libmad mpeg2dec ffmpeg qmmp"
>
> Right, I'm struggling to find documentation further than what's in the
> code[1] and bugzilla[2] (there's probably stuff in the mail archives
> too) but, COMMERCIAL_LICENSE is a blacklist - so you have to remove
> items from that list to acknowledge that there are likely commercial
> implications of using those recipes.
>
> Furthermore, there are white lists of permitted commercially licensed
> packages, to which you need to add the output of COMMERCIAL_LICENSE
> recipes that you want to include in images (by way of appending them  
> to
> default installation targets in various recipes).
>
> COMMERCIAL_AUDIO_PLUGINS, COMMERCIAL_VIDEO_PLUGINS, and COMMERCIAL_QT
>
> Hope this helps,


It does. Thanks.

However, I'm now even more confused ;-)

I've got it working by using the gstreamer recipe from 5.0.1 (I'm  
building under 4.0.1). However, bitbake -e still reports as above and  
I can't see ffmpeg in any context other than

RECIPE_STATUS_pn-gst-ffmpeg="red".

Still, it's working :-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




