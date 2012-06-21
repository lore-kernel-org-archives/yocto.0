Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4999AE0073F
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 03:40:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Jun 2012 03:40:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="156564597"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga001.jf.intel.com with ESMTP; 21 Jun 2012 03:40:41 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.70]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.36]) with mapi id
	14.01.0355.002; Thu, 21 Jun 2012 11:39:11 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: self-hosted image vs. build appliance
Thread-Index: AQHNT5oXltP1CGZ0iECeAHvtlu8X8Q==
Date: Thu, 21 Jun 2012 10:39:10 +0000
Message-ID: <CC08B7CD.11AE2%belen.barros.pena@intel.com>
In-Reply-To: <CDED78A957032E45B3239CDDA7642D151C85E65B@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.51.241]
MIME-Version: 1.0
Subject: Re: self-hosted image vs. build appliance
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
X-List-Received-Date: Thu, 21 Jun 2012 10:40:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E076B0A36E296649B5334A936F7DFA8A@intel.com>
Content-Transfer-Encoding: quoted-printable

Thanks, Dave. If no suggestions come in, I'll file the bug.

Belen

On 20/06/2012 23:16, "Stewart, David C" <david.c.stewart@intel.com> wrote:

>
>>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>bounces@yoctoproject.org] On Behalf Of Barros Pena, Belen
>>Sent: Wednesday, June 20, 2012 9:24 AM
>>
>>Does anybody know why are we calling it 'self-hosted-image' in Hob and
>>'build-appliance' in the Yocto Project website? Wouldn't it be easier if
>>we used the same name everywhere? Which one should be used?
>
>Yes indeed, we should have consistent naming for this feature.
>
>The problem is, neither name is very good.
>
>"build-appliance" =3D an implication that the thing "just works" like an
>appliance should just work in your kitchen. Unfortunately, the name isn't
>very descriptive.
>"Self-hosted-image" =3D a description of how the thing is constructed (it's
>a Linux OS which was constructed by the Yocto Project itself, and it
>builds using the Yocto Project).
>
>So neither name is good, but build appliance is usually the one I use.
>
>If anyone has a better name I WOULD LOVE TO HAVE IT. Otherwise please
>file a bug to change the self-hosted-image name to build appliance.
>
>Dave

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


