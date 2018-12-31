Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D12B9E00B77; Sun, 30 Dec 2018 18:52:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50CD9E0097C
	for <yocto@yoctoproject.org>; Sun, 30 Dec 2018 18:52:04 -0800 (PST)
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1gdngR-0000Zj-Mm from Joe_MacDonald@mentor.com ;
	Sun, 30 Dec 2018 18:52:03 -0800
Received: from svr-orw-mbx-04.mgc.mentorg.com (147.34.90.204) by
	svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Sun, 30 Dec 2018 18:52:01 -0800
Received: from svr-orw-mbx-04.mgc.mentorg.com ([fe80::4967:8f7f:4a15:68a4]) by
	SVR-ORW-MBX-04.mgc.mentorg.com ([fe80::4967:8f7f:4a15:68a4%22]) with
	mapi id 15.00.1320.000; Sun, 30 Dec 2018 18:52:01 -0800
From: "MacDonald, Joe" <Joe_MacDonald@mentor.com>
To: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Thread-Topic: [yocto] [selinux] sumo compilation
Thread-Index: AQHUoDL5d9KkUCW5mU63DpjTlvGaVKWXWFWfgAFTVoD//3s8pQ==
Date: Mon, 31 Dec 2018 02:52:01 +0000
Message-ID: <1546224721158.55264@mentor.com>
References: <20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
	<004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
	<0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
	<9dd76a25-1560-5bca-64d3-e6dd57a44ccc@windriver.com>
	<20181018190803.GB25172@mentor.com>	<20181024234913.GA11980@deserted.net>
	<8a5b43c6-85eb-dd7a-ceee-d10f6977cca3@kernel.org>
	<CAKRytNw3Ct9mc1SVCRKDg8cK+KUvuQLhVoSD-7vJPu93eSk9Aw@mail.gmail.com>
	<a075bc8f-aae5-443c-ba5d-a75eb6b05e58@email.android.com>,
	<20181231024607.GA14710@mentor.com>
In-Reply-To: <20181231024607.GA14710@mentor.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.94.39.250]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Mon, 31 Dec 2018 02:52:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

One additional quick note, in hope of avoiding any further confusion, I'm w=
orking on the refpolicy version from July not January 2018.  Sorry about th=
at.=0A=
=0A=
-J.=0A=
=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of MacDonald, Joe=0A=
Sent: Sunday, December 30, 2018 9:46 PM=0A=
To: Stefano Cappa=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] [selinux] sumo compilation=0A=
=0A=
[Re: [yocto] [selinux] sumo compilation] On 18.12.30 (Sun 14:31) MacDonald,=
 Joe wrote:=0A=
=0A=
> I have both ready to go, there's been a few hiccups with my access to the=
 git=0A=
> server. I'll push my queued changes somewhere public when I get to a keyb=
oard=0A=
> later today so at least everyone can see what's coming.=0A=
=0A=
Update on this.  While we're sorting out the access issue, the current=0A=
master, sumo and thud branches on my personal mirror=0A=
(https://github.com/joeythesaint/meta-selinux) are mostly up-to-date=0A=
(the only thing I haven't included in there yet is the refpolicy update=0A=
for the 20180114 release, little overdue, that) and build for the=0A=
respective Yocto releases.  If that's not your experience, please let me=0A=
know and we'll get that sorted out right away.=0A=
=0A=
Thanks.=0A=
=0A=
-Joe.=0A=
=0A=
>=0A=
> -J.=0A=
>=0A=
> On Dec 30, 2018 6:29 AM, Stefano Cappa <stefano.cappa.ks89@gmail.com> wro=
te:=0A=
> Are there any news about this? Also for thud branch.=0A=
>=0A=
> Il mar 30 ott 2018, 14:46 Sinan Kaya <okaya@kernel.org> ha scritto:=0A=
>=0A=
>     On 10/24/2018 7:49 PM, Joe MacDonald wrote:=0A=
>     > Hey all,=0A=
>     >=0A=
>     > I just thought I should quickly follow up on this.  I have a change=
 set=0A=
>     > ready that includes tagging and a minor tweak for sumo, integration=
 of=0A=
>     > the current outstanding patch list and a tag for thud and a couple =
of=0A=
>     > additional things (possibly) for post-thud.  I'll send out a set fo=
r=0A=
>     > sumo and maybe an additional one for thud/post- possibly tomorrow o=
r=0A=
>     > after I get home on Friday.=0A=
>=0A=
>     Thanks, we are looking forward to see it on yocto.=0A=
>=0A=
>     >=0A=
>     > -J.=0A=
>=0A=
>     --=0A=
>     _______________________________________________=0A=
>     yocto mailing list=0A=
>     yocto@yoctoproject.org=0A=
>     https://lists.yoctoproject.org/listinfo/yocto=0A=
>=0A=
=0A=
> --=0A=
> _______________________________________________=0A=
> yocto mailing list=0A=
> yocto@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/yocto=0A=
=0A=

