Return-Path: <natalia_th92@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ED04E00924; Mon, 10 Apr 2017 11:45:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (natalia_th92[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.67.64 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3560 seconds by postgrey-1.32 at yocto-www;
	Mon, 10 Apr 2017 11:45:01 PDT
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-oln040092067064.outbound.protection.outlook.com [40.92.67.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B95BFE00655
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 11:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=2GJopo8qGvqCxgmgofxURIqPY0MCJ40c6BBTV673P0g=;
	b=tz4k1iyoP94e6BXoj9vjGKy0vjdc3P7dSBilaTAMMR6kNBM3MzfOTWuoIVjVwInQnWySHSfrFrI+kF3xoqe9mn/fXByxmhAJkCNR72b/mrtBcFD8N1L5sa9wSzdZWNEIsacRieX0FKzc2YxmqHwXpZGiQhKmZmdoLnjKxS4xNFmIJYQonWeWIOY5nzP00y5OfbDZcT1yqtSuju3UhawnkcpIJFuqa8UkF59WEIqvISPUUmfEnrzLBO1jUwWWGZ52uH+WpfsSyi+mqf+vhc8Hhq8U9BabLBxGcq0DNxrJPBxp0NOU0GPVrBBjleKe8oaFxmkefrhAwRa3g0l2Jezv1w==
Received: from HE1EUR02FT033.eop-EUR02.prod.protection.outlook.com
	(10.152.10.52) by HE1EUR02HT082.eop-EUR02.prod.protection.outlook.com
	(10.152.11.95) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1019.14;
	Mon, 10 Apr 2017 14:11:15 +0000
Received: from VI1PR05MB3376.eurprd05.prod.outlook.com (10.152.10.60) by
	HE1EUR02FT033.mail.protection.outlook.com (10.152.10.152) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1019.14 via Frontend Transport; Mon, 10 Apr 2017 14:11:15 +0000
Received: from VI1PR05MB3376.eurprd05.prod.outlook.com ([10.170.238.153]) by
	VI1PR05MB3376.eurprd05.prod.outlook.com ([10.170.238.153]) with mapi id
	15.01.1019.024; Mon, 10 Apr 2017 14:11:15 +0000
From: Natalia Theologou <natalia_th92@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: yocto Digest, Vol 79, Issue 23
Thread-Index: AQHSru7Vp0L4aujnbUWDNzhtbaQCRaG+qNSr
Date: Mon, 10 Apr 2017 14:11:15 +0000
Message-ID: <VI1PR05MB3376EF89C390BAFE1B57F658F9010@VI1PR05MB3376.eurprd05.prod.outlook.com>
References: <mailman.64321.1491494297.15860.yocto@yoctoproject.org>
In-Reply-To: <mailman.64321.1491494297.15860.yocto@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:3B1701CE6092A7CFB2EB646E6D0142D7B7565A65D5833BE0324AF4E265B1F8B6;
	UpperCasedChecksum:70E3B2E57BA0A5F583835C7748D37BE8A512D831D3E31D642CE4244DC59B1B46;
	SizeAsReceived:8003; Count:42
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [qvj2QXTTDSbVoZxEV8UaMeSIGzORwOlw]
x-microsoft-exchange-diagnostics: 1; HE1EUR02HT082;
	5:J9GUBF1jhZnoPbEH+s31qrWpD6Rp1aT1LtQaqPpF0coBT0/xH6NJSEyXAiluQmY+FC3YMIbUbzcOWw0TTw8tXZSgH1fQd19MGzzGn/IrfDzaLI/pYEqJ2IhHmY1f6XcJQn0JX0/D3wo3irR+FRYdKg==;
	24:QY42ewsFbgyuUhDqLr+hPuu7J4XWGgqckU85o0+BpDWEvGCSkfQNL1XJMFh59tK4PX3NnN7hn3aMEtUtDy6AMZ+w82x9lZpEJby8eJnMaHQ=;
	7:qt/OMLfIGtt4S42VedR6lxMwtmSz37sNMpkVY6N7i/o8utxi+O8N3dOjx1kxPLTlTmHTTK6eQRbR9FYDr8uGUk6oVERVw4r8p/ow7tkZ/LdUJY/rvUMjQDBIYdNTxhw6RYB+2jaEwN3xs0Y264sByy8KWTElE0ziX0qGtWR2XOmKa4A/UelgNTnTCzBR5QeDlv796khlDGFStR8XBIN/XpNWet92PBVdWJMP7DiRp7DZFJCc+clCZOSfz2aX4Y/hdu4G4mu5zOrAYL3+VuzAABUk6r2UR783pCCBAkj+79tv7JdmU9Xlcu7lXAjD8lzc
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:HE1EUR02HT082;
	H:VI1PR05MB3376.eurprd05.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 5c82a29e-53cf-4f6c-a402-08d4801b733c
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1601125374)(1603101448)(1701031045);
	SRVR:HE1EUR02HT082; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:HE1EUR02HT082; BCL:0; PCL:0; RULEID:; SRVR:HE1EUR02HT082; 
x-forefront-prvs: 027367F73D
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2017 14:11:15.0808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT082
Subject: Re: yocto Digest, Vol 79, Issue 23
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
X-List-Received-Date: Mon, 10 Apr 2017 18:45:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR05MB3376EF89C390BAFE1B57F658F9010VI1PR05MB3376eurp_"

--_000_VI1PR05MB3376EF89C390BAFE1B57F658F9010VI1PR05MB3376eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,



Thank you Fabien Lahoudere for the reply.

Well I am running Ubuntu 16 and trying to install yocto for a board.

When I run


bitbake core-image-x11

I get this error:



ERROR: Task 1570 (virtual:native:/~/sources/poky/meta/recipes-support/gmp/g=
mp_5.1.1.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 106 tasks of which 102 didn't need to be rer=
un and 2 failed.
Waiting for 0 running tasks to finish:

Summary: 2 tasks failed:
  virtual:native:/~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9.bb, =
do_compile
  virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb, do_c=
ompile


gmp_5.1.1.bb has this code inside:


require gmp.inc
LICENSE=3D"LGPLv3&GPLv3"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae504=
 \
            file://version.c;endline=3D18;md5=3Dd8c56b52b9092346b9f93b4da65=
ef790"

SRC_URI_append =3D " file://use-includedir.patch \
                   file://append_user_provided_flags.patch \
                   "

SRC_URI[md5sum] =3D "2fa018a7cd193c78494525f236d02dd6"
SRC_URI[sha256sum] =3D "a0d4779f48b36519dfaceb5f987a7c76fcac223258bebea3bb2=
244310970afad"


and when I run the  bitbake fsl-image-x11 I also have an error in ncurses.b=
b


require ncurses.inc

PR =3D "${INC_PR}.1"

SRC_URI +=3D "file://tic-hang.patch \
            file://config.cache \
"

SRC_URI[md5sum] =3D "8cb9c412e5f2d96bc6f459aa8c6282a1"
SRC_URI[sha256sum] =3D "9046298fb440324c9d4135ecea7879ffed8546dd1b58e59430e=
a07a4633f563b"

Best regards and thanks,
Theologou Natalia



________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of yocto-request@yoctoproject.org <yocto-request@yoctoproject.org>
Sent: Thursday, April 6, 2017 6:58 PM
To: yocto@yoctoproject.org
Subject: yocto Digest, Vol 79, Issue 23

Send yocto mailing list submissions to
        yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
        https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.


or, via email, send a message with subject or body 'help' to
        yocto-request@yoctoproject.org

You can reach the person managing the list at
        yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific
than "Re: Contents of yocto digest..."


Today's Topics:

   1. Re: unable to create softlink for precompilied libraries
      (Khem Raj)
   2. Returning non-zero exit code (Natalia Theologou)
   3. Re: Returning non-zero exit code (Fabien Lahoudere)
   4. Re: Local repo no network help request (Leonardo Sandoval)
   5. Re: Local repo no network help request (Fabien Lahoudere)
   6. [patchwork][PATCH v4] parsemail.py: Improve
      find_series_for_mail (Jose Lamego)


----------------------------------------------------------------------

Message: 1
Date: Thu, 6 Apr 2017 06:47:45 -0700
From: Khem Raj <raj.khem@gmail.com>
To: chandrasekhar c <chandrasekhar@evolute-sys.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] unable to create softlink for precompilied
        libraries
Message-ID:
        <CAMKF1srgp0i2DqXLQByJYbcBt4cH2-pFL9ej9NNu1vG66MCJoA@mail.gmail.com=
>
Content-Type: text/plain; charset=3DUTF-8

On Thu, Apr 6, 2017 at 2:16 AM, chandrasekhar c
<chandrasekhar@evolute-sys.com> wrote:
> Hi,
> I have added this FILES_${PN} +=3D " ${libdir}/libMSOComm.so " line in my
> recipe still the issue is present
>

that may not be enough. .so are treated as symlinks and shoved into
-dev packages by default. if you need unversioned libraries then you
have to let the system know that its not a dev library symlink

FILES_${PN} +=3D "${libdir}/*.so"
FILES_SOLIBSDEV =3D ""
INSANE_SKIP_${PN} +=3D "dev-so"

> Thanks
> Chandra
>
> From: chandrasekhar c <chandrasekhar@evolute-sys.com>
> Sent: Thu, 6 Apr 2017 14:39:04 GMT+0530
> To: "Fabien Lahoudere " <fabien.lahoudere@collabora.co.uk>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
>
> Subject: Re: [yocto] unable to create softlink for precompilied libraries
>
> Hi ,
> No, I will do the changes and let you know the result.
>
> Regards,
> Chandrasekhar
>
> From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
> Sent: Thu, 6 Apr 2017 14:10:30 GMT+0530
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] unable to create softlink for precompilied libraries
>
> On Thu, 2017-04-06 at 08:08 +0000, chandrasekhar c wrote:
>> Hi,
>> I have a third party precompilied libraries. I erota a recipe to copy to
>> rootfs and create   soft
>> links for the same. After doing bitbake it didnt throw any errors, but
>> when I check th rootfs it
>> didn't create any link file.
>> Below is my recipe
>>
>> do_install_append() {
>>                   install -d ${D}${libdir}/
>>                 install -m 0777 ${S}/libMSO.so.1.2
>> ${D}${libdir}/libMSO.so.1.2
>>                 ln -sf libMSO.so.1.2 ${D}${libdir}/libMSO.so
>>                 install -m 0777 ${S}/libMSOComm.so.1.2
>> ${D}${libdir}/libMSOComm.so.1.2 //This is success
>>                 ln -sf libMSOComm.so.1.2 ${D}${libdir}/libMSOComm.so.1
>> //This is success
>>                 ln -sf libMSOComm.so.1  ${D}${libdir}/libMSOComm.so //Th=
is
>> is not happening
>> }
>> Can any one tell me a solution for this.
>
> Did you ship it with FILES_${PN} +=3D " ${libdir}/libMSOComm.so " ?
>
>
>>
>> Thanks and Regards,
>> Chandrasekhar
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto --
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.


>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.


>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.


>


------------------------------

Message: 2
Date: Wed, 5 Apr 2017 15:05:42 +0000
From: Natalia Theologou <natalia_th92@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto] Returning non-zero exit code
Message-ID:
        <VI1PR05MB337622D59EAB12A6C3D0C045F90A0@VI1PR05MB3376.eurprd05.prod=
