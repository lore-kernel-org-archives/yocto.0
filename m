Return-Path: <PStath@Axxcelera.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF649E00D2E; Thu, 16 Jun 2016 07:28:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.axxcelera.com
	(static-96-253-69-114.rcmdva.fios.verizon.net [96.253.69.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36753E00D1A
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 07:28:54 -0700 (PDT)
Received: from RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845]) by
	RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845%10]) with mapi id
	14.03.0123.003; Thu, 16 Jun 2016 10:28:54 -0400
From: "Stath, Paul" <PStath@Axxcelera.com>
To: Joe MacDonald <Joe_MacDonald@mentor.com>
Thread-Topic: [yocto] ifenslave recipe
Thread-Index: AdHHzvCriO+O5Zr0Sa2noKI6QbMYdgAKgNWA///A4m8=
Date: Thu, 16 Jun 2016 14:28:53 +0000
Message-ID: <5B5D636C5F0AA747B37D0EFC72B563C42D6F7D2E@RIC-MS02.MWSG.int>
References: <5B5D636C5F0AA747B37D0EFC72B563C42D6F7CCF@RIC-MS02.MWSG.int>,
	<20160616140023.GD4918@mentor.com>
In-Reply-To: <20160616140023.GD4918@mentor.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.10.129]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ifenslave recipe
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
X-List-Received-Date: Thu, 16 Jun 2016 14:28:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>> I'm looking at adding support for NIC bonding into our distribution.=0A=
>>=0A=
>> Along with bonding support in the kernel, I would like to build the 'ife=
nslave'=0A=
>> utility program.=0A=
>>=0A=
>> In checking the OpenEmbedded Layer Index, I find recipes-support/ifensla=
ve/=0A=
>> ifenslave_1.1.0.bb in the meta-networking layer.=0A=
>>=0A=
>> This recipe has a SRC_URI for a version of 'ifenslave.c'=0A=
>> (ifenslace-2.6_1.1.0.org.tar.gz) which I hazard to guess is based on the=
=0A=
>> ifenslave distributed with the 2.6 kernel sources.=0A=
>>=0A=
>> The documentation for bonding (http://www.linuxfoundation.org/collaborat=
e/=0A=
>> workgroups/networking/bonding) recommends using the 'ifenslave.c' distri=
buted=0A=
>> with the kernel sources.  It does indicate that sources from an earlier =
kernel=0A=
>> should still work, but may not support new functionallity.=0A=
>=0A=
>=0A=
> Actually, ifenslave has been gone from the kernel sources tree for some=
=0A=
> time now:=0A=
>=0A=
> commit b1098bbe1b24d5d90cff92fbd716d2ef4bed2cff=0A=
> Author: Cong Wang <amwang@redhat.com>=0A=
> Date:   Mon May 27 15:49:16 2013 +0000=0A=
> =0A=
>     bonding: remove ifenslave.c from kernel source=0A=
>=0A=
>     As Stephen proposed:=0A=
>     Since bonding supports configuration via iproute (netlink) and sysfs,=
 I think=0A=
>     it is time to purge the old ifenslave code out of Documentation/netwo=
rking=0A=
>     and update the documentation.=0A=
>=0A=
>     Suggested-by: Stephen Hemminger <stephen@networkplumber.org>=0A=
>     Cc: Stephen Hemminger <stephen@networkplumber.org>=0A=
>     Cc: Jay Vosburgh <fubar@us.ibm.com>=0A=
>     Cc: "David S. Miller" <davem@davemloft.net>=0A=
>     Signed-off-by: Cong Wang <amwang@redhat.com>=0A=
>     Signed-off-by: David S. Miller <davem@davemloft.net>=0A=
>=0A=
> so if anything that's probably an argument for us purging the recipe in=
=0A=
> meta-networking too.=0A=
=0A=
So, barking up the wrong tree.   ;-)=0A=
The perils of supporting a product that is still using a 3.2 kernel.=0A=
=0A=
I'll verify that the ifenslave functionality can be replaced by iproute2,=
=0A=
and forget about ifenslave, like I have forgotten about ifconfig.=0A=
=0A=
Thanks for the updated references!=0A=
=0A=
--=0A=
Paul Stath=0A=
Senior Software Engineer=0A=
Axxcelera Broadband Wireless=0A=
Richmond, VA 23228=

