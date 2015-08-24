Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBED8E00AC8; Sun, 23 Aug 2015 18:32:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [93.17.128.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp23.services.sfr.fr (smtp23.services.sfr.fr [93.17.128.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21283E00ABE
	for <yocto@yoctoproject.org>; Sun, 23 Aug 2015 18:32:03 -0700 (PDT)
Received: from filter.sfr.fr (localhost [42.73.81.22])
	by msfrf2317.sfr.fr (SMTP Server) with ESMTP id CF8617000093;
	Mon, 24 Aug 2015 03:32:01 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (42-73-81-22.EMOME-IP.hinet.net [42.73.81.22])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2317.sfr.fr (SMTP Server) with ESMTP id 8A9E27000090;
	Mon, 24 Aug 2015 03:32:00 +0200 (CEST)
X-SFR-UUID: 20150824013200567.8A9E27000090@msfrf2317.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Mon, 24 Aug 2015 03:31:58 +0100
X-PGP-Universal: processed;	by hjo-pc on Mon, 24 Aug 2015 03:31:58 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Jonathan Liu' <net147@gmail.com>, yocto@yoctoproject.org
References: <1440233012-18802-1-git-send-email-net147@gmail.com>
In-Reply-To: <1440233012-18802-1-git-send-email-net147@gmail.com>
Date: Mon, 24 Aug 2015 03:31:52 +0200
Message-ID: <000a01d0de0c$ab07bfd0$01173f70$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIvR/F9DxUg5KNu07Je+sRyzTK72Z1dhxQg
Subject: Re: ***SPAM*** [meta-raspberrypi][PATCH] gstreamer1.0-omx: enable	Raspberry Pi support
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
X-List-Received-Date: Mon, 24 Aug 2015 01:32:06 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi,

First of all, I believe that just adding a dependency on "userland", and
having either my patch or Khem's patch for the include files in vcos,  =
would
remove the need to add those include files in the recipes.

Then, I believe that the OMX drivers are provided in the userland also, =
so
you might not need to add gstreamer1.0-omx to get them.
That's what I have running currently, and it seems to work fine.

Best regards,

Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Jonathan Liu
Sent: samedi 22 ao=FBt 2015 10:44
To: yocto@yoctoproject.org
Subject: ***SPAM*** [yocto] [meta-raspberrypi][PATCH] gstreamer1.0-omx:
enable Raspberry Pi support

[Support #25]

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 =
recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
b/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
new file mode 100644
index 0000000..c242aa2
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
@@ -0,0 +1,6 @@
+CPPFLAGS_append_rpi =3D " -I${STAGING_INCDIR}/IL \
+                        -I${STAGING_INCDIR}/interface/vcos/pthreads \
+                        -I${STAGING_INCDIR}/interface/vmcs_host/linux"
+LDFLAGS_append_rpi =3D " -lEGL -lbcm_host"
+GSTREAMER_1_0_OMX_CORE_NAME_rpi =3D "${libdir}/libopenmaxil.so"
+GSTREAMER_1_0_OMX_TARGET_rpi =3D "rpi"
--=20
2.5.0

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


