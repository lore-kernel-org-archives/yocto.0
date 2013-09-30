Return-Path: <B19537@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe006.messaging.microsoft.com [216.32.180.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F0D3E01647;
	Sun, 29 Sep 2013 23:22:18 -0700 (PDT)
Received: from mail219-co1-R.bigfish.com (10.243.78.244) by
	CO1EHSOBE003.bigfish.com (10.243.66.66) with Microsoft SMTP Server id
	14.1.225.22; Mon, 30 Sep 2013 06:22:16 +0000
Received: from mail219-co1 (localhost [127.0.0.1])	by
	mail219-co1-R.bigfish.com (Postfix) with ESMTP id ED9441000A0;
	Mon, 30 Sep 2013 06:22:16 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -4
X-BigFish: VS-4(zzbb2dIdb82h98dI9371I542I1432I4015I14ffI444eM714fozz1f42h208ch1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz8275ch1de098h17326ah1de097h186068h8275bh8275dhz2dh2a8h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1b2fh1fb3h1d0ch1d2eh1d3fh1dfeh1dffh1e1dh1fe8h1ff5hbe9i1155h)
Received: from mail219-co1 (localhost.localdomain [127.0.0.1]) by mail219-co1
	(MessageSwitch) id 1380522135298481_4268;
	Mon, 30 Sep 2013 06:22:15 +0000 (UTC)
Received: from CO1EHSMHS021.bigfish.com (unknown [10.243.78.246])	by
	mail219-co1.bigfish.com (Postfix) with ESMTP id 451BEC20041;
	Mon, 30 Sep 2013 06:22:15 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS021.bigfish.com
	(10.243.66.31) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Mon, 30 Sep 2013 06:22:15 +0000
Received: from 039-SN2MPN1-021.039d.mgd.msft.net ([169.254.1.137]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.03.0158.002;
	Mon, 30 Sep 2013 06:22:14 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: Bob Cochran <yocto@mindchasers.com>
Thread-Topic: [meta-freescale] The updated proposal of FSL Yocto layers
	reorg - 4-Mar
Thread-Index: Ac4YixNTv/Aso4Y9RYGxuORqmLC6uyk9N/sAAAOzMPA=
Date: Mon, 30 Sep 2013 06:22:13 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A0173C293@039-SN2MPN1-021.039d.mgd.msft.net>
References: <CA452391058F6D4E9715FB2C29D9312A0144533E@039-SN2MPN1-021.039d.mgd.msft.net>
	<5248D9C0.10105@mindchasers.com>
In-Reply-To: <5248D9C0.10105@mindchasers.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.81]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] The updated proposal of FSL Yocto layers reorg - 4-Mar
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
X-List-Received-Date: Mon, 30 Sep 2013 06:22:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Bob,

We are working on the recipes of Layerscape, the first LS SDK will be relea=
sed in the early of 2014. The LS common recipes will be submitted to meta-f=
sl-ppc/meta-fsl-arm when LS is formally released.=20

