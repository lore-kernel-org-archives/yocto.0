Return-Path: <franksinankaya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8218BE00BFF; Sun, 18 Aug 2019 13:17:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (franksinankaya[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DA8EE00B57
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2019 13:17:49 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id q22so16413468iog.4
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2019 13:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:savedfromemail:date:subject:importance:from:to
	:mime-version; bh=MarKkzH/Si4rfXpkVqK8LM6pezEF4s44cjqOSD0o8ZM=;
	b=s0+cWmp8xu+Y6aAtiOzKjSyDYoXvIs206ibMy6zCIUFavBRfKlFvXLeBcNwgMpzcBo
	A2QZf914QV6ZC7aHijf3JmJ6pcMFaBNVRiPUJ07FAcA5O4Z8yio0AlgV1D1gdZrRnlM5
	z+WUXTv4CpYCOI31jBxLsB1EHfmM/hdBbpGeKIq6jZYnZElgW6CyEEFHA0PvKOCKtZcZ
	aCJEkIhyIIYVCearqnHmiOIUcus5Hvk0I82slREKu/W3nuev4+oLzshnv1qU7He9aa/C
	DO7gVaeLQ20YgjhaK9VUtVbF0FrkjWpxgD71s4kZCl5klLLjeCR3x8lyDBgnAmb2CPeB
	e/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:savedfromemail:date:subject
	:importance:from:to:mime-version;
	bh=MarKkzH/Si4rfXpkVqK8LM6pezEF4s44cjqOSD0o8ZM=;
	b=LSippOYcHOu/zSe/ApLVG08RtRmK0yFncsl4um12lzwMPR85Be9Gs0OVAElSh4D/Sk
	XDXI/UUbRwE5Fzm3qgyP2oUOsPrsVxjUhtrKQhAzZdmnLoU6DucmylxVWprGCbWYgZli
	j5SHFI+HjMCzi7X8BPhxFm7I7X2jg6t0KdIz3zwmtrLSC9wSoaplwrzvsuTyNUpX0qGe
	FxOavaFT+5V2bltcrx/qeOT7rizZZ+q+qyXV4XTq2NKaPAikEaUVN7dG8gmHeLGtX/WD
	vFlIg9i1+dQPBuPhK+qEuOAKfRjDMBSmHGIUyoCdXmaRKDhoRjLdGS4f7bNB9CXoP6Jt
	gYig==
X-Gm-Message-State: APjAAAVAUiOPycxpOXk2Q3fsEWI1Vg6cWumWHw5YMmvbWHwYJts6S/RB
	GBVRhW3u6Actg8UJFI6vVecmO3mtjUs=
X-Google-Smtp-Source: APXvYqxCOMLXgj3IaHBdfT5WTthQxOxt+E9rKKV8k664dt0w8PJUk+EZOYFcJKlzmX2TZbkYVqDU1g==
X-Received: by 2002:a05:6602:219a:: with SMTP id
	b26mr15480646iob.55.1566159469376; 
	Sun, 18 Aug 2019 13:17:49 -0700 (PDT)
Received: from [21.111.33.217] (ip-99-203-142-24.pools.spcsdns.net.
	[99.203.142.24]) by smtp.gmail.com with ESMTPSA id
	z19sm11020411ioh.12.2019.08.18.13.17.48 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 18 Aug 2019 13:17:48 -0700 (PDT)
Message-ID: <5d59b26c.1c69fb81.1cbb9.6740@mx.google.com>
SavedFromEmail: franksinankaya@gmail.com
Date: Sun, 18 Aug 2019 22:17:46 +0200
Importance: normal
From: franksinankaya <franksinankaya@gmail.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 19 Aug 2019 02:32:48 -0700
Subject: Qemu on windows sdk
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
X-List-Received-Date: Sun, 18 Aug 2019 20:17:50 -0000
Content-Type: multipart/alternative;
	boundary="--_com.samsung.android.email_818506959370020"

----_com.samsung.android.email_818506959370020
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SSBub3RpY2VkIGxhc3Qgd2VlayB0aGF0IHFlbXUgcGFja2FnZWQgaW50byBtaW5ndyB3aW5kb3dz
IHNkayBpcyBicm9rZW4gd2hpbGUgdGhlIHFlbXUgaW4gbGludXggc2RrIHdvcmtzIGZpbmUgdXNp
bmcgdGh1ZC1uZXh0IGJyYW5jaC7CoFFlbXUgY3Jhc2hlcyB2ZXJ5IGVhcmx5IHdoaWxlIGxhdW5j
aGluZyB0aGUga2VybmVsIGJvb3QuwqBUaGlzIHVzZWQgdG8gd29yayBmaW5lIG9uIHN1bW8uRG9l
cyBhbnlib2R5IHNlZSB0aGlzIHByb2JsZW0gdG9vPw==

----_com.samsung.android.email_818506959370020
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0
L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPjwvaGVhZD48Ym9keSBkaXI9ImF1dG8iPkkgbm90aWNlZCBs
YXN0IHdlZWsgdGhhdCBxZW11IHBhY2thZ2VkIGludG8gbWluZ3cgd2luZG93cyBzZGsgaXMgYnJv
a2VuIHdoaWxlIHRoZSBxZW11IGluIGxpbnV4IHNkayB3b3JrcyBmaW5lIHVzaW5nIHRodWQtbmV4
dCBicmFuY2guJm5ic3A7PGRpdiBkaXI9ImF1dG8iPjxicj48L2Rpdj48ZGl2IGRpcj0iYXV0byI+
UWVtdSBjcmFzaGVzIHZlcnkgZWFybHkgd2hpbGUgbGF1bmNoaW5nIHRoZSBrZXJuZWwgYm9vdC4m
bmJzcDs8L2Rpdj48ZGl2IGRpcj0iYXV0byI+PGJyPjwvZGl2PjxkaXYgZGlyPSJhdXRvIj5UaGlz
IHVzZWQgdG8gd29yayBmaW5lIG9uIHN1bW8uPC9kaXY+PGRpdiBkaXI9ImF1dG8iPjxicj48L2Rp
dj48ZGl2IGRpcj0iYXV0byI+RG9lcyBhbnlib2R5IHNlZSB0aGlzIHByb2JsZW0gdG9vPzwvZGl2
PjxkaXYgZGlyPSJhdXRvIj48YnI+PC9kaXY+PGRpdiBkaXI9ImF1dG8iPjxicj48L2Rpdj48L2Jv
ZHk+PC9odG1sPg==

----_com.samsung.android.email_818506959370020--
