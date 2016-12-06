Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98A78E00CAF; Tue,  6 Dec 2016 04:46:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B92EE00C92
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 04:46:05 -0800 (PST)
Received: from nbhjo (unknown [65.202.45.61])
	by msfrf2632.sfr.fr (SMTP Server) with ESMTP id C85891C000853;
	Tue,  6 Dec 2016 13:46:00 +0100 (CET)
Received: from nbhjo (unknown [65.202.45.61])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2632.sfr.fr (SMTP Server) with ESMTPSA;
	Tue,  6 Dec 2016 13:45:59 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Gary Thomas' <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <1481016818-27612-1-git-send-email-gary@mlbassoc.com>
In-Reply-To: <1481016818-27612-1-git-send-email-gary@mlbassoc.com>
Date: Tue, 6 Dec 2016 13:45:58 +0100
Message-ID: <001e01d24fbe$b293d8e0$17bb8aa0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJYGqWR7tPui6g/rwVhQQhrZs04T5/vR2Ug
X-sfr-mailing: LEGIT
Subject: Re: [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad: Don't	hard wire use of userland
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
X-List-Received-Date: Tue, 06 Dec 2016 12:46:09 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Gary,

But dispmanx is really only provided by userland, it does not exist in =
other
flavors of egl/libgles.
Actually, dispmanx should not be selected in PACKAGECONFIG if userland =
is
not in use for EGL/GLES.

Cheers,

Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Gary Thomas
Sent: mardi 6 d=E9cembre 2016 10:34
To: yocto@yoctoproject.org
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: [yocto] [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad: =
Don't
hard wire use of userland

Selection of the libgl packages should be by virtual/XXX.  Using =
'userland'
directly can lead to build conflicts and make the system unbuildable.

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git
a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
index 7292f90..432869d 100644
--- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
@@ -9,4 +9,4 @@ PACKAGECONFIG_GL_rpi =3D "egl gles2"
=20
 PACKAGECONFIG_append_rpi =3D " hls libmms faad"
=20
-PACKAGECONFIG[dispmanx] =3D =
"--enable-dispmanx,--disable-dispmanx,userland"
+PACKAGECONFIG[dispmanx] =3D =
"--enable-dispmanx,--disable-dispmanx,virtual/egl
virtual/libgles2"
--=20
2.7.4

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


