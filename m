Return-Path: <mdickopp@phoenixcontact.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 916EDE00DE5; Mon,  5 Feb 2018 08:03:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [62.157.123.121 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 495 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Feb 2018 08:03:31 PST
Received: from mail2.phoenixcontact.com (mail2.phoenixcontact.com
	[62.157.123.121])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 590BFE007D1
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 08:03:31 -0800 (PST)
Received: from home.innominate.com ([149.208.95.240])
	by de-nice01.europe.phoenixcontact.com
	with ESMTP id 2018020516551334-644300 ;
	Mon, 5 Feb 2018 16:55:13 +0100 
Received: from localhost (localhost.localdomain [127.0.0.1])
	by home.innominate.com (Postfix) with ESMTP id 3057B22AE
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 16:55:13 +0100 (CET)
Received: from home.innominate.com ([127.0.0.1])
	by localhost (innominate.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8xtA7mHSjuFl for <yocto@yoctoproject.org>;
	Mon,  5 Feb 2018 16:55:13 +0100 (CET)
Received: from pc-10467.de.innominate.com (mdickopp1.de.innominate.com
	[10.1.47.1]) by home.innominate.com (Postfix) with ESMTP id 0EB7722AC
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 16:55:13 +0100 (CET)
Received: by pc-10467.de.innominate.com (Postfix, from userid 1001)
	id C74C9204B5; Mon,  5 Feb 2018 16:55:12 +0100 (CET)
From: Martin Dickopp <mdickopp@phoenixcontact.com>
To: yocto@yoctoproject.org
Mail-Followup-To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: NeoMutt/20170113 (1.7.2)
X-TNEFEvaluated: 1
Message-ID: <20180205155512.4qbxy4sb2ak4vsk4@pc-10467.de.innominate.com>
Date: Mon, 5 Feb 2018 16:55:12 +0100
content-transfer-encoding: quoted-printable
Subject: musl and /lib{32,64} directories
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
X-List-Received-Date: Mon, 05 Feb 2018 16:03:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

I=27m new to Yocto, so please bear with me if I=27m missing something
obvious.

When I build Poky (current master) with a vendor-provided BSP layer for
an ARM64 board and musl as the C library, shared libraries are installed
in /lib64 (and /usr/lib64), where the musl dynamic runtime linker does
not find them.

I noticed that there is a patch for GLIBC that causes /lib, /lib32,
/lib64, and the corresponding directories under /usr to be searched [1],
but there is no such patch for musl. If I patch musl myself [2], all
shared libraries are found. However, I=27m not sure if this is the correc=
t
fix.

Is it intentional that GLIBC and musl behave differently in this regard,
or is this something that has simply not (yet) been implemented=3F Are
there any reasons why patching musl in this way is a bad idea=3F

Best regards,
Martin


[1] meta/recipes-core/glibc/ldconfig-native-2.12.1/ldconfig-default-to-al=
l-multilib-dirs.patch

[2]
diff --git a/ldso/dynlink.c b/ldso/dynlink.c
index 4b4841f9..12ccb2a6 100644
--- a/ldso/dynlink.c
+++ b/ldso/dynlink.c
@@ -1008,7 +1008,7 @@ static struct dso *load_library(const char *name, s=
truct dso *needed_by)
 					sys_path =3D =22=22;
 				}
 			}
-			if (!sys_path) sys_path =3D =22/lib:/usr/local/lib:/usr/lib=22;
+			if (!sys_path) sys_path =3D =22/lib:/usr/lib:/lib32:/usr/lib32:/lib64=
:/usr/lib64=22;
 			fd =3D path_open(name, sys_path, buf, sizeof buf);
 		}
 		pathname =3D buf;

