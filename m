Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9852E0089B; Wed,  7 Jan 2015 07:04:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.35.17.14 listed in list.dnswl.org]
Received: from david.siemens.de (david.siemens.de [192.35.17.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79B43E005A9
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 07:04:29 -0800 (PST)
Received: from mail2.sbs.de (localhost [127.0.0.1])
	by david.siemens.de (8.14.3/8.14.3) with ESMTP id t07F4Hk4016572;
	Wed, 7 Jan 2015 16:04:17 +0100
Received: from DEFTHW99ERIMSX.ww902.siemens.net
	(defthw99erimsx.ww902.siemens.net [139.22.70.134])
	by mail2.sbs.de (8.14.3/8.14.3) with ESMTP id t07F4Gxu003478
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 7 Jan 2015 16:04:16 +0100
Received: from DEFTHW99ERRMSX.ww902.siemens.net (139.22.70.199) by
	DEFTHW99ERIMSX.ww902.siemens.net (139.22.70.134) with Microsoft SMTP
	Server (TLS) id 14.3.210.2; Wed, 7 Jan 2015 16:04:16 +0100
Received: from DEFTHW99EH4MSX.ww902.siemens.net ([169.254.2.204]) by
	DEFTHW99ERRMSX.ww902.siemens.net ([139.22.70.199]) with mapi id
	14.03.0210.002; Wed, 7 Jan 2015 16:04:16 +0100
From: "Bach, Pascal" <pascal.bach@siemens.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] [yocto-docs][PATCH 1/2] ref-manual: Document USE_DEVFS
	variable
Thread-Index: AQHQKoptHE5fJZq6CkGJZJO5epZ+nJy0r6eAgAARecA=
Date: Wed, 7 Jan 2015 15:04:15 +0000
Message-ID: <355BE46A91031048906B695426A8D8E616B20F64@DEFTHW99EH4MSX.ww902.siemens.net>
References: <1420642704-1482-1-git-send-email-pascal.bach@siemens.com>
	<alpine.LFD.2.11.1501071000360.18353@localhost>
In-Reply-To: <alpine.LFD.2.11.1501071000360.18353@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [139.22.70.51]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-docs][PATCH 1/2] ref-manual: Document USE_DEVFS variable
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
X-List-Received-Date: Wed, 07 Jan 2015 15:04:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
> > Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
> > ---
> >  documentation/ref-manual/ref-variables.xml |   17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >
> > diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> > index e3272fe..7907220 100644
> > --- a/documentation/ref-manual/ref-variables.xml
> > +++ b/documentation/ref-manual/ref-variables.xml
> > @@ -11199,6 +11199,23 @@ recipes-graphics/xorg-font/font-
> alias_1.0.3.bb:PR =3D "${INC_PR}.3"
> >              </glossdef>
> >          </glossentry>
> >
> > +        <glossentry id=3D'var-USE_DEVFS'><glossterm><imagedata
> fileref=3D"figures/define-generic.png" />USE_DEVFS</glossterm>
> > +            <info>
> > +               USE_DEVFS[doc] =3D "Determines if devtmps is used for/d=
ev
> population."
>                                                   ^^^^^^^ ??
>=20

Sorry I don' t understand what you mean. Could you please elaborate?

Thanks

Pascal

