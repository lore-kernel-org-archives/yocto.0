Return-Path: <opensource@keylevel.com>
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A010E00949
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 00:46:57 -0800 (PST)
Received: from [109.224.171.0] (port=48475
	helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1WJJ5r-000828-Cf; Fri, 28 Feb 2014 08:46:55 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB16D075DE@IRSMSX106.ger.corp.intel.com>
Date: Fri, 28 Feb 2014 08:46:54 +0000
Message-Id: <3F447ED0-C875-46C2-A64D-7F45F6C44A97@keylevel.com>
References: <9AB00C54-DF23-4674-A970-64444675D90B@keylevel.com>
	<969F26A8BAB325438E7EB80D3C3134FB16D02A51@IRSMSX105.ger.corp.intel.com>
	<E0FCD8F0-EA74-43E0-A739-6B2B59CB21ED@keylevel.com>
	<969F26A8BAB325438E7EB80D3C3134FB16D075DE@IRSMSX106.ger.corp.intel.com>
To: "Iorga, Cristian" <cristian.iorga@intel.com>
X-Mailer: Apple Mail (2.1874)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.adsl24.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hosting.adsl24.co.uk: authenticated_id:
	mail@keylevel.adsl24.co.uk
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
X-List-Received-Date: Fri, 28 Feb 2014 08:47:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Cristian,

On 28 Feb 2014, at 07:24, Iorga, Cristian <cristian.iorga@intel.com> =
wrote:

> Hi Chris,
> The gstreamer1.0 that Carlos Rafael is taking care of is maintained in =
a separate layer that won't get integrated into danny, because for older =
YP releases, no new features are added, only bugs are fixed or =
backported.

Thanks for the clarification - I miss-understood what the linked thread =
meant.

> The in meta-gstreamer1.0 will need to be added as a layer into your =
own image.

Easily done, as I've already got an adaption layer for 'danny' that I =
use for this project.

> See more details at:
> =
http://www.yoctoproject.org/docs/1.5.1/dev-manual/dev-manual.html#enabling=
-your-layer
>=20
> If you need more info, please ask.

Will do. Thanks again :-)

>=20
> Regards,
> Cristian Iorga
> YP
> Intel Corporation
>=20
> -----Original Message-----
> From: Chris Tapp [mailto:opensource@keylevel.com]=20
> Sent: Thursday, February 27, 2014 10:23 PM
> To: Iorga, Cristian
> Cc: dv@pseudoterminal.org
> Subject: Re: [yocto] Later versions of gstreamer
>=20
> Hi Cristian,
>=20
> On 27 Feb 2014, at 08:51, Iorga, Cristian <cristian.iorga@intel.com> =
wrote:
>=20
>> Hello Chris,
>>=20
>> Carlos Rafael has more details, he maintains a gstreamer 1.x.y branch =
and he says that is has support for danny also.
>=20
> Thanks, that's good news. Thanks Carlos :-)
>=20
> I assume I just grab this from Poky meta head until it gets into a =
'danny' release? Sorry, but my git skills are poor ;-)
>=20
>>=20
>> See details below.
>>=20
>> Good luck.
>>=20
>> Regards,
>> Cristian Iorga
>> YP
>> Intel Corporation
>>=20
>>=20
>>> -----Original Message-----
>>> From: Carlos Rafael Giani [mailto:dv@pseudoterminal.org]
>>> Subject: Re: [yocto] Rgardring GSTreamer1.0 integration on Yocto=20
>>> dylan <missing> On 2014-01-28 13:49, Khaja Hussain Shaik wrote:
>>>> Hi Carlos,
>>>>=20
>>>> Did you get a chance to look into the porting of gst1.0 to Dylan?
>>>>=20
>>>> Regards
>>>> Khaja
>>>>=20
>>> I have now upgraded the recipes in meta-gstreamer1.0 to version =
1.2.2.
>>> It is a backport from the current OE-core recipes. Furthermore, I=20
>>> added the Orc OE-core recipes to this layer. This way, gstreamer is=20=

>>> built with Orc support by default, even for danny and dylan.
>>>=20
>>> cheers,
>>> Carlos
>>=20
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org=20
>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Tapp
>> Sent: Wednesday, February 26, 2014 11:03 PM
>> To: Yocto Project
>> Subject: [yocto] Later versions of gstreamer
>>=20
>> I'm currently using 'danny' for a project, but that only has =
Gstreamer 0.10 in the meta data.
>>=20
>> Has anyone tried using 1.0.x (or, better still, 1.2.x) with 'danny'?
>>=20
>> Unfortunately, I'm stuck at 'danny' as I need video acceleration for =
cedartrail and that isn't supported in later versions.
>>=20
>> Chris Tapp
>>=20
>> opensource@keylevel.com
>> www.keylevel.com
>>=20
>>=20
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
> Chris Tapp
>=20
> opensource@keylevel.com
> www.keylevel.com
>=20
>=20
>=20

Chris Tapp

opensource@keylevel.com
www.keylevel.com




