Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E54AE00867; Fri, 27 Sep 2019 05:01:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.51 listed in list.dnswl.org]
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BB2BE0080A
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2019 05:01:52 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id v2so15508210iob.10
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2019 05:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HsgdlWT1RAU5PJjfmBbYyfvM6GK48JK5lmf5U0ODa8U=;
	b=Kekn60fqQw5zcdgAkD7ETZfFd3lBbWNhpO9L6eH0GsOqs4Q/1XH+K3amNUoKX1nVih
	6jloMNyL0RjnFjfubu/aWoiyWB9uKJ8b9FoLN7t9cK9e/IQ4RqWSamcgwgWDLS2TNZDF
	JoYUhDaBSCsgZSDNfYWQnieFRc9hJP2i2BBsjSDchSMT10n8/1NJeGZ5SS+pjUpW9rF4
	hL42vXyIk4sT0AO31n0HDVRMMX7lIdazvAq0FS0zWGk/wgfWFeb4Q0FvBmG0fFh9NAxO
	xGyp4MPFe4EuizeXqYuHtMps+JwCB00D5Op58HBpKGPv9r+PaOVqV5uCz8KPcEXxTV7J
	gCtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HsgdlWT1RAU5PJjfmBbYyfvM6GK48JK5lmf5U0ODa8U=;
	b=KSWok+3ETGah8dfOOXpQwEIg1JEmrCgsDjotSu56rGxDs2uV2Mkl2fOBJY3Wr3+Xr6
	2o59luhmNta8/dpr4E+opTf5na3RKHn6OX8k3fdSC0jHHDhUSzqS4d2/bcoSTzRax0bi
	5uQ3DJyWE31pT7iMPFKa2ngV3660qNaiAY9GFmn23etnsjuNn11OPLScm5q8Jj/oZZIi
	WIqMFgtU5J5qHzi5laGUJNrHqfQ3Ke1YdHpGp1scDYtf3x5w+KkeV5OXUnSCOmqwysjp
	rkFlJfislKyhD0q3phLiiEnNdTZL4YzC7KXYSe8XT5BieT11yRsCO+cLqe2dZyp+Twu3
	3ldw==
X-Gm-Message-State: APjAAAW1+g9gh8AlTriXWzKgGDncZqVgwVRGX/WDy/heJzj03R8aj9Li
	+qxvw32dtFCTB4l7mryK15duu7wsIJWhqdZc++pOyW1y
X-Google-Smtp-Source: APXvYqy9w68LhpnsEokYIvBnhaEjwSQPputz15fbgsukEKBdxJO9xDTSEAMNUJnHeSKdzGSfxOjOhd0amygSECrtbNA=
X-Received: by 2002:a6b:740c:: with SMTP id s12mr1147170iog.301.1569585712327; 
	Fri, 27 Sep 2019 05:01:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP; Fri, 27 Sep 2019 05:01:51
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Fri, 27 Sep 2019 22:01:51 +1000
Message-ID: <CAA=hcWSriyGnbRTGjj26ef86-h=ePNWiOxoWU9S=XrDe1y+gtA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: kernel module and drivers missing in final image
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
X-List-Received-Date: Fri, 27 Sep 2019 12:01:53 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I included emmy-w1-driver-sdiosdio in packagegroup.bb, but all drivers
and kernel modules in emmy-w1-driver-sdiosdio are missing in the
deploy image, any clues why, how to debug it, how to fix it?

Thank you.

Kind regards,

- jh

