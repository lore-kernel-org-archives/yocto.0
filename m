Return-Path: <philippe.gislard@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08FA6E00EE2; Wed, 17 Jan 2018 08:00:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (philippe.gislard[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f180.google.com (mail-wr0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA880E00E46
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 08:00:10 -0800 (PST)
Received: by mail-wr0-f180.google.com with SMTP id g38so16204575wrd.2
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 08:00:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=zbYPtMKe6ycVB03nzwJkWajfwmEteWCcjTfCcnSbeis=;
	b=nzhW268wCZTCa0IJhUcM6Iy+ftxDNGTv9/zDogcQy3WpCwSgRzoQ+nf/G0JtQveT52
	YpRqJVRNUaT/9Gijri1oIpM8LNfk1ubBS/CGQ0jCvjJX4kzFc82LUNa0Pd2Oa+Z2RVGV
	sA1/wkNVhq7e0x88j0pxHNhqQH7RaQwXFRsLlE+B3b4rg13rF2W80gyMPl/OJfMzuMUD
	j7xYRG/WIMT6GxppsvC+2zAlZL0NQGjEQG5Of8HCTCkAd4kDQFB3Zkfkmv8EuzOfDlSG
	J1n2rO4QdJPhg0ervKQVJP/MSqh6C6ttwEswiyduJHPuiHNZkRDqU/A7lL0GXK0PtSwy
	7Hxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zbYPtMKe6ycVB03nzwJkWajfwmEteWCcjTfCcnSbeis=;
	b=EM/4gLdAxVNHdhXyTFg3U/p+bhRoExWaBK5BMZnJKsy/FLkdEgSpMgk/xNY0w9XkEm
	MQOuKuHGccbC/N7hFH2Yt698mB24FTCK/GK/8A7mZj4X70YLBB19hFleas0aqzvpXciI
	3OMhYwJ5zWDWbEw+6BVQMIJHaN1206QSP6feuKdTLTCRYGPEModWYflRcVFZT59BZ2rU
	0P91t/hdKQEw8KG4XWXhydsHWhuGoK/Y/w7+2Xo9ls87JfW6fqDWyq/xdsAjcjUeuJZE
	3f5EiqIl8/Wk8bK6vh4+h9oa3V7HY0ojn1vNWcmzqN72/uOps7COM+pE7vCpJkVP5SKp
	9QTg==
X-Gm-Message-State: AKwxytdo70z4siyKIFMV1shk98TASXtDlE5om7qfuQk1z45uVUmp8Ds1
	78/tD/OeBeEBR4eTS0wuzg7Cjb+24+RWBOZkX/nweuqb
X-Google-Smtp-Source: ACJfBove2Ngk/bcxM11kIhJqObipTulf0a8gPJe1LLjf29vxfNorhHrnxKYB9oOV1IMUcR0+LN4uRLm1ZxdU54By90I=
X-Received: by 10.223.145.65 with SMTP id j59mr962727wrj.79.1516204809305;
	Wed, 17 Jan 2018 08:00:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.167.66 with HTTP; Wed, 17 Jan 2018 07:59:48 -0800 (PST)
From: philippe gislard <philippe.gislard@gmail.com>
Date: Wed, 17 Jan 2018 16:59:48 +0100
Message-ID: <CAM0bAiVtPQOif+srytHn4XGrd-=i+4ud9rvDsYUOE41HZpUBnA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [Pyro] Multiple toolchains
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
X-List-Received-Date: Wed, 17 Jan 2018 16:00:12 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

We are updating our BSP from Krogoth to Pyro.
We are using a kernel designed and patched specifically for our
hardware (3.10.40) that does not compile with GCC 5.x or GCC6.x.
AFAIK, Pyro is qualified with GCC 5.x and GCC6.x (not with earlier versions).

What is the easiest way to use two toolchains?
- GCC 4.9 for the kernel.
- GCC 6.3 for the other packages.

Thank you.

-- 
Philippe GISLARD

