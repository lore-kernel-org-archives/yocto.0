Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A6BE84C80121
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 18:56:23 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Oct 2010 16:56:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,353,1283756400"; d="scan'208";a="668972982"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 19 Oct 2010 16:56:22 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 20 Oct 2010 07:56:21 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 20 Oct 2010 07:56:20 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Joshua Lock <josh@linux.intel.com>, "Wold, Saul" <saul.wold@intel.com>
Date: Wed, 20 Oct 2010 07:56:16 +0800
Thread-Topic: [yocto] Call for help for demo UPNP media renderer
Thread-Index: Actv3iQ+ed7eiq56TaqTY5fFVYz2vwACtiNQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504CF2575B52@shsmsx502.ccr.corp.intel.com>
References: <1287522903.24666.5.camel@scimitar> <4CBE0E4A.1050208@intel.com>
	<1287527808.2283.0.camel@scimitar>
In-Reply-To: <1287527808.2283.0.camel@scimitar>
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
X-List-Received-Date: Tue, 19 Oct 2010 23:56:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

so Josh, have you pushed all of your changes now? That way Dongxiao can fol=
low
up with it here.

Thanks
Kevin

>From: Joshua Lock
>Sent: Wednesday, October 20, 2010 6:37 AM
>
>It seems I didn't push all of my changes, just trying to replicate them
>here and push.
>
>Joshua
>
>On Tue, 2010-10-19 at 14:31 -0700, Saul Wold wrote:
>>
>> Dongxiao,
>>
>> Can you take a look at this since you have worked with the gstreamer?
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

