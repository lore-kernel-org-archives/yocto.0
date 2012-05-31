Return-Path: <belen.barros.pena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15BC8E006C7
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 09:56:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 May 2012 09:56:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="150014677"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 31 May 2012 09:56:01 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.11]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.48]) with mapi id
	14.01.0355.002; Thu, 31 May 2012 17:55:38 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Hob implementation: vanilla or branded?
Thread-Index: AQHNP01Uf/EqqzYAnkC8VEbMTXpj+ZbkHcsA
Date: Thu, 31 May 2012 16:55:37 +0000
Message-ID: <CBED6054.10464%belen.barros.pena@intel.com>
In-Reply-To: <CBED5FA2.10462%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.57.56]
MIME-Version: 1.0
Subject: Hob implementation: vanilla or branded?
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
X-List-Received-Date: Thu, 31 May 2012 16:56:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <02F5AB489737D443A72A83365F507823@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi all,

As part of the Hob work for the 1.3 release it looks like we need to make
a visual design and implementation decision: do we want a 'vanilla' or a
'branded' look for Hob? Sorry if the choice of words is not the best.
Neither 'vanilla' nor 'branded' are meant in any negative way.

We did have this conversation when we started work on the 1.2 release of
Hob, but somehow we settled for a middle way that is not working well and
is causing issues like bug 1701. From my conversations with UI engineers
and people with lots of experience in building applications using the GTK
toolkit, the middle way just doesn't work.

What I mean by 'vanilla' is an implementation that takes the visual
appearance from the theme installed in the Hob host. The main advantage of
vanilla implementations is they guarantee that Hob will play nicely with
its host computer.

What I mean by branded is a visually customised appearance which, apart
from basic UI elements like window chrome and window controls, takes no
input from the host theme. The advantage of this approach is full control
over the Hob appearance (Hob should look like Hob no matter what Linux
distribution you are using).

Personally, I have no preferences: I think both have strengths and
weaknesses and I am happy to go with any of the two. What I wouldn't like
is sticking to a half-way-in-between approach which is giving us a lot of
grief.

I would like to know what the Yocto Project community thinks about these 2
approaches.

Thanks!

Belen

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


