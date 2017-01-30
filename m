Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C389E00A30; Mon, 30 Jan 2017 00:45:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16A45E00992
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:19 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 204so31002001pge.2
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=2sbLU+TFVw44C8rwuI3J3JwAj5t0ElDYPNDgrcL1REI=;
	b=CC9rakMbJC+7cjwDW41njKRIFz7y+EE3hD65j+DUjtDWyQ/DQgesmTYegSREfp5Bq5
	2v52+KfNwYkugXGS9ercSuUpQalKd8vuz6T26qgFXZihN8bXZsVFGvto41f4rS8h8nWi
	CeuzwtsGOwDapwtWEmEtYLSEmm2JumrEm/vxcBBrPcm0jQt2jMWwz6Ao/um/MjmwE8wL
	paH0dTpD4cH09+KUuBBBm8O6MbfIEiHH/PDfFU4tUo+cZZzegj3xmwUw8Ptzw8P3jQEx
	m7P8YsKOExZaLLC/AtmrQI0QicEDDkOvZHUHwtg0gommW10nZn0/PDu0DeFaoU6cXqs8
	DnqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=2sbLU+TFVw44C8rwuI3J3JwAj5t0ElDYPNDgrcL1REI=;
	b=TymB84ByF/TrU3h+OF+RXuPBdmY3R2bt0AXIlWgKRs/CuyDC0Aaah3GCej9CpdIBFe
	ISGtUvd3mQJkmx8G1ABZBXVcTIsQWtBJZpTtNNlseBEezVIz8XNtM8x8w/SmoorK6WGF
	gKZPcarve1CTxmmwkmoKoxZDlZaGktZnwzqZC7+H4tf3VDfkxBQpLx85anEDqvsmU5K1
	hjh+Jit3qOgpPqyUsdu39ITGiBng1rat5hrNzbhQvNFjTgHiFxggGSyNJW9agLfQt6sM
	4Zosrn9/T57c1HjCHTlpbPjurZr3FdUIQW61R5Y2WLP9j5vyNLUzeWzr97Qx29iWIiyC
	PYyw==
X-Gm-Message-State: AIkVDXKkr+w+7bYU2qPmd8bcOHThqRsSqRseScv2Ylk0ixKFPl4j9vg6bmwyqmECDSUHeA==
X-Received: by 10.84.173.4 with SMTP id o4mr30463254plb.106.1485765919426;
	Mon, 30 Jan 2017 00:45:19 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	199sm30203909pfu.91.2017.01.30.00.45.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:45:18 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-13-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 13/19] libsdl: Windows specific PACKAGECONFIG
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
X-List-Received-Date: Mon, 30 Jan 2017 08:45:28 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Add a PACKAGECONFIG for 'stdio-redirect'. This configure option
enables/disables the Windows only option for redirecting the
stdout/stderr to files instead of to the console.

Add the 'directx' PACKAGECONFIG to configure whether to build with
DirectX support. By default this is enabled (when targeting
mingw32/windows) however this requires the DirectX libraries in order to
include and link against.

Disable X11 support when building for the nativesdk mingw32.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-graphics/libsdl/libsdl_%.bbappend | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 recipes-graphics/libsdl/libsdl_%.bbappend

diff --git a/recipes-graphics/libsdl/libsdl_%.bbappend b/recipes-graphics/libsdl/libsdl_%.bbappend
new file mode 100644
index 0000000000..5f5787d318
--- /dev/null
+++ b/recipes-graphics/libsdl/libsdl_%.bbappend
@@ -0,0 +1,7 @@
+# Disable default x11 support
+PACKAGECONFIG_class-nativesdk_mingw32 = ""
+
+# Configs that only apply to Windows/MinGW
+PACKAGECONFIG[stdio-redirect] = "--enable-stdio-redirect,--disable-stdio-redirect"
+PACKAGECONFIG[directx] = "--enable-directx,--disable-directx"
+
-- 
2.11.0


