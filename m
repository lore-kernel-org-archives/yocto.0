Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 410EDE00D8F; Mon, 28 Oct 2019 08:58:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 303F2E00D35
	for <yocto@lists.yoctoproject.org>;
	Mon, 28 Oct 2019 08:58:25 -0700 (PDT)
Received: by mail-io1-f65.google.com with SMTP id c11so11237461iom.10
	for <yocto@lists.yoctoproject.org>;
	Mon, 28 Oct 2019 08:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=ohGt9FaoAfz7JTG5lQL6EI2DcQ3nAZzKx3oGgHlHcYM=;
	b=cTiVbpKM1BiZ+Y1PfrT48JhpAAo0u4l4SjyyM8fuA87O+HGeGMU7v9UsGexZyzy8kn
	0kYLqNfBngCgoKnPKZsdhvxlj24QSzbLnPx/yA73VOxMQRX4t/WrXTqgU8/ANQf9BaIn
	XEAJMK7kHErtKorAngDwS0iAGI/rJ/VVtjqWVmm5hBdZ3kSLWvQDFcg3fsv6jv7mNdYQ
	ocWjU4Xs58vRgNjMJiNkG2RVcQyqKU1K4h9bfV7lfgNrtidTQOZ3BqCw9GAtunsqZH8r
	1aNHiWQCFdxA8Fkw6K0F9H83/QLILX4y7lMSAdG130KxFVKepQkfuSO4/eya/cK0tdIn
	/Ogw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=ohGt9FaoAfz7JTG5lQL6EI2DcQ3nAZzKx3oGgHlHcYM=;
	b=JxhOiROc0Nr36G2y8UN3K8ZwqWRijRXDnE3+0971cIj6P0xPAbTy1N3AaWzxD3GJ7f
	otRd1msF7bS0UqJG7VDUfDpFbuLWsqbP/xHBdcX7pC2FEZhM8oDPY3NpiQnT3USjGbhJ
	XzUNl/+EDBK+/BUYmM+B+p394wTriQqeRC/x4m3EizyLGsgZTajat69Xq8lCoyJVqFBe
	u7q1mxODFWtXC64fcUiP9dN4UKXcMHK/yLvYPR2Z6YbtoRkqmG532IJdXAseBrlJ5OM5
	jR+VuTJTJi2OZXqPPVeAwhlcO1de+77zb0BQwSwmZ7LeHs6Zk8i2lBzR7D+JZKCJXRD9
	xtCg==
X-Gm-Message-State: APjAAAXLR83aZo0XhPYv2rBJTK6vAYyOE9pWmhA/zmzWP0dayLRmhW1v
	/zLAtFW0OiZEpQxgVp0sji8cbVt8UgU=
X-Google-Smtp-Source: APXvYqw6SXjnrWSJcOYzCkggPY+G6ChSW2lqEQBUGOlxp6axnSuae0pmAMOrlLOylGSdiyeHF4n9gA==
X-Received: by 2002:a02:2302:: with SMTP id u2mr16709580jau.70.1572278304491; 
	Mon, 28 Oct 2019 08:58:24 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	l23sm1085183ion.76.2019.10.28.08.58.23
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 28 Oct 2019 08:58:23 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Mon, 28 Oct 2019 10:58:07 -0500
Message-Id: <20191028155807.9310-3-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191028155807.9310-1-JPEWhacker@gmail.com>
References: <20191028155807.9310-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 3/3] dbus: Set FILES
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
X-List-Received-Date: Mon, 28 Oct 2019 15:58:27 -0000
Content-Transfer-Encoding: 8bit

Set the package files correctly for MinGW

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-core/dbus/dbus_%.bbappend | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 recipes-core/dbus/dbus_%.bbappend

diff --git a/recipes-core/dbus/dbus_%.bbappend b/recipes-core/dbus/dbus_%.bbappend
new file mode 100644
index 0000000..76b0c3e
--- /dev/null
+++ b/recipes-core/dbus/dbus_%.bbappend
@@ -0,0 +1,11 @@
+FILES_${PN}_append_mingw32 = "\
+    ${bindir}/dbus-send.exe \
+    ${bindir}/dbus-monitor.exe \
+    ${bindir}/dbus-launch.exe \
+    ${bindir}/dbus-test-tool.exe \
+    ${bindir}/dbus-update-activation-environment.exe \
+"
+
+FILES_${PN}-lib_append_mingw32 = "\
+    ${bindir}/lib*.dll \
+"
-- 
2.21.0


