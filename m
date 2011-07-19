Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8B374C8009D
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 10:40:37 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6JFeXm3014269;
	Tue, 19 Jul 2011 10:40:34 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <4E25A374.5010108@linux.intel.com>
Date: Tue, 19 Jul 2011 10:40:33 -0500
Message-Id: <7F6E9823-395B-4AEC-8874-A56C3A098DC4@kernel.crashing.org>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>	<AB1A5241-0B13-4DFF-A453-BECBB1ADD408@dominion.thruhere.net>
	<9C2FF9D1-726F-45C2-A22B-DF4E07D48809@kernel.crashing.org>
	<4E25A374.5010108@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/5] Add support for PowerPC e500v2/SPE
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
X-List-Received-Date: Tue, 19 Jul 2011 15:40:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 19, 2011, at 10:32 AM, Saul Wold wrote:

> On 07/19/2011 06:17 AM, Kumar Gala wrote:
>>=20
>> On Jul 19, 2011, at 2:44 AM, Koen Kooi wrote:
>>=20
>>>=20
>>> Op 19 jul 2011, om 07:21 heeft Kumar Gala het volgende geschreven:
>>>=20
>>>> The majority of support for the PowerPC e500v2/SPE target already
>>>> exists.  However some minor cleans are required to get things =
working
>>>> completely.
>>>>=20
>>>> The e500v2 utilizes a unique floating point programming model / ABI =
from
>>>> other PowerPC targets and thus requires special handling.
>>>=20
>>>=20
>>> These should be sent to the oe-core list against the oe-core tree, =
not the poky list against the poky tree
>>=20
>> Will do so, it was unclear to me how patches go from oe-core to/from =
yocto.
>>=20
> Kumar,
>=20
> If it goes into the meta/recipes or meta/conf area then it goes to =
oe-core, if the patch is the PPC machine-specific and changes are in =
meta-yocto, then it should go to the yocto ml.
>=20
> As mentioned above, all these patches should go to oe-core
>=20
> I hope that clears things up.
>=20
> Sau!

Its a start, how to things go from oe-core git to yocto git?

- k=

