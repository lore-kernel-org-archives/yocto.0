Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3968BE009B8; Mon, 27 Jul 2015 07:09:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE5C4E0094D
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 07:09:11 -0700 (PDT)
Received: by qkdl129 with SMTP id l129so39691064qkd.0
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 07:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=xkoEtDU2TKzx8FjedKPF1zzHL949+Uaa+BwwnaeBHC0=;
	b=V/sTnHlO/Vuyrru3aGYAnU3XGe6ukqRDeQg57czKxHH8+oBZPmJLkOg8UY8Uxjvie/
	MKDM67JRINxNL5Ko1UPBgLwl+bFU0Za2bKQRgX8spN26eSmdREaVgX/Cnl8jjpjz3TYQ
	0FPK9T1bTI57wl0UI/qz9P2Sp21ZWxLysqeGTjivYVe3puJZO7pcPTk+w71j05lujEi+
	nBeeRvKxNNieaZYqAW8sJXxKGn8tXdeFYJKhpRvElxQBGKhxMUtUWZA+qNEQOwJQUxje
	PXG2sPOaGRMvbNoVnWT1RhsGAhfOQyflPgqhzezGKhCoHVxE6f2L5+2Y4kpW1EIdMYnp
	cYAg==
MIME-Version: 1.0
X-Received: by 10.55.43.84 with SMTP id r81mr41476231qkh.8.1438006150657; Mon,
	27 Jul 2015 07:09:10 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Mon, 27 Jul 2015 07:09:10 -0700 (PDT)
Date: Mon, 27 Jul 2015 11:09:10 -0300
Message-ID: <CAF3SDA4Ypi47wN84yZbEYXMih79MkJaG61w-+D15DRg5H_X+tA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Finger print URU4500 on Linux/Yocto. (Recipes? Drivers? Do it works?)
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
X-List-Received-Date: Mon, 27 Jul 2015 14:09:17 -0000
Content-Type: text/plain; charset=UTF-8

Hi everybody!

I'm gonna use an usb fingerprint by DigitalPersona named U.are.U 4500.
They have a driver for old kernels which I'm using but now I'm going
to a new platform (iMX.6) with 3.14.28 kernel. I want to know if
anybody is using that and if it works!?

Googling around I found this library:
http://www.freedesktop.org/wiki/Software/fprint/libfprint/, which
seems to have support for my device (uru4500), the big question is:
Are there recipes for build/installing this with Yocto? (I'm in Dizzy
release)
Best regards,
- dhs

-- 
"Do or do not. There is no try"
  Yoda Master

