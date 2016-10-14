Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E97BE008FB; Fri, 14 Oct 2016 14:55:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA67BE00874
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 14:55:51 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga105.fm.intel.com with ESMTP; 14 Oct 2016 14:55:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,346,1473145200"; d="scan'208";a="1070584840"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga002.fm.intel.com with ESMTP; 14 Oct 2016 14:55:50 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Fri, 14 Oct 2016 14:55:49 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.16]) by
	ORSMSX162.amr.corp.intel.com ([10.22.240.85]) with mapi id
	14.03.0248.002; Fri, 14 Oct 2016 14:55:49 -0700
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: "winfried.dobbe@xmsnet.nl" <winfried.dobbe@xmsnet.nl>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-mingw] Patch needed to let linker find lto plugin
Thread-Index: AQHSJkCheJXLNudKDUKv93VjpT9H66CoPJOggAB/gwD//8IM8A==
Date: Fri, 14 Oct 2016 21:55:48 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B61189A7C1@ORSMSX112.amr.corp.intel.com>
References: <f419ba0dedc9dd5e42222c811d75f486@xmsnet.nl>
	<6E51916E4A1F32428260031F4C7CD2B61189A70C@ORSMSX112.amr.corp.intel.com>
	<23c205ffb395310e7bb1c581cfe40df8@xmsnet.nl>
In-Reply-To: <23c205ffb395310e7bb1c581cfe40df8@xmsnet.nl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [meta-mingw] Patch needed to let linker find lto plugin
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
X-List-Received-Date: Fri, 14 Oct 2016 21:55:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks. I will re-run some basic tests again and
send the patch by Mark Hatle (applied to meta-mingw/krogoth) to the mailing=
 list.
=20
> -----Original Message-----
> From: winfried.dobbe@xmsnet.nl [mailto:winfried.dobbe@xmsnet.nl]
> Sent: Friday, October 14, 2016 11:35 AM
> To: Bystricky, Juro <juro.bystricky@intel.com>; yocto@yoctoproject.org
> Cc: Hatle, Mark G (Wind River) <mark.hatle@windriver.com>
> Subject: RE: [meta-mingw] Patch needed to let linker find lto plugin
>=20
> Hi Juro,
>=20
> My Yocto environment is for the Congatec QMX6 SoM that is built around a
> quadcore i.MX6.
> I use the Yocto layers from the Congatec repository
> (https://git.congatec.com/public), which includes the meta-fsl-arm and
> meta-fsl-arm-extra layers.
>=20
> My bblayers.conf is:
>=20
> BBLAYERS =3D " \
>    ${BSPDIR}/sources/poky/meta \
>    ${BSPDIR}/sources/poky/meta-poky \
>    \
>    ${BSPDIR}/sources/meta-openembedded/meta-oe \
>    ${BSPDIR}/sources/meta-openembedded/meta-multimedia \
>    ${BSPDIR}/sources/meta-openembedded/meta-python \
>    ${BSPDIR}/sources/meta-openembedded/meta-networking \
>    \
>    ${BSPDIR}/sources/meta-fsl-arm \
>    ${BSPDIR}/sources/meta-fsl-arm-extra \
>    ${BSPDIR}/sources/meta-fsl-demos \
>    \
>    ${BSPDIR}/sources/meta-mingw \
>    \
>    ${BSPDIR}/sources/meta-peek \
>    ${BSPDIR}/sources/meta-peek-ecng \
> "
>=20
> The image I normally build (peek-image-ecng-acu-default) is based upon
> the core-image-full-cmdline image.
>=20
> I built the MinGW SDK by adding SDKMACHINE=3D"x86_64-mingw32" to my
> local.conf and typing the command "bitbake peek-image-ecng-acu-default
> -c populate_sdk".
>=20
> I attended the Yocto developer day in Berlin last week. When I showed
> the MinGW linker LTO plugin error to Mark Hatle, he suggested applying
> his patch.
>=20
> best regards,
>=20
> Winfried
>=20
>=20
> Bystricky, Juro schreef op 14.10.2016 20:04:
> > Could you please elaborate on what do you mean by "built it as-is".
> > I tested the meta layer with some cases I considered typical
> > or most common. (I think I enumerated them in my original
> > message). Apparently I missed one.
> >
> > Thanks
> >
> > Juro
> >
> >
> >> -----Original Message-----
> >> From: Winfried [mailto:winfried_mb2@xmsnet.nl]
> >> Sent: Friday, October 14, 2016 10:26 AM
> >> To: yocto@yoctoproject.org
> >> Cc: Bystricky, Juro <juro.bystricky@intel.com>
> >> Subject: [meta-mingw] Patch needed to let linker find lto plugin
> >>
> >> Recently the meta-mingw layer was updated to krogoth by Juro
> >> Bystricky.
> >> Thanks !
> >> However when I build it as-is, the linker fails because it can't load
> >> the lto plugin.
> >>
> >> After applying commit a06e473590207f72b11d273a09de2c8a889c381e from
> >> meta-mingw-contrib (by Mark Hatle), the error disappeared.
> >>
> >> See:
> >> http://git.yoctoproject.org/cgit/cgit.cgi/meta-mingw-
> >> contrib/commit/?h=3Dmgh/jetho/meta-
> >> mingw&id=3Da06e473590207f72b11d273a09de2c8a889c381e
> >>
> >> regards,
> >> W. Dobbe

