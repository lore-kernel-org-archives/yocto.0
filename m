Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8CCFE00AF2; Mon, 19 Mar 2018 00:38:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25C7EE007DA
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 00:38:48 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w2J7cfZU023516
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 19 Mar 2018 00:38:42 -0700
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.201]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0361.001;
	Mon, 19 Mar 2018 00:38:41 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: Kosta Zertsekel <KZertsekel@advaoptical.com>, Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Fix 'PACKAGES' in net-snmp recipe
Thread-Index: AQHTvoI+I1CZrhQdBkCu5BrxH5AdgaPW/52A///IbzCAAASyMIAARmI3gAAS0AA=
Date: Mon, 19 Mar 2018 07:38:40 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA0158690408@ALA-MBD.corp.ad.wrs.com>
References: <VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50@VI1PR0202MB2559.eurprd02.prod.outlook.com>
	<CAMKF1soDUVjKrfsrbmp9a-g+vZdrgtAwO-oH91wMG5BwtWzfXg@mail.gmail.com>
	,<1B858668EC6A94408DCA5225FDFA85AA015868FE71@ALA-MBD.corp.ad.wrs.com>
	<VI1PR0202MB2559BE6972EE480053BC63D4CDD40@VI1PR0202MB2559.eurprd02.prod.outlook.com>
In-Reply-To: <VI1PR0202MB2559BE6972EE480053BC63D4CDD40@VI1PR0202MB2559.eurprd02.prod.outlook.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.176.181]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Zhou,
	Li" <Li.Zhou@windriver.com>, "Enache,
	Catalin" <Catalin.Enache@windriver.com>
Subject: Re: Fix 'PACKAGES' in net-snmp recipe
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
X-List-Received-Date: Mon, 19 Mar 2018 07:38:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
>=20
> From: Kosta Zertsekel [mailto:KZertsekel@advaoptical.com]=20
> Sent: Monday, March 19, 2018 14:17
> To: Huang, Jie (Jackie); Khem Raj
> Cc: yocto@yoctoproject.org; Enache, Catalin; Zhou, Li
> Subject: Re: [yocto] Fix 'PACKAGES' in net-snmp recipe
>=20
> > are there specific issue you are seeing besides the packages being empt=
y ?
> > I would suggest to apply _remove operation to remove the empty packages
> > if needed from PACKAGES variable
>=20
> No any other specific issues are seen.
>=20
> > I agree, I don't think it's an issue that the packages
> > being empty, and actually they're handled properly with:
> >=20
> > ALLOW_EMPTY_${PN} =3D "1"
> > ALLOW_EMPTY_${PN}-server =3D "1"
> >=20
> > RDEPENDS_${PN} +=3D "${@bb.utils.contains('PACKAGECONFIG', 'perl', 'net=
-snmp-perl-modules', '', d)}"
> > RDEPENDS_${PN} +=3D "net-snmp-client"
> > RDEPENDS_${PN}-server +=3D "net-snmp-server-snmpd net-snmp-server-snmpt=
rapd"
> >=20
> > So you can assume that "net-snmp" =3D "net-snmp-client" ( plus 'net-snm=
p-perl-modules'
> > if 'perl' packgeconfig is enabled ), and "net-snmp-server" =3D " net-sn=
mp-server-snmpd"
> > +"net-snmp-server-snmptrapd "=20
>=20
> So, you mean that 'PACKAGEs =3D ...' was changed to 'PACKAGES +=3D ...' i=
n order
> to create the default packages (${PN}, ${PN}-doc, ${PN}-locale, etc.) tha=
t are

It was changed for two reasons referred to the commit 5eec0615e:

"""
    - Change to use append for PACKAGES so that:
      * ptest package is added from ptest bbcalss
      * the PN is back, allow empty and add rdepends on net-snmp-client
        in case the user try to add net-snmp to the image
"""

1) The 'PACKAGEs =3D ...' will override the definition from bbclass like pt=
est.bbclass
2) We had customers assume that the ${PN} package for each recipe always ex=
ist so when they wanted to
    use net-snmp clients, they tried to install net-snmp but failed.

If you don't like the solution, you can use _remove operation to remove PN =
from PACKAGES.

Other default packages like ${PN}-doc and ${PN}-locale, them are also empty=
 for many other recipes,
I don't think it's an issue, so no need to re-define the PACKAGES or remove=
 them with _remove operation.

Thanks,
Jackie