.outlook.com>

Content-Type: text/plain; charset=3D"iso-8859-1"

Hello,

While I am trying to bitbake fsl-image-x11 I am having this error:

ERROR: Task 1570 (virtual:native:~/sources/poky/meta/recipes-support/gmp/gm=
p_5.1.1.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 78 tasks of which 74 didn't need to be rerun=
 and 2 failed.
Waiting for 0 running tasks to finish:

Summary: 2 tasks failed:
  virtual:native:~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9.bb, d=
o_compile
  virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb, do_c=
ompile

Does anyone know how to solve it?

Thank you in advance,
Natalia Theologou
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20170405/da=
453bb9/attachment-0001.html>

------------------------------

Message: 3 of do_compile for both recipe
Date: Thu, 06 Apr 2017 16:13:42 +0200
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Subject: Re: [yocto] Returning non-zero exit code
Message-ID: <1491488022.25991.55.camel@collabora.co.uk>
Content-Type: text/plain; charset=3D"UTF-8"

On Wed, 2017-04-05 at 15:05 +0000, Natalia Theologou wrote:
> Hello,?
>
> While I am trying to bitbake fsl-image-x11 I am having this error:
>
> ERROR: Task 1570 (virtual:native:~/sources/poky/meta/recipes-support/gmp/=
gmp_5.1.1.bb, do_compile)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 78 tasks of which 74 didn't need to be rer=
un and 2 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 2 tasks failed:
> ? virtual:native:~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9.bb,=
 do_compile
> ? virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb, do=
_compile
>
> Does anyone know how to solve it?

Can you give logs of do_compile for both recipe?

>
> Thank you in advance,?
> Natalia Theologou


------------------------------

Message: 4
Date: Thu, 06 Apr 2017 09:30:30 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Matthew Phillips <matthew1phillips@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Local repo no network help request
Message-ID: <1491489030.31049.11.camel@linux.intel.com>
Content-Type: text/plain; charset=3D"UTF-8"

On Wed, 2017-04-05 at 19:57 -0700, Matthew Phillips wrote:
> Hi all,
>
> I am trying to do the following:
>
> I have a local git repo, pulled manually from a remote repo (via a script=
).
> I have a .bb file set up referencing this repo. This .bb file includes
> (among other things):
>
> >> SRC_URI =3D "git://${TOPDIR}/../sources/my-repo;protocol=3Dfile;branch=
=3Dmaster"
> >> SRCREV =3D "${AUTOREV}"
>

did you get the same result if you hard-coded the pathname?




> I do not want to use the network (so BB_NO_NETWORK is 1).
>
> Although the SRC_URI is pointing to the correct path, the yocto build
> fails because it tries to access the network.
>
> How should I be doing this instead?
>
> I can run a script (preferably bash atm) before the build if doing
> something pre-build will help simplify anything.
>
> Thank you,
> M




------------------------------

Message: 5
Date: Thu, 06 Apr 2017 16:38:29 +0200
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Subject: Re: [yocto] Local repo no network help request
Message-ID: <1491489509.25991.58.camel@collabora.co.uk>
Content-Type: text/plain; charset=3D"UTF-8"

On Wed, 2017-04-05 at 19:57 -0700, Matthew Phillips wrote:
> Hi all,
>
> I am trying to do the following:
>
> I have a local git repo, pulled manually from a remote repo (via a script=
).
> I have a .bb file set up referencing this repo. This .bb file includes
> (among other things):
>
> > > SRC_URI =3D "git://${TOPDIR}/../sources/my-repo;protocol=3Dfile;branc=
h=3Dmaster"
> > > SRCREV =3D "${AUTOREV}"
>
> I do not want to use the network (so BB_NO_NETWORK is 1).
>
> Although the SRC_URI is pointing to the correct path, the yocto build
> fails because it tries to access the network.
>
> How should I be doing this instead?

Can you use network features with ssh on localhost ?
Why don't you create tarball for delivery and cross compile for development=
?

>
> I can run a script (preferably bash atm) before the build if doing
> something pre-build will help simplify anything.
>
> Thank you,
> M


------------------------------

Message: 6
Date: Thu,  6 Apr 2017 10:58:09 -0500
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Subject: [yocto] [patchwork][PATCH v4] parsemail.py: Improve
        find_series_for_mail
Message-ID:
        <1491494289-7439-1-git-send-email-jose.a.lamego@linux.intel.com>

Patch Series that are sent as replies to other Series with
different patch quantity are not appropriately detected as
such, breaking the thread and causing missing revisions.

This change improves the find_series_for_mail function to
appropriately detect when a message is part of a thread
by performing an additional patch-query and detecting cover
letters that are replies to cover letters.

[YOCTO #10959]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---

Notes:
    Changes in version 4: Only consider messages with Subject starting with=
 "[" as possible cover letters, filtering out reply messages

 patchwork/bin/parsemail.py | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py
index 61c18b2..a68baa2 100755
--- a/patchwork/bin/parsemail.py
+++ b/patchwork/bin/parsemail.py
@@ -399,9 +399,9 @@ def find_content(project, mail):
     (x, n) =3D parse_series_marker(prefixes)
     refs =3D build_references_list(mail)
     is_root =3D refs =3D=3D []
-    is_cover_letter =3D is_root and x =3D=3D 0
     patch_prefix =3D re.match('(\s*\[[^]]*\]\s*)*\[\s*PATCH',
                             mail.get('Subject'))
+    is_cover_letter =3D x =3D=3D 0 and patch_prefix
     is_patch =3D patchbuf is not None and patch_prefix

     drop_patch =3D not is_attachment and \
@@ -441,7 +441,7 @@ def find_content(project, mail):

         (ret.series, ret.revision, ret.patch_order, n) =3D \
             find_series_for_mail(project, series_name, msgid, is_patch,
-                                 ret.patch_order, n, refs)
+                                 ret.patch_order, n, refs, is_cover_letter=
)
         ret.revision.n_patches =3D n or 1

         date =3D mail_date(mail)
@@ -535,7 +535,7 @@ def find_patch_order(revisions, previous_patch, order, =
n_patches):
 #   - we need to create new revisions when the mail is actually a new vers=
ion
 #     of a previous patch
 def find_series_for_mail(project, name, msgid, is_patch, order, n_patches,
-                         refs):
+                         refs, is_cover_letter):
     if refs =3D=3D []:
         root_msgid =3D msgid
     else:
