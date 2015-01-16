Return-Path: <Neil.Wu@emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1728BE00782; Thu, 15 Jan 2015 17:14:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from esa5.emerson-outbound.iphmx.com
	(esa5.emerson-outbound.iphmx.com [68.232.143.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19901E006AF
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 17:13:58 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.09,407,1418061600"; 
   d="scan'208";a="250425"
Received: from usstlz-pinfez08.extemr.org ([144.191.128.192])
	by esa5.emerson-outbound.iphmx.com with ESMTP/TLS/AES128-SHA;
	16 Jan 2015 07:13:58 +0600
Received: from USSTLZ-PMSG006.emrsn.org (10.16.72.188) by
	USSTLZ-PINFEZ08.extemr.org (10.16.8.81) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Fri, 16 Jan 2015 01:13:55 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.242]) by
	USSTLZ-PMSG006.emrsn.org ([169.254.1.21]) with mapi id 14.03.0158.001;
	Fri, 16 Jan 2015 01:13:55 +0000
From: <Neil.Wu@Emerson.com>
To: <bruce.ashfield@windriver.com>, <yocto@yoctoproject.org>
Thread-Topic: [yocto] can't find the source code of kernel
Thread-Index: AQHQMMQweld3engESky+c6/UsQQsXpzB6nxg
Date: Fri, 16 Jan 2015 01:13:54 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8522763CBF5@USSTLZ-PMSG012.emrsn.org>
References: <20141211004713.GC4102@mentor.com>
	<1077253035.5058800.1418282511482.JavaMail.yahoo@jws10079.mail.ne1.yahoo.com>
	<3204FE6663E1F14CAF4CA6928E60C8522763CB6C@USSTLZ-PMSG012.emrsn.org>
	<54B7BAE5.7020700@windriver.com>
In-Reply-To: <54B7BAE5.7020700@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Subject: Re: can't find the source code of kernel
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
X-List-Received-Date: Fri, 16 Jan 2015 01:14:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Bruce
Thank you for your reply.=20
In the WORKDIR , it just has "linux-qemuarm-standard-build" and not have th=
e "linux".

My WORKDIR directory is "~/poky/build/tmp/work/qemuarm-poky-linux-gnueabi/l=
inux-yocto/3.14.24+gitAUTOINC+a227f20eff_6166316d47-r0", but I don't find t=
he tarball of "linux-14.24"=20
in download directory. It has tarball "linux-17.7.tar.xz".

Do you think whether these is the reason?

I don't know how to set the version of linux when the project  building the=
 image.
Maybe, I set the linux to 17.7 version, the problem can solve.

Do you have any other better suggestion? Thank you very much.

Neil =20


-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Thursday, January 15, 2015 9:05 PM
To: Wu, Neil [CLIMATE/RS/CN]; yocto@yoctoproject.org
Subject: Re: [yocto] can't find the source code of kernel

On 2015-01-15 5:03 AM, Neil.Wu@Emerson.com wrote:
> Hi ,all
>
> The version of poky is 1.7. I build the linux-yocto is  successful .
>
> bitbake linux-yocto
>
> But, why I can't find the source code of linux  in ${WORKDIR}.

It should be there (note: it is about to move in master, but not in 1.7.1).

In WORKDIR, you have "linux" (the source) and linux-$MACHINE-build (the=20
build).

Bruce

>
> Best wishes
>
> Neil
>
>
>