Regarding meta-fsl-layerscape, it can be published in YP official git repos=
itory(http://git.yoctoproject.org/cgit/cgit.cgi/) and FSL official git repo=
sitory(http://git.yoctoproject.org/cgit/cgit.cgi/)?) if no internal git url=
 is referred.=20


Best Regards,

Zhenhua

> -----Original Message-----
> From: Bob Cochran [mailto:yocto@mindchasers.com]
> Sent: Monday, September 30, 2013 9:54 AM
> To: Luo Zhenhua-B19537
> Cc: Yocto discussion list
> Subject: Re: [meta-freescale] The updated proposal of FSL Yocto layers
> reorg - 4-Mar
>=20
> Hi Zhenhua,
>=20
> Can we get an update on Layerscape?  It's been about 6 months since the
> Yocto layers organization for Layerscape was last talked about on this
> board.
>=20
> When will we first see an instance of the stage 2 organization (e.g.,
> meta-fsl-layerscape) in the yocto project source repos
> (http://git.yoctoproject.org/cgit/cgit.cgi/)?
>=20
> Thanks,
>=20
> Bob
>=20
>=20
>=20
>=20
> On 03/03/2013 10:48 PM, Luo Zhenhua-B19537 wrote:
> > Hello all,
> >
> > I have incorporated the comments of previous discussion into the reorg
> > design document, please take a look.
> >
> > *Summary of Yocto reorg*
> >
> > * To support Layerscape release, both ARM architecture and PPC
> > architecture are required to be supported by Yocto.
> >
> > * Currently Yocto support for i.MX SDK and QorIQ SDK are developed and
> > maintained separately, some duplicated packages are not shared between
> > ARM SDK and PPC SDK. And will not be efficient and effective
> > maintained for Layerscape support.
> >
> > * More clear naming of Yocto layers for FSL specific will be helpful
> > for PPC, ARM and Layercape support simultaneously.
> >
> > * Subsequent slides introduces the plan and design of FSL Yocto layers
> > re-org.
> >
> > *FSL Yocto Layers Reorg Diagram*
> >
> > yocto-re-org.png
> >
> > *FSL Yocto Layers Reorg - Stage1*
> >
> > * Stage1:  ~ Jun-2013
> >
> > * Following layers will coexist:
> >
> >    poky: the opensource version
> >
> >    meta-oe: the opensource branch corresponding to poky
> >
> >    meta-virtualization: the opensource virtualization layer
> >
> >    meta-fsl-ppc-toolchain: fsl toolchain recipes
> >
> >    meta-fsl-ppc: fsl public packages for PPC targets
> >
> >    meta-fsl-ppc-private: fsl private packages for PPC targets
> >
> >    meta-fsl-arm: fsl packages for ARM targets
> >
> >    meta-fsl-demos: demo rootfs recipes of ARM targets
> >
> >    meta-fsl-networking: recipes specific to networking SDK
> >
> >    Other necessary upstream layers
> >
> > *FSL Yocto Layers Reorg - Stage2*
> >
> > * Stage2: Jul-2013 ~ Dec-2013
> >
> > * Following change will be made:
> >
> >    Poky/meta-oe/meta-virtualization for opensource are reused
> >
> >   Following architecture specific layers are maintained in
> > git.am.freescale.net,   git.freescale.com and git.yoctoproject.org
> >
> >      meta-fsl-arm: layer for FSL arm machines
> >
> >     meta-fsl-ppc: layer for FSL ppc machines
> >
> >    Following SDK specific layers are maintained in
> > git.am.freescale.net and git.freescale.com
> >
> >      meta-fsl-toolchain: layer for fsl toolchain recipes
> >
> >      meta-fsl-multimedia: layer for multimedia SDK
> >
> >      meta-fsl-networking: layer for networking SDK
> >
> >      meta-fsl-layerscape: layer for layerscape SDK
> >
> > *FSL Yocto Layers Reorg - More info*
> >
> > * Layer of getting layers specific to Freescale SDK
> >
> >    * Layer name: meta-freescale-sdk
> >
> >    * The function of this layer is similar as
> > https://github.com/Freescale/fsl-community-bsp-platform and it is
> > maintained in FSL internal/external git tree
> >
> >    * A branch is created for each FSL SDK release to include the
> > scripts to fetch necessary layers of specified version
> >
> > * Multiple branch maintain
> >
> >    * Align with the branch policy of poky: denzil, danny, master ...
> >
> >    * A tag of sub-layers will be created for each FSL release
> >
> >    * Upstream / public branches will try to work with all Yocto
> > releases, while SDK releases could contain a lot of hacks to more
> > things working, or pre-release things out there door.
> >
> >    * SDK releases sometimes skip entire Yocto releases (e.g. danny).
> > SDK versions may contain slightly different versions. This comes into
> > play more with oe-core where we don't have official control and we
> > need to include a specific fix for the SDK. Layers themselves tend to
> > have less reason to deviate from the upstream versions since we
> > control both sides so they should be the same.
> >
> > * Meta-fsl-toolchain layer maintain
> >
> >    * This layer is maintained in FSL internal/external git tree
> >
> >    * Directory structure:
> >
> >        meta-fsl-toolchain
> >
> >        |-- meta-gcc4.6-eglib2.13-binutils-2.21a
> >
> >        |-- meta-gcc4.7-eglib2.15-binutils-2.23
> >
> > * SCM
> >
> >    * Unify the mailing list of FSL layers
> >
> >    * Opensource: _meta-freescale@yoctopoject.org
> > <mailto:meta-freescale@yoctopoject.org>_**
> >
> > * U-boot/Linux on FSL official git tree (git.freescale.com)
> >
> >   * The source in git.freescale.com will be updated when SDK is
> > formally released, since full verification should be conducted  to
> > ensure quality. So Kernel in FSL official git tree will not be synced
> > with internal git tree during the developing phase.
> >
> >   * The kernel team can't have everything upstreamed for an SDK
> > release and supporting all feature and bug fixes. Besides we will pick
> > a kernel and test and fix it so it will always fall out of sync. (e.g.
> > latest kernel release - 1 release + fixes).
> >
> > * Yocto sync on git.am.freescale.net, gitfrescale.com and
> > git.yoctoproject.org
> >
> >   * These should be much closer to the same for the layers we control.
> > Due to the limited resources spread around, we can't always get all
> > fixes in the oe-core/poky for an SDK release timely. But a lot of
> > times we can get them into the branch for that release and eventually
> > a point release. Upstream/public branches will try to work with all
> > Yocto releases, while SDK releases could contain a lot of hacks to
> > more things working.
> >
> > Best Regards,
> >
> > Zhenhua
> >
> >
> >
> > _______________________________________________
> > meta-freescale mailing list
> > meta-freescale@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/meta-freescale
> >
>=20



