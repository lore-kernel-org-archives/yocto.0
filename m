Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0254E00A04; Mon, 30 Jan 2017 00:45:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09712E009DB
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:01 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id y143so22888157pfb.1
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=4pMQn/rrkA7GRrIBpUPDgnrTTjVk3cSTTSeCR2wEhHI=;
	b=j0xUMZYX98FRTG8dl+2cezfq6b2xB0/OyOiLlh1/x+QOU5UlkwM7bBLn1hep/mGlRB
	Lo7Y9gUMlkK3IjtUMyLyJOkcoWofhKCRV3ZmIUm5W5so14es8nHET0jRpIMMOFV9UsUy
	5mUXyQj05ip9b4Vm9jEP8Zg0PMzrM4BUJujuxiR4I7X/F9Wdwcl4U24/CFrenHhRl4j8
	tPwAoDCBoht63CckkTLENNQad7BSf+63K3o7Sa//RQxz5pH/JtUA0q/59LeTj9w8E6TX
	GmmjczMwYw4nT1enIliyCEc2mX7z6RWNp5F+UOx/+1NQUZdDCrbXViw49qRQuQYnvKAz
	6bDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=4pMQn/rrkA7GRrIBpUPDgnrTTjVk3cSTTSeCR2wEhHI=;
	b=O+IzNccHWQ2L51zlATqeuLp6vvGvKlHSIg0eaa0KxxZm3sfGlnXMztH7vVunmK5PCl
	l+QeytlIAaz/O3W3Vo8FiPiIIYbh9o2HzKKusJI7+hbyfOoF9VXd+j3GLetAEuUC6kIh
	Tvy6upJBZS1/vHlqtrTdOpMLtLlUsMwNl5UJqjQ9Uiu84g56Go1W0KIykvf3PKjP8Bn0
	stOICUfaw1KMA1BcLGvFbJ+5Mk1pDEau2rmHxb1PpgG6AGv0ZAEpaB4vi+fK9hxutL/u
	Cqp1QHIBCf1YusMZmWf8wfNTvjmHt1pp7dBQ+iZafWnmrX14RbkKoJWMDmR4ZjWHvAKO
	yY1Q==
X-Gm-Message-State: AIkVDXKILT2OzC/U0YYC2X7bcc0opPdG/EuniWhphUwcUFytmfUnNXnWGHeDxFCfL4+Cyg==
X-Received: by 10.99.228.69 with SMTP id i5mr23054863pgk.63.1485765900608;
	Mon, 30 Jan 2017 00:45:00 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	o12sm30258870pfg.15.2017.01.30.00.44.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:45:00 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-9-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 9/19] glib-2.0: Disable libmount support for mingw32 targets
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
X-List-Received-Date: Mon, 30 Jan 2017 08:45:01 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

MinGW/Windows does not have support for libmount, so disable it when
targeting mingw32.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-core/glib-2.0/glib-2.0_%.bbappend | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-core/glib-2.0/glib-2.0_%.bbappend b/recipes-core/glib-2.0/glib-2.0_%.bbappend
index 2b9ec53182..5683364c37 100644
--- a/recipes-core/glib-2.0/glib-2.0_%.bbappend
+++ b/recipes-core/glib-2.0/glib-2.0_%.bbappend
@@ -4,3 +4,7 @@ FILES_${PN}_append_mingw32 = " ${libdir}/charset.alias ${libdir}/gthread-2.0.def
 # glib always provides bash-completion output, package the output but prevent
 # the dependency chain on bash (via bash-completion) for mingw32 targets only.
 RDEPENDS_${PN}-bash-completion_remove_mingw32 = "bash-completion"
+
+# libmount is not buildable for mingw/windows
+PACKAGECONFIG_remove_mingw32 = "libmount"
+
-- 
2.11.0


