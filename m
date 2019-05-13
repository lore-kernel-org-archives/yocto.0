Return-Path: <prvs=029d61d29=Mikko.Rapeli@bmw.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CEEEE00D4E; Mon, 13 May 2019 04:45:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [68.232.133.109 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from esa7.bmw.c3s2.iphmx.com (esa7.bmw.c3s2.iphmx.com
	[68.232.133.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFB3CE00B8F
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 04:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
	t=1557747952; x=1589283952;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=4q94rIk4F5pIISVemD3aV2V6LQldZtKjRbgfVaTQ9wY=;
	b=USZxf91vU6FPDqC3TSp9h5B/R+d+GWSXAu71zt5TIlEa4dXSa/YnR2FR
	dPjzcsFzVqwD6WEpAeOMAbNP7pZThHDCGq9dTwnSJB+j4txMbOqa6LSvQ
	qnuhV9xEU48DKSrGNw/LzZo6gItLYb8huzzx3LjEFW12IY+uQn2d+nOAf g=;
Received: from esagw1.bmwgroup.com (HELO esagw1.muc) ([160.46.252.34]) by
	esa7.bmw.c3s2.iphmx.com with ESMTP/TLS; 13 May 2019 13:45:50 +0200
Received: from esabb2.muc ([160.50.100.34])  by esagw1.muc with ESMTP/TLS;
	13 May 2019 13:45:50 +0200
Received: from smucm10k.bmwgroup.net (HELO smucm10k.europe.bmw.corp)
	([160.48.96.47])
	by esabb2.muc with ESMTP/TLS; 13 May 2019 13:45:49 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by
	smucm10k.europe.bmw.corp
	(160.48.96.47) with Microsoft SMTP Server (TLS;
	Mon, 13 May 2019 13:45:49 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
	smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.004;
	Mon, 13 May 2019 13:45:49 +0200
From: <Mikko.Rapeli@bmw.de>
To: <star@gmx.li>
Thread-Topic: [yocto] long time for starting sshd (wait for crng init done ?)
Thread-Index: AQHVCXw9HJuJByWB60uPZH9f+9r1IaZozlGA
Date: Mon, 13 May 2019 11:45:49 +0000
Message-ID: <20190513114549.GL3459@hiutale>
References: <trinity-386cbe71-496d-4846-b7f6-5a3c5b4b7170-1557745665241@3c-app-gmx-bs34>
In-Reply-To: <trinity-386cbe71-496d-4846-b7f6-5a3c5b4b7170-1557745665241@3c-app-gmx-bs34>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.221.46]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: long time for starting sshd (wait for crng init done ?)
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
X-List-Received-Date: Mon, 13 May 2019 11:45:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <CB9724FF2AD98B4FABE4DFAC3C0E6B19@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, May 13, 2019 at 01:07:45PM +0200, star@gmx.li wrote:
> >From yocto 2.5 to 2.7 I noticed a change in booting. The kernel stops fo=
r around 85 seconds.
> It seems to me that starting sshd takes time until crng init is done.
> In 2.5 it doesn't wait for that. How can I avoid that?
> Maybe I have to add that I use a recipe that adds keys as rootfs is usual=
ly r/o.

Depends on your HW platform, kernel version etc, but one possible solution
is installing rng-tools binary package which starts rngd at boot.

See http://lists.openembedded.org/pipermail/openembedded-core/2019-May/2820=
21.html

-Mikko

> Another think I have observed (which is not clear to me): I don't get a m=
essage from system message bus anymore. ???
>=20
> Instead of it udevd complains about "specific group 'kvm' unknown. Lookin=
g into source there are  mentioned:
> # The static_node is required on s390x and ppc (they are using MODULE_ALI=
AS)
> So, can I safely ignore that (use ARM).
>=20
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=

