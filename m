Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04233E00BC8; Mon, 29 Oct 2018 09:34:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B91D9E00718
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 09:34:44 -0700 (PDT)
Received: by mail-qk1-f175.google.com with SMTP id a132so5336412qkg.1
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 09:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=aKHx6VZKs0ay9wcvyJQU+0Z4xIzhhEL/39f2FCywLzw=;
	b=QgzmHZRyKPod0U2Br7wdTiuh1OtB/+hbjlnUkaVltAsLvJOhqoTMWLN1T8A1CoprpP
	WbhBVw5VR8iBf+aw90aBIjZWO2Sle07gP0bEOVtklsjvZqRJdjPox/BFZNaFBn4jlXk8
	XJ6q2VtHIA2J3k7ivhGML2wthUhAz5Cz5sWv+6+lX3oXgtAl0sEIU7UyBZLRRM/giHyJ
	/64tD7jsHwU1r2+nG5ww1T2/4XMoomY4qSM6i1BNhqd5ZAr61Cay9Ni/rD6x42JpaZN6
	QxUNepg69x0Y2WjNNmrtyoWbkFTrH2I2DBmpig9SWqSMDf98sB6tVryJSE5+VegExyK7
	HdQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=aKHx6VZKs0ay9wcvyJQU+0Z4xIzhhEL/39f2FCywLzw=;
	b=INDV3MCwdk/JStR2ss/uNe86NHTBS8z0mmnYaDKlPwZt8eEDOlZs/hvgS9Pulh5OmO
	V1yBD7ucpjig/OT/6TEaI36I5C8Ctrq5cOTMwLxNx9hIiTCKs+ppMSzyIQegysWClIWG
	XqfumdLKNx6a4jya36DopSxrrXRFnPA5/dQBVuIDtIDTNeBxXIn4zQfVwJjVrVSLdKTZ
	ydcrBL+AWzAOI2cSvFd+cMjn0nznIYF2nVReEeC/leXupcsVbyUvAYplH+0XGXFKa5KN
	3w3GoN1DdJnIhEWkj5jgJdjf56ff3pnzGZK8Cb+/U2ugAafb5xS3jfaHeieyVQsEnr3L
	XMMQ==
X-Gm-Message-State: AGRZ1gLBnuV9pwAxyXkMoZ9N2LwnkdG0If+WrPsdJuARBwf4+7Jcp/5C
	wSMgVU6GRN30BWtnA2l/mTeJQv9Sm+DheYJ1T10=
X-Google-Smtp-Source: AJdET5dLgzfYazjoPdmrLv2AfM8iHk8s75EfCxVWaLCshTJsPlF0Sb8Fq9pv5d+y2JdkYL3Fp26Cgjip/AHq4nREkUE=
X-Received: by 2002:a37:5003:: with SMTP id
	e3-v6mr13302906qkb.102.1540830883701; 
	Mon, 29 Oct 2018 09:34:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8kJ5+2B4C3jCgo128rr+4movTjrZkVScexLQheFX2RD=Q@mail.gmail.com>
In-Reply-To: <CAEhQi8kJ5+2B4C3jCgo128rr+4movTjrZkVScexLQheFX2RD=Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 29 Oct 2018 09:34:17 -0700
Message-ID: <CAMKF1spdU-SQE-gVE=2gW0szYuK6A-jT_rvcNoymw8kCT8GzSg@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [qemu] How to use qemu in your testing cycle
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
X-List-Received-Date: Mon, 29 Oct 2018 16:34:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 24, 2018 at 11:58 PM M=C3=A5ns Zigher <mans.zigher@gmail.com> w=
rote:
>
> Hi,
>
> I am trying to wrap my head around how to incorporate qemu in our test/de=
velopment cycle. I am currently building machine genericx86-64 machine prod=
ucing a SDK and a number of files. One of them are the qemuboot.conf file b=
ut it have some path that is a relative path to the work directory. I would=
 like to be able to supply our application developer a way to start a qemu =
instance and test out our application without having them using bitbake. I =
assume this should be possible but not sure exactly how to accomplish this?=
 Any input would be appreciated so I can get started.

start building your image for MACHINE =3D "qemux86-64"
and run bitbake -ctestimage <image>

you might then also want to start adding ptest to image features
so you can then see unit tests running for the components in your
image, this all can be fairly automated as well

>
> BR
> M=C3=A5ns Zigher
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

