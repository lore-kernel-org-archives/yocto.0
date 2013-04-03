Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D387CE014D0
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 01:42:38 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 03 Apr 2013 01:42:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,399,1363158000"; d="scan'208";a="222247579"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Apr 2013 01:42:37 -0700
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.73]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.19]) with mapi id
	14.01.0355.002; Wed, 3 Apr 2013 09:42:23 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] [PATCH] Remove clutter project templates
Thread-Index: AQHOHz3kdXZmJu3H302lysKq/ZR7oJjENyqAgAAUqEs=
Date: Wed, 3 Apr 2013 08:42:23 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A4639B30171@IRSMSX101.ger.corp.intel.com>
References: <1363104333-15085-1-git-send-email-ioanax.grigoropol@intel.com>,
	<2562063.qdqmlPHIqx@helios>
In-Reply-To: <2562063.qdqmlPHIqx@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.46]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Remove clutter project templates
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
X-List-Received-Date: Wed, 03 Apr 2013 08:42:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,=0A=
=0A=
In my opinion, since clutter was only brought in core-image-sato and core-i=
mage-sato-sdk by clutter-box2d, and not independently, it means it was not =
really intended to support it. =0A=
=0A=
Do you think there should be support for clutter in the sdk images ?=0A=
Clutter + dependencies is not a small package and was only getting into ima=
ges through testapps feature, and we could use gtk templates instead.=0A=
=0A=
Thanks,=0A=
Ioana=0A=
________________________________________=0A=
From: Paul Eggleton [paul.eggleton@linux.intel.com]=0A=
Sent: Wednesday, April 03, 2013 11:14 AM=0A=
To: Grigoropol, IoanaX=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] [PATCH] Remove clutter project templates=0A=
=0A=
Hi Ioana,=0A=
=0A=
On Tuesday 12 March 2013 18:05:33 Ioana Grigoropol wrote:=0A=
> - support for clutter was removed from core-image-sato along with=0A=
> clutter-box2d and thus the project templates in Eclipse should not be=0A=
> supported anymore; gtk templates should be used instead=0A=
=0A=
The removal of clutter-box2d doesn't signal that clutter itself is=0A=
unsupported, so I think maybe we shouldn't be removing these templates just=
=0A=
yet.=0A=
=0A=
Cheers,=0A=
Paul=0A=
=0A=
--=0A=
=0A=
Paul Eggleton=0A=
Intel Open Source Technology Centre=0A=

