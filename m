Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D7E744C801BF
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 02:24:18 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Oct 2010 00:24:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,354,1283756400"; d="scan'208";a="849004936"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 20 Oct 2010 00:24:16 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 20 Oct 2010 15:23:35 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 20 Oct 2010 15:23:34 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 20 Oct 2010 15:23:33 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Joshua Lock <josh@linux.intel.com>
Date: Wed, 20 Oct 2010 15:23:32 +0800
Thread-Topic: [yocto] Call for help for demo UPNP media renderer
Thread-Index: ActwJwcmjZO7gLu1Q4G+wR4BjeTJKAAAFQgg
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D416@shsmsx501.ccr.corp.intel.com>
References: <1287522903.24666.5.camel@scimitar> <4CBE0E4A.1050208@intel.com>
	<1287533087.2283.5.camel@scimitar> <1287533773.2283.10.camel@scimitar>
	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D0F8@shsmsx501.ccr.corp.intel.com>
	<1287537197.26874.226.camel@elmorro>
	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D144@shsmsx501.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D2C6@shsmsx501.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D378@shsmsx501.ccr.corp.intel.com>
	<1287559110.2268.1.camel@scimitar>
In-Reply-To: <1287559110.2268.1.camel@scimitar>
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
X-List-Received-Date: Wed, 20 Oct 2010 07:24:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Joshua Lock wrote:
> On Wed, 2010-10-20 at 14:07 +0800, Xu, Dongxiao wrote:
>> Hi Josh,
>>=20
>> Today I took a glance at the rygel crash issue in poky. Though I
>> didn't get the root cause, I found when configure Tracker plugin into
>> rygel, the segmentation fault will happen. Since we have already
>> configured the media-export plugin, and tracker plugin plays the same
>> role, I think we can simply disable tracker plugin (by configure time
>> or change by rygel-preferences) for demo usage.
>=20
> Yes, I thought I mentioned disabling the tracker plugin in an earlier
> mail? I'll prepare a patch to the recipe to disable that so we don't
> have to remember to do that by hand. =20

Ah, oops. I didn't read your previous mail carefully...
But luckily it didn't cost too much time. :-)

Thanks,
Dongxiao

>=20
> Cheers,
> Joshua
>=20
>>=20
>> Thanks,
>> Dongxiao
>>=20
>> Xu, Dongxiao wrote:
>>> I just built out the poky-image-rygel image with your meta-demo
>>> layer, and run=20
>>>=20
>>> rygel --gst-debug-level=3D5
>>>=20
>>> I still saw it "segmentation fault" in the last...
>>>=20
>>> I am looking into it.
>>>=20
>>> Thanks,
>>> Dongxiao
>>>=20
>>> Xu, Dongxiao wrote:
>>>> Zanussi, Tom wrote:
>>>>> On Tue, 2010-10-19 at 17:40 -0700, Xu, Dongxiao wrote:
>>>>>> Joshua Lock wrote:
>>>>>>> On Wed, 2010-10-20 at 01:04 +0100, Joshua Lock wrote:
>>>>>>>> On Tue, 2010-10-19 at 14:31 -0700, Saul Wold wrote:
>>>>>>>>>=20
>>>>>>>>> Dongxiao,
>>>>>>>>>=20
>>>>>>>>> Can you take a look at this since you have worked with the
>>>>>>>>> gstreamer?
>>>>>>>>=20
>>>>>>>> I did a sloppy job pushing my changes when leaving the office
>>>>>>>> but think I have replicated most/all of the in the josh/demo
>>>>>>>> branch.=20
>>>>>>>>=20
>>>>>>>> I also took a look through the rygel code to see what gstreamer
>>>>>>>> elements are explicitly being used, I've created a list and
>>>>>>>> tried to ensure as many as possible of them are in the
>>>>>>>> IMAGE_INSTALL list for poky-image-rygel, adding them to the
>>>>>>>> RDEPENDS for rygel doesn't appear to have included them in the
>>>>>>>> image I just created...=20
>>>>>>>>=20
>>>>>>>> Full list of names of pipeline elements I found in the rygel
>>>>>>>> code follows:
>>>>>>>>=20
>>>>>>>> decodebin2, videorate, videoscale, ffmpegcolorspace,
>>>>>>>> ffenc_wmv1, twolame, lame, mp3parse, ffenc_wmav2,
>>>>>>>> convert-sink-pad, ffenc_mpeg2video, audio-src-pad,
>>>>>>>> audio-sink-pad, audio-enc-sink-pad, sink, mpegtsmux,
>>>>>>>> audioconvert, audioresample, audiorate, capsfilter,
>>>>>>>> audiotestsrc, videotestsrc, ffmux_asf
>>>>>>>>=20
>>>>>>>=20
>>>>>>> The image I just built with my latest changes in josh/demo
>>>>>>> worked!?! Rygel did not segfault :-)
>>>>>>>=20
>>>>>>> If you have time Dongxiao (or anyone else) I'd appreciate if you
>>>>>>> could double-check my changes (my install_append in rygel to
>>>>>>> create a .config isn't working, so you'll need to do that
>>>>>>> manually and run rygel-preferences to disable the tracker
>>>>>>> plugin). If you could test using Rygel as a renderer for some
>>>>>>> content served by the mediatomb image, that would be much
>>>>>>> appreciated. You'll want gupnp-av-cp as provided by gupnp-tools
>>>>>>> to control the renderer and content server.
>>>>>>>=20
>>>>>>> Thanks,
>>>>>>> Joshua
>>>>>>=20
>>>>>> I will try your branch, however I didn't find josh/demo in
>>>>>> poky-contrib. Is it reside in other place?
>>>>>>=20
>>>>>=20
>>>>> It should be here:
>>>>>=20
>>>>> ssh://git@git.pokylinux.org/meta-demo.git
>>>>>=20
>>>>> Tom
>>>>=20
>>>> Got it, thanks!
>>>>=20
>>>> Dongxiao
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.pokylinux.org/listinfo/yocto