@@ -560,6 +560,20 @@ def find_series_for_mail(project, name, msgid, is_patc=
h, order, n_patches,
                 revision =3D revision.duplicate(exclude_patches=3D(order,)=
)
                 # series has been updated, grab the new instance
                 series =3D revision.series
+            else:
+                try:
+                    prev_patch =3D SeriesRevisionPatch.objects.get(
+                        revision=3Drevision, order=3Dorder).patch
+                    if prev_patch and not prev_patch.msgid =3D=3D msgid:
+                        # this is a new patch in the thread
+                        revision =3D revision.duplicate(exclude_patches=3D=
(order,))
+                        series =3D revision.series
+                except SeriesRevisionPatch.DoesNotExist:
+                    pass
+        elif is_cover_letter and not refs =3D=3D []:
+            revision =3D revision.duplicate(
+                exclude_patches=3Drange(1, revision.n_patches+1),)
+            series =3D revision.series
     except IndexError:
         if not name:
             name =3D SERIES_DEFAULT_NAME
--
2.7.4



------------------------------

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.




End of yocto Digest, Vol 79, Issue 23
*************************************

--_000_VI1PR05MB3376EF89C390BAFE1B57F658F9010VI1PR05MB3376eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hello, <br>
</p>
<p><br>
</p>
<p><br>
</p>
<p>Thank you <span>Fabien Lahoudere</span> for the reply.<br>
</p>
<p>Well I am running Ubuntu 16 and trying to install yocto for a board. <br=
>
</p>
<p>When I run <br>
</p>
<p><br>
</p>
<div>bitbake core-image-x11<br>
<br>
I get this error: <br>
<br>
</div>
<br>
<p></p>
<div>ERROR: Task 1570 (virtual:native:/~/sources/poky/meta/recipes-support/=
gmp/gmp_5.1.1.bb, do_compile) failed with exit code '1'<br>
NOTE: Tasks Summary: Attempted 106 tasks of which 102 didn't need to be rer=
un and 2 failed.<br>
Waiting for 0 running tasks to finish:<br>
<br>
Summary: 2 tasks failed:<br>
&nbsp; virtual:native:/~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9=
.bb, do_compile<br>
&nbsp; virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb,=
 do_compile<br>
</div>
<br>
<p>gmp_5.1.1.bb has this code inside:</p>
<p><br>
</p>
<div>require gmp.inc<br>
LICENSE=3D&quot;LGPLv3&amp;GPLv3&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd32239bcb673463ab874e80d47f=
ae504 \<br>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; file://version.c;e=
ndline=3D18;md5=3Dd8c56b52b9092346b9f93b4da65ef790&quot;<br>
<br>
SRC_URI_append =3D &quot; file://use-includedir.patch \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://append_user_provided_flags.patch \=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<br>
<br>
SRC_URI[md5sum] =3D &quot;2fa018a7cd193c78494525f236d02dd6&quot;<br>
SRC_URI[sha256sum] =3D &quot;a0d4779f48b36519dfaceb5f987a7c76fcac223258bebe=
a3bb2244310970afad&quot;</div>
<br>
<p>and when I run the <span>&nbsp;bitbake fsl-image-x11</span> I also have =
an error in ncurses.bb</p>
<p><br>
</p>
<p></p>
<div>require ncurses.inc<br>
<br>
PR =3D &quot;${INC_PR}.1&quot;<br>
<br>
SRC_URI &#43;=3D &quot;file://tic-hang.patch \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://c=
onfig.cache \<br>
&quot;<br>
<br>
SRC_URI[md5sum] =3D &quot;8cb9c412e5f2d96bc6f459aa8c6282a1&quot;<br>
SRC_URI[sha256sum] =3D &quot;9046298fb440324c9d4135ecea7879ffed8546dd1b58e5=
9430ea07a4633f563b&quot;<br>
<br>
Best regards and thanks, <br>
Theologou Natalia<br>
</div>
<br>
<p></p>
<p><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" colo=
r=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> yocto-bounces@yocto=
project.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of yocto-reque=
st@yoctoproject.org &lt;yocto-request@yoctoproject.org&gt;<br>
<b>Sent:</b> Thursday, April 6, 2017 6:58 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> yocto Digest, Vol 79, Issue 23</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Send yocto mailing list submissions to<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; yocto@yoctoproject.org<br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"https://lists.yoctopr=
oject.org/listinfo/yocto" id=3D"LPlnk811949" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a>
<div id=3D"LPBorder_GT_14918330606650.7176211370040522" style=3D"margin-bot=
tom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_14918330606620.04276416502789093" style=3D"width: =
90%; background-color: rgb(255, 255, 255); position: relative; overflow: au=
to; padding-top: 20px; padding-bottom: 20px; margin-top: 20px; border-top: =
1px dotted rgb(200, 200, 200); border-bottom: 1px dotted rgb(200, 200, 200)=
;" role=3D"presentation" cellspacing=3D"0">
<tbody>
<tr style=3D"border-spacing: 0px;" valign=3D"top">
<td id=3D"TextCell_14918330606630.8732906957891582" style=3D"vertical-align=
: top; position: relative; padding: 0px; display: table-cell;" colspan=3D"2=
">
<div id=3D"LPRemovePreviewContainer_14918330606630.26592872811338075"></div=
>
<div id=3D"LPTitle_14918330606630.5973626806573727" style=3D"top: 0px; colo=
r: rgb(0, 120, 215); font-weight: 400; font-size: 21px; font-family: &quot;=
wf_segoe-ui_light&quot;,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quo=
t;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,&quot;Apple Color=
 Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbo=
l&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-serif; line-height: 21p=
x;">
<a id=3D"LPUrlAnchor_14918330606640.4055208440003608" style=3D"text-decorat=
ion: none;" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">yocto Info Page</a></div>
<div id=3D"LPMetadata_14918330606640.7658453014579729" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: 400; font-family: &quot=
;wf_segoe-ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,=
Arial,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmo=
ji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-=
serif; font-size: 14px; line-height: 14px;">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_14918330606650.5040185098994363" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: 400; font-family: &quot;wf_=
segoe-ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Aria=
l,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&=
quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-seri=
f; font-size: 14px; line-height: 20px; max-height: 100px; overflow: hidden;=
">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
or, via email, send a message with subject or body 'help' to<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; yocto-request@yoctoproject.org<b=
r>
<br>
You can reach the person managing the list at<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; yocto-owner@yoctoproject.org<br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of yocto digest...&quot;<br>
<br>
<br>
Today's Topics:<br>
<br>
&nbsp;&nbsp; 1. Re: unable to create softlink for precompilied libraries<br=
>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Khem Raj)<br>
&nbsp;&nbsp; 2. Returning non-zero exit code (Natalia Theologou)<br>
&nbsp;&nbsp; 3. Re: Returning non-zero exit code (Fabien Lahoudere)<br>
&nbsp;&nbsp; 4. Re: Local repo no network help request (Leonardo Sandoval)<=
br>
&nbsp;&nbsp; 5. Re: Local repo no network help request (Fabien Lahoudere)<b=
r>
&nbsp;&nbsp; 6. [patchwork][PATCH v4] parsemail.py: Improve<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; find_series_for_mail (Jose Lamego)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Thu, 6 Apr 2017 06:47:45 -0700<br>
From: Khem Raj &lt;raj.khem@gmail.com&gt;<br>
To: chandrasekhar c &lt;chandrasekhar@evolute-sys.com&gt;<br>
Cc: &quot;yocto@yoctoproject.org&quot; &lt;yocto@yoctoproject.org&gt;<br>
Subject: Re: [yocto] unable to create softlink for precompilied<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; libraries<br>
Message-ID:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;CAMKF1srgp0i2DqXLQByJYbcBt4c=
H2-pFL9ej9NNu1vG66MCJoA@mail.gmail.com&gt;<br>
Content-Type: text/plain; charset=3DUTF-8<br>
<br>
On Thu, Apr 6, 2017 at 2:16 AM, chandrasekhar c<br>
&lt;chandrasekhar@evolute-sys.com&gt; wrote:<br>
&gt; Hi,<br>
&gt; I have added this FILES_${PN} &#43;=3D &quot; ${libdir}/libMSOComm.so =
&quot; line in my<br>
&gt; recipe still the issue is present<br>
&gt;<br>
<br>
that may not be enough. .so are treated as symlinks and shoved into<br>
-dev packages by default. if you need unversioned libraries then you<br>
have to let the system know that its not a dev library symlink<br>
<br>
FILES_${PN} &#43;=3D &quot;${libdir}/*.so&quot;<br>
FILES_SOLIBSDEV =3D &quot;&quot;<br>
INSANE_SKIP_${PN} &#43;=3D &quot;dev-so&quot;<br>
<br>
&gt; Thanks<br>
&gt; Chandra<br>
&gt;<br>
&gt; From: chandrasekhar c &lt;chandrasekhar@evolute-sys.com&gt;<br>
&gt; Sent: Thu, 6 Apr 2017 14:39:04 GMT&#43;0530<br>
&gt; To: &quot;Fabien Lahoudere &quot; &lt;fabien.lahoudere@collabora.co.uk=
&gt;<br>
&gt; Cc: &quot;yocto@yoctoproject.org&quot; &lt;yocto@yoctoproject.org&gt;<=
br>
&gt;<br>
&gt; Subject: Re: [yocto] unable to create softlink for precompilied librar=
ies<br>
&gt;<br>
&gt; Hi ,<br>
&gt; No, I will do the changes and let you know the result.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Chandrasekhar<br>
&gt;<br>
&gt; From: Fabien Lahoudere &lt;fabien.lahoudere@collabora.co.uk&gt;<br>
&gt; Sent: Thu, 6 Apr 2017 14:10:30 GMT&#43;0530<br>
&gt; To: yocto@yoctoproject.org<br>
&gt; Subject: Re: [yocto] unable to create softlink for precompilied librar=
ies<br>
&gt;<br>
&gt; On Thu, 2017-04-06 at 08:08 &#43;0000, chandrasekhar c wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt; I have a third party precompilied libraries. I erota a recipe to c=
opy to<br>
&gt;&gt; rootfs and create&nbsp;&nbsp; soft<br>
&gt;&gt; links for the same. After doing bitbake it didnt throw any errors,=
 but<br>
