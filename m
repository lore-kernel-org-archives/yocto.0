Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BDFAE00CF4; Sun,  5 May 2019 05:03:14 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2446E00BAA
	for <yocto@yoctoproject.org>; Sun,  5 May 2019 05:03:13 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id c24so8814134iom.9
	for <yocto@yoctoproject.org>; Sun, 05 May 2019 05:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=0ipb5w+vhWw4T6W/+cIt4jyx46HYbP6tgaz4Mtzmuoo=;
	b=o2eCdremIYo2oPUq9pYfVgNiWz0Gsvq7ZlYQB0Rz4WKYtsguy0seEg5+ODJcxQV5Zs
	EMNpSFrI70Opt0Ae/xGPygmbDAwat/9fOXKEOCPkiNQpdwPtJN6BFkTgjtjXTezPvpCD
	EaJbiWDyWbPPfldK93+WFpppHrK1Gi9IZ9cyZDB1OUfVux9USZ+bWYWx241wx6qM06Iy
	/Aj0dNxeWNz/9ReHV1bN1ZAPqDtseXDqDbm/emmoO32/RpSZaTkzG8RLeDrHe7dtfTcP
	W0oi0EJ0R11/ZdhDfXBUkkynxnYgR6cK2Lx/qlR+oU0/TKanbEfozKQFW369tXiA2L7X
	stgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=0ipb5w+vhWw4T6W/+cIt4jyx46HYbP6tgaz4Mtzmuoo=;
	b=Sll54sTEHXz+3KXtSspXjsqtOi9q2QwwLHYn+zZJzVVyw/7o4P3bm8nN37JQa8FF7s
	AD+suGMx/La6vRByk+ra2d6dx6esQdpgmuNnnofOJeWuL2X2+3cx4itJcdB+dBgV5g21
	4xuyZZaQq+4rqNJMxJIN23u0Eu5w4QbXjtx1cJcUjNGOYEV0OlvsYOPVJLAuTv+KEg7g
	wHsXSgM2g2E47RzW8Y3IlTGJ+Tr4VO+zVnRVBhc8DEONQjzr5LCmRBsHlUl/gVDoIknQ
	sAA95WU9V4uSo+qGFcmhYCDBwufjtDC3k7act59D30Vx5P25ugi1YShIF+Q1TLSqXxA9
	kgqw==
X-Gm-Message-State: APjAAAU3q21m//k8fzExUU1rGMX8cvlGwx3Nq3s33JPkMx9ursX27xbL
	du5OtfQRihRoyXCClKXaMHpm69DfFjarp/UQCTKdReC8
X-Google-Smtp-Source: APXvYqyuuqla18j9X/PplNwdltgv2NjNYy92K1vOcizfJEGWuS0gKcNl7omRUza5nmSmmpe+K1NTCTyD/caYMgN9m3o=
X-Received: by 2002:a5e:8f41:: with SMTP id x1mr7043793iop.159.1557057793270; 
	Sun, 05 May 2019 05:03:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP;
	Sun, 5 May 2019 05:03:12 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Sun, 5 May 2019 22:03:12 +1000
Message-ID: <CAA=hcWR21J-UDPXOSrMjMDXfx8f_NbCB4YA_7-UBVzZ-9Ea45w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to define and build device tree in Yocto?
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
X-List-Received-Date: Sun, 05 May 2019 12:03:14 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I think the device tree blob is build from device tree source, but I
could not find any dts files in recipe source directory, there are
many dts files in build directory and there are dtb in build
directory.

If I have a device tree source, where I should put it and how to
define the recipe to built it?

Thank you.

Kind regards,

- jupiter

