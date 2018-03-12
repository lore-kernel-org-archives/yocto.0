Return-Path: <dev.madaari@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F523E00B66; Mon, 12 Mar 2018 12:50:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dev.madaari[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBB13E00848
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 12:50:35 -0700 (PDT)
Received: by mail-wr0-f176.google.com with SMTP id n12so5803153wra.2
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 12:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=SmQxo7H6VD0xXrzK3TGzRRmA3PEzKi7wg1ZP3tnwqjE=;
	b=hKLXzPQJMQBErNgbQ8xd/5wuOt/yqNRbCbLHZcQctTJcYB2PsW1VO9yr/Q9623kKIR
	Yd7NMkpIChRGuxSQUlrLuu0/Tf6Dzto/g62bvOLsCMSUuz5n32D6G1ZM7s8yv/9FVdTF
	0fy8zyGDiqREK7af3AiXId0ha7B8IRBSDFkVI2cUNXUljD9OFTcFNU0pGFfC0j55hW5B
	obXSXyGWsirErkS+ziQM0t7A4wO06/PxB/8wiC28671OHql6LHb7NjDutj2whsoD+2E4
	ex1SusRZ7Vh8pUgpEu4oXP6INEtAZsn3sfSe0JXgo+RalRnbAhRMJSwkzq/o4UFk7iHQ
	Eh1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SmQxo7H6VD0xXrzK3TGzRRmA3PEzKi7wg1ZP3tnwqjE=;
	b=ccO4zoXWDZ4cQz29wfYI7ADPXhicay1tMbvUs3tE/Q4Plz4ywIIReH3b0jtlQ6RHBW
	1l/5dIa1wi/xytxHXkzjgjbXKvmcbAoH9kt4AEPDc3nQBY01ui1U/D9ttZuxE8QIc0DU
	mna+nz3sumrpoaiNIGy0ULY52ElE5W8KD43H3CsSvLWgfjLSwPvru3/9JH+oLBYRdDGD
	2yUTgts0iA0O74FKt+wXtoHSFAl2pJYD19XswDjRA7Ucwv9xoBgop7KxtJG7x1RvR2d7
	EBrl6QZHdrZprN2PuL7SrYIXRlukAFpl15wby96qMLPS+wEaFlbOmDhPtbzmy3LF8jM7
	xpVQ==
X-Gm-Message-State: AElRT7E9CaBTx+b9ygI2l6Gpcl2wt0sVzs73Bt5vcBa6wnq34x1oPQb/
	uB8mszdOKQmILWcGkKrNTBfXYtV/taa17NcVYR3PBVzb
X-Google-Smtp-Source: AG47ELvrwgVOT8qJHgv7Wubqighh96LaW8m6/usYcVHa69gfAE9vaT+6X7y4QfKonyEX8oRyrYX8CrJZEtuCtls2/sI=
X-Received: by 10.223.134.99 with SMTP id 32mr6723628wrw.153.1520884234410;
	Mon, 12 Mar 2018 12:50:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.167.70 with HTTP; Mon, 12 Mar 2018 12:50:33 -0700 (PDT)
From: Udit agarwal <dev.madaari@gmail.com>
Date: Tue, 13 Mar 2018 01:20:33 +0530
Message-ID: <CAM0bxh9Hqx7z6ALtBoTxrUbOJ=bb7v55v+LcA7wvU_ibExwYQA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Benchmarking SDHC and SDIO driver
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
X-List-Received-Date: Mon, 12 Mar 2018 19:50:36 -0000
Content-Type: multipart/alternative; boundary="001a1147de3289685605673c746c"

--001a1147de3289685605673c746c
Content-Type: text/plain; charset="UTF-8"

Hi community,
I am searching for any *widely* accepted benchmark, which can be used to
quantify performance of SDHC and SDIO drivers based on different
parameters, on embedded platforms?
Tests might include copying a block of data from host to a SD card or vice
versa and measuring bandwidth and speed available.

Any help/direction would be very helpful

Regards,
Udit agarwal

--001a1147de3289685605673c746c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi community,<br>I am searching for any <strong>=
widely</strong> accepted benchmark, which
 can be used to quantify performance of SDHC and SDIO drivers based on=20
different parameters, on embedded platforms? <br>Tests might include copyin=
g a block of data from host to a SD card or vice versa and measuring bandwi=
dth and speed available.<br><br></div><div>Any help/direction would be very=
 helpful<br><br></div>Regards,<br></div>Udit agarwal<br></div>

--001a1147de3289685605673c746c--
