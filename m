Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 810FDE00D36; Tue, 28 May 2019 09:47:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.174 listed in list.dnswl.org]
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
	[209.85.208.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC038E00D32
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 09:47:24 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id w1so18409459ljw.0
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 09:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=ngY25t1BH1jDSlOxND8o7V7RJZWenhZ3kUpp2GsDx08=;
	b=nNbXM2cOo1RJUb2/cPajk3pDDTtM9F2FNSazZh/+SDXDs20oKqyZu1gLwNEqyPwdCN
	/SCLlpBStsY+HwoKb6BqHIczjuYdIbGMWu31/6stL9Lgns5ZYF2OpsmWTNnhVRpFpbb+
	2GdnlOoFjlmjwKFC8tspEHzubGn2L+5GC4rOTYH7ovpD4ybsThh++CVDdKagg/ZJusFh
	sAVdBU7q0NHm5F+8cOBwmT281A8LH4dHFctyV0uBLgp6Eb1Ssmu20u1Uq31lE+70uQUX
	6zsmdEPcCczs1dTw+S3wlePuqU8TIQeeQpDqdd3+R2AHWwwQwLlENdOvWc72GTexcHo2
	orEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=ngY25t1BH1jDSlOxND8o7V7RJZWenhZ3kUpp2GsDx08=;
	b=JqHMia6xRqrWNVDBY6BqJfqsTCt0t2kbMOpKmLKY9wBtXGT+OxLkfnG9S13QWxN5oq
	kyFf6nIX+85szKWpAh+6yq4b04D9K4gb9MesDtek0cb5gvuGv9ClHSyFx88Li+zhdbJ7
	j5cw/6xiyoIqFvnsjPM37saap/2cRMSan5IjwbQkBhf372cSjpOPI/pvCd95+LKzDHFZ
	O1tnqWYpuS4HACc++Qo+7y1EWLUwlOc+r1qlMtp0Q3MXJ3mtTkJvUfLCavS+HIEybdSx
	mKcKGj5gCN4/87wP9aK1uVxlUI8MLD5igX+mFDLGR7UfFrseSRVrKf0Kbv+ufYj4B0cZ
	6oJw==
X-Gm-Message-State: APjAAAWG+j1bOtq3spy03jwm+pb1zR54B1TCnYK058GBs0p3S55hl1YZ
	mq2TJMjth22rGXqLfRMZdVBEBKrDetYObt+h8YKmVtY6
X-Google-Smtp-Source: APXvYqyLpUvwKe8Wr9on5HxXBNnA3q+OX/2xwUeFkNCPPut3Wta7x7rMRXBhEzDLYXvHt36aH7Dpo4HQ1/G66klyEIM=
X-Received: by 2002:a2e:9ac8:: with SMTP id p8mr55356850ljj.154.1559062043546; 
	Tue, 28 May 2019 09:47:23 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Tue, 28 May 2019 18:47:12 +0200
Message-ID: <CAEhQi8=fqT3e5a5Y5ZdZsiRQwWwDLSyMk42GaD3ue1qV-mGRyw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Using the SDK and CMAKE GNUInstallDirs for multilib target
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
X-List-Received-Date: Tue, 28 May 2019 16:47:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Not really a Yocto question but I am trying to build an application
using our SDK. We are using CMake to build and are using
GNUInstallDIrs for managing our install paths. I thought
GNUInstallDirs should have the detected that the SDK was a multilib
which it dose in regards to finding packages since it will look for
libraries under /usr/lib64 but when looking into GNUInstallDirs it
will explicitly not try and detect if CMAKE_INSTALL_LIBDIR should be
lib or lib64 when CMAKE_CROSSCOMPILING is set which it is when using
the SDK. When building the same application in our image build it
works as expected and GNUInstallDirs will detect that it is a multilib
dir and install it under /usr/lib64. Could anyone point me to how we
manage this in poky/OE so I could potentially copy that to our SDK
build?

BR
M=C3=A5ns Zigher

