Return-Path: <ysan99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 967CAE0096D; Wed,  6 Apr 2016 10:18:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ysan99[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f169.google.com (mail-yw0-f169.google.com
	[209.85.161.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40728E0048B
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 10:18:23 -0700 (PDT)
Received: by mail-yw0-f169.google.com with SMTP id g3so65111364ywa.3
	for <yocto@yoctoproject.org>; Wed, 06 Apr 2016 10:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=CkqXU3c5+xa2i/HLl0gxzIW9J4Hv6vUJdQXaJH1qp7U=;
	b=lSrM07MVjTNYb7X0+MWf8K855OXS6gY4NiumexCGvfvTft9IxjuKvl8PW7s9dyztHi
	Zv5g/yNkZ0XzZBTrd2UjWMwfWVSDmts5Lqwyi6w+pkbfSR1q9+P7lDYTBuSCHD2doZON
	bPjToSDkvvj+ptGEXPA3CnxdGpIhK2PSDLtGUX4FUS9znjop1KBRfjl3vdqJRCs9wL5Y
	X74B1u+CaV+xVKh73NM59HGgmgxl2E23X6UNCdziqwtx9fhSB5ywJe9lhGJju5SoGEgH
	NRs+xZSNqiEqksnvBrnBuC4QyNj0JgaBK+5M2oAkSFB07hRhOIkBwzGE4YN4hZmXAwyj
	nHpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=CkqXU3c5+xa2i/HLl0gxzIW9J4Hv6vUJdQXaJH1qp7U=;
	b=eJSpca5ldZD2Uv0kWywCVfBreFLKGhViGxKiD8P5tlze+f5/Ma5DHQTvuzp9a/TO2i
	BR8qz8z7LHQ7nSBrT4PJnXfytYgo0BB41S2pVzQC1N7iLhy6fvlmPerGpwxu9Rg4eBRs
	Y4lvt5+RB0jWlwqO3QmPJFUc8TbLtN4SeEqeN0Ub/vImAw7umV8uyHTCBQdBHqEec30G
	ytJYJkELvPBrOy4N0iAVH0XLRCiOwBWqLJDKZwAMLfK9EwmMlKZf5v3sGvMso7NhNs0O
	hReGZuiASD2s3OFLv3HsMzLt6SHEnwpDMXl9D2XM03MDOWqkOCrW1xt5XRVOhtIEJrTG
	zHVA==
X-Gm-Message-State: AD7BkJKQEQnxhTLmJ7vrLBJj4UL/RhgC1MVN/DbgTwEA0PAEepGF8EjWLzlL0/3wfOCaE71JMm53BfZalYMl/w==
MIME-Version: 1.0
X-Received: by 10.129.5.215 with SMTP id 206mr19064785ywf.210.1459963103193;
	Wed, 06 Apr 2016 10:18:23 -0700 (PDT)
Received: by 10.37.17.195 with HTTP; Wed, 6 Apr 2016 10:18:22 -0700 (PDT)
Received: by 10.37.17.195 with HTTP; Wed, 6 Apr 2016 10:18:22 -0700 (PDT)
Date: Wed, 6 Apr 2016 22:48:22 +0530
Message-ID: <CAFcFeQKU5EkgSdw-Wyy3gcF4sNTMZO4WtFjgptaFbwrgZeyhPQ@mail.gmail.com>
From: Santosh Y <ysan99@gmail.com>
To: yocto@yoctoproject.org
Subject: Sharing Sstate cache among different platform architectures
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
X-List-Received-Date: Wed, 06 Apr 2016 17:18:25 -0000
Content-Type: multipart/alternative; boundary=001a1142cdd426caa3052fd42651

--001a1142cdd426caa3052fd42651
Content-Type: text/plain; charset=UTF-8

Hello,

Can sstate cache be shared among builds for different architectures like
x86 & PowerPC?

Thanks.
Santosh

--001a1142cdd426caa3052fd42651
Content-Type: text/html; charset=UTF-8

<p dir="ltr">Hello,</p>
<p dir="ltr">Can sstate cache be shared among builds for different architectures like x86 &amp; PowerPC?</p>
<p dir="ltr">Thanks.<br>
Santosh</p>

--001a1142cdd426caa3052fd42651--