&gt;&gt; when I check th rootfs it<br>
&gt;&gt; didn't create any link file.<br>
&gt;&gt; Below is my recipe<br>
&gt;&gt;<br>
&gt;&gt; do_install_append() {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}${libdir}/<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0777 ${S}/libMSO.so.1.2<br>
&gt;&gt; ${D}${libdir}/libMSO.so.1.2<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ln -sf libMSO.so.1.2 ${D}${libdir}/libMSO.so<=
br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0777 ${S}/libMSOComm.so.1.2<br>
&gt;&gt; ${D}${libdir}/libMSOComm.so.1.2 //This is success<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ln -sf libMSOComm.so.1.2 ${D}${libdir}/libMSO=
Comm.so.1<br>
&gt;&gt; //This is success<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ln -sf libMSOComm.so.1&nbsp; ${D}${libdir}/li=
bMSOComm.so //This<br>
&gt;&gt; is not happening<br>
&gt;&gt; }<br>
&gt;&gt; Can any one tell me a solution for this.<br>
&gt;<br>
&gt; Did you ship it with FILES_${PN} &#43;=3D &quot; ${libdir}/libMSOComm.=
so &quot; ?<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; Thanks and Regards,<br>
&gt;&gt; Chandrasekhar<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk2=
33231" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a> --
<div id=3D"LPBorder_GT_14918330606550.07415916215981588" style=3D"margin-bo=
ttom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_14918330606520.6205633936068984" style=3D"width: 9=
0%; background-color: rgb(255, 255, 255); position: relative; overflow: aut=
o; padding-top: 20px; padding-bottom: 20px; margin-top: 20px; border-top: 1=
px dotted rgb(200, 200, 200); border-bottom: 1px dotted rgb(200, 200, 200);=
" role=3D"presentation" cellspacing=3D"0">
<tbody>
<tr style=3D"border-spacing: 0px;" valign=3D"top">
<td id=3D"TextCell_14918330606530.25503625566424726" style=3D"vertical-alig=
n: top; position: relative; padding: 0px; display: table-cell;" colspan=3D"=
2">
<div id=3D"LPRemovePreviewContainer_14918330606530.5919372012747649"></div>
<div id=3D"LPTitle_14918330606530.04625607442870816" style=3D"top: 0px; col=
or: rgb(0, 120, 215); font-weight: 400; font-size: 21px; font-family: &quot=
;wf_segoe-ui_light&quot;,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&qu=
ot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-serif; line-height: 21=
px;">
<a id=3D"LPUrlAnchor_14918330606530.3357138031896729" style=3D"text-decorat=
ion: none;" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">yocto Info Page</a></div>
<div id=3D"LPMetadata_14918330606540.3515573916291065" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: 400; font-family: &quot=
;wf_segoe-ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,=
Arial,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmo=
ji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-=
serif; font-size: 14px; line-height: 14px;">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_14918330606540.5659099328444955" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: 400; font-family: &quot;wf_=
segoe-ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Aria=
l,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&=
quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-seri=
f; font-size: 14px; line-height: 20px; max-height: 100px; overflow: hidden;=
">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk8=
27608" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a>
<div id=3D"LPBorder_GT_14918331198200.7262453262402383" style=3D"margin-bot=
tom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_14918331198150.7361571639884645" style=3D"width: 9=
0%; background-color: rgb(255, 255, 255); position: relative; overflow: aut=
o; padding-top: 20px; padding-bottom: 20px; margin-top: 20px; border-top: 1=
px dotted rgb(200, 200, 200); border-bottom: 1px dotted rgb(200, 200, 200);=
" role=3D"presentation" cellspacing=3D"0">
<tbody>
<tr style=3D"border-spacing: 0px;" valign=3D"top">
<td id=3D"TextCell_14918331198160.19128448393833464" style=3D"vertical-alig=
n: top; position: relative; padding: 0px; display: table-cell;" colspan=3D"=
2">
<div id=3D"LPRemovePreviewContainer_14918331198170.3266286852710363"></div>
<div id=3D"LPTitle_14918331198170.6806157290580311" style=3D"top: 0px; colo=
r: rgb(0, 120, 215); font-weight: 400; font-size: 21px; font-family: &quot;=
wf_segoe-ui_light&quot;,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quo=
t;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,&quot;Apple Color=
 Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbo=
