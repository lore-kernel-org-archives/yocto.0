Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E135FE00C6D; Thu,  7 Feb 2019 07:48:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.182 listed in list.dnswl.org]
Received: from mail-it1-f182.google.com (mail-it1-f182.google.com
	[209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DD38E00C59
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2019 07:48:15 -0800 (PST)
Received: by mail-it1-f182.google.com with SMTP id m62so745859ith.5
	for <yocto@yoctoproject.org>; Thu, 07 Feb 2019 07:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=A2dho8Vkr70Q31m40X9KpSq8JY7Q/upJWVb1RhALrBo=;
	b=B3/2Z5PLAPlX9mkcyg0nxNkt7nOIMQUL+YK/ZAsWxE58WVpoeuJZdQGRf4FVcceAEj
	sBVdiAK66QJeBWDVcDJ/jwU/Go+Y+gHOqrS9gXSv5VzqQahXyioXQqmEbstL9aEq9bPF
	piL+p00n9qdTstVDcFw66P+reZFC6r2AqlqeL1onub+tTCVRMxjFf1wM9Um4Li/7N6kX
	o9Km+04fwX12N36zCx0tvMHgtXLMPf7n86PtluaTlS8Zxk30Sha48pw0vRGvQqT+3a2S
	b19iwglZsZswYXhdCJTr4j0rGcxZzAlc5qxxz/zRyFm5yp0sdaKNQrG5D8oZ+yqYr3ci
	BUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=A2dho8Vkr70Q31m40X9KpSq8JY7Q/upJWVb1RhALrBo=;
	b=QQTTMkZ4QNvy4WAf3p5YBD79F53fK3fV6AxFBo2AygyIKdfvrAEU15nuurnKZOMx3M
	bk/9DC5q7uK5LUEWZF8ZyDylYOvgPhQO0ktmayWcZ0zBkyVAVs9bTVq3cgBpE/KYaQJx
	3x22Hx08XyeaQcAqQakbuaitPoFNBIUToHpMq76Rs6iJaYITSO2rfYmJqpKgTHNwAeTh
	DOnt/a81+PdHBzzA8IOOZD9Ow0LVvYrCi/i5gYcPuOIOWOhKvUJFnXD99FQ2Ny6yh5ai
	ZUXy79ytfQCh845AOevVawMGx+7ViRgb6JKzRMP6m0vX8jTn/G/99Dejeqq4NTLzHuyp
	0ScQ==
X-Gm-Message-State: AHQUAubyLNie1q5TeW+tmUA3vgLNSZbeWOjzcGhE/TKh2LGm7/SM/WNn
	gCFAkbqOkf6/Qe1Q48oMIF4bKrFW79ngJDb6O921UQ==
X-Google-Smtp-Source: AHgI3IZlK1dmSFmBQi4321xoO74GiwQiPWO/iDK5KdY7BOx1sIDg6jw/iU9LbPWhRiJcj5kaUhq0RMKlNTJpu3j/eWI=
X-Received: by 2002:a6b:6d15:: with SMTP id a21mr8537800iod.92.1549554494712; 
	Thu, 07 Feb 2019 07:48:14 -0800 (PST)
MIME-Version: 1.0
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 7 Feb 2019 16:48:03 +0100
Message-ID: <CAFq4t4jZZi_BCYJGCq6oJJbHTwL4p3PN626n4KF0mHQxybjrPQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Tue, 12 Feb 2019 08:13:01 -0800
Subject: glxinfo
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
X-List-Received-Date: Thu, 07 Feb 2019 15:48:16 -0000
Content-Type: multipart/alternative; boundary="00000000000037b37f05814fc5d5"

--00000000000037b37f05814fc5d5
Content-Type: text/plain; charset="UTF-8"

I'd like to ask which yocto recipe has "glxinfo" available? I will make
available that package within local.conf...

Thanks.
Peter

--00000000000037b37f05814fc5d5
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">I&#39;d like to ask which yocto recipe has &quot;glxinfo&quot; available? I will make available that package within local.conf...<div><br></div><div>Thanks.</div><div>Peter</div></div>

--00000000000037b37f05814fc5d5--
