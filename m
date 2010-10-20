Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 499164C80121
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 19:30:46 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Oct 2010 17:30:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,353,1283756400"; d="scan'208";a="618387463"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 19 Oct 2010 17:30:44 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 20 Oct 2010 08:30:41 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 20 Oct 2010 08:30:40 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Joshua Lock <josh@linux.intel.com>
Date: Wed, 20 Oct 2010 08:30:38 +0800
Thread-Topic: [yocto] Call for help for demo UPNP media renderer
Thread-Index: Actv7RoOLerMc14AQ2SnjkQ3ietJGQAAA9Cw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504CF2575B86@shsmsx502.ccr.corp.intel.com>
References: <1287522903.24666.5.camel@scimitar>	<4CBE0E4A.1050208@intel.com>
	<1287533087.2283.5.camel@scimitar>	<1287533773.2283.10.camel@scimitar>
	<4CBE3693.2070808@linux.intel.com>
In-Reply-To: <4CBE3693.2070808@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 20 Oct 2010 00:30:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Darren Hart
>Sent: Wednesday, October 20, 2010 8:24 AM
>
>On 10/19/2010 05:16 PM, Joshua Lock wrote:
>> On Wed, 2010-10-20 at 01:04 +0100, Joshua Lock wrote:
>>> On Tue, 2010-10-19 at 14:31 -0700, Saul Wold wrote:
>>>>
>>>> Dongxiao,
>>>>
>>>> Can you take a look at this since you have worked with the gstreamer?
>>>
>>> I did a sloppy job pushing my changes when leaving the office but think
>>> I have replicated most/all of the in the josh/demo branch.
>>>
>>> I also took a look through the rygel code to see what gstreamer element=
s
>>> are explicitly being used, I've created a list and tried to ensure as
>>> many as possible of them are in the IMAGE_INSTALL list for
>>> poky-image-rygel, adding them to the RDEPENDS for rygel doesn't appear
>>> to have included them in the image I just created...
>>>
>>> Full list of names of pipeline elements I found in the rygel code
>>> follows:
>>>
>>> decodebin2, videorate, videoscale, ffmpegcolorspace, ffenc_wmv1,
>>> twolame, lame, mp3parse, ffenc_wmav2, convert-sink-pad,
>>> ffenc_mpeg2video, audio-src-pad, audio-sink-pad, audio-enc-sink-pad,
>>> sink, mpegtsmux, audioconvert, audioresample, audiorate, capsfilter,
>>> audiotestsrc, videotestsrc, ffmux_asf
>>>
>>
>> The image I just built with my latest changes in josh/demo worked!?!
>> Rygel did not segfault :-)
>>
>> If you have time Dongxiao (or anyone else) I'd appreciate if you could
>> double-check my changes (my install_append in rygel to create a .config
>> isn't working, so you'll need to do that manually and run
>> rygel-preferences to disable the tracker plugin).
>> If you could test using Rygel as a renderer for some content served by
>> the mediatomb image, that would be much appreciated. You'll want
>> gupnp-av-cp as provided by gupnp-tools to control the renderer and
>> content server.
>
>It is my udnerstanding that we plan to run both the renderer and the
>gupnp-av-cp on each "player". That is an ARM BeagleBoard and a PowerPC
>*unknown* board. Each will have a suitable display. Is this your
>understanding/intention?
>

I guess Josh may go to bed now. :-)

btw, Darren, do we have to use real boards for the exercise? We don't have
those boards in PRC. Any limitations to use Qemu environments as the altern=
ative
in our side?

Also it'd be great if we have a detail list for demo steps. Is it included =
in the
demo branch?

Thanks
Kevin

