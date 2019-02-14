Return-Path: <leodmendesjr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48A05E00BAF; Thu, 14 Feb 2019 04:44:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (leodmendesjr[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.171 listed in list.dnswl.org]
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com
	[209.85.221.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD6E0E00B81
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 04:44:12 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id d201so1365808vka.0
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 04:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=tPOwDq/mpXEnQo3A8bd3P0ZdyL4w5e3IvsFuezbhJQc=;
	b=C5tuzPAMjgrKNFYBGb0AYiXbRJotCsPYWwq/cFLl3evSDm0Hn8muUgZAx4vD1Zrof1
	HEXFjaiRzmVB5bZFOlu+LUq0pu76WJR/Ko4zMeOtRXOOJZxhvymMDxq15mVe4Rb7wOTU
	0CpFjBEx5srBeRhAvnIhBaTSXxEHE/6r1j0kQRU/dW8IHRIdJ2OIftTsYu4FxxW0iR7a
	RYRsVmvqLR2Nn4DZSA26JLn9iMRF/bmWKhCoJtDDGADtTA8MV8S+taZzZcZ3UZ9h3da/
	070V/OyhVuJ/Sj4Z9y9FYDOXpM9CqRaNjA4AOEaqpp7vkkeNBA7p9iFM1vUoh1H8Wpbr
	/6eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=tPOwDq/mpXEnQo3A8bd3P0ZdyL4w5e3IvsFuezbhJQc=;
	b=NemWx20USGlsxUGihldiHe0dJ/t0k9qNbq9FJ9TsPfncyqAw6lNH25w5jujm86SGon
	ODqP7EzsMwETRZH3ke1lbQgfn6NlRx3hTRhnGfrNw+e7KVE1tksYVKh3JRKJsv4o/YFt
	LJGNPm/AZqxFp95S6B6Hvid08GwtwzT6pBAJ4qp1ACxgQffYCDikJz1GsBWXjyaNV4g4
	qO6RwYmADTGBzcUzdpiXxRs7Gl7mvGAo9gNfcIpb3mlOLLuL2S8TvGaAspG8dMNr4z83
	FDsFrSikUknPDihzc8TIR3Zo+5rtTfUylXpuwG3npt9qopQo3I/2jXby54hiIcCrIVk3
	jbxw==
X-Gm-Message-State: AHQUAuZbdg0vRGos5Ae/KUzJYcn6JrJzDkYBUUazQvy859+L02DmHTCd
	W1bSMJCHvwGwMzv+UCpFmZE25Gq0P3arKNuq/H2p
X-Google-Smtp-Source: AHgI3IYtTboUz4Hz2j56wE72qQROHDtbWNv+A/0+1NlBRU44n6/VnNXcouLJ+qsYXnXjN2U2VY3PX9IYnwLwt7DAh8o=
X-Received: by 2002:a1f:3c03:: with SMTP id j3mr1799865vka.49.1550148251968;
	Thu, 14 Feb 2019 04:44:11 -0800 (PST)
MIME-Version: 1.0
From: Leonardo Jose Duarte MendesJunior <leodmendesjr@gmail.com>
Date: Thu, 14 Feb 2019 10:43:56 -0200
Message-ID: <CAA3Hs=cc=mBZk_2+Fbr6AmRMXg6Yk8OuoGFGd29tPaiPcjfGzg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Opusenc e shout2
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
X-List-Received-Date: Thu, 14 Feb 2019 12:44:13 -0000
Content-Type: multipart/alternative; boundary="000000000000e868f50581da0396"

--000000000000e868f50581da0396
Content-Type: text/plain; charset="UTF-8"

Good morning,

I'm compiling the gstreamer1.0 and its plugins, but the plugins opusenc and
shout2send are not found in the image.
Any idea what can it be?How can I solve this?

Thanks.

--000000000000e868f50581da0396
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good morning,<div><br></div><div>I&#39;m compiling the gst=
reamer1.0 and=C2=A0its plugins, but the plugins opusenc and shout2send are =
not found in the image.</div><div>Any idea what can it be?How can I solve t=
his?</div><div><br></div><div>Thanks.</div><div><br></div><div><br></div></=
div>

--000000000000e868f50581da0396--
