Return-Path: <vijayakumarmb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 332F1E00CAB; Tue, 26 Jul 2016 19:18:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vijayakumarmb[at]gmail.com)
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
	*      [209.85.217.180 listed in list.dnswl.org]
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6CC3E00C65
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 19:18:07 -0700 (PDT)
Received: by mail-ua0-f180.google.com with SMTP id k90so8495811uak.0
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 19:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=ntyhjK/KE+Tx+fLZuxfB77WGh186gfhVd5gfgFdm6o4=;
	b=ARj9iyfXuhi0PDmFEWk/fcvqu/7bWgqHbDtIu6SwX4DiirTTTjyOGpBA2evd2whLDV
	EsKhkjy77S0Lak0uu7v81abldARawUjWzWfpxiW2eKJ+lGEu3+1gQcLob0rT1i6g9i1G
	zCuodKOp8fhzR5z3/ifDuRq1c3NRUjikdHGOFHdqh/n0lGHfF3nsDA+bf2lG6HMZi9St
	ePtxztdxq8a/wSZlVqxma23EiqkTDL2COGfsHK4YrxeR32IS51bL5tYjPl7mklegCNxO
	ANc/vxbgqs+O4jd4EuUnnO8YDlFu/+rRyMJmT3TUanhTXrBG5Sh4H3tIg2LJX+Cb2+gr
	055w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ntyhjK/KE+Tx+fLZuxfB77WGh186gfhVd5gfgFdm6o4=;
	b=Ss+p8WXn3NrM+3dO80AM704i/Z0y8I67rK2l0LGeJinjDkL61ycpzTjSJJM9bZqCvK
	HhmV0Sa+q9NCUVxfuLl5Bkh0kJmuFp9IqryCZeUonsviGJLhh+9utsxMsQaJgoH0dCed
	In1gokdFKW9nTnKvkqt/73wuO/p0NJjbkzr4oKgXVxfR1XCRk9gznrdMMHGSx+ogqW02
	4tkIGiYSR7IxnoVpX5C3y5fiAVryZ73ivYCeb4N72dm/VbRPbJe0pHXIusbA/XeWYtuh
	Rxgif72Ggn3iTMzxAlL/5muoNuBeLQxd95a1FW78d3FPSH+/jBNsriiCpd50D4cagCKX
	s4tQ==
X-Gm-Message-State: AEkoouvyDfOSHzVDRLJg8wFbVz7jDDONTMllm17+kxg6yUiNfzPeCQ6zSTCAfGwEeTUjTz3Izu+Ezm0plTShgA==
X-Received: by 10.176.69.180 with SMTP id u49mr11273613uau.24.1469585886651;
	Tue, 26 Jul 2016 19:18:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.70.7 with HTTP; Tue, 26 Jul 2016 19:17:47 -0700 (PDT)
From: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Tue, 26 Jul 2016 19:17:47 -0700
Message-ID: <CAJ58UNmbwN3L=hDvW495x7J0F1Bu4kHDgdcDYtZOkAB77QEG3Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Compilation error while adding perf tool to the rootfs
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
X-List-Received-Date: Wed, 27 Jul 2016 02:18:14 -0000
Content-Type: multipart/alternative; boundary=94eb2c11ab08bda9d9053894a0ee

--94eb2c11ab08bda9d9053894a0ee
Content-Type: text/plain; charset=UTF-8

Hello All,

I am trying to integrate perf tool to my custom rootfs image, while
bitbaking the perf I am getting below error.

 *fatal error: asm/preempt.h: No such file or directory*


Can you pls let me know how to fix this issue. Thanks.

Cheers,
Vijay

--94eb2c11ab08bda9d9053894a0ee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>I am trying to integrate per=
f tool to my custom rootfs image, while bitbaking the perf I am getting bel=
ow error.</div><div><br></div><div><div>=C2=A0<b>fatal error: asm/preempt.h=
: No such file or directory</b></div></div><div><br></div><div><br></div><d=
iv>Can you pls let me know how to fix this issue. Thanks.</div><div><br></d=
iv><div>Cheers,</div><div>Vijay</div><div><br></div></div>

--94eb2c11ab08bda9d9053894a0ee--
