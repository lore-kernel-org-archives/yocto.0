Return-Path: <Brian.Wenholz@med.ge.com>
Received: from exprod5og109.obsmtp.com (exprod5og109.obsmtp.com [64.18.0.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B5A0E014FF
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 05:51:18 -0700 (PDT)
Received: from alpmlip11.e2k.ad.ge.com ([165.156.5.1]) (using TLSv1) by
	exprod5ob109.postini.com ([64.18.4.12]) with SMTP
	ID DSNKUZIzRe/1y8RCcd+LGt1wrvblshgZOkmS@postini.com;
	Tue, 14 May 2013 05:51:22 PDT
Received: from unknown (HELO cinmlef12.e2k.ad.ge.com) ([3.159.213.59])
	by alpmlip11.e2k.ad.ge.com with ESMTP; 14 May 2013 08:51:09 -0400
Received: from cinmlef17.e2k.ad.ge.com ([3.159.213.93]) by
	cinmlef12.e2k.ad.ge.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 14 May 2013 08:51:08 -0400
Received: from cinmlch01.e2k.ad.ge.com ([3.159.212.50]) by
	cinmlef17.e2k.ad.ge.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 14 May 2013 08:51:01 -0400
Received: from ALPURAPA17.e2k.ad.ge.com (3.159.19.136) by
	cinmlch01.e2k.ad.ge.com (3.159.212.50) with Microsoft SMTP Server (TLS)
	id 14.3.136.1; Tue, 14 May 2013 08:50:57 -0400
Received: from ALPURAPA22.e2k.ad.ge.com ([169.254.4.124]) by
	ALPURAPA17.e2k.ad.ge.com ([169.254.5.172]) with mapi id 14.02.0309.002;
	Tue, 14 May 2013 08:50:57 -0400
From: "Wenholz, Brian (GE Healthcare)" <Brian.Wenholz@med.ge.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Does anyone have a recipe for efibootmgr?
Thread-Index: AQHOTJAENDqYW0o3I02brC0jo4fIv5kEqPig
Date: Tue, 14 May 2013 12:50:56 +0000
Message-ID: <4F1B91CF7B31604FABE8442530201B78019E16@ALPURAPA22.e2k.ad.ge.com>
References: <4F1B91CF7B31604FABE8442530201B780195B3@ALPURAPA22.e2k.ad.ge.com>
	<349B24DA-30D1-4541-A2C1-4EDC44CEE734@gmail.com>
	<2983293.qAFFc2TYrv@helios>
In-Reply-To: <2983293.qAFFc2TYrv@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [3.159.19.187]
MIME-Version: 1.0
X-OriginalArrivalTime: 14 May 2013 12:51:01.0991 (UTC)
	FILETIME=[B0685F70:01CE50A1]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Does anyone have a recipe for efibootmgr?
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
X-List-Received-Date: Tue, 14 May 2013 12:51:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Paul and Khem,

Thank you for the replies. Yes I have already checked both the layer index =
and classic OE recipes looking for efibootmgr. I could not find such a reci=
pe. I will start working on building one from scratch then.

Brian Wenholz
-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Thursday, May 09, 2013 4:34 AM
To: Wenholz, Brian (GE Healthcare)
Cc: yocto@yoctoproject.org; Khem Raj
Subject: Re: [yocto] Does anyone have a recipe for efibootmgr?

On Wednesday 08 May 2013 21:46:56 Khem Raj wrote:
> On May 7, 2013, at 11:11 AM, "Wenholz, Brian (GE Healthcare)"=20
<Brian.Wenholz@med.ge.com> wrote:
> > I have been unsuccessful in finding one yet, and would prefer not to=20
> > re-invent the wheel.
>
> check
> http://layers.openembedded.org/layerindex/

Specifically the recipe search part:

http://layers.openembedded.org/layerindex/recipes/

> if its not there then it does not exist.
> secondly check classic OE metadata and if it exists there
>=20
> http://git.openembedded.org/openembedded/tree/recipes
>=20
> then forward port it to relevant layer and post patches for the layer=20
> using relevant layer guidelines

FYI there is information on how to migrate recipes here:

http://www.openembedded.org/wiki/Migrating_metadata_to_OE-Core

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

