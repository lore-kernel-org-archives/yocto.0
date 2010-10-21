Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD6CE4C80054
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 08:14:17 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Oct 2010 06:14:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,217,1286175600"; d="scan'208";a="338782678"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 21 Oct 2010 06:14:16 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 21 Oct 2010 21:14:15 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 21 Oct 2010 21:14:15 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 21 Oct 2010 21:14:14 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Joshua Lock <josh@linux.intel.com>
Date: Thu, 21 Oct 2010 21:14:12 +0800
Thread-Topic: [yocto] UPnP demo - call for testing
Thread-Index: ActxDcsqlY794Y3lT+KOhtu0XICUsAAE5ZWQ
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D9D2@shsmsx501.ccr.corp.intel.com>
References: <1287595139.2635.16.camel@scimitar>
	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D63D@shsmsx501.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D7F8@shsmsx501.ccr.corp.intel.com>
	<1287658228.2325.3.camel@scimitar>
In-Reply-To: <1287658228.2325.3.camel@scimitar>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: UPnP demo - call for testing
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
X-List-Received-Date: Thu, 21 Oct 2010 13:14:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Joshua Lock wrote:
> On Thu, 2010-10-21 at 13:32 +0800, Xu, Dongxiao wrote:
>> Xu, Dongxiao wrote:
>>> I'd also like to have a try, and building the demo image now.
>>>=20
>>> Thanks,
>>> Dongxiao
>>>=20
>>> Joshua Lock wrote:
>>>> Hi all,
>>>>=20
>>>> I've successfully tested the UPnP demo in my office but would
>>>> appreciate someone else taking a bash.
>>>>=20
>>>> Unfortunately you currently need my branch from poky-contrib
>>>> (josh/demo) and the corresponding branch from meta-demo
>>>> (josh/demo).=20
>>>>=20
>>>> The renderer and controller are installed together in the
>>>> poky-image-rygel image (I've been using the -live variant).
>>>>=20
>>>> I needed to use amixer to enable the soundcard and increase the
>>>> volume on the netbook I was using.
>>>>=20
>>>> "amixer set Master on
>>>>  amixer set Master 75"
>>>>=20
>>>> Run rygel from a terminal and launch gupnp-av-cp and you should be
>>>> able to set play music from a content store on the device. I
>>>> haven't tested video...
>>=20
>> I just setup the environment and gupnp-av-cp could play music from
>> another host within the network. However it seems that video doesn't
>> work yet. Does gupnp-av-cp supports video play?
>=20
> Thanks for testing this Dongxiao!
>=20
> I'm not sure whether video is required for the demo, but it should be
> supported by gupnp-av-cp and Rygel so long as required gstreamer
> plugins are installed. What type of video where you trying to play? =20

I played OGG format video which should be supported. I saw the progress bar=
 is moving, showing that the video is playing, however there is no video sc=
reen...

>=20
> To clarify did you test the josh/demo or master branch of the
> meta-demo repository?=20

I used josh/demo branch.

Thanks,
Dongxiao

>=20
> Cheers,
> Joshua


