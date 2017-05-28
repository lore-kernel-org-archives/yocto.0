Return-Path: <so61pi.re@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D7DDE008F5; Sun, 28 May 2017 03:23:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (so61pi.re[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE537E00724
	for <yocto@yoctoproject.org>; Sun, 28 May 2017 03:23:53 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id h4so53294527oib.3
	for <yocto@yoctoproject.org>; Sun, 28 May 2017 03:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=aOQW79XEtp7t1K4ZeLqvpZOiWdX9LbtBJ3UNu7fOWb4=;
	b=smkKdGH1ZqkK2nWNFCMWMcUOGbUXxuVf/ArSUJB2PNcq2Ry6teQKvK7oXLMrNkIgc5
	OtUKf/VqQ67vVRUn1JpjsNkwhs/UO3FxtNWzXH5gGZnuOGyOAlj1Hh0MlaWzTdcbYN8M
	iKtJESPRbR5BST+lnVdqYLnlFiQLEgqel/Wt2U3AefXHGBHWi2+j80Vq7BYR0hQ0GhRv
	P63erypl/35wp6URiMfQbDsyDML5vX/wrQxaXnsSDoOGt8+Y7a+opm9s52LJh5iydyhT
	Ew5lPk5ATI5s/mkbPHmv/dkGjlbiIwLrwJu9dHk4U1za+ml/QFw4vOjqgYryFZTJwrnS
	qHWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aOQW79XEtp7t1K4ZeLqvpZOiWdX9LbtBJ3UNu7fOWb4=;
	b=aIg449IXkRXdbp8YPzzoE3aY/k8QRR7lrKCrWsMVIN052aTFZK9nrF7I80i9rqDOZL
	zaxxhrmmOlws5LOMNaf4WmKXOZJg3ITuYjRVWDaYGHN+CcnRbpquf0ncXpChyxoumtjg
	bGc+R5qnoenwZ3xDiZyxTBABs+V3Y8YQACUw/LeuoxlgZ78ZZXX5XTWMo7+dbUQfgWwp
	NnFzXXvkLAyiJVW7mHIzqZDqdPbwhBsPIAujOirw2tpGnxguCjRgJHKxES1G0uNo/idC
	OWrKFUb2KyKKydlK/tCPahfWwXChXjm6rD9OzN+pEzh0h9PgwkECr3P+c6y1i2sExnDP
	yy4g==
X-Gm-Message-State: AODbwcCm+YC8eUjwMoy/buWDAmafurCSiSqSN3mg4y7VRgHa8/Zd6WLl
	8lqR9mpvRMJWNbEBHOtl44Us2DYIbH940wo=
X-Received: by 10.202.178.85 with SMTP id b82mr4237174oif.51.1495967033280;
	Sun, 28 May 2017 03:23:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.5.71 with HTTP; Sun, 28 May 2017 03:23:52 -0700 (PDT)
From: =?UTF-8?B?Tmfhu41jIFRoaSBIdeG7s25o?= <so61pi.re@gmail.com>
Date: Sun, 28 May 2017 17:23:52 +0700
Message-ID: <CAGnCEbspYODFnRoTCxfQxzjdHaQEgnkLE2On9DKKq6BJePbPPA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to install dbg package and not its dependencies?
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
X-List-Received-Date: Sun, 28 May 2017 10:23:57 -0000
Content-Type: multipart/alternative; boundary="001a1146ac5e9d4f2a055092f770"

--001a1146ac5e9d4f2a055092f770
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

Let's say I have app-example package which depends on libexample.

When I add app-example-dbg to IMAGE_INSTALL, libexample-dbg package is
automatically included in the final image which makes the image size become
bigger.

In this case, is there a way to prevent libexample-dbg from being installed?

Thanks,
Thi Huynh

--001a1146ac5e9d4f2a055092f770
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi everyone,<br><br></div>Let&#39;s say I have a=
pp-example package which depends on libexample.<br><br>When I add app-examp=
le-dbg to IMAGE_INSTALL, libexample-dbg package is automatically included i=
n the final image which makes the image size become bigger.<br><br></div>In=
 this case, is there a way to prevent libexample-dbg from being installed?<=
br><div><div><div><br></div><div>Thanks,<br clear=3D"all"></div><div><div><=
div class=3D"gmail_signature"><div dir=3D"ltr">Thi Huynh<br></div></div></d=
iv>
</div></div></div></div>

--001a1146ac5e9d4f2a055092f770--
