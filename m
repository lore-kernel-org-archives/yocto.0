Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31F4FE00D13; Thu, 28 Mar 2019 03:59:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
	[209.85.208.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF66BE00C45
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 03:59:05 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id l7so17203364ljg.6
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 03:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=8j9LGmCNgZnJog1XWIg0kDQ7GD1hz3o0IOoiJ0l4eOA=;
	b=WypwXF8kL0sO95isHs+51O2tqYoPceoU8Zb8AQYs12r2alLvPDTd/0Q5TtIqABrIGb
	h9gsNzyPK+4UnAfhV++B+mK93ng163MDLpYKfSurhEV1B+NaTttzOFuNPfZ3n2ekGUEr
	oJslj1VlJJ4yFQvAblCMkEe0xjp47dThENr2AW7hcaNncQO19wXmOmAY7UxJOKTBvahh
	/thizf7cWqXMWW41nvg2z5pRjwrAKf5i48PA+Z0v/6hYtvurhu31Ub1DFvcgYcVaMUuO
	scPfvNnoK+yZuYKLTwToZ8WdeAKj3foQiYOW6SIQ31am4WSzPGpLdL2nnXZXF/Ro4j2T
	Whgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8j9LGmCNgZnJog1XWIg0kDQ7GD1hz3o0IOoiJ0l4eOA=;
	b=gEd3iprGTFf+a5WE4/rNtwKa3jBQWmsGoa+rI3D6UPQVADY/jhD/igohWRE07f3Bc7
	KRM6fl3DRJONMrSbhpKY2V130pH9XnFtgd4aSdDh2wqYCmusPQIp/13j4rDESMjFLatx
	OaNt2ZYQFgfNLscn82pir9LTmfOrbt0f/sIjfiG/MiBbHAtw50JyAUqY32eohuP5W1yb
	JfFk9uSHaXprXnqtBR79MPT8fEcVeYC9kkXw5oQL1PaxZGCP8mbtPR5Q40YSNMYzgeUO
	UmrkG1/rKANeuyxFk9CHZN8FloOG3UcbyWkgEvHZBeRwxxcOQ96H5n/OMxV15fW4Rc83
	Cu6A==
X-Gm-Message-State: APjAAAWvYYcKCTMmgJp+NnYVAewGeleeeq4AqGRH8sVxqjukZMYqisRE
	VE8BVAHkJ4gscs5+2dWRRxlEu1i9VEXWYVo1ZUiIyQ==
X-Google-Smtp-Source: APXvYqyry737YMNFGqsvLykk9e3RuZYlEbSF0s4eHsFpDnfBgAxflnvlb7bPHjjkA4ikSvFHIYFaurPc3mJT70sBCQM=
X-Received: by 2002:a2e:94c7:: with SMTP id r7mr8056631ljh.91.1553770744745;
	Thu, 28 Mar 2019 03:59:04 -0700 (PDT)
MIME-Version: 1.0
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Thu, 28 Mar 2019 11:58:53 +0100
Message-ID: <CAAx3WaAdc8r6O=Z=BmoC4g1Jmsf4vLj-mk_QgYxggBsMEEQ10w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Trimming BOOST libraries installed
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
X-List-Received-Date: Thu, 28 Mar 2019 10:59:07 -0000
Content-Type: multipart/alternative; boundary="0000000000004d90d50585257130"

--0000000000004d90d50585257130
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm building a custom image that install boost libraries:

IMAGE_INSTALL_append = " boost"

How can I trim the installed libraries? I see inside
meta/recipes-support/boost/boost.inc a variable called BOOST_LIBS that
lists all the boost components, so in my custom-image.bb I tried:

BOOST_LIBS_remove = " atomic"

but the produced image still integrate the libboost_atomic. My layer have
an higher priority (11) than meta (5).

Any tips?

Thanks,
Gabriele

--0000000000004d90d50585257130
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I&#39;m building a c=
ustom image that install boost libraries:</div><div><br></div><div>IMAGE_IN=
STALL_append =3D &quot; boost&quot;</div><div><br></div><div>How can I trim=
 the installed libraries? I see inside meta/recipes-support/boost/boost.inc=
 a variable called BOOST_LIBS that lists all the boost components, so in my=
 <a href=3D"http://custom-image.bb">custom-image.bb</a> I tried:</div><div>=
<br></div><div>BOOST_LIBS_remove =3D &quot; atomic&quot;</div><div><br></di=
v><div>but the produced image still integrate the libboost_atomic. My layer=
 have an higher priority (11) than meta (5).</div><div><br></div><div>Any t=
ips?</div><div><br></div><div>Thanks, <br></div><div>Gabriele<br></div></di=
v>

--0000000000004d90d50585257130--
