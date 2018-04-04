Return-Path: <parkch98@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75330E00997; Wed,  4 Apr 2018 04:55:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (parkch98[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBD65E008E4
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 04:55:52 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id b127so39575046wmf.5
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2018 04:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=q/geKhbBV9/YJs67Dhe0qlbKfEKAoqbaKClQJ+cFHr8=;
	b=Dlc5xOrN6w4oIPv3AOo9WyHsZCUXisYRd+8zbAsynQ9Xv9lFN45dCzy47F5ddY3J5h
	bpWV/1mEnc3JG9E3IDHk8jy1GKBvrMo2pmFjjPI/dOIgca3MSGEmdtrQtSDP46IFFn1a
	0aFz3EsU51pmnJovgs00Qg/qrqJp3KzFTaKovr3KHBGy5QUAL5W9/skWoDq+aAPj5wGs
	eWxt5weE+Y0fzCdzMeubAEoA3k8xK2fqf/SyUHDG1CFchYQQP8p6WU50fZ7oIU++mzuY
	9zYybM1+Elc7duZG3MdMF21JoKChYCYHugQEO2gQjAUEwilrNfrp0oMmDeoNeLcf4gu5
	650w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=q/geKhbBV9/YJs67Dhe0qlbKfEKAoqbaKClQJ+cFHr8=;
	b=O3UbZU502K+qUxOWvqiEMR/bBgslMxvNPLl/2la0lfV8DSG7F/1JTxh1uxWYAQdGs0
	F5afgy8RxoO4xGCWZN6nwcQsBzrzq5NymVa0buB+W0k+FP0XYkCjyRxst2YG+yvLD9Fm
	6PUYUM7udWMpkOVY0b+yuczJZUeO2EmARbiqtZDzU11VYSLryE+joIcCPZvEnnCYAqe9
	oOokKvjO/VP+YiD7zLF1tlmplozLAM1lQtoXzxkk0xFUTXzFd7LNGEpguZoFqW0+E7cB
	0CmgJj3hhZUiUY6VzhIqPDM8tugPyD3yz8cTwhQqQjDE7catWGPSzksHp8U4hBTw+crk
	kI4Q==
X-Gm-Message-State: AElRT7EwVfLVmWt38jpyYxOEOYq9SOTrTF2CXOW93omMNKBSZCcNudl7
	qnoU/PbA9hpDc4pAhlVXHUlA8rrbm5J7NWji+GY=
X-Google-Smtp-Source: AIpwx48s9mcoHg+njArapJ0KhYULQXNd/jWZ7k0Gc4O8doZAqM03C8WqRQ8RDnEIrzV6BtczL8OBgYXyTurKdteS8z4=
X-Received: by 10.28.109.88 with SMTP id i85mr6702519wmc.150.1522842951053;
	Wed, 04 Apr 2018 04:55:51 -0700 (PDT)
MIME-Version: 1.0
From: Chanho Park <parkch98@gmail.com>
Date: Wed, 04 Apr 2018 11:55:40 +0000
Message-ID: <CAPTzV17m6Av7fkRkLBD2cuv3zrMg+O6jbbJ=w=YcYaiCtavxnw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Glibc fetch error inside proxy
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
X-List-Received-Date: Wed, 04 Apr 2018 11:55:53 -0000
Content-Type: multipart/alternative; boundary="001a1147c4562577540569048184"

--001a1147c4562577540569048184
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Since the glibc revision has been moved to 2.26(d300041c), I couldn=E2=80=
=99t fetch
the glibc source properly. It seemed the glibc repository has a problem
when cloning it inside http proxy. According to the mirrors.bbclass, the
mirror of the glibc can be downloaded by
http://downloads.yoctoproject.org/mirror/sources. My question is when the
mirror can be updated to particular version.

Best Regards,
Chanho Park

--001a1147c4562577540569048184
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,</div><div dir=3D"auto"><br></div><div dir=3D"auto">Si=
nce the glibc revision has been moved to 2.26(d300041c), I couldn=E2=80=99t=
 fetch the glibc source properly. It seemed the glibc repository has a prob=
lem when cloning it inside http proxy. According to the mirrors.bbclass, th=
e mirror of the glibc can be downloaded by <a href=3D"http://downloads.yoct=
oproject.org/mirror/sources">http://downloads.yoctoproject.org/mirror/sourc=
es</a>. My question is when the mirror can be updated to particular version=
.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Best Regards,</div><di=
v dir=3D"auto">Chanho Park</div>

--001a1147c4562577540569048184--
