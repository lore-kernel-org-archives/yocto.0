Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 01E554C803A5
	for <yocto@yoctoproject.org>; Mon, 22 Nov 2010 22:57:49 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2010 20:57:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,240,1288594800"; d="scan'208";a="629408074"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2010 20:57:48 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 23 Nov 2010 12:57:47 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 23 Nov 2010 12:57:46 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, Chris Tapp
	<opensource@keylevel.com>
Date: Tue, 23 Nov 2010 12:57:42 +0800
Thread-Topic: [yocto] New platforms
Thread-Index: AcuKaAu41rqzKBScREuCq71tjoyI0gAYQ6uA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D3A61A04C@shsmsx502.ccr.corp.intel.com>
References: <A28CE1CD-E88E-4CE3-8EFF-1DBC55E1756C@keylevel.com>
	<4CEAA3BA.3020103@windriver.com>
In-Reply-To: <4CEAA3BA.3020103@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New platforms
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
X-List-Received-Date: Tue, 23 Nov 2010 04:57:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Bruce Ashfield
>Sent: Tuesday, November 23, 2010 1:09 AM
>
>On 10-11-18 05:36 AM, Chris Tapp wrote:
>> Hi,
>>
>> I've been evaluating OpenEmbedded and saw the announcement of 'Yocto'
>> on the mailing list. Yocto looks like it may be better for my needs as
>> it is more refined.
>>
>> As there isn't currently support for the ALIX 3D3 (a Geode LX based
>> system), I am interested in creating and maintaining a BSP for it.
>> This should also work with other LX systems (e.g. SUMO ST166, other
>> ALIX variants), some with no changes, some with minor ones.
>>
>> Could you give me an idea how much work would be involved in doing
>> this and what it involve?

Kernel is the biggest part you'd work out which thanks to Bruce you should
have rich information below. Besides, you may also have some board specific
firmware, 3rd party components, xserver, etc.

Generally speaking, you need create a new layer which bundles all board
specific bits together which are then added on top of poky core layer. =20

You can read http://www.yoctoproject.org/sites/default/files/bsp-guide_4.pd=
f
which has a detail description how a new BSP is created.=20

You can also refer to existing layers such as meta-emenlow for reference.

On the other hand, if all the variances you care about is just in kernel si=
de,
basically what Bruce describes is enough to create a new MACHINE. For=20
example, you may refer to routerstationpro:

commit 149f2262135ca87608783a8801c9c2d978d8c8ef
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Sun Oct 10 14:11:07 2010 -0400

    routerstationpro: create machine conf and compatibility

    BUGID: 422

    Add the machine configuration and kernel infrastructure for building
    the routerstation pro BSP.

    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

Hope above helps.

Thanks,
Kevin

>
>I can answer from the kernel point of view.
>
>The supported yocto kernel(s) (currently 2.6.34 and
>shortly 2.6.37-rcX) are the place where I can assist
>in getting you up and running with a new board/platform
>fairly easily.
>
>The kernel documentation is being updated (since I've
>made changes recently to streamline just what you
>are talking about here), but I can give some more
>hands on help while those docs are still outstanding.
>
>For the kernel, you'd need to create a machine.conf
>with your optimization, features, etc, and give the
>machine a name. There are obviously plenty of examples
>on how to do this in the tree.
>
>At that point, you can bootstrap the the BSP process
>by doing a: bitbake -c configure linux-yocto.
>
>You then have the kernel git repository staged and
>branch for kernel changes to be added. Working with
>the kernel in git is key, since you can have a
>common branch, and have board specific branches for
>configuration or features that are not generally
>applicable to all boards.
>
>You can iteratively configure and build the board
>from this point.
>
>When you are happy with the changes you can export
>the patches, or keep the branches in a local git
>tree (better), and if there is assistance in maintaining
>the BSP(s) we can contribute them to the maintained
>kernel repository (best). This then enables collaboration
>and best practices development.
>
>The amount of work depends on the type of kernel
>patches you need to add for the board(s) and the
>desired feature mix. Userspace difficulty should
>be manageable if the known working ARM baseline
>builds are used as starting point.
>
>I've gone light on the details here, but if there is
>interest, I can provide more information.
>
>And again, this is speaking from the kernel point of
>view only.
>
>Cheers,
>
>Bruce
>
>>
>> Chris Tapp
>>
>> opensource@keylevel.com
>> www.keylevel.com
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

