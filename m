Return-Path: <sebmennetrier@gmail.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E177FE007D5
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 01:54:39 -0800 (PST)
Received: by mail-wi0-f170.google.com with SMTP id hi5so1654715wib.5
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 01:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding;
	bh=i6890gbcNZp3LN8cWhDfKE6R74lUDnaRSZn7vr6IdOg=;
	b=dcRKGHTmumcwaBNV/rTtbx6DWF97bs/d+H+R01Y6+IdLbnQpbXbKoGxH6nQv8ev363
	jLTwR0dYUWSOqd72XkBSzlEZ1Z5vG0YmuvfLHAzck4shBesiDVkLpN1FvnYfxhAHMtp0
	gB32ylj1J569vBi398GaugDEm7175rQVDUj29K5xNQ33M8e8ficr1TGgNoQPrhgY7NCE
	I6MwcHymvKO25+tvyW+alQ1TVe5BpGkuRHJBr76vozFKJCvLqPbQ7P1VX01lIwNpezsg
	EMMmI3vy1klveAzvZDPiBSvRSXkxZaJKkrF1S7yYRi0j4sVht3/0FA+2/sd0FxCnj7Hb
	FnWw==
X-Received: by 10.180.165.15 with SMTP id yu15mr1685390wib.28.1393581277753;
	Fri, 28 Feb 2014 01:54:37 -0800 (PST)
Received: from smennetrier-desktop.mpl.mstarsemi.fr
	(connected-labs-gw1.ter2.neodc.mpl.cust.as8218.eu. [94.103.137.126])
	by mx.google.com with ESMTPSA id d6sm3489957wiz.4.2014.02.28.01.54.36
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 28 Feb 2014 01:54:36 -0800 (PST)
Sender: Sebastien MENNETRIER <sebmennetrier@gmail.com>
From: =?UTF-8?q?S=C3=A9bastien=20Mennetrier?= <s.mennetrier@innotis.org>
To: yocto@yoctoproject.org
Date: Fri, 28 Feb 2014 10:53:59 +0100
Message-Id: <1393581239-5526-1-git-send-email-s.mennetrier@innotis.org>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Subject: [meta-raspberrypi][for-dora][PATCH] Installed fonts directory in the default location needed by omxplayer
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
X-List-Received-Date: Fri, 28 Feb 2014 09:54:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Sébastien Mennetrier <s.mennetrier@innotis.org>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index a456026..b4ca247 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -52,9 +52,12 @@ do_compile() {
 
 do_install() {
 	oe_runmake dist
+	mkdir -p ${D}/usr/share/fonts/truetype/freefont/
+	install ${S}/fonts/* ${D}/usr/share/fonts/truetype/freefont/
 }
 
 FILES_${PN} = "${bindir}/omxplayer* \
-               ${libdir}/omxplayer/lib*${SOLIBS}"
+               ${libdir}/omxplayer/lib*${SOLIBS} \
+               /usr/share/fonts"
 
 FILES_${PN}-dev += "${libdir}/omxplayer/*.so"
-- 
1.8.1.2


