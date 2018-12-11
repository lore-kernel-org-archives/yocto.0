Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4ED6EE00C4D; Tue, 11 Dec 2018 01:57:27 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32B2DE00B92;
	Tue, 11 Dec 2018 01:57:26 -0800 (PST)
Received: by mail-io1-f53.google.com with SMTP id l14so11289077ioj.5;
	Tue, 11 Dec 2018 01:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=keRDb9ZXayAUnlDGraau1vpldaogikk1XoR2IsuHnEI=;
	b=tO+VVryMC/jt141o/L59Og6wMAcq0ZzkSKwmYdP6pJ7Kv+6A5DdGXOstW90t2ooORK
	LVkZ2rTqXB2c3iN7Isq1V/B8//DJwjWiY+lwG1raVPLPO9sKcnnNDvQMcenIwhp3voN0
	C2FEnh/vbB+gv5nuHJY1fKpPtGZJruuf1sIDKj+HciOmEQgOJnoPbfaLAhEcoPYk22C9
	YC3VInF4aK4Xh5SiBIMdUXAFYFGOUuPkla5ghI91eIEQNzVeudRNSG0pXAR68jejobls
	fwyHiqdQmUXBYBwkUqsVOZM5sXt0CjZtLXkiRwkG58mcVpzmVQrM5hmKPkTUaJupGTA3
	bvsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=keRDb9ZXayAUnlDGraau1vpldaogikk1XoR2IsuHnEI=;
	b=d5Yarf6DqzgZv6SanE9/B5W9266S5OXqvmKuDLjdaeG2iWczx4LA4aCCDaZQLv9h4B
	H16byrTy5TwyAFPTS3L8GqcUumjpWhTyMQef1QwcXNb3Luy/GWHlG0+5RZp3sedQqLhZ
	Ug5JY5bHcmVHyS2XBrQs9EziorVfYrKbTgTXrGVvz3yDqjCL2Ya200Q2i3G/Z/uySa1p
	lQoWz1wKjn1qGPtlhyUNKivz56OHTYQFYwoS6w6FiXEg415yKT32rjgMjTfUPjXd5b+K
	ChfW3fq0CeIMMt3fxyGznw7iSCh9wMtiIyIqOzZV+IjCFWu1aIW1pfHq46lTZQTfzBb6
	OSWg==
X-Gm-Message-State: AA+aEWZjjCdPKLZxLhWaaYejT/YGfpmBvGal6k6H3ssSM/hlA5E45H9Z
	uYV8cyYLadLOnE1yJRZU+0+KNAupOUFIkaOpihxREKFj
X-Google-Smtp-Source: AFSGD/UL+BjLMswjQnQLFc513rnTNYzEtzpELPwZHR4hETsB1eRtHHTIFFgC+Q9dsFD0Ay1Qn/Utye2CqagZfGKAav4=
X-Received: by 2002:a5d:87cd:: with SMTP id q13mr12074005ios.92.1544522245346; 
	Tue, 11 Dec 2018 01:57:25 -0800 (PST)
MIME-Version: 1.0
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Tue, 11 Dec 2018 10:57:14 +0100
Message-ID: <CAFq4t4jdGXQnytzXjW-Op=NVdy1s1yAO=U6v9G8NXGd-OX4F0w@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>,
	eclipse-yocto@yoctoproject.org
Subject: Lib update
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
X-List-Received-Date: Tue, 11 Dec 2018 09:57:27 -0000
Content-Type: multipart/alternative; boundary="000000000000c81d28057cbc1b19"

--000000000000c81d28057cbc1b19
Content-Type: text/plain; charset="UTF-8"

I am developing library (set of libraries) which at first are built and
part of build image & my SDK.
Now I would need to update the libs so SDK and as well target remote image
are updated. I want to avoid rebuild whole image and flash SD-Card again
and generated SDK over again. I use SDK cross-compiler, Eclipse, ADT plugin
to develop cmake-based application.
What is the correct procedure?

--000000000000c81d28057cbc1b19
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am developing library (set of libraries) which at first =
are built and part of build image &amp; my SDK.=C2=A0<div>Now I would need =
to update the libs so SDK and as well target remote image are updated. I wa=
nt to avoid rebuild whole image and flash SD-Card again and generated SDK o=
ver again. I use SDK cross-compiler, Eclipse, ADT plugin to develop cmake-b=
ased application.</div><div>What is the correct procedure?</div></div>

--000000000000c81d28057cbc1b19--
