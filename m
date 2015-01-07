Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD3B9E008E5; Wed,  7 Jan 2015 07:18:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [194.138.37.40 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 467 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 Jan 2015 07:18:09 PST
Received: from gecko.sbs.de (gecko.sbs.de [194.138.37.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22590E0059E
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 07:18:09 -0800 (PST)
Received: from mail1.sbs.de (localhost [127.0.0.1])
	by gecko.sbs.de (8.14.3/8.14.3) with ESMTP id t07FA7ok021381;
	Wed, 7 Jan 2015 16:10:07 +0100
Received: from DEFTHW99ERGMSX.ww902.siemens.net
	(defthw99ergmsx.ww902.siemens.net [139.22.70.132])
	by mail1.sbs.de (8.14.3/8.14.3) with ESMTP id t07FA7Uu005031
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 7 Jan 2015 16:10:07 +0100
Received: from DEFTHW99ERTMSX.ww902.siemens.net (139.22.70.200) by
	DEFTHW99ERGMSX.ww902.siemens.net (139.22.70.132) with Microsoft SMTP
	Server (TLS) id 14.3.210.2; Wed, 7 Jan 2015 16:10:06 +0100
Received: from DEFTHW99EH4MSX.ww902.siemens.net ([169.254.2.204]) by
	DEFTHW99ERTMSX.ww902.siemens.net ([139.22.70.200]) with mapi id
	14.03.0210.002; Wed, 7 Jan 2015 16:10:05 +0100
From: "Bach, Pascal" <pascal.bach@siemens.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] [yocto-docs][PATCH 1/2] ref-manual: Document USE_DEVFS
	variable
Thread-Index: AQHQKoptHE5fJZq6CkGJZJO5epZ+nJy0r6eAgAARecD///A6AIAAEP8A
Date: Wed, 7 Jan 2015 15:10:04 +0000
Message-ID: <355BE46A91031048906B695426A8D8E616B20F88@DEFTHW99EH4MSX.ww902.siemens.net>
References: <1420642704-1482-1-git-send-email-pascal.bach@siemens.com>
	<alpine.LFD.2.11.1501071000360.18353@localhost>
	<355BE46A91031048906B695426A8D8E616B20F64@DEFTHW99EH4MSX.ww902.siemens.net>
	<alpine.LFD.2.11.1501071006380.18694@localhost>
In-Reply-To: <alpine.LFD.2.11.1501071006380.18694@localhost>
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
X-List-Received-Date: Wed, 07 Jan 2015 15:18:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> > >
> > > > Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
> > > > ---
> > > >  documentation/ref-manual/ref-variables.xml |   17
> +++++++++++++++++
> > > >  1 file changed, 17 insertions(+)
> > > >
> > > > diff --git a/documentation/ref-manual/ref-variables.xml
> > > b/documentation/ref-manual/ref-variables.xml
> > > > index e3272fe..7907220 100644
> > > > --- a/documentation/ref-manual/ref-variables.xml
> > > > +++ b/documentation/ref-manual/ref-variables.xml
> > > > @@ -11199,6 +11199,23 @@ recipes-graphics/xorg-font/font-
> > > alias_1.0.3.bb:PR =3D "${INC_PR}.3"
> > > >              </glossdef>
> > > >          </glossentry>
> > > >
> > > > +        <glossentry id=3D'var-USE_DEVFS'><glossterm><imagedata
> > > fileref=3D"figures/define-generic.png" />USE_DEVFS</glossterm>
> > > > +            <info>
> > > > +               USE_DEVFS[doc] =3D "Determines if devtmps is used f=
or/dev
> > > population."
> > >                                                   ^^^^^^^ ??
> > >
> >
> > Sorry I don' t understand what you mean. Could you please elaborate?
>=20
>   should that not say "devtmpfs", not "devtmps"?
>=20
Of course :)=20
I didn't see it sorry even with you nice underlining ;). Thanks for pointin=
g it out.

Should I resubmit the patch or is it easier if the committing person fixes =
it?

Pascal

