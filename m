Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9DCFE00C29; Wed, 24 Feb 2016 20:59:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66520E00C1A
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 20:59:32 -0800 (PST)
Received: by mail-vk0-f46.google.com with SMTP id e185so37609143vkb.1
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 20:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8HNlnAdN1bVp+AfrDaj1K9iGgG7LnIa6Yrv3IXMVziI=;
	b=UU3xmoz+W7r4/GO46GtHcce1bhir+M4oJdxUyEXk3qppi8fLDBAc6Ox+DJniuJRdZd
	u/RtDRL8nDhGmX/MQNUPKYxONZSyqK9xB/eRXOuzU+koGe9A2ibAb15WlpcpttPqnqls
	/zWaFUB69QN3bgFOcl46+KIOOKhpNTWMkCz5OsJ0Iknt5CLMEnxKil5JZ9/2zbbUeQLt
	++R5n4TTOBVeZq21bMSDCJZUl9rkEFPqyj6bpXwT68PQJrOcW8lg6/YNAzGmfXjqHD/2
	iNBn0OPhnDlNkxe6yoakX1oRHxRQbkYt2mvqONlooVUQ9QaxsdfvYPIWylh8BMKw6A5V
	50gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=8HNlnAdN1bVp+AfrDaj1K9iGgG7LnIa6Yrv3IXMVziI=;
	b=UqTNwdsRd4VG4Tfoz+VqNwjjTvqUZw7Cjtb9h8kacgD5W4mbVxEzN5vpFQnMAA1n/w
	xB8ctVEzPBhx5nWk/KLYbHtp/zZUJtVnJ3uGjQ1qHSgoiXZFeBS4BblZrYKf1jrmG4ji
	Ew6jdy0h0EQnhsdnM77yEHHB4Ya1VFWoGVvg2+axywf0UbzaunyLZ+I/k9KBK56kVG4M
	3eik4Ia57UeQz8/oAFMaXm2DkDwOhEvo3zQDLccT6sIa80vbzgnrwPLS/3ENWPVCRmGT
	JMJPhHhkDlmGWVODGTIelmF8CeBAbrmZxHgQC2if6ytcliJxN8MTPWoA4q4RB8oU29mZ
	onXA==
X-Gm-Message-State: AG10YOSBV6QLWwWSpSW1l3ooSHwKrbJ5f1C0sZDJ8TzPc3DnFBo4C9fSHe390ikL7E5yp3ZDirkPKgioYFrU4g==
MIME-Version: 1.0
X-Received: by 10.31.128.82 with SMTP id b79mr35427100vkd.47.1456376371449;
	Wed, 24 Feb 2016 20:59:31 -0800 (PST)
Received: by 10.31.229.71 with HTTP; Wed, 24 Feb 2016 20:59:31 -0800 (PST)
Date: Thu, 25 Feb 2016 10:29:31 +0530
Message-ID: <CALLyC8Rv7KwK0_K1gNp+MpP3imGjZHZr0COQhUhpe1aLvhUieA@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: How to include Gtest in target
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
X-List-Received-Date: Thu, 25 Feb 2016 04:59:33 -0000
Content-Type: multipart/alternative; boundary=001a11429ce4479573052c910c64

--001a11429ce4479573052c910c64
Content-Type: text/plain; charset=UTF-8

Hi,
I want to add Gtest on target . So i added gtest
in CORE_IMAGE_EXTRA_INSTALL but gtest is only producing header files
 (gtest-death-test.h  gtest-message.h     gtest_pred_impl.h   gtest_prod.h
       gtest-test-part.h   internal/ gtest.h     gtest-param-test.h
 gtest-printers.h    gtest-spi.h         gtest-typed-test.h )  and
/usr/src/gtest/src/gtest/ (gtest-all.cc   gtest.h        gtest_main.cc)  as
artifacts. And i found one more recipe named "iotivity" that produces(
libgtest_main.so and libgtest.so) . When i build normally with out yocto it
produces libgtest_main.so and libgtest.so . To build gtest are these both
are required. i dont know anything about gtest can anyone please help me .
Thanks in advance.


Thanks and Regards
      Vivek

--001a11429ce4479573052c910c64
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I want to add Gtest on target . So i added gtest i=
n=C2=A0CORE_IMAGE_EXTRA_INSTALL but gtest is only producing header files =
=C2=A0(gtest-death-test.h =C2=A0gtest-message.h =C2=A0 =C2=A0 gtest_pred_im=
pl.h =C2=A0 gtest_prod.h =C2=A0 =C2=A0 =C2=A0 =C2=A0gtest-test-part.h =C2=
=A0 internal/ gtest.h =C2=A0 =C2=A0 gtest-param-test.h =C2=A0gtest-printers=
.h =C2=A0 =C2=A0gtest-spi.h =C2=A0 =C2=A0 =C2=A0 =C2=A0 gtest-typed-test.h =
) =C2=A0and /usr/src/gtest/src/gtest/ (gtest-all.cc =C2=A0 gtest.h =C2=A0 =
=C2=A0 =C2=A0 =C2=A0gtest_main.cc) =C2=A0as artifacts. And i found one more=
 recipe named &quot;iotivity&quot; that produces( libgtest_main.so and libg=
test.so) . When i build normally with out yocto it produces libgtest_main.s=
o and libgtest.so . To build gtest are these both are required. i dont know=
 anything about gtest can anyone please help me . Thanks in advance.=C2=A0<=
/div><div><br></div><div><br></div><div>Thanks and Regards</div><div>=C2=A0=
 =C2=A0 =C2=A0 Vivek</div></div>

--001a11429ce4479573052c910c64--
