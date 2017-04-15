Return-Path: <sadlife1990@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDFBDE00A30; Sat, 15 Apr 2017 04:54:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sadlife1990[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 429BDE00A30
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 04:54:32 -0700 (PDT)
Received: by mail-ua0-f174.google.com with SMTP id h2so29165071uaa.1
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 04:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QGQ5RrmKfzTYv62DzFd4W00v8x2KTO13eew29dmxrH0=;
	b=oWd2hUDUd64UtUN39lmtNNy2y7ASKrJC1ZG16dlQtNlAzZxsM9MSi8uFVt1dWQIUuc
	bk2sUON+0l9GPDzNI6UPORQThL8gyeqFSA1ehH1YLpSLgQb/pnWd/Qs+3r5UtaHfGAg8
	jZW455uFiEtjhcfSCO5nNXQOA+WEkw5htHx7dCTZbQ2JZ4EOiyCRfEFTHlDD3EqX3N2+
	Kqs+AgUmxvPgLicbmVD3P3V9uB11y5E0uafHkLybzHH/H0fKP4oVf7V93kN/0MUbAUrW
	Pj5DKdSXTi6TGemjyCGKYEcDlj0PL4QbVxeN/Et8ECqNh8Z9dZ6gEd8kLZgrNLlgrl03
	CRgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QGQ5RrmKfzTYv62DzFd4W00v8x2KTO13eew29dmxrH0=;
	b=PC26Re3Q0wT7vtijNsTplH4JpiyuK0hqUbxUbD3WzmG1JNjqMO8SzLPJTCui0L56Ed
	1wTMmxjsp5gnE0xQGZdKZjX4Bv5Ei2JyPK3o3DED0S+NyKj1NqZ7GEPvp4T83sOa5PcZ
	XQPJc1MvPsqotCI87cLlqRpkbWYtkf/617SeRBnm3XzLBzAGnvzGh8aKrc1y502vxHgO
	EXJl3lBXPQH+CydphlmFOH8PTeuH5HWmI20yq41kHe1i2IdPS33tteIT1OcBE8yglVYA
	h3VwbWaxKuZtNT5IR+1dirbLZf43iYIrjRai2qBte7ORJ2587ANCBwYEMkfyyrz/m4h6
	H5Dw==
X-Gm-Message-State: AN3rC/7Z4eJafUbARf9PxHs63aJWc6f1j4F1mJsSDSbxIORvHHdi5uRB
	bf4IbY5OmGcxLm95lYLajk3RjTG3vw==
X-Received: by 10.176.78.29 with SMTP id g29mr282176uah.55.1492257272318; Sat,
	15 Apr 2017 04:54:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.105 with HTTP; Sat, 15 Apr 2017 04:54:32 -0700 (PDT)
In-Reply-To: <CAAHuHfxiGoOOK3o17TZS+pC0-G+7ZebS5_oYW8Xvv-wpsPu4OQ@mail.gmail.com>
References: <CAAHuHfxiGoOOK3o17TZS+pC0-G+7ZebS5_oYW8Xvv-wpsPu4OQ@mail.gmail.com>
From: Life Life <sadlife1990@gmail.com>
Date: Sat, 15 Apr 2017 14:54:32 +0300
Message-ID: <CAAHuHfywSpMg0LhUFgWWLGi=zaq0BKeO9-OYzivn+wnYcbkWEA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: cups 2.2.2 Backend filter not include serial port support.
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
X-List-Received-Date: Sat, 15 Apr 2017 11:54:33 -0000
Content-Type: multipart/alternative; boundary=f40304378a6ca14e10054d3338d4

--f40304378a6ca14e10054d3338d4
Content-Type: text/plain; charset=UTF-8

Hello,

I'm try to build cups 2.2.2. It is not included serial backend support.
How to enable serial port backend support ?

Thanks.

--f40304378a6ca14e10054d3338d4
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><br><br><br>Hello,<br><br>I&#39;m try to build cups 2.2.2. It is not included serial backend support.<br>How to enable serial port backend support ?<br><br>Thanks.<br></div>

--f40304378a6ca14e10054d3338d4--
