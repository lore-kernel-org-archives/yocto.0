Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BD85E009F4; Mon, 30 Jan 2017 00:45:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DED4EE007AD
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:51 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id y143so22887959pfb.1
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=F1E2S9xM/dgTYjPnA47hfhOp5oP4jnh0eIvfvwbWiAg=;
	b=fsAdyvNuj5XFtkCQSG2H3weq0iZIGFKsiM4QKwaFz1X2ios898qBGnJlQcpC09OrF+
	OAQqy0L576yc94ww0+i1vYQzBIN2RM27l6AZ7OfwYHABI8XXaTof+pwJlnTqLfsvpNjL
	26MYQpIz4IEdr/CNfDB/+MNyHg0J+Km4WyEjiTTTQqXD1b2+BOv4BeWWguJG6d5Na0hN
	oowt7jDUlisT2GFempdCpkW1vl+dao/vnirMCjz9tRy1ES3embhzawPwDypszntK4ZOL
	QJUhpH/Rzf1xUQzZgmawI4NWKPtQyBs1Q3j6YNJn2bnGYuNInl/qeepTF9KSCy8pU8IN
	PwSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=F1E2S9xM/dgTYjPnA47hfhOp5oP4jnh0eIvfvwbWiAg=;
	b=ajK3ukr6MCWwHLyONVKW09hDgXl33ve93JBreLSduyLh8rj4hHvHNGF8EeUnVM4o9G
	wnLP290CX/Vq+CzfuMbQv89/BDkgndRTl7iTM4DDXEtlmMgS0Hjz+ab7pN5D2mq8nXIU
	rKC8hXdH1XlSeMtBcUBOtLPLJJPd6AK/Ii5UgjB2QftwEsjwIauYcb1BCnNIt82CZfAL
	BEDB58/8mFCSSAIN0kNOcVYBkfeEd563SEm4YqdYZ/zrsYcPNjwOQhMPJXI0oNZzhOq5
	ObqBbn1ezt9b9LPG6tt5LjLcGu0jqCWe2urMgoN2TlS5OALaIi991S9cX+tUL/JjlomG
	/RhA==
X-Gm-Message-State: AIkVDXL5x2Gs8g7auTLhppK16WMWZofAs7vrTtzTHj/cqJE9sdo7LdY/Ze/hH1taLuS49w==
X-Received: by 10.84.191.129 with SMTP id a1mr29797074pld.62.1485765891194;
	Mon, 30 Jan 2017 00:44:51 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	y184sm30201716pfg.86.2017.01.30.00.44.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:44:50 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-7-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 7/19] gettext_0.19.%.bbappend: Handle gettext-libintl .dll packaging
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
X-List-Received-Date: Mon, 30 Jan 2017 08:45:00 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

For mingw32 handle packaging of gettext-libintl in bindir.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
Note this patch is separated from the preceding due to being dependent
on a change in oe-core/meta being applied to add the 'gettext-libintl'
package.
---
 recipes-core/gettext/gettext_0.19.%.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-core/gettext/gettext_0.19.%.bbappend
index d485cdc70e..6238b3871a 100644
--- a/recipes-core/gettext/gettext_0.19.%.bbappend
+++ b/recipes-core/gettext/gettext_0.19.%.bbappend
@@ -11,4 +11,5 @@ SRC_URI_append = " \
 
 FILES_libgettextlib_mingw32 = "${bindir}/libgettextlib-*.dll"
 FILES_libgettextsrc_mingw32 = "${bindir}/libgettextsrc-*.dll"
+FILES_gettext-libintl_mingw32 = "${bindir}/libintl*.dll"
 
-- 
2.11.0


