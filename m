Return-Path: <PatrickTurley@gamestop.com>
Received: from GSIRONPORTB.gamestop.com (mail2.gamestop.com [12.25.107.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07C26E00524
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 15:56:12 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.80,531,1344229200"; d="scan'208";a="43107053"
Received: from unknown (HELO GV1HQPEX02.babgsetc.pvt) ([172.22.1.244])
	by GSIRONPORTB.gamestop.com with ESMTP; 03 Oct 2012 17:56:12 -0500
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.67]) by
	GV1HQPEX02.babgsetc.pvt ([172.22.1.192]) with mapi id 14.02.0283.003;
	Wed, 3 Oct 2012 17:56:09 -0500
From: Patrick Turley <PatrickTurley@gamestop.com>
To: Patrick Turley <PatrickTurley@gamestop.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] The BitBake equivalent of "Hello, World!"
Thread-Index: AQHNobawsFl2O8i4ZUWCT5ZGDLdssJeoMR8A
Date: Wed, 3 Oct 2012 22:56:09 +0000
Message-ID: <CC922B79.368%PatrickTurley@gamestop.com>
In-Reply-To: <CC9226B2.365%PatrickTurley@gamestop.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Subject: Re: The BitBake equivalent of "Hello, World!"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Oct 2012 22:56:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C4802A64A3E7D44491820737699CBF8D@gamestop.com>
Content-Transfer-Encoding: quoted-printable

In my previous message, some of the indentation in the representation of
my file tree was wrong (because we're using Outlook, which destroy all
indentation when you paste it into an e-mail message). The errors are
small, but I want to avoid annoying anyone who might think I don't even
have the file tree constructed correctly.

The following is accurate:

>/home/pturley/Workspace/woohoo
>    |
>    +-- build
>    |   |
>    |   +-- classes
>    |   |   |
>    |   |   +-- base.bbclass
>    |   |
>    |   |     +-------------------------------------------
>    |   |     | do_hello() {
>    |   |     |     echo Hello
>    |   |     | }
>    |   |     |
>    |   |     | addtask hello
>    |   |     +-------------------------------------------
>    |   |
>    |   +-- conf
>    |       |
>    |       +-- bblayers.conf
>    |       |
>    |       | +-------------------------------------------
>    |       | | BBLAYERS ?=3D " \
>    |       | |   /home/pturley/Workspace/woohoo/LayerA \
>    |       | |   "
>    |       | +-------------------------------------------
>    |       |
>    |       +-- bitbake.conf
>    |
>    |         +-------------------------------------------
>    |         | CACHE =3D "${TOPDIR}/cache"
>    |         +-------------------------------------------
>    |
>    +-- LayerA
>    |   |
>    |   +-- a.bb
>    |   |
>    |   |     +-------------------------------------------
>    |   |     | PN =3D 'a'
>    |   |     | PV =3D '1'
>    |   |     +-------------------------------------------
>    |   |
>    |   +-- conf
>    |       |
>    |       +-- layer.conf
>    |
>    |         +-------------------------------------------
>    |         | BBPATH .=3D ":${LAYERDIR}"
>    |         | BBFILES +=3D "${LAYERDIR}/*.bb"
>    |         +-------------------------------------------
>    |
>    +-- BitBake ...
>
>    The BitBake directory origin is:
>
>        http://git.openembedded.org/bitbake/
>
>    I have the 1.15.2 tag checked out, which is what
>    Yocto denzil uses.