> empty? Is there a chance it was done to satisfy a default dependencies in
> bitbake.conf? I just fail to see the original meaning...
> --- Kosta Z.
> ________________________________________
> From: Huang, Jie (Jackie) <Jackie.Huang@windriver.com>
> Sent: Monday, March 19, 2018 3:56:28 AM
> To: Khem Raj; Kosta Zertsekel
> Cc: yocto@yoctoproject.org; Enache, Catalin; Zhou, Li
> Subject: RE: [yocto] Fix 'PACKAGES' in net-snmp recipe=20
> =20
>=20
>=20
> > -----Original Message-----
> > From: Huang, Jie (Jackie)
> > Sent: Monday, March 19, 2018 09:51
> > To: 'Khem Raj'; Kosta Zertsekel
> > Cc: yocto@yoctoproject.org; Enache, Catalin; Zhou, Li
> > Subject: RE: [yocto] Fix 'PACKAGES' in net-snmp recipe
> >=20
> >=20
> >=20
> > > -----Original Message-----
> > > From: Khem Raj [mailto:raj.khem@gmail.com]
> > > Sent: Monday, March 19, 2018 05:54
> > > To: Kosta Zertsekel
> > > Cc: yocto@yoctoproject.org; Huang, Jie (Jackie); Enache, Catalin; Zho=
u, Li
> > > Subject: Re: [yocto] Fix 'PACKAGES' in net-snmp recipe
> > >
> > > On Sat, Mar 17, 2018 at 11:46 PM, Kosta Zertsekel
> > > <KZertsekel@advaoptical.com> wrote:
> > > > Hi guys,
> > > >
> > > >
> > > > As for now (master branch) 'PACKAGES' variable in net-snmp equals t=
o:
> > > >
> > > > ```
> > > >
> > > > $ bitbake -e net-snmp | grep "^PACKAGES=3D"
> > > >
> > > > PACKAGES=3D"net-snmp-dbg net-snmp-staticdev net-snmp-dev net-snmp-d=
oc
> > > > net-snmp-locale  net-snmp net-snmp-libs net-snmp-mibs net-snmp-serv=
er
> > > > net-snmp-client net-snmp-server-snmpd net-snmp-server-snmptrapd "
> > > > ```
> > > >
> > > > This seems to be wrong as many built packages from 'packages-split'
> > > > directory of net-snmp are empty:
> > > >
> > > > ```
> > > > $ du -a --max-depth=3D1 . | sort -n
> > > > 4    ./net-snmp
> > > > 4    ./net-snmp-client.shlibdeps
> > > > 4    ./net-snmp-doc
> > > > 4    ./net-snmp-libs.shlibdeps
> > > > 4    ./net-snmp-locale
> > > > 4    ./net-snmp-server
> > > > 4    ./net-snmp-server-snmpd.shlibdeps
> > > > 4    ./net-snmp-server-snmptrapd.shlibdeps
> > > > 4    ./net-snmp-staticdev
> > > > 48    ./net-snmp-server-snmptrapd
> > > > 72    ./net-snmp-server-snmpd
> > > > 1208    ./net-snmp-dev
> > > > 1480    ./net-snmp-client
> > > > 1812    ./net-snmp-mibs
> > > > 2872    ./net-snmp-libs
> > > > 15308    ./net-snmp-dbg
> > > > ```
> > > >
> > > > Well, the culprit commit is 5eec0615e548f58ecdfadfc45af5805eeb58f69=
c where
> > > > the below change has happened:
> > > > ```
> > > > -PACKAGES =3D "${PN}-dbg ${PN}-doc ${PN}-dev ${PN}-staticdev ${PN}-=
static
> > > > ${PN}-libs \
> > > > -            ${PN}-mibs ${PN}-server ${PN}-client ${PN}-server-snmp=
d
> > > > ${PN}-server-snmptrapd"
> > > > +PACKAGES +=3D "${PN}-libs ${PN}-mibs ${PN}-server ${PN}-client
> > > > ${PN}-server-snmpd ${PN}-server-snmptrapd"
> > > > ```
> > > >
> > > > This new 'PACKAGES' variable is wrong IMHO, because it contains
> > > > the 'net-snmp' package and other empty packages.
> > > >
> > > >
> > > > Please review (and apply if ok) the attached commit that fixes it.
> > > >
> > >
> > > are there specific issue you are seeing besides the packages being em=
pty ?
> > > I would suggest to apply _remove operation to remove the empty packag=
es
> > > if needed from PACKAGES variable
> >=20
> > I agree, I don't think it's an issue that the packages being empty, and=
 actually they're handled properly with:
> >=20
> > ALLOW_EMPTY_${PN} =3D "1"
> > ALLOW_EMPTY_${PN}-server =3D "1"
> >=20
> > RDEPENDS_${PN} +=3D "${@bb.utils.contains('PACKAGECONFIG', 'perl', 'net=
-snmp-perl-modules', '', d)}"
> > RDEPENDS_${PN} +=3D "net-snmp-client"
> > RDEPENDS_${PN}-server +=3D "net-snmp-server-snmpd net-snmp-server-snmpt=
rapd"
> >=20
> > So you can assume that "net-snmp" =3D "net-snmp-client" ( plus 'net-snm=
p-perl-modules' if 'perl' packgeconfig
> > is enabled ), and "net-snmp-server" =3D " net-snmp-server-snmpd" + "net=
-snmp-server-snmptrapd "
>=20
> And if you really want to remove them with _remove operations, you may al=
so need to remove the RDEPENDS.
>=20
> Thanks,
> Jackie
>=20
> >=20
> > Thanks,
> > Jackie
> >=20
> > >
> > > >
> > > > Thanks,
> > > >
> > > > --- Kosta Z.
> > > >
> > > >
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto
> > > >
>

