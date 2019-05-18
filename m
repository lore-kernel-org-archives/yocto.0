Return-Path: <ap.sihvonen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF98AE00CD5; Sat, 18 May 2019 00:56:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_MIME_NO_HTML_TAG, 
	MIME_HTML_ONLY,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ap.sihvonen[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.4 HTML_MIME_NO_HTML_TAG HTML-only message, but there is no HTML tag
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
	[209.85.167.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CAB7E00A7D
	for <yocto@yoctoproject.org>; Sat, 18 May 2019 00:56:28 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id l26so6859475lfh.13
	for <yocto@yoctoproject.org>; Sat, 18 May 2019 00:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:subject:message-id:from:to:mime-version
	:content-transfer-encoding;
	bh=z4aHNMiy2QVrfVh70IDLqPc21OnmtZWeZXHRK+Kxw1Q=;
	b=bs1o0854Ya14eefNivKRPbS1uulBqPWQJCbnNBPsWQuXwvuFFTqAa9hn9HCD7sZnEe
	+/43ipv8IZzcTXwakczyNfgPys4xZBmJSnLp6QJjxMIHLAEE4sc5DFD4Kw3kksvae67w
	P1CyFl1O7w4POUYbDDkAI47otknKUKeCWh41usqgdlduHKy4VNDXE83OKte7jwT6KQ9O
	g78Fc4VoYjuXHVzKLpVN1Hm56JyQ4q2PJu/xzOwZPgbZ1cUSHbb2PJEN5RREjU140SO7
	IEghIe7EEeW2mAvoRTli9lji+i9RgAn7YDQQWgPfpdABwZ/olyHA949N9m0rRSkFLZs5
	Hzhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:subject:message-id:from:to:mime-version
	:content-transfer-encoding;
	bh=z4aHNMiy2QVrfVh70IDLqPc21OnmtZWeZXHRK+Kxw1Q=;
	b=GDphD7aXrpyY5/+Qu12EojWWAe9s7EgQRy2uQHDfIamAoj6/XEzeRzqVvYRvYyGES8
	W0Z0oiqQpqmkYCGXOiZBgewL9djen7xOWvHiKUY+gXhO26mKpiGBuG+PavSpB23131Lk
	D6CrbN8qsxtUe6rmuOX02iXa9ume+3CzTGwVtm93BUElH2DcYlM9KrmBXqaWlMhiV8RB
	4HHneBHXOAFVbrOYqnYqtrh2Ji+2sbcNj4KO++tqpjoVvKHTZO24rootfAw9ermFBRlA
	qoBUwRKXRV4Y0feIbsuNg6hyAKIfSEOpWYOE9WC51hQG2d3qbCvXj5Omlb3DFkHmHMMi
	Pd2w==
X-Gm-Message-State: APjAAAUW2jLM0eGSBL700ZlPdGU8psidoM1yF2a+P0/we+oHpRLvNGuI
	0JT+b2574rTJNdE412Y5dJ3bNmn0sbg=
X-Google-Smtp-Source: APXvYqzAIILi2MhR5/ss2G23k3EltZdyCfg+31ZWn3b7YArWOwxVEGy0nuo88JlIl08by9408w5Z7g==
X-Received: by 2002:a19:f501:: with SMTP id j1mr9718886lfb.156.1558166186953; 
	Sat, 18 May 2019 00:56:26 -0700 (PDT)
Received: from [192.168.0.4] (91-152-89-167.elisa-laajakaista.fi.
	[91.152.89.167])
	by smtp.gmail.com with ESMTPSA id t23sm2603132lfk.9.2019.05.18.00.56.25
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 18 May 2019 00:56:26 -0700 (PDT)
Date: Sat, 18 May 2019 10:56:23 +0300
X-Priority: 3
Message-ID: <-c1i03bd25jo3-mk9418-nezpl1ub4m9v-qsy5j-ym82e63yaxan1j9blsfzuixjo3ewfu-2h72ddybu9re-gs7ykbg1m2kv-voe8ke-2ymd7u-arwwxx8b4x94rrrmhz-3ryei5cgajw4ky16w292s2q3.1558166183995@email.android.com>
From: Ari-Pekka Sihvonen <ap.sihvonen@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 23 May 2019 05:27:38 -0700
Subject: Rocko broke down
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
X-List-Received-Date: Sat, 18 May 2019 07:56:29 -0000
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPkkgYW0gZGV2ZWxvcGluZyBzeXN0ZW0gdXNpbmcgcmFzcGJlcnJ5IGFu
ZCBtYWRlIGEgcHVsbCBvbiBldmVyeSB5b2N0byBtZXRhcy4gQ2hlbiBJIGJha2VkIHRoZSBJbWFn
ZSB0aGVyZSB3YXMgYSBtYWpvciBwcm9ibGVtLiBNeSBzeXN0ZW0gZGlkIG5vdCByZWFkIGNvbmZp
Zy50eHQgYW5kIGNtZGxpbmUudHh0IGFueW1vcmUuIFNvIHRoZSByZXN1bHRpbmcgSW1hZ2Ugd2Fz
IHRvdGFsbHkgdW51c2FibGUuIEx1Y2lseSBJIGhhZCBhIGNvcHkgb2YgeW9jdG8gdHJlZSBzbyBJ
IGNvdWxkIGdvIG9uIGJ1aWxkaW5nIGltYWdlcy4gSGFzIHNvbWV0aGluZyBjaGFuZ2VkIG9uIHJv
Y2tvIGJyYW5jaC48ZGl2PjxiciAvPjwvZGl2PjxkaXY+UmVnYWRzPC9kaXY+PGRpdj5BUCBTaWh2
b25lbjxiciAvPjxiciAvPlNlbnQgZnJvbSBteSBIdWF3ZWkgcGhvbmU8L2Rpdj48L2Rpdj4=


