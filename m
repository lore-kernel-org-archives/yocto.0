Return-Path: <tocallaghan@meyn.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB35EE0079A; Tue, 12 Aug 2014 06:38:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.199.154.76 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 868 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Aug 2014 06:37:49 PDT
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3lrp0076.outbound.protection.outlook.com [213.199.154.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19E5EE00796
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 06:37:49 -0700 (PDT)
Received: from AM3PR05MB308.eurprd05.prod.outlook.com (10.242.247.153) by
	AM3PR05MB307.eurprd05.prod.outlook.com (10.242.247.152) with Microsoft
	SMTP Server (TLS) id 15.0.1005.10; Tue, 12 Aug 2014 13:23:19 +0000
Received: from AM3PR05MB308.eurprd05.prod.outlook.com ([10.242.247.153]) by
	AM3PR05MB308.eurprd05.prod.outlook.com ([10.242.247.153]) with mapi id
	15.00.1005.008; Tue, 12 Aug 2014 13:23:18 +0000
From: Tim O' Callaghan <tocallaghan@meyn.com>
To: 'Alex J Lennon' <ajlennon@dynamicdevices.co.uk>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [OE-core] [yocto] RFC: Improving the developer workflow
Thread-Index: AQHPsig7E5lzbGbSZEStNvJQkS7hipvFHBSAgAHCpQCABhj68A==
Date: Tue, 12 Aug 2014 13:23:18 +0000
Message-ID: <3254cf66b2934db7b6f1dad6baf2e06b@AM3PR05MB308.eurprd05.prod.outlook.com>
References: <1571948.CrPtZqAbFm@peggleto-mobl5.ger.corp.intel.com>
	<53E3512E.5090008@dynamicdevices.co.uk>
	<2374073.Q4LByM6bcI@peggleto-mobl5.ger.corp.intel.com>
	<53E4F384.4050300@dynamicdevices.co.uk>
In-Reply-To: <53E4F384.4050300@dynamicdevices.co.uk>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [93.154.102.135]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;UriScan:;
x-forefront-prvs: 0301360BF5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(51704005)(13464003)(189002)(199003)(79102001)(4396001)(20776003)(83322001)(46102001)(19273905006)(2656002)(107046002)(31966008)(81342001)(33646002)(74502001)(74662001)(86362001)(95666004)(85852003)(15975445006)(76482001)(81542001)(66066001)(83072002)(80022001)(19300405004)(77982001)(87936001)(92566001)(15202345003)(105586002)(74316001)(19580405001)(106356001)(50986999)(54356999)(101416001)(93886004)(21056001)(19580395003)(99396002)(551934003)(76576001)(76176999)(106116001)(85306004)(24736002)(108616003)(562404015)(563064011);
	DIR:OUT; SFP:; SCL:1; SRVR:AM3PR05MB307;
	H:AM3PR05MB308.eurprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: meyn.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] RFC: Improving the developer workflow
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
X-List-Received-Date: Tue, 12 Aug 2014 13:38:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Another approach I would like to suggest is the one that CoreOS has in plac=
e, that they call fastpatch.=20

https://coreos.com/using-coreos/updates/

Essentially two root partitions, and boot to switch between the new image w=
hile leaving the old one intact as the last known good. It avoids the compl=
exity of an overlay, and it fits with the current yocto filesystem image ba=
sed approach. With this approach, forward/backward application configuratio=
n compatibility can be maintained with an extra bbclass to mix in to the re=
cipes of local application configurations based on OS release version, so t=
hat they can be updated by the init scripts.

Tim.

-----Original Message-----
From: openembedded-core-bounces@lists.openembedded.org [mailto:openembedded=
-core-bounces@lists.openembedded.org] On Behalf Of Alex J Lennon
Sent: vrijdag 8 augustus 2014 17:58
To: Paul Eggleton
Cc: yocto@yoctoproject.org; openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [yocto] RFC: Improving the developer workflow

Hi Paul,
> Personally with how fragile package management can end up being, I'm=20
> convinced that full-image updates are the way to go for a lot of=20
> cases, but ideally with some intelligence so that you only ship the=20
> changes (at a filesystem level rather than a package or file level).=20
> This ensures that an upgraded image on one device ends up exactly=20
> identical to any other device including a newly deployed one. Of=20
> course it does assume that you have a read-only rootfs and keep your=20
> configuration data / logs / other writeable data on a separate=20
> partition or storage medium. However, beyond improvements to support=20
> for having a read-only rootfs we haven't really achieved anything in term=
s of out- of-the-box support for this, mainly due to lack of resources.
>
> However, whilst I haven't had a chance to look at it closely, there=20
> has been some work on this within the community:
>
> http://sbabic.github.io/swupdate/swupdate.html
> https://github.com/sbabic/swupdate
> https://github.com/sbabic/meta-swupdate/
> =20
>

I had a quick look at this. It's interesting. If I am reading this correctl=
y it's based on the old

-> Bootloader runs Partition A
-> Update Partition B, set Bootloader to run Partition B
->   On failure stay on partition A and retry update.
-> Bootloader runs Partition B
-> Update Partition A, set Bootloader to run Partition A  etc.

We've done this type of thing before and it works well. Of course the drawb=
ack is the amount of flash you need to achieve it but it is a good robust s=
ystem.

I'd be interested to see how this could work with filesystem deltas say.
I don't _think_ that is
documented here?

...

Thinking a little further what would also really interest me would be to co=
nsider using the transactionality of the underlying file-system or block-ma=
nagement layer for the update process.

Given nowadays journalling and log-structure file-systems are already desig=
ned to fail-back when file/meta-data modifications are interrupted surely w=
e should be able to start a macro-transaction point at the start of the  pa=
rtition update,  and if that update doesn't complete with a macro-commit th=
en the f/s layer should be able to automatically roll itself back?
Perhaps the same could be done at
a block management layer?

Cheers,

Alex

--
_______________________________________________
Openembedded-core mailing list
Openembedded-core@lists.openembedded.org
http://lists.openembedded.org/mailman/listinfo/openembedded-core

