Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C859E00D36; Wed,  1 Nov 2017 04:16:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0F46E00D30
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 04:16:35 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id z3so4189256wme.5
	for <yocto@yoctoproject.org>; Wed, 01 Nov 2017 04:16:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=e8P5z4BCCDkOZE9rgxSGcoXcBPjogjmaJ9udxs4hDkM=;
	b=gWyZcpNOjRC7319ewCIJQbOZKLPMCZ8KF9xfQzBwXrXidnpFp2sN7wpKhhIFajT2XX
	H5zX/zavEIrSacN2GBtD3AFS5VkDqNuWbm719mg88W7cJ/S+IPDjOgbF/Bv4HjFZayi8
	Pj1KsNPXBfL5i0J6OP8OBFt6NbBC3nwECaqLuax/b3OSAe0a/Fpw/kujykavRduQQs3u
	8iomuNn7x5ZoKB2ichkyVXGqP7Kq8ZyrEni6tmTfvBX8Mxfy7NbjjkXNLTMdO4bydM/h
	PLVYuW4pumLisWYe8583NJJSV6s3xoWOd91Fju44ClWOOnt2U4vmxRZ3BKbi2nutbC7z
	1ESQ==
X-Gm-Message-State: AMCzsaW5f3nw3GUV1bAaqNuVYISDSeQO6dKdnZElukPayz2++XJSqY0N
	GShQFux2J1aeCjGzKMhABcwpjj6u
X-Google-Smtp-Source: ABhQp+RlU8yBbYVbPKm/IQxQL2FJ1XOFXDacJXFiJe2r6I5xQ8oFZGmDTuUEAwKeA5T4VdP3Cq0gRA==
X-Received: by 10.80.144.4 with SMTP id b4mr6562817eda.127.1509534993946;
	Wed, 01 Nov 2017 04:16:33 -0700 (PDT)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id 23sm741225edx.8.2017.11.01.04.16.32
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Nov 2017 04:16:32 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Wed,  1 Nov 2017 11:16:32 +0000
Message-Id: <20171101111632.19287-1-git@andred.net>
X-Mailer: git-send-email 2.15.0.rc1
MIME-Version: 1.0
Subject: [meta-security][PATCH] trousers: make initscript more reliable
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
X-List-Received-Date: Wed, 01 Nov 2017 11:16:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

The combination of using start-stop-daemon and pidof is
not working reliably in all cases. Sometimes, the
tcsd daemon isn't running yet at the time pidof is being
invoked.

This results in an empty /var/run/tcsd.pid, making it
impossible to stop tcsd using the init script.

To solve this, one could either add a delay before calling
pidof, or alternatively use start-stop-daemon's built-in
functionality to achieve the same.

Let's do the latter.

Signed-off-by: André Draszik <adraszik@tycoint.com>
---
 meta-tpm/recipes-tpm/trousers/files/trousers.init.sh | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm/trousers/files/trousers.init.sh b/meta-tpm/recipes-tpm/trousers/files/trousers.init.sh
index 0ecf7cc..d0d6cb3 100644
--- a/meta-tpm/recipes-tpm/trousers/files/trousers.init.sh
+++ b/meta-tpm/recipes-tpm/trousers/files/trousers.init.sh
@@ -33,10 +33,12 @@ case "${1}" in
 			exit 0
 		fi
 
-		start-stop-daemon --start --quiet --oknodo --pidfile /var/run/${NAME}.pid --user ${USER} --chuid ${USER} --exec ${DAEMON} -- ${DAEMON_OPTS}
+		start-stop-daemon --start --quiet --oknodo \
+			--pidfile /var/run/${NAME}.pid --make-pidfile --background \
+			--user ${USER} --chuid ${USER} \
+			--exec ${DAEMON} -- ${DAEMON_OPTS} --foreground
 		RETVAL="$?"
 		echo "$NAME."
-		[ "$RETVAL" = 0 ] && pidof $DAEMON > /var/run/${NAME}.pid
 		exit $RETVAL
 		;;
 
-- 
2.15.0.rc1