l&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-serif; line-height: 21p=
x;">
<a id=3D"LPUrlAnchor_14918331198180.3606808525585289" style=3D"text-decorat=
ion: none;" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">yocto Info Page</a></div>
<div id=3D"LPMetadata_14918331198180.4034807299704517" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: 400; font-family: &quot=
;wf_segoe-ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,=
Arial,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmo=
ji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-=
serif; font-size: 14px; line-height: 14px;">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_14918331198190.44837554984179584" style=3D"display=
: block; color: rgb(102, 102, 102); font-weight: 400; font-family: &quot;wf=
_segoe-ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Ari=
al,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,=
&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-ser=
if; font-size: 14px; line-height: 20px; max-height: 100px; overflow: hidden=
;">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk4=
42370" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a>
<div id=3D"LPBorder_GT_14918331199010.8564081585110557" style=3D"margin-bot=
tom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_14918331198960.11857687610469259" style=3D"width: =
90%; background-color: rgb(255, 255, 255); position: relative; overflow: au=
to; padding-top: 20px; padding-bottom: 20px; margin-top: 20px; border-top: =
1px dotted rgb(200, 200, 200); border-bottom: 1px dotted rgb(200, 200, 200)=
;" role=3D"presentation" cellspacing=3D"0">
<tbody>
<tr style=3D"border-spacing: 0px;" valign=3D"top">
<td id=3D"TextCell_14918331198980.8152700240787004" style=3D"vertical-align=
: top; position: relative; padding: 0px; display: table-cell;" colspan=3D"2=
">
<div id=3D"LPRemovePreviewContainer_14918331198980.6370029465815358"></div>
<div id=3D"LPTitle_14918331198980.15002839994111494" style=3D"top: 0px; col=
or: rgb(0, 120, 215); font-weight: 400; font-size: 21px; font-family: &quot=
;wf_segoe-ui_light&quot;,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&qu=
ot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-serif; line-height: 21=
px;">
<a id=3D"LPUrlAnchor_14918331199000.6921212045140874" style=3D"text-decorat=
ion: none;" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">yocto Info Page</a></div>
<div id=3D"LPMetadata_14918331199000.9771716942581854" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: 400; font-family: &quot=
;wf_segoe-ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,=
Arial,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmo=
ji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-=
serif; font-size: 14px; line-height: 14px;">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_14918331199000.8803134255306052" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: 400; font-family: &quot;wf_=
segoe-ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Aria=
l,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&=
quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-seri=
f; font-size: 14px; line-height: 20px; max-height: 100px; overflow: hidden;=
">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
&gt;<br>
<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Wed, 5 Apr 2017 15:05:42 &#43;0000<br>
From: Natalia Theologou &lt;natalia_th92@hotmail.com&gt;<br>
To: &quot;yocto@yoctoproject.org&quot; &lt;yocto@yoctoproject.org&gt;<br>
Subject: [yocto] Returning non-zero exit code<br>
Message-ID:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;VI1PR05MB337622D59EAB12A6C3D=
0C045F90A0@VI1PR05MB3376.eurprd05.prod.outlook.com&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
Hello,<br>
<br>
While I am trying to bitbake fsl-image-x11 I am having this error:<br>
<br>
ERROR: Task 1570 (virtual:native:~/sources/poky/meta/recipes-support/gmp/gm=
p_5.1.1.bb, do_compile) failed with exit code '1'<br>
NOTE: Tasks Summary: Attempted 78 tasks of which 74 didn't need to be rerun=
 and 2 failed.<br>
