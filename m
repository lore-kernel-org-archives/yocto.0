Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD8ECE00D18; Wed,  8 Nov 2017 07:49:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.51 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 920AEE00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 07:49:55 -0800 (PST)
Received: by mail-oi0-f51.google.com with SMTP id g125so2220023oib.12
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 07:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=f1Lmj831OWN1+hgkp4Yp8lPJf/BmtbypK06GsLYP+Kc=;
	b=qwNI4W1k+OU5OblbtDRrXxx73zeJBexIO6yrk1gqxXY4euJT4RzysfyfyJO2BfBuKC
	o30SWKbgMnWUSI3tWGoIVQa5EDWGRzxo8XvlGiKgQx5smruP7xszMfvd5IC9vhxLFgtM
	idAA24MF2d4INnVzi1BpMg16jCvW1arAdLAWkCPet26HyOnzJTac83oQvhjjlWlHeGVn
	7jXZl4DEUwRVSUV7Nbmaao4aLGH4DSewKdSdMzUPI2cHnVvXsmOgtgyXnQDAW5D3R0sJ
	bDInSfAp9/i0ZIGOKE+VZz5C2ciJ7HiKTiMWf8btgAeA8h1/gkBOitzqm1vdNB1pUvcL
	Si5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=f1Lmj831OWN1+hgkp4Yp8lPJf/BmtbypK06GsLYP+Kc=;
	b=AdNK5FDzVZOkSkU69hv0P+I5d9kpsBd/wzP0E9kE264GocWTWzgIP6Sg6Gq1F/H0qT
	SsWKirmj5MWhzkvXm1YcuNAi30emIpXSeWam0WYkA9W+W0s4r0L4WtglQjue1Zg+GAfv
	YCXRJTOI4MCYJm2NzfuQls8gfSWCud6vaEzDc29D13FmhL3rpQ+e9tkJJUj5kKIvfwj7
	B31WB6D5pJECLNxAL4RyTku6C0cJDrEeGXbr6g1z5fXGMyS4xLrW4C5F4NI/h1M+w6Ns
	rOhWkLIStBAhMegPgOQ03ZqBGWd1e/JdU+k2Kqc1xr5ym/cmTNXELguGSKEIJX6k8U2z
	IM7A==
X-Gm-Message-State: AJaThX7Np0+5ow074ixqUSLAam+d6mlmLYA5qthaIHSM47Kdvuwmgnq4
	PidDq4XyYL9Lk+VYWDbJFikAjazSW2K11B2hxd4=
X-Google-Smtp-Source: ABhQp+TX+VYC2rku9qeIUWKLpZEEHkKSJ4sonacDhyL4Y0uxEbVsJQYDEi4njvwVUkpyzVrgt5Lazaj8sYKupQuR6T4=
X-Received: by 10.202.236.86 with SMTP id k83mr555391oih.319.1510156194277;
	Wed, 08 Nov 2017 07:49:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.45.117 with HTTP; Wed, 8 Nov 2017 07:49:53 -0800 (PST)
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 8 Nov 2017 10:49:53 -0500
Message-ID: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Annoying "rerun to fix" bug for bitbake: task failed, but rerun can fix it.
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
X-List-Received-Date: Wed, 08 Nov 2017 15:49:56 -0000
Content-Type: multipart/alternative; boundary="001a1145e6b083ef66055d7aa36a"

--001a1145e6b083ef66055d7aa36a
Content-Type: text/plain; charset="UTF-8"

I am not sure whether it is a bug or an error:
* Quite often, bitbake will fail before finishing, with message like: ...
task failed with exit code 1...
* But if you rerun bitbake, it will continue to build.
* So sometimes I have to rerun many times for finish one build ----
annoying!
(by the way, my CPU can run 16 threads)

Any idea to clear this annoying bug?
thanks.

--001a1145e6b083ef66055d7aa36a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>I am not sure whether it is =
a bug or an error:<br></div>* Quite often, bitbake will fail before finishi=
ng, with message like: ... task failed with exit code 1...<br></div>* But i=
f you rerun bitbake, it will continue to build.<br></div>* So sometimes I h=
ave to rerun many times for finish one build ---- annoying!<br></div>(by th=
e way, my CPU can run 16 threads)<br><br></div>Any idea to clear this annoy=
ing bug?<br></div>thanks.<br></div>

--001a1145e6b083ef66055d7aa36a--
