Return-Path: <richard.collins@guidedknowledge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49342E009DC; Thu, 12 Apr 2018 02:41:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 531FFE007D4
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 02:41:27 -0700 (PDT)
Received: by mail-pf0-f180.google.com with SMTP id h69so3199698pfe.13
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 02:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=guidedknowledge-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=efsPEoqjarKoHnpEDLyT+vQByUhsVp9/bDBVZeURHOQ=;
	b=Q1FXtSzPe7wJniRlaZ0QlS2jl0hjPCDfe19Kiib9PJDM64X15g/wuMu0TVSqIy7Jom
	oYZMY76Zxas6S8zcD1ZQiGDICm/w4YCA3BkbcjEkIlYaA7vARsc5k+5Ww3BJcfw8+WMp
	wuZKpLCMUo8w0BAA8+wFNepNz8K/6+CN4fmoEy5BrOCs0kRuL+89fCmeKul0y198XF7t
	PosTkpUn/q/9PAcxwB8Yr8/HrlH0O5EkBtHSuZoOrdG20R+rKsN6lkq2AYUHlQ2yRpBB
	3J57HgxVqCnKHk5GE5XXOtLIiwnzx0moRR4Yqbm5b6UlqnKmflwgZ6wAaikcDyyC0JYL
	Nr4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=efsPEoqjarKoHnpEDLyT+vQByUhsVp9/bDBVZeURHOQ=;
	b=oDlAuWIOZtFxqCE8Ghw8rOU2ZsQJlogdsuq/tpKoIOTuYvgK33+jXup2goRsodRDbT
	l7EfOMQXdzIBYdnmeYXPCfkuZqcVL2x4NVt2VSsQ3tKROWt4Uxvq6M0Ax0X4TgdCD7qc
	8f/eS2GZU9kIcujgi6zWPvNFwgbuHg3HYy95n6Ec2suCtTQSgqdb8rcOxZho7ejgQn3U
	CHPug3+rhae/Qj7FMUuZAUT2dxLG7KzdRt6domA+mtzK+tb7QvTaNNl/h5rJP+veNdZ0
	61GMkFwacxScBZTzjXPRO10vKD14zT2MKG4HthqTwyIM0Drd5FvDaj+f74TP0NyJTROE
	HvOQ==
X-Gm-Message-State: ALQs6tAcdszM9hO9dU5YKs5ovsI2ZKN7+RNuWjggC0fnTlsB0n8Lrtfd
	J35PPaykf0WbfBi9jwY/93dBQlwNgdhbLp+vJA9zJA==
X-Google-Smtp-Source: AIpwx4+Ck0DK4oVGwwkUWB4CDDArsBQqksCNFyteCUP5zPJ/WsMJlReOCfqHZpXj7uo8rqCPYDeMNxN1yOZpgYOZbZg=
X-Received: by 10.101.90.203 with SMTP id d11mr169388pgt.20.1523526086640;
	Thu, 12 Apr 2018 02:41:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.164.199 with HTTP; Thu, 12 Apr 2018 02:41:26 -0700 (PDT)
From: Richard Collins <richard.collins@guidedknowledge.com>
Date: Thu, 12 Apr 2018 10:41:26 +0100
Message-ID: <CAD-1PJj-MUb72kAaPD5SaMhAiXE=dutkzVC-agqQysffqjVTvA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Hello from Me, Richard
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
X-List-Received-Date: Thu, 12 Apr 2018 09:41:28 -0000
Content-Type: multipart/alternative; boundary="089e08237500335e940569a38fb5"

--089e08237500335e940569a38fb5
Content-Type: text/plain; charset="UTF-8"

Just wanted to introduce myself. I'm working at a startup in the UK and my
job is to manage and create the embedded platform that the product will run
on.

ttfn, Richard.

--089e08237500335e940569a38fb5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just wanted to introduce myself. I&#39;m working at a star=
tup in the UK and my job is to manage and create the embedded platform that=
 the product will run on.=C2=A0<div><br></div><div>ttfn, Richard.</div></di=
v>

--089e08237500335e940569a38fb5--
