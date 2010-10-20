Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 02C744C80121
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 19:08:29 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Oct 2010 17:08:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,353,1283756400"; d="scan'208";a="618382188"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 19 Oct 2010 17:08:10 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 20 Oct 2010 08:08:09 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 20 Oct 2010 08:08:08 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Joshua Lock <josh@linux.intel.com>, "Wold, Saul" <saul.wold@intel.com>
Date: Wed, 20 Oct 2010 08:08:06 +0800
Thread-Topic: [yocto] Call for help for demo UPNP media renderer
Thread-Index: Actv6m3GdLYa6dDtQ86TQZjvqcBsuwAADmUQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504CF2575B60@shsmsx502.ccr.corp.intel.com>
References: <1287522903.24666.5.camel@scimitar> <4CBE0E4A.1050208@intel.com>
	<1287533087.2283.5.camel@scimitar>
In-Reply-To: <1287533087.2283.5.camel@scimitar>
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
X-List-Received-Date: Wed, 20 Oct 2010 00:08:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Joshua Lock
>Sent: Wednesday, October 20, 2010 8:05 AM
>
>On Tue, 2010-10-19 at 14:31 -0700, Saul Wold wrote:
>>
>> Dongxiao,
>>
>> Can you take a look at this since you have worked with the gstreamer?
>
>I did a sloppy job pushing my changes when leaving the office but think
>I have replicated most/all of the in the josh/demo branch.
>
>I also took a look through the rygel code to see what gstreamer elements
>are explicitly being used, I've created a list and tried to ensure as
>many as possible of them are in the IMAGE_INSTALL list for
>poky-image-rygel, adding them to the RDEPENDS for rygel doesn't appear
>to have included them in the image I just created...
>
>Full list of names of pipeline elements I found in the rygel code
>follows:
>
>decodebin2, videorate, videoscale, ffmpegcolorspace, ffenc_wmv1,
>twolame, lame, mp3parse, ffenc_wmav2, convert-sink-pad,
>ffenc_mpeg2video, audio-src-pad, audio-sink-pad, audio-enc-sink-pad,
>sink, mpegtsmux, audioconvert, audioresample, audiorate, capsfilter,
>audiotestsrc, videotestsrc, ffmux_asf

Have all of above elements already enabled in your branch, or is it still
in progress to follow up?

Is it a separate issue from segfault or related in your gut-feeling?

Thanks
Kevin

>
>Cheers,
>Joshua
>
>>
>> Thanks
>>     Sau!
>>
>>
>> On 10/19/2010 02:15 PM, Joshua Lock wrote:
>> > Hi all,
>> >
>> > I've packaged Rygel, a upnp media server and renderer, to use as the
>> > media renderer in the upnp demo. However I'm seeing a segfault at laun=
ch
>> > and as it's getting late here I'm wondering if someone in a strategic
>> > timezone can help debug while I cycle home and sleep.
>> >
>> > The (ugly) recipes are in the josh/demo branch of the meta-demo
>> > repository.
>> >
>> > rygel --gst-debug-level=3D5
>> >
>> > shows plenty of output, but nothing that jumps out to a gstreamer newb
>> > like me. AFAICT I have all of the plugins required but it's possible w=
e
>> > need to add more.
>> >
>> > If not I'll pick it up again in the morning.
>> >
>> > Thanks,
>> > Joshua
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.pokylinux.org/listinfo/yocto
>
>--
>Joshua Lock
>        Intel Open Source Technology Centre
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.pokylinux.org/listinfo/yocto

