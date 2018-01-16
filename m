Return-Path: <ngthanh.vu94@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE594E00DD5; Mon, 15 Jan 2018 20:28:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ngthanh.vu94[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60E19E00C02
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 20:28:46 -0800 (PST)
Received: by mail-it0-f43.google.com with SMTP id b5so3325504itc.3
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 20:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=0Qm2vX/5ib1vSjQOD8aaXFH9v4d6norRyXRl9eGNaLk=;
	b=HU09g+ky6OIWUurdkzdyWlG8l8GUK3xSIn9Xz69XufaIyv7gOUlQscMPqk6Pz66CMR
	Pv5YKBVVKqVFnrRKlai9U5c5ngXcD+BmrpuO3gmO/DxyPB967su2ghMpwJKLSV1Myyw8
	+mfJZAUgNdWxP6SuOeMONAq8LvvlYFEjVO33AgcnZ+NZoRLy2uESac8USzMn92p9q7AX
	Yvfvw5z+cBKAn0sCCY6T8bkAD5xjoMZ6J9iS7Ae7SwshS9qWgWgQUcJ3/dwul2nb3gLS
	IJZuDhTaAeUcum+q3emnR/IdFDHOrbSSrSHpjvHKIVg0vLd/oa1e+2LuG9t7ammwq4lB
	IvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=0Qm2vX/5ib1vSjQOD8aaXFH9v4d6norRyXRl9eGNaLk=;
	b=XNdEQ4YBZIE397fpuZqiCo/p0IUYuvySTdVxmjiZBIX6tTTcQ4jpPSUvuk55DVD8QH
	f3ia59lB/JXY0CUg3Bo8WC0EfjW/hgRRZDP/nMX4yiA2A/yxYE48YstJKFwSFoA78liB
	DuH/ahpejz+uaHL86Orh92Mmb5vvoZI2JnUGgLf8Damk6zHvmuxvhAye7/RND97DDrgd
	lmr8cmrtkIGdwtmRQ+csqadSK3lb42apTe3ArydoFLviNDDVeLL4jQMTAC57thVIKsNG
	CJkpNJJ2BeL1o7nGZImucMwpq/FYdSWxV/LST8RAJGDSEEpNpWeAUzqHF/jfZVJZn2EW
	5e3A==
X-Gm-Message-State: AKwxytdP3SHtSBV388F/LMPEHtsU6PvKunHoU651HBWBYoGHOrf2SDiC
	fu+OQLzifLef4Cn/DCAo0uk+42sqgS2NtxajXjU+dg==
X-Google-Smtp-Source: ACJfBot+4OAFKaCNweOhawPlPJB+OPEE7xx23hk3Hj0JCCOnYR9Ux0wW1Vmy7ifpua+HSZvU7Bgd19u8lIgWSHPAo5g=
X-Received: by 10.36.65.92 with SMTP id x89mr16428910ita.3.1516076925939; Mon,
	15 Jan 2018 20:28:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.16 with HTTP; Mon, 15 Jan 2018 20:28:45 -0800 (PST)
From: =?UTF-8?B?Tmd1eeG7hW4gVGhhbmggVsWpIA==?= <ngthanh.vu94@gmail.com>
Date: Tue, 16 Jan 2018 11:28:45 +0700
Message-ID: <CAGJSYqmEzCchhkysMB9ruCEzcJ6H7eSeuu3=LbcaLR_Jwe8KHg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Remove libjpeg.so (default built even in core-image-minimal) from the rootfs when build yocto
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
X-List-Received-Date: Tue, 16 Jan 2018 04:28:47 -0000
Content-Type: multipart/alternative; boundary="001a11c14aaa9f73350562dd2acc"

--001a11c14aaa9f73350562dd2acc
Content-Type: text/plain; charset="UTF-8"

I have statically linked the libjpeg of my own to the exe file, so I do not
need the libjpeg.so default built in the /lib of rootfs. How can I modify
or specify in the local.conf file so that I can remove that component? It
takes quite a lot of space.

Thank you.

--001a11c14aaa9f73350562dd2acc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have statically linked the libjpeg of my own to the exe =
file, so I do not need the libjpeg.so default built in the /lib of rootfs. =
How can I modify or specify in the local.conf file so that I can remove tha=
t component? It takes quite a lot of space.<div><br></div><div>Thank you.</=
div></div>

--001a11c14aaa9f73350562dd2acc--
