Return-Path: <prvs=0311042b42=alan.levy@plextek.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50CE1E00B43; Thu, 18 May 2017 06:04:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.254.222.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailgate.plextek.co.uk (mailgate.plextek.co.uk [62.254.222.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 466FFE00BBF
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 06:04:38 -0700 (PDT)
Received: from plextek-exch1.plextek.lan ([10.10.0.152]:12054)
	by mailgate.plextek.co.uk with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <alan.levy@plextek.com>)
	id 1dBL6R-0003k1-3D; Thu, 18 May 2017 14:04:28 +0100
Received: from PLEXTEK-EXCH1.plextek.lan (10.10.0.152) by
	PLEXTEK-EXCH1.plextek.lan (10.10.0.152) with Microsoft SMTP Server
	(TLS) id 15.0.847.32; Thu, 18 May 2017 14:04:27 +0100
Received: from PLEXTEK-EXCH1.plextek.lan ([fe80::f852:2da9:3543:6c2f]) by
	PLEXTEK-EXCH1.plextek.lan ([fe80::f852:2da9:3543:6c2f%18]) with mapi id
	15.00.0847.030; Thu, 18 May 2017 14:04:27 +0100
From: Alan Levy <alan.levy@plextek.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Problem using Subversion in Pyro
Thread-Index: AdLPyt4Pb9k/DAD2TOCCDYM1/+ec1gAALnIAAAKX14A=
Date: Thu, 18 May 2017 13:04:26 +0000
Message-ID: <d0183f1a9e3742bc9dfca1a0b7a300b6@PLEXTEK-EXCH1.plextek.lan>
References: <c8acbe0804cf48b589fc0672c23fcf93@PLEXTEK-EXCH1.plextek.lan>
	<b1947a14-10dd-ab29-9d60-fe9c000e7f11@linux.intel.com>
In-Reply-To: <b1947a14-10dd-ab29-9d60-fe9c000e7f11@linux.intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.12.154]
MIME-Version: 1.0
Subject: Re: Problem using Subversion in Pyro
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
X-List-Received-Date: Thu, 18 May 2017 13:04:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It does get built, and it apparently does get used to do the actual fetchin=
g, just not for miscellaneous functions such as populating SRCREV which rel=
y on the svn executable being on the PATH. This appears to be deliberate si=
nce there is a FETCHCMD_svn variable in bitbake.conf. The simplest way for =
me to force an svn executable onto PATH was to add it to HOSTTOOLS but that=
 may not be what is really intended.

ALAN LEVY, Lead Consultant, Embedded Systems

Plextek Consulting, The Plextek Building, London Road, Great Chesterford, S=
affron Walden, CB10 1NY, UK
T: +44 (0) 1799 533200    E: alan.levy@plextek.com  W: www.plextek.com





-----Original Message-----
From: Alexander Kanavin [mailto:alexander.kanavin@linux.intel.com]=20
Sent: 18 May 2017 13:41
To: yocto@yoctoproject.org; Alan Levy
Subject: Re: [yocto] Problem using Subversion in Pyro

On 05/18/2017 02:40 PM, Alan Levy wrote:
> I have a recipe that fetches code from an SVN repository and uses=20
> ${SRCPV} to obtain its version number. This works fine under Morty but=20
> the recipe crashes out with an error under Pyro because it can't find=20
> the SVN executable.
>
>
>
> Eventually I traced this down to the fact that SVN is missing from the=20
> list of host apps defined in HOSTTOOLS in bitbake.conf. If I add an=20
> assignment in local.conf to append svn to HOSTTOOLS all is well again.
>
>
>
> I think that this is almost certainly a bug but I thought I'd raise=20
> the question here just in case it's really me doing something wrong.

There is a subversion recipe in oe-core, and it should be built (in the nat=
ive variant) specifically for this purpose (base.bbclass):

         # Svn packages should DEPEND on subversion-native
         if scheme =3D=3D "svn":
             needsrcrev =3D True
             d.appendVarFlag('do_fetch', 'depends', '=20
subversion-native:do_populate_sysroot')

BUT... we no longer have recipes in oe-core that fetch from svn:// so it do=
es not get tested, and may well have regressed.

Can you check if it does get build, and whether the subversion binary gets =
installed into your recipe's sysroot?

Alex


