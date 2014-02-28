Return-Path: <cristian.iorga@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA56FE00949
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 23:24:42 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Feb 2014 23:20:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,560,1389772800"; d="scan'208";a="491363193"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga002.jf.intel.com with ESMTP; 27 Feb 2014 23:24:39 -0800
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.177]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.84]) with mapi id
	14.03.0123.003; Fri, 28 Feb 2014 07:24:38 +0000
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: Chris Tapp <opensource@keylevel.com>
Thread-Topic: [yocto] Later versions of gstreamer
Thread-Index: AQHPMzY60jhLkcCl3U+dFRWTw+G225rIywEQgADCEACAALYtUA==
Date: Fri, 28 Feb 2014 07:24:26 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB16D075DE@IRSMSX106.ger.corp.intel.com>
References: <9AB00C54-DF23-4674-A970-64444675D90B@keylevel.com>
	<969F26A8BAB325438E7EB80D3C3134FB16D02A51@IRSMSX105.ger.corp.intel.com>
	<E0FCD8F0-EA74-43E0-A739-6B2B59CB21ED@keylevel.com>
In-Reply-To: <E0FCD8F0-EA74-43E0-A739-6B2B59CB21ED@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>,
	"dv@pseudoterminal.org" <dv@pseudoterminal.org>
Subject: Re: Later versions of gstreamer
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
X-List-Received-Date: Fri, 28 Feb 2014 07:24:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Chris,
The gstreamer1.0 that Carlos Rafael is taking care of is maintained in a se=
parate layer that won't get integrated into danny, because for older YP rel=
eases, no new features are added, only bugs are fixed or backported.
The in meta-gstreamer1.0 will need to be added as a layer into your own ima=
ge.
See more details at:
http://www.yoctoproject.org/docs/1.5.1/dev-manual/dev-manual.html#enabling-=
your-layer

If you need more info, please ask.

Regards,
Cristian Iorga
YP
Intel Corporation

-----Original Message-----
From: Chris Tapp [mailto:opensource@keylevel.com]=20
Sent: Thursday, February 27, 2014 10:23 PM
To: Iorga, Cristian
Cc: dv@pseudoterminal.org
Subject: Re: [yocto] Later versions of gstreamer

Hi Cristian,

On 27 Feb 2014, at 08:51, Iorga, Cristian <cristian.iorga@intel.com> wrote:

> Hello Chris,
>=20
> Carlos Rafael has more details, he maintains a gstreamer 1.x.y branch and=
 he says that is has support for danny also.

Thanks, that's good news. Thanks Carlos :-)

I assume I just grab this from Poky meta head until it gets into a 'danny' =
release? Sorry, but my git skills are poor ;-)

>=20
> See details below.
>=20
> Good luck.
>=20
> Regards,
> Cristian Iorga
> YP
> Intel Corporation
>=20
>=20
>> -----Original Message-----
>> From: Carlos Rafael Giani [mailto:dv@pseudoterminal.org]
>> Subject: Re: [yocto] Rgardring GSTreamer1.0 integration on Yocto=20
>> dylan <missing> On 2014-01-28 13:49, Khaja Hussain Shaik wrote:
>>> Hi Carlos,
>>>=20
>>> Did you get a chance to look into the porting of gst1.0 to Dylan?
>>>=20
>>> Regards
>>> Khaja
>>>=20
>> I have now upgraded the recipes in meta-gstreamer1.0 to version 1.2.2.
>> It is a backport from the current OE-core recipes. Furthermore, I=20
>> added the Orc OE-core recipes to this layer. This way, gstreamer is=20
>> built with Orc support by default, even for danny and dylan.
>>=20
>> cheers,
>> Carlos
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org=20
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Tapp
> Sent: Wednesday, February 26, 2014 11:03 PM
> To: Yocto Project
> Subject: [yocto] Later versions of gstreamer
>=20
> I'm currently using 'danny' for a project, but that only has Gstreamer 0.=
10 in the meta data.
>=20
> Has anyone tried using 1.0.x (or, better still, 1.2.x) with 'danny'?
>=20
> Unfortunately, I'm stuck at 'danny' as I need video acceleration for ceda=
rtrail and that isn't supported in later versions.
>=20
> Chris Tapp
>=20
> opensource@keylevel.com
> www.keylevel.com
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




