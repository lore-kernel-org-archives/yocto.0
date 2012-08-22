Return-Path: <tim.bird@am.sony.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe002.messaging.microsoft.com [213.199.154.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6FFEE01404
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 16:20:58 -0700 (PDT)
Received: from mail73-db3-R.bigfish.com (10.3.81.234) by
	DB3EHSOBE005.bigfish.com (10.3.84.25) with Microsoft SMTP Server id
	14.1.225.23; Wed, 22 Aug 2012 23:20:53 +0000
Received: from mail73-db3 (localhost [127.0.0.1])	by mail73-db3-R.bigfish.com
	(Postfix) with ESMTP id 234C346012F;
	Wed, 22 Aug 2012 23:20:53 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.231; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail04v.am.sony.com; RD:mail04.sonyusa.com;
	EFVD:NLI
X-SpamScore: -4
X-BigFish: VPS-4(zzbb2dI98dI9371Ic89bh1432Izz1202hzz8275bhz2fh2a8h668h839h93fhd25hf0ah107ah1155h)
Received-SPF: pass (mail73-db3: domain of am.sony.com designates
	160.33.194.231 as permitted sender) client-ip=160.33.194.231;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail04v.am.sony.com ; .am.sony.com ; 
Received: from mail73-db3 (localhost.localdomain [127.0.0.1]) by mail73-db3
	(MessageSwitch) id 134567765164684_10750;
	Wed, 22 Aug 2012 23:20:51 +0000 (UTC)
Received: from DB3EHSMHS002.bigfish.com (unknown [10.3.81.253])	by
	mail73-db3.bigfish.com (Postfix) with ESMTP id 02BD73E012C;
	Wed, 22 Aug 2012 23:20:51 +0000 (UTC)
Received: from usculsndmail04v.am.sony.com (160.33.194.231) by
	DB3EHSMHS002.bigfish.com (10.3.87.102) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Wed, 22 Aug 2012 23:20:50 +0000
Received: from usculsndmail14v.am.sony.com (usculsndmail14v.am.sony.com
	[146.215.230.105])	by usculsndmail04v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q7MNKm13010125;
	Wed, 22 Aug 2012 23:20:49 GMT
Received: from mail1x.sgo.in.sel.sony.com (mail2.bc.in.sel.sony.com
	[43.130.1.112])	by usculsndmail14v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q7MNKlVp003948
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 22 Aug 2012 23:20:48 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	q7MNKlQD005325;	Wed, 22 Aug 2012 23:20:47 GMT
Message-ID: <50356A22.7070705@am.sony.com>
Date: Wed, 22 Aug 2012 16:24:18 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <CAHUNapSmuzJaUkE2fz27-6MDWGg5TAUug9sBxPWEqneM2OO1WA@mail.gmail.com>
	<CA+YB3raTP8ROCvuidyH8zoupo4_qO1a+oWZ_Noakm3Kx5suRag@mail.gmail.com>
	<CAHUNapRLsCWvefm1+Sc0QT2OhVJ-e0fa3iF7zL2H2qFQLR+AUA@mail.gmail.com>
	<CABcZAN=Dktdoq00_uHAvG7Wy2UgQhZS0KbZOeCK-s=7B+RbwWA@mail.gmail.com>
	<CAHUNapRvcW+M2t-LUpDYGRYJBYhLu0Yy_z66gHqE67kb9yWXvA@mail.gmail.com>
	<CABcZAN=cCub4sgSW7am+TaA8bois9Q23_x1kRmWWBCh9=hCNXQ@mail.gmail.com>
	<alpine.DEB.2.02.1208221623080.20631@oneiric>
In-Reply-To: <alpine.DEB.2.02.1208221623080.20631@oneiric>
X-OriginatorOrg: am.sony.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Chris Larson <clarson@kergoth.com>
Subject: Re: of recipes and packages
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
X-List-Received-Date: Wed, 22 Aug 2012 23:20:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 08/22/2012 01:27 PM, Robert P. J. Day wrote:
> On Wed, 22 Aug 2012, Chris Larson wrote:
>=20
>> On Wed, Aug 22, 2012 at 1:15 PM, Trevor Woerner <twoerner@gmail.com> w=
rote:
>>> On Wed, Aug 22, 2012 at 3:24 PM, Chris Larson <clarson@kergoth.com> w=
rote:
>>>> On Wed, Aug 22, 2012 at 12:23 PM, Trevor Woerner <twoerner@gmail.com=
> wrote:
>>>>> "bitbake -s" doesn't list "net-snmp-dbg net-snmp-doc net-snmp-dev..=
."
>>>>> it lists "net-snmp". Therefore couldn't the wording of the bitbake
>>>>> help be improved to say:
>>>>>
>>>>> -s, --show-versions   show current and preferred versions of all __=
recipes__
>>>>>
>>>>> instead of:
>>>>
>>>>
>>>> It could, and should, be changed in that way, yes.
>>>
>>> Do the OE people accept this wording too, or is this a
>>> yocto-project-only thing? In other words, should a potential patch be
>>> sent to OE or here?
>>
>> The change would be to a core component, which is part of OE and which
>> yocto pulls in =E2=80=94 bitbake. So it would make no sense to send th=
e patch
>> here. No changes to bitbake are going into poky without going into the
>> main bitbake repository. The bitbake-devel mailing list is the correct
>> place for it.
>=20
>   there really should be an official glossary somewhere, and it should
> be backed up with *actual* *examples* from the source as much as
> possible.  that is, don't use "foo" if there's an existing recipe or
> package whose use would be more informative.

From Jeff's description, it sounded like the package (especially 'package=
 version')
comes from the stuff that is the recipe's *input*, and not the recipe's o=
utput
 -- if you've selected to build packages and not just a straight image.

Is 'package' also used in that sense, to describe, say, the tarball for b=
usybox
before it's processed by bitbake and made into an busybox binary ipkg or =
rpm?

Or am I just muddying the waters further?

BTW, on denzil, I get the following:
$ bitbake -s | grep busybox
busybox                         :1.19.4-r2

Note that this includes the version of busybox (the input source version)=
, as
well as (I think) the recipe revision number.

And yes - a definitive glossary would be great.
 -- Tim

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D


