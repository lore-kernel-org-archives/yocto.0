Return-Path: <2233arunkumar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89184E0059A; Mon, 10 Apr 2017 09:32:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_STARTS_WITH_NUMS,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.7 FROM_STARTS_WITH_NUMS From: starts with several
	numbers
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (2233arunkumar[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-yb0-f177.google.com (mail-yb0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B640E003E1
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 09:32:16 -0700 (PDT)
Received: by mail-yb0-f177.google.com with SMTP id f204so34632630ybc.2
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 09:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=2n7hQwqxD+6TG3Je0VVLV7P/LpsLz1sdSXhlT+HI0K8=;
	b=LWDL6UIrOxrNNPTbl9H63DK6yxZ0PKMGkKBkqyEUjmuXWAO+At+rE6XWcppV2UkWLO
	yusd28UAD4wLGpN4vEWIKXrztJUkf3ANtqm+k4vKlH1hTyfyUoCnAFHp1/AKZVj5XYuK
	lrrc5RctcpOSRlz199r23TWjicMiQNutEfZKuVcnA8Op+Cbv4TnfZ1i8J7kS6OzWB/Wx
	nTLea23TF+NbppzrFuG/h4RuhKY1phAMYtsx5qZWSt//pvUGhyXvu4KJ8wjSCOe6+z2L
	tLm04DIrzMJBM8r7m+1QMzDTNtjl2GXbUZ8lqI54nvOihgauIYJfwqm/qwDxpz0IaF3R
	4psA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=2n7hQwqxD+6TG3Je0VVLV7P/LpsLz1sdSXhlT+HI0K8=;
	b=gdUXWLJDFxa4iGJ22pvMn/MAovy89B5mWNgQR1/Kh1UGLfNpUpE0Z5F1jb/uPX49fh
	Bq46J6SKgs4y4yb1lnS7r2+R/ian4l2K6jjjW6YEqLToogJDNVo1lGNgWgpXgrpPBRf2
	N6SDh8HvmGA6nCl1xmfA0lapR1VFVe6QkDqTuBJ7+D5xmt6rn9jpkNpmrpF5ir025shI
	WbaE1LZ+LJPZ/fD5Mz5O6Q6xLqJsM+cRXf5Wq+IcjByA5bGO8fvKitjGmdpPpgy+3+lZ
	mM/uTCUAzz0IqgF13VeBEUGBk5bg8riymG35/i17gIPw7H6RjgEGORi6lqrvBd1/6z7Z
	orZw==
X-Gm-Message-State: AFeK/H0ZByb4TXov4dtUeevMhKqm5LUteMVwkv86R/WEBKNucciiL0BcZwoTKMhVJTwIyg8sh9apVwytL6D7TQ==
X-Received: by 10.13.221.79 with SMTP id g76mr37143085ywe.326.1491841935928;
	Mon, 10 Apr 2017 09:32:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.170.244 with HTTP; Mon, 10 Apr 2017 09:32:15 -0700 (PDT)
Received: by 10.37.170.244 with HTTP; Mon, 10 Apr 2017 09:32:15 -0700 (PDT)
In-Reply-To: <CALHF=T3UwUdagDaH0CiS1A02ej+KmBcMoxAdYa5DsoPPtuq4Ew@mail.gmail.com>
References: <CALHF=T3UwUdagDaH0CiS1A02ej+KmBcMoxAdYa5DsoPPtuq4Ew@mail.gmail.com>
From: Arun Maha <2233arunkumar@gmail.com>
Date: Mon, 10 Apr 2017 22:02:15 +0530
Message-ID: <CALHF=T3Yy=CJrCkVXdCGf4Bk_4J5ugMGkqqc4HACJkTAR6L3+A@mail.gmail.com>
To: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Apache and FreeRADIUS on yocto poky Linux
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
X-List-Received-Date: Mon, 10 Apr 2017 16:32:20 -0000
Content-Type: multipart/alternative; boundary=94eb2c0722b2a71421054cd2847d

--94eb2c0722b2a71421054cd2847d
Content-Type: text/plain; charset=UTF-8

Hi,
How to install and configure Apache with FreeRADIUS server. How to
configure for public-private key authentication with the same. Any
suggestions/methods will be helpful.

Thanks,
Arunkumar

--94eb2c0722b2a71421054cd2847d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto">How to install and configure Apache =
with FreeRADIUS server. How to configure for public-private key authenticat=
ion with the same. Any suggestions/methods will be helpful.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto">Arunku=
mar</div></div>

--94eb2c0722b2a71421054cd2847d--
