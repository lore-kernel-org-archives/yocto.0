Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65D8FE01404
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 06:25:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3IDP9vK007710
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Apr 2012 06:25:09 -0700 (PDT)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.1.100]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.01.0255.000;
	Wed, 18 Apr 2012 06:25:09 -0700
From: "Hatle, Mark" <mark.hatle@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: A question about PACKAGE_ARCH renaming
Thread-Index: AQHNHPvxOMDzdnvKpEqRRK4yDGk4p5aggT4AgAAG9fyAAHhUAP//ktse
Date: Wed, 18 Apr 2012 13:25:12 +0000
Message-ID: <7A0615CB-5659-4A67-A57B-2C13EBCA9294@windriver.com>
References: <1334624465.26744.4.camel@dongxiao-osel>
	<4F8D8DB7.6030301@windriver.com>
	<1334709480.26744.10.camel@dongxiao-osel>
	,<1334726414.26744.21.camel@dongxiao-osel>
	<C3CEA23F-CADF-4127-AFBE-191B2CE602BC@windriver.com>,
	<1334753748.24091.93.camel@ted>
In-Reply-To: <1334753748.24091.93.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: A question about PACKAGE_ARCH renaming
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
X-List-Received-Date: Wed, 18 Apr 2012 13:25:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable





On Apr 18, 2012, at 7:56 AM, "Richard Purdie" <richard.purdie@linuxfoundati=
on.org> wrote:

> On Wed, 2012-04-18 at 12:45 +0000, Hatle, Mark wrote:
>> There is/was a conversion that changed - to _ in the package arch.  And =
yes this needs to be fixed ASAP.
>=20
> Let put this really simply. We are not doing this just as the -rc4 is
> about to build. If we want to start considering a change like this we
> might as well abort the release, start again and slip four weeks.
>=20
> Why? That dash syntax works fine in opkg and is in use in real world
> opkg feeds. This appears to be an rpm only issue. It also only appears
> to be directly affecting hob right at this point

I agree completely, the conversion is package manager specific.  I swear th=
e RPM integration did this conversion in prior versions, the zypper setup h=
as code to do the same as well.

The code belongs in the package_rpm.bbclass...

> When we filtered MACHINE people complained a lot. When we filtered
> MACHINE_ARCH there were more complaints. If you just put the filtering
> straight onto PACKAGE_ARCH as well, there will be immense trouble as it
> will badly break Angstrom for a start :(.
>=20
> I'd ask people think about what they're proposing and put it into
> perspective.
>=20
> I believe Dongxiao has a patch which would allow us to work around the
> issue in hob for this release and then we can re-assess this issue in
> 1.3. I suspect the fix is going to be to drop the name mangling in the
> core and move it to be specific to rpm.
>=20
> Cheers,
>=20
> Richard
>=20
>=20
>=20
>=20

