Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21E2EE00786; Wed, 24 Sep 2014 02:17:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.92 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og106.obsmtp.com (exprod8og106.obsmtp.com [64.18.3.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D41BE0034C
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 02:17:52 -0700 (PDT)
Received: from mail-wi0-f182.google.com ([209.85.212.182]) (using TLSv1) by
	exprod8ob106.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVCKMPzG9Jk8IZb6F949VRUSmB7/5qQEZ@postini.com;
	Wed, 24 Sep 2014 02:17:55 PDT
Received: by mail-wi0-f182.google.com with SMTP id d1so6802203wiv.9
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 02:17:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=8COosQTjof3WkfpxENZndx+Mk7VNQG/py+fJNfG6oJ4=;
	b=I9p/UQh4x2m22ifhB80vpgogzv4LzWz5HGOOm9kLjE6JMeeq4AZ2RU6yPGwf6FB5rs
	Q83UNCGtx8E4h56ya84Ei/87o8h+7yCrBRj7XxkgkOG7YgE15+/4x87UitF8PwmkW87J
	3xopuLOtKzICn/Kc/7hOxGnlJ9ajdOihATR3ehQGB+ELXSeWgKzGTe1d1dvLKWu9nTQg
	q6DP2BdbThDCsHvSLSVvo4raPQCW3V+z4/i/VW2j977fUSr7ToqlHBxLCUgviklC1xfD
	IQVBLCYbKaOsLhYVvLamnbbMcur89Y+pbJKzZ6VwtYIvu6pLFJURJj0TPhwwdAhdHoLm
	CZqA==
X-Gm-Message-State: ALoCoQmW2o8f0Z/x20rKG6U7sFcsyrxCLcMR106zoscZzmFvrEXfUba7fK/PxQx9LQE8poGAGKY67OcgVP+8JBf8tW28Wb83ZuVVxOOGX8VqZiUOo14UAFw6z26kNUZ62sHt5xYFR4wk6EZ1R999eU8QcHB7kcbWCQ==
X-Received: by 10.194.190.69 with SMTP id go5mr6738929wjc.56.1411550270299;
	Wed, 24 Sep 2014 02:17:50 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.194.190.69 with SMTP id go5mr6738920wjc.56.1411550270192;
	Wed, 24 Sep 2014 02:17:50 -0700 (PDT)
Received: by 10.27.170.66 with HTTP; Wed, 24 Sep 2014 02:17:50 -0700 (PDT)
Date: Wed, 24 Sep 2014 17:17:50 +0800
Message-ID: <CAJrRHk7B27DHJ99CUkKD32_wpegyQ5MYx2OtVavxomLL4Vo=HQ@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Difference of i586-poky and i686-pokysdk in SDK sysroots
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
X-List-Received-Date: Wed, 24 Sep 2014 09:17:59 -0000
Content-Type: multipart/alternative; boundary=047d7bdc7d0e7010330503cc28a6

--047d7bdc7d0e7010330503cc28a6
Content-Type: text/plain; charset=UTF-8

Good day Yocto Community,

I would like to ask a very simple question, what is the difference
of i586-poky and i686-pokysdk in SDK sysroots?

Does a BBCLASSEXTEND="native" install the package in SDK i586-poky and
BBCLASSEXTEND="nativesdk" on the other?


Sorry for such a dumb question. But would just want to know the best
practice on where is a package most appropriate to put into in SDK.


Looking forward to your responses.

Thanks,
Joseph

--047d7bdc7d0e7010330503cc28a6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Yocto Community,<div><br></div><div>I would like =
to ask a very simple question, what is the difference of=C2=A0i586-poky and=
 i686-pokysdk in SDK sysroots?</div><div><br></div><div>Does a BBCLASSEXTEN=
D=3D&quot;native&quot; install the package in SDK i586-poky and</div><div>B=
BCLASSEXTEND=3D&quot;nativesdk&quot; on the other?</div><div><br></div><div=
><br></div><div>Sorry for such a dumb question. But would just want to know=
 the best practice on where is a package most appropriate to put into in SD=
K.</div><div><br></div><div><br></div><div>Looking forward to your response=
s.</div><div><br></div><div>Thanks,</div><div>Joseph</div></div>

--047d7bdc7d0e7010330503cc28a6--
