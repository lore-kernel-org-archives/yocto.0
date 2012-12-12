Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63702E011CC
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 09:23:57 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Dec 2012 09:23:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,267,1355126400"; d="scan'208";a="232882497"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 12 Dec 2012 09:23:48 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.66]) with mapi id
	14.01.0355.002; Wed, 12 Dec 2012 09:23:47 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Jon Szymaniak
	<jon.szymaniak@gmail.com>
Thread-Topic: [yocto] Disabling PREMIRRORS and upstream sources
Thread-Index: AQHN0WmWxgskPaXHkECFxGcGckjxfpgUJBnggAEA2wCAAAPikIAAKDWggACe14CAAASPAP//gzsA
Date: Wed, 12 Dec 2012 17:23:46 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC8E0@ORSMSX101.amr.corp.intel.com>
References: <CANge7vV0M3t1r3e+=76+r7+_BwdaQfW2eOQ=AeLTXn5-R7XX-A@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC79C@ORSMSX101.amr.corp.intel.com>
	<CANge7vWPf-sqGH_sdoVHoLvnpK_wPXC_QBAkUG2dEvMUzz99UQ@mail.gmail.com>
	<2131314.OQZPzJsPrp@helios>
In-Reply-To: <2131314.OQZPzJsPrp@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Disabling PREMIRRORS and upstream sources
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
X-List-Received-Date: Wed, 12 Dec 2012 17:23:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

If this is something we would not encourage in a published recipe, then it =
is questionable as to documenting this simple way.  Or, perhaps, document i=
t with the caveat that it is not something you would normally do?

Scott

>-----Original Message-----
>From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>Sent: Wednesday, December 12, 2012 8:49 AM
>To: Jon Szymaniak
>Cc: Rifenbark, Scott M; yocto@yoctoproject.org
>Subject: Re: [yocto] Disabling PREMIRRORS and upstream sources
>
>On Wednesday 12 December 2012 11:32:39 Jon Szymaniak wrote:
>> Just to make sure I'm understanding this... so when I place PREMIRRORS
>=3D ""
>> in a recipe, I see that it doesn't affect the associated variables in
>other
>> recipes.
>>
>> Is this because I'm inherently setting up PREMIRRORS_${PN}, which is
>> initialized with the PREMIRROR defaults (and what was appended and
>> prepended in the local.conf)?
>
>When you set a variable within a recipe it's setting it just within the
>context of that recipe, so there's no way for it to affect other
>recipes.
>
>> I'm also guessing that touching PREMIRRORS and MIRRORS within recipes
>> is generally a bad practice. I'd be curious to hear if my use case
>> sounds totally
>> wacky, as I'm still very much getting up to speed on Yocto/OE and best
>> practices.
>
>I guess it's not unreasonable to want to avoid touching anything
>external when
>building something internal; but you're right as a general practice this
>is
>something we would not do in published recipes.
>
>Cheers,
>Paul
>
>--
>
>Paul Eggleton
>Intel Open Source Technology Centre