Waiting for 0 running tasks to finish:<br>
<br>
Summary: 2 tasks failed:<br>
&nbsp; virtual:native:~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9.=
bb, do_compile<br>
&nbsp; virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb,=
 do_compile<br>
<br>
Does anyone know how to solve it?<br>
<br>
Thank you in advance,<br>
Natalia Theologou<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20170405/da453bb9/attachment-0001.html" id=3D"LPlnk361314" previewremove=
d=3D"true">http://lists.yoctoproject.org/pipermail/yocto/attachments/201704=
05/da453bb9/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 3<font size=3D"2"><span style=3D"font-size:10pt;"> of do_compile f=
or both recipe</span></font><br>
Date: Thu, 06 Apr 2017 16:13:42 &#43;0200<br>
From: Fabien Lahoudere &lt;fabien.lahoudere@collabora.co.uk&gt;<br>
To: yocto@yoctoproject.org<br>
Subject: Re: [yocto] Returning non-zero exit code<br>
Message-ID: &lt;1491488022.25991.55.camel@collabora.co.uk&gt;<br>
Content-Type: text/plain; charset=3D&quot;UTF-8&quot;<br>
<br>
On Wed, 2017-04-05 at 15:05 &#43;0000, Natalia Theologou wrote:<br>
&gt; Hello,?<br>
&gt; <br>
&gt; While I am trying to bitbake fsl-image-x11 I am having this error:<br>
&gt; <br>
&gt; ERROR: Task 1570 (virtual:native:~/sources/poky/meta/recipes-support/g=
mp/gmp_5.1.1.bb, do_compile)<br>
&gt; failed with exit code '1'<br>
&gt; NOTE: Tasks Summary: Attempted 78 tasks of which 74 didn't need to be =
rerun and 2 failed.<br>
&gt; Waiting for 0 running tasks to finish:<br>
&gt; <br>
&gt; Summary: 2 tasks failed:<br>
&gt; ? virtual:native:~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9.=
bb, do_compile<br>
&gt; ? virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb,=
 do_compile<br>
