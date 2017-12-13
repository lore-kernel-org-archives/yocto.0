Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5B04E00CEF; Tue, 12 Dec 2017 22:12:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F8AEE00B5F
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 22:12:20 -0800 (PST)
Received: by mail-pg0-f53.google.com with SMTP id o2so851818pgc.8
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 22:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/P4VQAH/bEsCq0vFch3NsmLYNxWqDZhefkz4izjQmJ0=;
	b=rYdzpVNZg8oEilReFdQFyVTaykWWvpTZIHOK5rgyvZOYl/OazOqBzp5kvhW9YBGqcP
	jyGLWqqM3FLfglnyHYa5CU96AvJU3ySa3nBr30ppns4xylRsMNL4YZGcR7jbgQ9ujLk2
	0GpRyNM6Ma0K3+hDOfTxyJwn1UJPACzgti/wyJsf2g/9R4R2LNpEV30gJUi3rcqDKQZn
	nTtJP9mIaSvycyLe0+yzPGyvWvt+DLfnKgtknqmfkQ1QGF/QrEspTQ7fuUTQHiS77mDN
	ElIxzxTJmsLXJMyL7+s4Jc0HZ68jFzfzJb3kO5xxyzLZVU4KoYSg59TmsqfUFnrxTPRD
	c0aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/P4VQAH/bEsCq0vFch3NsmLYNxWqDZhefkz4izjQmJ0=;
	b=brj9MoviA/8lO8C6jv9PPvIlTs9IbQ7bQauwm7RWHz/gt+GMcdWJ3r/3RrFZLCap9V
	VISWrWuzpXcShZQbplz/8dJSaYVGlAZZW3Q8HjJIo4HI1bFJR75Yaby/p5UJtxYoIZmn
	+LWpKi/Eo4Mw0CmyiJuiYJQt7hkwqh27Lv+oRvMCZT75k7fxhHWvRWYLpPpfCPM2pMBr
	gX8V5eemu6bIv5toogAfbh+OKtHrjyUD2f2zKZKhAnKfgWlKi04/DlIoqXOGVw6Z/rpn
	mDd5yh+8qbjr95a4//SkXjBn9MaPvi83X4Sw6ZEvglArhvH2WMXQKM/Gmca/XJsXQ6DU
	kdKQ==
X-Gm-Message-State: AKGB3mJrhqWeTJvvWyAz5vBdQVk7a2I+QYceZlsqiwcVuEsO4QKwsCq/
	QAw2jiOaCs+xvNPKuqxph/jKv1ZcAFp4wsc+REo=
X-Google-Smtp-Source: ACJfBov4beKQZ9ecV6LRy3+XkOontzhTtFAEVlAoKj1HcPFMBQZNgikv+690iH0lFZNs+RxLJ4sFJFI5pUF9X/nXZhE=
X-Received: by 10.98.150.221 with SMTP id s90mr4874502pfk.151.1513145539468;
	Tue, 12 Dec 2017 22:12:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Tue, 12 Dec 2017 22:12:19 -0800 (PST)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Wed, 13 Dec 2017 07:12:19 +0100
Message-ID: <CAPb0b+Oz5aKuCurvAdTu9PbRRtz=e17fczLucHfn4dEDcHTRow@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] core-image-minimal vs rpi-hwup-image
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
X-List-Received-Date: Wed, 13 Dec 2017 06:12:20 -0000
Content-Type: multipart/alternative; boundary="94eb2c0be9b45fa2d5056032a643"

--94eb2c0be9b45fa2d5056032a643
Content-Type: text/plain; charset="UTF-8"

hello guys,

Core-image-minimal has 75 MB and boots in max 12 sec but lacks wifi drivers.
rpi-hwup-image has 142.MB and boots in 18 sec.

how to add wifi drivers to core-image-minimal?

thanks

--94eb2c0be9b45fa2d5056032a643
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>hello guys,<br><br></div>Core-image-mi=
nimal has 75 MB and boots in max 12 sec but lacks wifi drivers.<br></div>rp=
i-hwup-image has 142.MB and boots in 18 sec.<br><br></div>how to add wifi d=
rivers to core-image-minimal?<br><br></div>thanks<br></div>

--94eb2c0be9b45fa2d5056032a643--
