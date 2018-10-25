Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F094CE00B23; Wed, 24 Oct 2018 23:58:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88F58E00AD8
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 23:58:02 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id l1so7780215otj.5
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 23:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=A3wU9upHnUMpsvVmo9OyqtgT8VhnqvwLB9kJxwMIGcM=;
	b=JQNgewzAGeblvAwJDIOkVcBfJqZkQoEGPJnbz5TWSxk/Je2losKqbVffO+3K6Bat26
	PNAQYct999vpi02Ls4/nzzXDv5aRa3QlKPdQ8q+tQWpgNHlCy2LFrNsrKNGk7iFbO9ID
	Jb5vSRuitX+HxPMb8b/Eb7MfC+9tlOGwNUa/UmszuNP72X+H/DssjjZ4WlcYDv3LeDOr
	vh07UTjcZ7vpybW1+0E44itYKpL/8Uvg9+EM6a8JW5PdsN/vD5raQ0LCoLDeRaBxgoug
	TZ/XruUusIb/eFnOZPqpWJVdzsx0kewTifXVOWJK93j2ifOZ4B9u50MLbPsB8qQmGcij
	TfXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=A3wU9upHnUMpsvVmo9OyqtgT8VhnqvwLB9kJxwMIGcM=;
	b=GLRl1nvQ4rGgZE+QjR+7eIrid5dnz6A4K0x/VUTfduUtpS2LA1Ycry7fDN/Q+/l9Sf
	tXUXe9mWrXV4I0DizmcG44iSoA+uYvMOijxZr1w8vYEyNhqD0fFEgxGsYc3u6abC7b1R
	g6d77EZsF9mL5zoGLnC0WOHMU0CTTT8BrMYWf0bEDb2cRMcg2E0uLejjSsJZEGMJt7Hz
	lKtY906Ts/Hag+E9P9ssKLzc0FSMhKXkUKPmFArX1tZjM6IR14cFvdIOevBgITquUAFH
	F/wS+9lkoMkfxrpTRyapMLCjbfySqUO5wIG2sHBB47YFkUu2Ll3tKmV63FsjIZ7s51Nn
	0gvQ==
X-Gm-Message-State: AGRZ1gIh5c3zQfVEas8+jG6sp8GmvxR+rG0vss/9uYo+/Ec1Jg62BME+
	Gdek/GCiS/tnw/f957yj2yyii7VdxWU3AxoOMREDWY0T
X-Google-Smtp-Source: AJdET5eDLx3nOEp/+5rrgNZ3i5h1gyGjJs3svMv1hZqjKCXOpuQyWZb+eUubwUeywuDi/wCGB0n/Fy9T1cs3YyCVKjE=
X-Received: by 2002:a9d:3e50:: with SMTP id h16mr375883otg.8.1540450681663;
	Wed, 24 Oct 2018 23:58:01 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Thu, 25 Oct 2018 08:57:50 +0200
Message-ID: <CAEhQi8kJ5+2B4C3jCgo128rr+4movTjrZkVScexLQheFX2RD=Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [qemu] How to use qemu in your testing cycle
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
X-List-Received-Date: Thu, 25 Oct 2018 06:58:03 -0000
Content-Type: multipart/alternative; boundary="000000000000acb4a30579081fb2"

--000000000000acb4a30579081fb2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to wrap my head around how to incorporate qemu in our
test/development cycle. I am currently building machine genericx86-64
machine producing a SDK and a number of files. One of them are the
qemuboot.conf file but it have some path that is a relative path to the
work directory. I would like to be able to supply our application developer
a way to start a qemu instance and test out our application without having
them using bitbake. I assume this should be possible but not sure exactly
how to accomplish this? Any input would be appreciated so I can get started=
.

BR
M=C3=A5ns Zigher

--000000000000acb4a30579081fb2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am trying to wrap my head around =
how to incorporate qemu in our test/development cycle. I am currently build=
ing machine genericx86-64 machine producing a SDK and a number of files. On=
e of them are the qemuboot.conf file but it have some path that is a relati=
ve path to the work directory. I would like to be able to supply our applic=
ation developer a way to start a qemu instance and test out our application=
 without having them using bitbake. I assume this should be possible but no=
t sure exactly how to accomplish this? Any input would be appreciated so I =
can get started.</div><div><br></div><div>BR</div><div>M=C3=A5ns Zigher</di=
v></div>

--000000000000acb4a30579081fb2--