&gt; <br>
&gt; Does anyone know how to solve it?<br>
<br>
Can you give logs of do_compile for both recipe?<br>
<br>
&gt; <br>
&gt; Thank you in advance,?<br>
&gt; Natalia Theologou<br>
<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Thu, 06 Apr 2017 09:30:30 -0500<br>
From: Leonardo Sandoval &lt;leonardo.sandoval.gonzalez@linux.intel.com&gt;<=
br>
To: Matthew Phillips &lt;matthew1phillips@gmail.com&gt;<br>
Cc: yocto@yoctoproject.org<br>
Subject: Re: [yocto] Local repo no network help request<br>
Message-ID: &lt;1491489030.31049.11.camel@linux.intel.com&gt;<br>
Content-Type: text/plain; charset=3D&quot;UTF-8&quot;<br>
<br>
On Wed, 2017-04-05 at 19:57 -0700, Matthew Phillips wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I am trying to do the following:<br>
&gt; <br>
&gt; I have a local git repo, pulled manually from a remote repo (via a scr=
ipt).<br>
&gt; I have a .bb file set up referencing this repo. This .bb file includes=
<br>
&gt; (among other things):<br>
&gt; <br>
&gt; &gt;&gt; SRC_URI =3D &quot;git://${TOPDIR}/../sources/my-repo;protocol=
=3Dfile;branch=3Dmaster&quot;<br>
&gt; &gt;&gt; SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt; <br>
<br>
did you get the same result if you hard-coded the pathname? <br>
<br>
<br>
<br>
<br>
&gt; I do not want to use the network (so BB_NO_NETWORK is 1).<br>
&gt; <br>
&gt; Although the SRC_URI is pointing to the correct path, the yocto build<=
br>
&gt; fails because it tries to access the network.<br>
&gt; <br>
&gt; How should I be doing this instead?<br>
&gt; <br>
&gt; I can run a script (preferably bash atm) before the build if doing<br>
&gt; something pre-build will help simplify anything.<br>
&gt; <br>
&gt; Thank you,<br>
&gt; M<br>
<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Thu, 06 Apr 2017 16:38:29 &#43;0200<br>
From: Fabien Lahoudere &lt;fabien.lahoudere@collabora.co.uk&gt;<br>
To: yocto@yoctoproject.org<br>
Subject: Re: [yocto] Local repo no network help request<br>
Message-ID: &lt;1491489509.25991.58.camel@collabora.co.uk&gt;<br>
Content-Type: text/plain; charset=3D&quot;UTF-8&quot;<br>
<br>
On Wed, 2017-04-05 at 19:57 -0700, Matthew Phillips wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I am trying to do the following:<br>
&gt; <br>
&gt; I have a local git repo, pulled manually from a remote repo (via a scr=
ipt).<br>
&gt; I have a .bb file set up referencing this repo. This .bb file includes=
<br>
&gt; (among other things):<br>
&gt; <br>
&gt; &gt; &gt; SRC_URI =3D &quot;git://${TOPDIR}/../sources/my-repo;protoco=
l=3Dfile;branch=3Dmaster&quot;<br>
&gt; &gt; &gt; SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt; <br>
&gt; I do not want to use the network (so BB_NO_NETWORK is 1).<br>
&gt; <br>
&gt; Although the SRC_URI is pointing to the correct path, the yocto build<=
br>
&gt; fails because it tries to access the network.<br>
&gt; <br>
&gt; How should I be doing this instead?<br>
<br>
Can you use network features with ssh on localhost ?<br>
Why don't you create tarball for delivery and cross compile for development=
?<br>
<br>
&gt; <br>
&gt; I can run a script (preferably bash atm) before the build if doing<br>
&gt; something pre-build will help simplify anything.<br>
&gt; <br>
&gt; Thank you,<br>
&gt; M<br>
<br>
<br>
------------------------------<br>
<br>
Message: 6<br>
Date: Thu,&nbsp; 6 Apr 2017 10:58:09 -0500<br>
From: Jose Lamego &lt;jose.a.lamego@linux.intel.com&gt;<br>
To: yocto@yoctoproject.org<br>
Subject: [yocto] [patchwork][PATCH v4] parsemail.py: Improve<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; find_series_for_mail<br>
Message-ID:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;1491494289-7439-1-git-send-e=
mail-jose.a.lamego@linux.intel.com&gt;<br>
<br>
Patch Series that are sent as replies to other Series with<br>
different patch quantity are not appropriately detected as<br>
such, breaking the thread and causing missing revisions.<br>
<br>
This change improves the find_series_for_mail function to<br>
appropriately detect when a message is part of a thread<br>
by performing an additional patch-query and detecting cover<br>
letters that are replies to cover letters.<br>
<br>
[YOCTO #10959]<br>
<br>
Signed-off-by: Jose Lamego &lt;jose.a.lamego@linux.intel.com&gt;<br>
---<br>
<br>
Notes:<br>
&nbsp;&nbsp;&nbsp; Changes in version 4: Only consider messages with Subjec=
t starting with &quot;[&quot; as possible cover letters, filtering out repl=
y messages<br>
<br>
&nbsp;patchwork/bin/parsemail.py | 20 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#=
43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;---<br>
&nbsp;1 file changed, 17 insertions(&#43;), 3 deletions(-)<br>
<br>
diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py<br>
index 61c18b2..a68baa2 100755<br>
--- a/patchwork/bin/parsemail.py<br>
&#43;&#43;&#43; b/patchwork/bin/parsemail.py<br>
@@ -399,9 &#43;399,9 @@ def find_content(project, mail):<br>
&nbsp;&nbsp;&nbsp;&nbsp; (x, n) =3D parse_series_marker(prefixes)<br>
&nbsp;&nbsp;&nbsp;&nbsp; refs =3D build_references_list(mail)<br>
&nbsp;&nbsp;&nbsp;&nbsp; is_root =3D refs =3D=3D []<br>
-&nbsp;&nbsp;&nbsp; is_cover_letter =3D is_root and x =3D=3D 0<br>
&nbsp;&nbsp;&nbsp;&nbsp; patch_prefix =3D re.match('(\s*\[[^]]*\]\s*)*\[\s*=
PATCH',<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; mail.get('Subject'))<br>
&#43;&nbsp;&nbsp;&nbsp; is_cover_letter =3D x =3D=3D 0 and patch_prefix<br>
&nbsp;&nbsp;&nbsp;&nbsp; is_patch =3D patchbuf is not None and patch_prefix=
<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp; drop_patch =3D not is_attachment and \<br>
@@ -441,7 &#43;441,7 @@ def find_content(project, mail):<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (ret.series, ret.revision,=
 ret.patch_order, n) =3D \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fi=
nd_series_for_mail(project, series_name, msgid, is_patch,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret.patch_order, n, refs)<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret.patch_order, n, refs, i=
s_cover_letter)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret.revision.n_patches =3D=
 n or 1<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; date =3D mail_date(mail)<b=
r>
@@ -535,7 &#43;535,7 @@ def find_patch_order(revisions, previous_patch, ord=
er, n_patches):<br>
&nbsp;#&nbsp;&nbsp; - we need to create new revisions when the mail is actu=
ally a new version<br>
&nbsp;#&nbsp;&nbsp;&nbsp;&nbsp; of a previous patch<br>
&nbsp;def find_series_for_mail(project, name, msgid, is_patch, order, n_pat=
ches,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; refs=
):<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
refs, is_cover_letter):<br>
&nbsp;&nbsp;&nbsp;&nbsp; if refs =3D=3D []:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; root_msgid =3D msgid<br>
&nbsp;&nbsp;&nbsp;&nbsp; else:<br>
@@ -560,6 &#43;560,20 @@ def find_series_for_mail(project, name, msgid, is_=
patch, order, n_patches,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; revision =3D revision.duplicate(exclude_patches=3D(or=
der,))<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; # series has been updated, grab the new instance<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; series =3D revision.series<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; els=
e:<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; try:<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; prev_patch =3D SeriesRevisionP=
atch.objects.get(<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; revisi=
on=3Drevision, order=3Dorder).patch<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if prev_patch and not prev_pat=
ch.msgid =3D=3D msgid:<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # this=
 is a new patch in the thread<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; revisi=
