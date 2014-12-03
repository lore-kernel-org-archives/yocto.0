Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 075D8E0086F; Tue,  2 Dec 2014 20:42:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E16DE00521
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 20:42:28 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sB34gReB002633
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 2 Dec 2014 20:42:28 -0800 (PST)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.2.253]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0174.001;
	Tue, 2 Dec 2014 20:42:27 -0800
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>
Thread-Topic: [yocto] [meta-realtime][PATCH] meta-realtime: Add LAYERVERSION
	and LAYERDEPENDS
Thread-Index: AQHQDrAB5nptcKQ1r0KPJM6F8BWebpx9SRfw
Date: Wed, 3 Dec 2014 04:42:26 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AABD5A8C34@ALA-MBA.corp.ad.wrs.com>
References: <1417573094-19052-1-git-send-email-jackie.huang@windriver.com>
	<547E8EC4.4010702@windriver.com>
In-Reply-To: <547E8EC4.4010702@windriver.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.162.131]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-realtime][PATCH] meta-realtime: Add LAYERVERSION and LAYERDEPENDS
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
X-List-Received-Date: Wed, 03 Dec 2014 04:42:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Wednesday, December 03, 2014 12:17 PM
> To: Huang, Jie (Jackie); yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-realtime][PATCH] meta-realtime: Add LAYERVERSI=
ON and LAYERDEPENDS
>=20
> On 2014-12-02, 9:18 PM, jackie.huang@windriver.com wrote:
> > From: Jackie Huang <jackie.huang@windriver.com>
>=20
> I happened to notice this and have grabbed the change. But make sure
> your workflow adds maintainers to the cc on patches, otherwise you
> can't blame anyone if they are missed/dropped.

Sorry, I will add maintainers next time.

Thanks,
Jackie

>=20
> Bruce
>=20
> >
> > According to README, it depends on oe-core layer
> >
> > Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> > ---
> >   conf/layer.conf |    6 ++++++
> >   1 files changed, 6 insertions(+), 0 deletions(-)
> >
> > diff --git a/conf/layer.conf b/conf/layer.conf
> > index 5a5c460..473158e 100644
> > --- a/conf/layer.conf
> > +++ b/conf/layer.conf
> > @@ -11,3 +11,9 @@ BBFILE_PRIORITY_realtime =3D "5"
> >
> >   # Additional license directories.
> >   # LICENSE_PATH +=3D "${LAYERDIR}/custom-licenses"
> > +
> > +# This should only be incremented on significant changes that will
> > +# cause compatibility issues with other layers
> > +LAYERVERSION_realtime =3D "1"
> > +
> > +LAYERDEPENDS_realtime =3D "core"
> >


