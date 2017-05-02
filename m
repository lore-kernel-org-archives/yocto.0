Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9353EE00985; Tue,  2 May 2017 04:19:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A52CE00546
	for <yocto@yoctoproject.org>; Tue,  2 May 2017 04:19:43 -0700 (PDT)
Received: by mail-qt0-f180.google.com with SMTP id c45so108626969qtb.1
	for <yocto@yoctoproject.org>; Tue, 02 May 2017 04:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to:cc
	:content-transfer-encoding;
	bh=V/MLxqNe4BJT3KGWxVmOl2T8niVlIcbNSjosasiKGBU=;
	b=2TowhwA+ZdgPHRoNedAnS611Xhvrgu92lT8FDrNCkI7Y2I6GUFwzmvbKfhgKWsw4U3
	x/fI9Xw6ZDXGyhcPXjKXTUGlqoOB3tMh9lKaKAAgUkiCNMsW6wn77sRXL1UgVp4FzpUg
	deKkVjtM2VW+rSC67g9wvu0OrC2yLHfX3ISOuxGOjjmH/o4b5aC8iZo6M2/z4lbvN7Fo
	CdzTtA0j9kYDLvDwQjLGfGIcPwXnc9gnd/STyRBLfVYCZhXVbxJRdum7gfwpd9uuCpcw
	2mOY9NBwU4tzc4RkrWv8N2RMAZxmNacy/wyNNjspWJ1D3Zao62gZsausFGbxHvETVZ1L
	eHFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
	:content-transfer-encoding;
	bh=V/MLxqNe4BJT3KGWxVmOl2T8niVlIcbNSjosasiKGBU=;
	b=S3a84xrn0ffcyToIhvKk1DcdU19mQ8QyN1bCtI5IO92fcilzKdcDRSQruSszU62NsF
	QQOtuVM3fZ2Qt4A77lseXvfgsjlOypnK42XiHSybwqogTobUXI74mQhPGuPY5kXYlkN7
	Vrat3iddY5F96iPg41Aa+rqIiciMiBaXdeBFwai4tAQ7RRV+3FRYqAuxb+Qs3d4y64WW
	BfOzCAchvNOwdKQDazgf/fC+lAsqBa8Yb0H/MVyAuLTHgnHHGoXGOoLu5hpOt/EV0xdy
	3VQep2lqNMT8nX1DtNrSDGdVrNFL+ub/Mq7Mvlpe66biZDkyyx0f30+TTlm6HHA+Kdjr
	4jYA==
X-Gm-Message-State: AN3rC/5x3IIupqY8bA/49rQZjBg+S84T/y6OYPbmnnryqLyEU6sIAa4p
	PlpwZq3eLsLdRfioeIqhsSxFGwcC4oqw
X-Received: by 10.237.44.102 with SMTP id f93mr24199236qtd.199.1493723983102; 
	Tue, 02 May 2017 04:19:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.44.116 with HTTP; Tue, 2 May 2017 04:19:42 -0700 (PDT)
X-Originating-IP: [82.34.23.153]
From: Paul Barker <pbarker@toganlabs.com>
Date: Tue, 2 May 2017 12:19:42 +0100
Message-ID: <CAPyrkgzWJ0fQ_zTJwtKcjJLKmwkL4FfyFxSUGXnb6=_Jx8S_rQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] Stable branch plans
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
X-List-Received-Date: Tue, 02 May 2017 11:19:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

I've now got a bit of a vested interest in the next meta-raspberrypi
stable branch as I'm planning to use it as a demo platform for our new
Oryx distro.

In the past, the stable branch hasn't been created for a while after
the corresponding oe-core release. The changes made to the stable
branch after this haven't always been as conservative as I'd have
liked as well but that's just one opinion.

I'd like to propose the following for the pyro branch:

* We should create the pyro branch within a week or two of the oe-core
pyro release.

* After the pyro branch is created, changes on the pyro branch should
roughly follow the oe-core stable branch policy
(https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance#Policies).
I don't think we need to be incredibly strict but I do think we should
avoid making changes which may affect the behaviour of existing
recipes/bbappends. I would like us to keep doing stable-branch kernel
updates and adding new MACHINE definitions where possible without
affecting existing MACHINEs.

This would make the pyro branch perfect for my use case. But obviously
I'm not the meta-raspberrypi maintainer and I'm not the only person
with a use case. So I'd like to know what others think of this, is
this a good plan for meta-raspberrypi stable branches or should we be
more relaxed?

(I raised similar questions in response to another thread but I think
that email may have been missed by a few people so I'm starting a new
thread here in expectation that the oe-core pyro release is imminent)

Thanks,

--=20
Paul Barker
Co-Founder & Principal Engineer
Tog=C3=A1n Labs Ltd