on =3D revision.duplicate(exclude_patches=3D(order,))<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; series=
 =3D revision.series<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; except SeriesRevisionPatch.DoesNotExist:<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pass<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; elif is_cover_letter and no=
t refs =3D=3D []:<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rev=
ision =3D revision.duplicate(<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; exclude_patches=3Drange(1, revision.n_patches&#43;1),)=
<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ser=
ies =3D revision.series<br>
&nbsp;&nbsp;&nbsp;&nbsp; except IndexError:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if not name:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; na=
me =3D SERIES_DEFAULT_NAME<br>
-- <br>
2.7.4<br>
<br>
<br>
<br>
------------------------------<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk323254=
" previewremoved=3D"true">https://lists.yoctoproject.org/listinfo/yocto</a>
<div id=3D"LPBorder_GT_14918331803610.08726354529631597" style=3D"margin-bo=
ttom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_14918331803530.7699917056663774" style=3D"width: 9=
0%; background-color: rgb(255, 255, 255); position: relative; overflow: aut=
o; padding-top: 20px; padding-bottom: 20px; margin-top: 20px; border-top: 1=
px dotted rgb(200, 200, 200); border-bottom: 1px dotted rgb(200, 200, 200);=
" role=3D"presentation" cellspacing=3D"0">
<tbody>
<tr style=3D"border-spacing: 0px;" valign=3D"top">
<td id=3D"TextCell_14918331803550.6664405717923022" style=3D"vertical-align=
: top; position: relative; padding: 0px; display: table-cell;" colspan=3D"2=
">
<div id=3D"LPRemovePreviewContainer_14918331803550.46167403789595307"></div=
>
<div id=3D"LPTitle_14918331803560.13558266408129171" style=3D"top: 0px; col=
or: rgb(0, 120, 215); font-weight: 400; font-size: 21px; font-family: &quot=
;wf_segoe-ui_light&quot;,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&qu=
ot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symb=
ol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-serif; line-height: 21=
px;">
<a id=3D"LPUrlAnchor_14918331803570.14454537065257267" style=3D"text-decora=
tion: none;" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">yocto Info Page</a></div>
<div id=3D"LPMetadata_14918331803580.43157701848093843" style=3D"margin: 10=
px 0px 16px; color: rgb(102, 102, 102); font-weight: 400; font-family: &quo=
t;wf_segoe-ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma=
,Arial,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans=
-serif; font-size: 14px; line-height: 14px;">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_14918331803590.833933180763873" style=3D"display: =
block; color: rgb(102, 102, 102); font-weight: 400; font-family: &quot;wf_s=
egoe-ui_normal&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial=
,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&q=
uot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,sans-serif=
; font-size: 14px; line-height: 20px; max-height: 100px; overflow: hidden;"=
>
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
<br>
End of yocto Digest, Vol 79, Issue 23<br>
*************************************<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_VI1PR05MB3376EF89C390BAFE1B57F658F9010VI1PR05MB3376eurp_--
