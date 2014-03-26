Return-Path: <PStath@Axxcelera.com>
Received: from RIC-MS02.MWSG.int (static-96-253-69-114.rcmdva.fios.verizon.net
	[96.253.69.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B8E7E00B8A
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 12:04:45 -0700 (PDT)
Received: from RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845]) by
	RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845%10]) with mapi id
	14.03.0123.003; Wed, 26 Mar 2014 15:04:42 -0400
From: "Stath, Paul" <PStath@Axxcelera.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Change to 1.5_M5.rc1???
Thread-Index: AQHPSSPdHKcUum+vaEeGSUIZIpJttg==
Date: Wed, 26 Mar 2014 19:04:41 +0000
Message-ID: <5B5D636C5F0AA747B37D0EFC72B563C42D559E0A@RIC-MS02.MWSG.int>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.10.129]
MIME-Version: 1.0
Subject: Change to 1.5_M5.rc1???
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
X-List-Received-Date: Wed, 26 Mar 2014 19:04:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We have a local clone of the yocto repository that is refreshed nightly via=
 'git pull'.=0A=
=0A=
When trying to push a tag to the local yocto clone, I'm getting the followi=
ng error:=0A=
=0A=
 ! [rejected]        1.5_M5.rc1 -> 1.5_M5.rc1 (non-fast-forward)=0A=
=0A=
In my dev copy:=0A=
=0A=
$ git rev-parse 1.5_M5.rc1=0A=
b9f5cc7be05303ba5ed478a3a108ddc579539744=0A=
=0A=
In a fresh clone of http://git.yoctoproject.org/cgit/cgit.cgi/poky=0A=
$ git rev-parse 1.5_M5.rc1=0A=
295656cfdaf17bcbbeac8599fc8ebb2d5aa435d2=0A=
=0A=
Since the same commit the tag points to is also the HEAD of the 1.6_M5 bran=
ch,=0A=
I'm guessing that the tag SHOULD be 1.6_M5.rc1.=0A=
=0A=
Could someone please follow-up?=0A=
=0A=
-- Paul Stath=0A=

