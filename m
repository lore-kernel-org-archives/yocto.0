Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F4CE4C80121
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 19:23:47 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Oct 2010 17:23:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,353,1283756400"; d="scan'208";a="848905593"
Received: from unknown (HELO [10.255.12.104]) ([10.255.12.104])
	by fmsmga001.fm.intel.com with ESMTP; 19 Oct 2010 17:23:47 -0700
Message-ID: <4CBE3693.2070808@linux.intel.com>
Date: Tue, 19 Oct 2010 17:23:47 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.9) Gecko/20100922 Thunderbird/3.1.4
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <1287522903.24666.5.camel@scimitar>
	<4CBE0E4A.1050208@intel.com>	<1287533087.2283.5.camel@scimitar>
	<1287533773.2283.10.camel@scimitar>
In-Reply-To: <1287533773.2283.10.camel@scimitar>
Cc: yocto@yoctoproject.org
Subject: Re: Call for help for demo UPNP media renderer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Oct 2010 00:23:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/19/2010 05:16 PM, Joshua Lock wrote:
> On Wed, 2010-10-20 at 01:04 +0100, Joshua Lock wrote:
>> On Tue, 2010-10-19 at 14:31 -0700, Saul Wold wrote:
>>>
>>> Dongxiao,
>>>
>>> Can you take a look at this since you have worked with the gstreamer?
>>
>> I did a sloppy job pushing my changes when leaving the office but think
>> I have replicated most/all of the in the josh/demo branch.
>>
>> I also took a look through the rygel code to see what gstreamer elements
>> are explicitly being used, I've created a list and tried to ensure as
>> many as possible of them are in the IMAGE_INSTALL list for
>> poky-image-rygel, adding them to the RDEPENDS for rygel doesn't appear
>> to have included them in the image I just created...
>>
>> Full list of names of pipeline elements I found in the rygel code
>> follows:
>>
>> decodebin2, videorate, videoscale, ffmpegcolorspace, ffenc_wmv1,
>> twolame, lame, mp3parse, ffenc_wmav2, convert-sink-pad,
>> ffenc_mpeg2video, audio-src-pad, audio-sink-pad, audio-enc-sink-pad,
>> sink, mpegtsmux, audioconvert, audioresample, audiorate, capsfilter,
>> audiotestsrc, videotestsrc, ffmux_asf
>>
>
> The image I just built with my latest changes in josh/demo worked!?!
> Rygel did not segfault :-)
>
> If you have time Dongxiao (or anyone else) I'd appreciate if you could
> double-check my changes (my install_append in rygel to create a .config
> isn't working, so you'll need to do that manually and run
> rygel-preferences to disable the tracker plugin).
> If you could test using Rygel as a renderer for some content served by
> the mediatomb image, that would be much appreciated. You'll want
> gupnp-av-cp as provided by gupnp-tools to control the renderer and
> content server.

It is my udnerstanding that we plan to run both the renderer and the 
gupnp-av-cp on each "player". That is an ARM BeagleBoard and a PowerPC 
*unknown* board. Each will have a suitable display. Is this your 
understanding/intention?

-- 
Darren Hart
Embedded Linux Kernel

