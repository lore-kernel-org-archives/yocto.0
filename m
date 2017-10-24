Return-Path: <prvs=0470c49b3c=alan.levy@plextek.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02D85E00B67; Mon, 23 Oct 2017 23:54:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.254.222.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 129 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Oct 2017 23:54:00 PDT
Received: from mailgate.plextek.co.uk (mailgate.plextek.co.uk [62.254.222.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B02C9E00AAF
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 23:54:00 -0700 (PDT)
Received: from plextek-exch1.plextek.lan ([10.10.0.152]:31345)
	by mailgate.plextek.co.uk with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <alan.levy@plextek.com>)
	id 1e6t3q-0004Jv-3D; Tue, 24 Oct 2017 07:51:39 +0100
Received: from PLEXTEK-EXCH1.plextek.lan (10.10.0.152) by
	PLEXTEK-EXCH1.plextek.lan (10.10.0.152) with Microsoft SMTP Server
	(TLS) id 15.0.847.32; Tue, 24 Oct 2017 07:51:02 +0100
Received: from PLEXTEK-EXCH1.plextek.lan ([fe80::35f8:d18b:b59a:bd7e]) by
	PLEXTEK-EXCH1.plextek.lan ([fe80::35f8:d18b:b59a:bd7e%18]) with mapi id
	15.00.0847.030; Tue, 24 Oct 2017 07:50:45 +0100
From: Alan Levy <alan.levy@plextek.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: yocto Digest, Vol 85, Issue 78
Thread-Index: AQHTSaiZafH14kraXEWOl6waQodyKqLykpbw
Date: Tue, 24 Oct 2017 06:50:44 +0000
Message-ID: <a1ef266a392e44c0afa732b9ad52149c@PLEXTEK-EXCH1.plextek.lan>
References: <mailman.71519.1508506565.15860.yocto@yoctoproject.org>
In-Reply-To: <mailman.71519.1508506565.15860.yocto@yoctoproject.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.10.253]
MIME-Version: 1.0
Subject: Re: yocto Digest, Vol 85, Issue 78
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
X-List-Received-Date: Tue, 24 Oct 2017 06:54:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On Fri, 2017-10-20 at 15:24 +0300, Andreas Enbacka wrote:

> Hello,
> =20
> I am trying to create a .bbappend file to customize the default=20
> sshd_config file as part of the default openssh package in Yocto Fido.=20
> In the custom file I attempt to disable root login access by setting=20
> the PermitRootLogin to No. However, after building and installing the=20
> image on the custom SMARC board, the content of the sshd_config file=20
> still enables login (PermitRootLogin Yes). I have checked the content=20
> of the installed rootfs before deploying to the board, and the content=20
> of the sshd_config file is correct (disables root login). What could=20
> be the cause of this? Is some other process modifying the content of=20
> the config file?

This will happen if you use FILESEXTRAPATHS_append in your .bbappend becaus=
e bitbake will find the default version of sshd_config first and not yours.=
  Make sure you use FILESEXTRAPATHS_prepend.

Actually I'm slightly surprised that you are having this problem in the fir=
st place because PermitRootLogin is commented out in the default version of=
 sshd_config (poky/meta/recipes-connectivity/openssh/openssh/sshd_config). =
Perhaps another .bbappend somewhere in your build is also overwriting this =
file?

> =20
> Best regards,
> Andreas Enbacka
> =20

Regards
Alan

ALAN LEVY, Lead Consultant, Embedded Systems

Plextek Consulting, The Plextek Building, London Road, Great Chesterford, S=
affron Walden, CB10 1NY, UK
T: +44 (0) 1799 533200    E: alan.levy@plextek.com  W: www.plextek.com


