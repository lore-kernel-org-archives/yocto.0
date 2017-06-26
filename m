Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 121F2E00BCC; Mon, 26 Jun 2017 06:21:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66AA6E00BB7
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 06:21:53 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id h64so720333iod.0
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 06:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=IwomdAZ3JIgZ/Bo7z97tdPd7H3cCkC4RWwqvEYKFSmY=;
	b=ygWhHfkaPXmluqZm/OSQwiuvneiGWoGPuMEIYRPIaWvNY3BVNMs6jTQGawhabBBWCf
	ZlZAnawvQ7DicoChKAsMKWTwphcgRzt4WkgzH6i00kG2oWiZmevUXk8XrdyiPBWe/+vD
	PqzD70Z/F4YeD/IQl2jwa7dS3qJA4qpy5/opYf4RhkTCmMJdtUF1D0p+yQpDE3Vuf54A
	mZG9X4QSrfnFdYsqL/dAaGimjkgEVnhDzqf1S/BQLaLj336rrsf7vU15K/qzUC+5MAYb
	BLlqLgHEV0TlqJjjDXI8z5+Q0qZIO/9rAsCkvv/ADe7+ZhhW75PTS8KW4wkDrkfKDBl/
	j7IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=IwomdAZ3JIgZ/Bo7z97tdPd7H3cCkC4RWwqvEYKFSmY=;
	b=ay4YM+Ug1i8sGNjZxAnnFE1eYU1PH0ALQ3r19femkzewuh37kYLsWqM6YcIqazlU5X
	jRKIsDoWEJc0X3wU7Kd7GEsaiX3d7cBCVbp7mSUOm5siwryBCS5YMlCmnfhkJK5jvGwz
	7CXXiN7vhk3Oj361Pic1uehsu4jAWWdli9tJquCdmDfx5r7HhwzRpHu8pELBY8Dw5BkK
	nE1bw8NYy9ca6HouvQFe3O3Zz4ELxJfhBmKqLByGGIC2FmW88NJCpsyR+rMlONDX2MGv
	5MytFaT24kPOmbODr2rahmDxIzIlSMKkj5pjBrUC1Ip/EV/kW9TZuT0+wBJMny0cCfpD
	8zwA==
X-Gm-Message-State: AKS2vOy6ucbKFJLR9Pc2Ev0Qnt8Bww32xlt7F4K0+QP23jeDsMz+7DVc
	E6iKxE+olxC+FKAVRakXiNgzSYVz2SLaZrNqmA==
X-Received: by 10.107.39.12 with SMTP id n12mr219769ion.127.1498483312498;
	Mon, 26 Jun 2017 06:21:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.13.5 with HTTP; Mon, 26 Jun 2017 06:21:12 -0700 (PDT)
X-Originating-IP: [86.141.163.120]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 26 Jun 2017 14:21:12 +0100
Message-ID: <CAK18fxFB+SXZeTSpmZvT5wsOLtvsPRqTnmfx21z=vRvFtQ9mZw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-chip] Jenkins, reviews and mailing list
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
X-List-Received-Date: Mon, 26 Jun 2017 13:21:55 -0000
Content-Type: multipart/alternative; boundary="001a114082ac8b325a0552dcd52d"

--001a114082ac8b325a0552dcd52d
Content-Type: text/plain; charset="UTF-8"

Hello all,

We've been testing a setup with meta-raspberrypi which seems to work fine:
PR to github integrated with a jenkins server and use mailing list for
discussions. I recommend people pushing their patches to the mailing list
too even if they send pull requests so people who don't use github that
much can have a chance to be informed on what is changing. We've been
dragging this setup for a couple of months (I think) now and it looks great
especially easing the work of the maintainer.

I propose to copy the same setup to meta-chip too. We will be using the
same server for jenkins (https://yocto-ci.resin.io/) and the github
repository https://github.com/agherzan/meta-chip .  Yes, I am aware of
multiple forks of the same repository but given that this repository saw
some activity lately I will consolidate the work hoping that the other
repositories will contribute back to it.

Any comments?

Regards,
Andrei

--001a114082ac8b325a0552dcd52d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello all,<div><br></div><div>We&#39;ve b=
een testing a setup with meta-raspberrypi which seems to work fine: PR to g=
ithub integrated with a jenkins server and use mailing list for discussions=
. I recommend people pushing their patches to the mailing list too even if =
they send pull requests so people who don&#39;t use github that much can ha=
ve a chance to be informed on what is changing. We&#39;ve been dragging thi=
s setup for a couple of months (I think) now and it looks great especially =
easing the work of the maintainer.</div><div><br></div><div>I propose to co=
py the same setup to meta-chip too. We will be using the same server for je=
nkins (<a href=3D"https://yocto-ci.resin.io/">https://yocto-ci.resin.io/</a=
>) and the github repository <a href=3D"https://github.com/agherzan/meta-ch=
ip">https://github.com/agherzan/meta-chip</a> .=C2=A0 Yes, I am aware of mu=
ltiple forks of the same repository but given that this repository saw some=
 activity lately I will consolidate the work hoping that the other reposito=
ries will contribute back to it.=C2=A0</div><div><br></div><div>Any comment=
s?</div><div><br></div><div>Regards,</div><div>Andrei</div><div><br></div><=
/div></div>

--001a114082ac8b325a0552dcd52d--
