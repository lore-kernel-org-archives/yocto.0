Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0C27E00C62; Sat, 30 Sep 2017 00:28:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01149E00C01
	for <yocto@yoctoproject.org>; Sat, 30 Sep 2017 00:28:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8U7STXP031526
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Sat, 30 Sep 2017 00:28:30 -0700
Received: from ALA-MBC.corp.ad.wrs.com ([169.254.1.180]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0361.001;
	Sat, 30 Sep 2017 00:28:29 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: "Du, Dengke" <Dengke.Du@windriver.com>
Thread-Topic: [yocto] [meta-security][PATCH] keynote: update the SRC_URI
Thread-Index: AQHTOZm1hGyuun43jkqy439v/00bpKLNB5Hw
Date: Sat, 30 Sep 2017 07:28:28 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA014B8CB4E8@ALA-MBC.corp.ad.wrs.com>
References: <1506736521-34304-1-git-send-email-dengke.du@windriver.com>
	<b2e1fd3c-4608-c1d0-fe59-7d722b215ec7@windriver.com>
In-Reply-To: <b2e1fd3c-4608-c1d0-fe59-7d722b215ec7@windriver.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.176.125]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH] keynote: update the SRC_URI
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
X-List-Received-Date: Sat, 30 Sep 2017 07:28:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Randy MacLeod
> Sent: Saturday, September 30, 2017 11:10
> To: Du, Dengke; yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-security][PATCH] keynote: update the SRC_URI
>=20
> On 2017-09-29 09:55 PM, Dengke Du wrote:
> > The old URL can't be available, give the new URL to keynote.
> > The project already moved to:
> >
> >      https://sourceforge.net/projects/keynote-2-3/
> >
> > Signed-off-by: Dengke Du <dengke.du@windriver.com>
> > ---
> >   recipes-security/keynote/keynote_2.3.bb | 9 ++++++---
> >   1 file changed, 6 insertions(+), 3 deletions(-)
> >
> > diff --git a/recipes-security/keynote/keynote_2.3.bb b/recipes-
> security/keynote/keynote_2.3.bb
> > index b1df880..23e75e4 100644
> > --- a/recipes-security/keynote/keynote_2.3.bb
> > +++ b/recipes-security/keynote/keynote_2.3.bb
> > @@ -9,16 +9,19 @@ SECTION =3D "security"
> >   LICENSE =3D "ISC"
> >   LIC_FILES_CHKSUM =3D
> "file://LICENSE;md5=3D3a265095c549c1808686a676f2699c98"
> >
> > -SRC_URI =3D "http://www.cs.columbia.edu/~angelos/Code/${BPN}.tar.gz \
> > +MAIN_ID =3D "${@d.getVar('PV').split('.')[0]}"
> > +MINOR_ID =3D "${@d.getVar('PV').split('.')[1]}"
> > +SRC_URI =3D "${SOURCEFORGE_MIRROR}/project/${PN}-${MAIN_ID}-
> ${MINOR_ID}/${PN}_${PV}.tar.gz \

s/PN/BPN/

> >          file://configure-remove-hardcode-path.patch \
> >          file://makefile-add-ldflags.patch \
> >          file://run-ptest \
> >   "
> > +S =3D "${WORKDIR}/${PN}-${PV}+dfsg.orig"

s/PN/BPN/

Dengke, please fix and re-send.

Thanks,
Jackie

> >
> >   inherit autotools-brokensep ptest
> >
> > -SRC_URI[md5sum] =3D "ba58a0297c421dc6aa671e6b753ef695"
> > -SRC_URI[sha256sum] =3D
> "62f7a9d57ceb6bcdd47b604b637a7ac8ed337cef0ab02f1fa28b7e61c9b15821"
> > +SRC_URI[md5sum] =3D "a14553e6ad921b5c85026ce5bec3afe7"
> > +SRC_URI[sha256sum] =3D
> "38d2acfa1c3630a07adcb5c8fe92d2aef7f0e6d242b8998b2bbb1c6e4c408d46"
>=20
> Denke tells me that the source is identical but docs were added
> so the checksums have changed.
>=20
> ../Randy
>=20
> >
> >   DEPENDS =3D "flex openssl"
> >
> >
>=20
>=20
> --
> # Randy MacLeod.  WR Linux
> # Wind River an Intel Company
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

