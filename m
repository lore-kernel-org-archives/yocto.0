Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11833E00C44; Mon, 14 Mar 2016 10:55:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF2C7E008C1
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 10:55:40 -0700 (PDT)
Received: by mail-vk0-f50.google.com with SMTP id e6so218808383vkh.2
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 10:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=5vAdmK4PsfzIR+5H2mvpVJoTFGt11USMlHRjr2UQ1uc=;
	b=p9XbVfJirOHhbLM0JTyxNZqVBD3zLRMrHAl6kFApHzQtnM/f86r7krXfDJ3gWNImNK
	VQhjKGX9RC2FBwQkEJBwBNnnwaXGOlS2gDG6bPUSBhrGKgmZm4GBOu7NFLXFp2dVGboU
	spo69t6ZD+0NvLVkeoerucdY/SHezSui/UDtwE8ARQ23hq8FUtNhwxNPhwC+DiIc6N9O
	cLZtdt3eDPddyR6TM0TJSBgxwS55rQnOaVeK017uMFES8f8bI8ft92Sq+OxoM8QziztY
	gKVOTcOAWnCE1RnhkQRDjUq7mBIMjyT/fXPgMJJ4G+jTao70TYY0X+e195JnFiZkh8bl
	zwNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=5vAdmK4PsfzIR+5H2mvpVJoTFGt11USMlHRjr2UQ1uc=;
	b=W4tM40GLmm1oKAq/WpsgLQYw3iVd0VbC7ceGVysiRoEe1UEmzbPQ0N6sNj2vv5Spxs
	IxBWnhxHBBOkZanSs68vl5IdUpCbrCHGxn9JCxDIPIJGS8Hsnr9Mvv2QgxtnGKboSp0m
	gQDy28wquUVv37WDjLTnMgxL0bzKTtqiNuzPEQ77+GqTU9KOWAwdXkuIy3gP8s2A1cXj
	eX9IrMWC96QcnuFVKX1WYCpucihRftAYC7X2LkS9ze0mSAdeV4EwA0ZympaETtsp6w/F
	cLpNl22f6lkAro0zHAQxty3xt4Hp/mP3RgPCL5m7JQG8F559MEG8Y8Fp4zOwpy5bcfVE
	gz8w==
X-Gm-Message-State: AD7BkJKKWigujuKNlraRS9WaG+Nnb3fakR332/tVu36ni2Erd7KN8GDfG/VZW41Z7ISHLei806LHhbxKYRwisA==
MIME-Version: 1.0
X-Received: by 10.31.47.200 with SMTP id v191mr27621249vkv.116.1457978139718; 
	Mon, 14 Mar 2016 10:55:39 -0700 (PDT)
Received: by 10.159.38.228 with HTTP; Mon, 14 Mar 2016 10:55:39 -0700 (PDT)
Date: Mon, 14 Mar 2016 14:55:39 -0300
Message-ID: <CAF3SDA7Z35icGYqTb16buTUw7EsoNj5+KUaq6nDZbReqbgqQvw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Two or more _append()'s on same task
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
X-List-Received-Date: Mon, 14 Mar 2016 17:55:44 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

I was wondering how OE/Yocto would respond if the same task is appended twice.

If I have a .bbclass that already creates a do_install_append() and I
inherit this class at my recipe, will my do_install_append be aplied:

- Before .bbclass do_install_append()
- After it
- Will not be aplied

Now if I declare my do_install_append before the inherit line, will it
be aplied before the .bbclass's do_install_append?

How Yocto handles this _append stuff?

Best regards,


-- 
"Do or do not. There is no try"
  Yoda Master

