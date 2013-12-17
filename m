Return-Path: <brad@evidence.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8BDAE007FA
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 11:46:15 -0800 (PST)
X-ASG-Debug-ID: 1387309574-0499bf7ce2411510001-yzSStA
Received: from MAGNI.atmoss (magni.atmoss [10.10.20.112]) by email.taser.com
	with ESMTP id xCE5YCWJVXr2Co69; Tue, 17 Dec 2013 12:46:14 -0700 (MST)
X-Barracuda-Envelope-From: brad@evidence.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
Received: from TI-ODIN.tasernet.com (172.16.1.112) by email.taser.com
	(10.10.20.112) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Tue, 17 Dec 2013 12:46:13 -0700
Received: from TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789]) by
	TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8%20]) with mapi id
	14.02.0347.000; Tue, 17 Dec 2013 12:46:12 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
From: Brad Litterell <brad@evidence.com>
X-Barracuda-BWL-IP: fe80::7c49:ae21:6650:2789
To: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
Thread-Topic: Setting PV dynamically in a recipe
X-ASG-Orig-Subj: RE: Setting PV dynamically in a recipe
Thread-Index: Ac77ABx4gKdRGDzAQM+tn2QPKyJSdwADABHAABQZYuM=
Date: Tue, 17 Dec 2013 19:46:11 +0000
Message-ID: <E51394554A503C4E852F9BEE46B03E8D019AC7CA@TI-THOR.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8D019AC4B3@TI-THOR.tasernet.com>,
	<ad9adfd66f224dd98d4ec05596eaaa8e@DM2PR03MB399.namprd03.prod.outlook.com>
In-Reply-To: <ad9adfd66f224dd98d4ec05596eaaa8e@DM2PR03MB399.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: magni.atmoss[10.10.20.112]
X-Barracuda-Start-Time: 1387309574
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0
	tests=BSF_SC0_MISMATCH_TO
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.143178
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 BSF_SC0_MISMATCH_TO    Envelope rcpt doesn't match header
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting PV dynamically in a recipe
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
X-List-Received-Date: Tue, 17 Dec 2013 19:46:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Zhenhua,=0A=
=0A=
Thank you for the reply.  However, That's not what I'm looking for.  I alre=
ady get the latest version of the source code.=0A=
=0A=
What I'm really after is the ability to generate output packages that have =
increasing version numbers so I can use the package manager to update them.=
=0A=
=0A=
I think Martin's subsequent reply is the secret to use PKGV.  I didn't know=
 about that variable.=0A=
=0A=
Cheers,=0A=
Brad=0A=
=0A=
=0A=
________________________________________=0A=
From: zhenhua.luo@freescale.com [zhenhua.luo@freescale.com]=0A=
Sent: Tuesday, December 17, 2013 1:41 AM=0A=
To: Brad Litterell=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: RE: Setting PV dynamically in a recipe=0A=
=0A=
AUTOREV might be what you are looking for.=0A=
=0A=
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-AUT=
OREV=0A=
=0A=
=0A=
Best Regards,=0A=
=0A=
Zhenhua=0A=
=0A=
> -----Original Message-----=0A=
> From: yocto-bounces@yoctoproject.org [mailto:yocto-=0A=
> bounces@yoctoproject.org] On Behalf Of Brad Litterell=0A=
> Sent: Tuesday, December 17, 2013 4:17 PM=0A=
> To: yocto@yoctoproject.org=0A=
> Subject: [yocto] Setting PV dynamically in a recipe=0A=
>=0A=
> Hi,=0A=
>=0A=
> I have a few recipes in my image that represent my own custom code.  I=0A=
> would like to generate PV dynamically from my source code, but since the=
=0A=
> recipe is parsed before the code is extracted from the tarball, that's=0A=
> not easy to do.=0A=
>=0A=
> The Poky reference manual implies this is possible:=0A=
> PV is generally not overridden within a recipe unless it is building an=
=0A=
> unstable (i.e. development) version from a source code repository (e.g.=
=0A=
> Git or Subversion).=0A=
>=0A=
> However, I have not found an actual example. Is there a recommended way=
=0A=
> to do this?=0A=
>=0A=
> Thanks,=0A=
> Brad=0A=
> _______________________________________________=0A=
> yocto mailing list=0A=
> yocto@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/yocto=0A=
>=0A=
=0A=

