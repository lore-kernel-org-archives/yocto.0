Return-Path: <ken.sloat@ohmlinxelectronics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2550BE00CB0; Sat,  2 Feb 2019 18:59:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
	[209.85.167.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68A6DE00BAB
	for <yocto@yoctoproject.org>; Sat,  2 Feb 2019 18:59:25 -0800 (PST)
Received: by mail-lf1-f42.google.com with SMTP id b20so7813962lfa.12
	for <yocto@yoctoproject.org>; Sat, 02 Feb 2019 18:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ohmlinxelectronics-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=hF1vmn+J5Bw+uy6JnFMYL3XMtSXGRnQOUZuNHPWgS/o=;
	b=rivfjW4tgq056bgxLl10oBmFD9LXoUVSlQZQBPX7u8ehJGYJ7iMg/CE55R5YtvZMun
	8WKFgj3dEUE3Y6KNBFOIA1P+OBRp8iVEXPYrhUQaNF27yFzCAMjmPapdklTfp43nGZQr
	PV4HiqB8E6PLK5QcWpKjXRu2VJydxliQNVSMIGKpAcN0jGJH0OYHS0asqe5n5Lz8V0oQ
	jJ43bkv81d4cl4e2VN53g4TgVgXJjhPWj9bdrGeh8La033//RmAf6ukruyImHb5JYKrA
	q7bYEyA+g4QI7Rxi5rt5y8G1/PZhuUXs4Wk5O8fn8P3OdV0zaUMZvRpx5yOQTQkcFu3R
	U34w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=hF1vmn+J5Bw+uy6JnFMYL3XMtSXGRnQOUZuNHPWgS/o=;
	b=O9wPPmJUdXCzr+qhTBBJZaWNdCvzltx9jHDoaUHBj17V3LIV/nhuh1PWP4noZBHIZz
	eO/kpRpm6CRnqbt62WvZCTxiqbCdhis3ewbhmI38Rd49n+jkAKV3zZWmsAfStClRzU2m
	PpEgcuD6C/vMpmfnCxI05RqDhxfvTTZJNjHIzKjNWuVO9TGEgtykvp/NfMJmoT7zeDyH
	oj4utn2RV+ybZC96fb7nGM0Q+bTl4+pmxJA/R25MR+U0n74PPFtIW3tF1AyDIMwpNlMh
	JKhbpXaZtp2ySQEBVbSCVR+EpKbCBfI/CK0E/WJSLqPeTcZvGI4+kT7Z/z3aCDRqtEj3
	nkIw==
X-Gm-Message-State: AHQUAuZeB4KHoub3JnCCrs3xKs74xSh1DmZRlB5TW5xt/RskW9trjtgR
	I8k4BczVtjzlM+nYfC5PRHFcLX2cK6Z9yRoN6pDjNoAGd6k=
X-Google-Smtp-Source: AHgI3IaY+8hqweAuNXY1HvRInMgBdxlHVykQ9KvnkzcfSJM5NhX3OF1DX4nfnvEKPTBDPYGVv9eH7BY7qHdqx2CryVE=
X-Received: by 2002:a19:c517:: with SMTP id w23mr9528819lfe.85.1549162764045; 
	Sat, 02 Feb 2019 18:59:24 -0800 (PST)
MIME-Version: 1.0
From: Ken Sloat <ken.sloat@ohmlinxelectronics.com>
Date: Sat, 2 Feb 2019 21:59:13 -0500
Message-ID: <CAPo_4QCE-N-tVUQhOF_Q3f18306TqXSrT+QOSO_Yg2C3Uo5ghw@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: Nate Drude <nate.drude@ohmlinxelectronics.com>
Subject: Proper Use of KERNEL_MODULE_AUTOLOAD variable
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
X-List-Received-Date: Sun, 03 Feb 2019 02:59:26 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

I have an out of tree kernel module which I want autoloaded at startup
on my system. Looking at the Yocto project manual, I see that one way
I can do this is to add the module name to the KERNEL_MODULE_AUTOLOAD
variable within my custom module recipe.

What I have found is that the module-split class is indeed generating
the "/etc/modules-load.d/mymodule.conf" file, however this file is not
actually being installed. To be more precise it is appearing in the
"package" directory (i.e.
tmp/work/**/mymodule/package/etc/modules-load.d/mymodule.conf) but not
within the "image" directory (nor in my final rootfs).

Is there something I'm missing in the usage of KERNEL_MODULE_AUTOLOAD?
Is the intention for this variable I add extra steps to manually
install this file in my recipe? FYI I'm using Morty.

Thanks,
Ken Sloat

