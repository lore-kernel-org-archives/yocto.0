Return-Path: <einar@vading.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 675EFE00BC2; Mon, 10 Jul 2017 10:11:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.176 listed in dnsbl.sorbs.net]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
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
	*      [209.85.220.176 listed in list.dnswl.org]
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 360CFE00B76
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 10:11:05 -0700 (PDT)
Received: by mail-qk0-f176.google.com with SMTP id v143so79372472qkb.0
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 10:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vading.se; s=google;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=S5dvB88bGEakyLh6DqDsk2ba4QSrF4kAgxas+At7k9s=;
	b=UUCZl5B2WN9pdpoVEXkjvtXQ0Seh2/KEiyNsl3orBxo5xtM+SSwlrhp55++Lyut5fK
	/eRuDoLPqP1/E9bHQzPoP62wuNZih3E+zp34/ePC54HtrD0CQqt4pzpIfJyyCBweAdEO
	RQT3deQKyTM26hoSwZwF66JE5ZZH0kfkVmJow=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=S5dvB88bGEakyLh6DqDsk2ba4QSrF4kAgxas+At7k9s=;
	b=t94JhIZmtMRdMowkiT1PkH4Xv0PoYHQlVoRNsMR91kPmr0C3b8Gq2yWEY5rRBG7tmj
	Bcjey8UfPQV1IoJuPl6zGszi2rTIZi3GYuXsRkuaH5I8bPOAuBR9iKzM9XQnZm8czcjO
	5TozWqi2YLT/MnHnvArsXZYAEPHUKFo8smdDRg7YcBm+JoHgygzgAUj8tWSAVd3Lrh0Z
	5IVqDfsSwvz3PGcfhDReFRpOYVOY1M94bygjIQ9eQkKyExgUyD64ROC25UWM+lMSwg/8
	H2i+vRh2gkOURmITC95z14iMbhLG6eTZA8akYc26fRbSIwrjh5WCcWIF56p+CXgyMSJ+
	HXkA==
X-Gm-Message-State: AIVw111d3zrrMb/X9MozlBe5HKKbDRQz80mpBp7ZZFD3NAgwOOKuMaT8
	utnRPUoLNym4LAWj7aaBPU6R7cJDvONLLA0MAw==
X-Received: by 10.55.10.11 with SMTP id 11mr4964591qkk.251.1499706665072; Mon,
	10 Jul 2017 10:11:05 -0700 (PDT)
MIME-Version: 1.0
Sender: einar@vading.se
Received: by 10.140.107.75 with HTTP; Mon, 10 Jul 2017 10:11:04 -0700 (PDT)
X-Originating-IP: [195.60.68.157]
From: Einar Vading <yocto-ml@vading.se>
Date: Mon, 10 Jul 2017 19:11:04 +0200
X-Google-Sender-Auth: QX76N52FlqHaJwlMsvR6YJU-7T8
Message-ID: <CAB6-VtJP8DXUCMrGuqO0LK-UiMjFYZQZ-_37KO-Lue=t1s0LWw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: linux-yocto-dev stagnated at 4.11-rc6
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
X-List-Received-Date: Mon, 10 Jul 2017 17:11:07 -0000
Content-Type: multipart/alternative; boundary="001a114c92be0a13e60553f9abca"

--001a114c92be0a13e60553f9abca
Content-Type: text/plain; charset="UTF-8"

Hello everyone,
I was just wondering if there is a reason for linux-yocto-dev staying at
4.11-rc6? I was under the impression that it would basically follow
kernel.org which is now at 4.12 since a few days.

Thank you,
Einar

--001a114c92be0a13e60553f9abca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-size:12.8px">Hello everyone,</div><div =
style=3D"font-size:12.8px">I was just wondering if there is a reason for li=
nux-yocto-dev staying at 4.11-rc6? I was under the impression that it would=
 basically follow=C2=A0<a href=3D"http://kernel.org/" target=3D"_blank">ker=
nel.org</a>=C2=A0which is now at 4.12 since a few days.</div><div style=3D"=
font-size:12.8px"><br></div><div style=3D"font-size:12.8px">Thank you,</div=
><div style=3D"font-size:12.8px">Einar</div></div>

--001a114c92be0a13e60553f9abca--
