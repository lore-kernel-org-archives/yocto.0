Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D66EBE00AE6; Fri, 11 Dec 2015 09:45:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8844BE008C4
	for <yocto@yoctoproject.org>; Fri, 11 Dec 2015 09:45:05 -0800 (PST)
Received: by igbxm8 with SMTP id xm8so43881068igb.1
	for <yocto@yoctoproject.org>; Fri, 11 Dec 2015 09:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=oDK5iM0FnUpt9bQgUc7rry3COKoAVRGWfzVFj8rVYyM=;
	b=aOgMUbuWFEMIJ1dhcKKw5dQBvlONhXhFaGBxcJ3fB+lntFPyKlqWdpFsErRJvlUTLO
	yrPhlhkJorIT3SQqsRWRn8yL2nKtSK1f2sOUwlKv94o0PeTgUgOT1l6O6HRI3MFaCpxk
	eYid5l43kWWF8a6JhtgmiE91LhG16NwlWoJwKIjv5Ywd8q3D8MQ9jEZgh3D/EBAUHWZd
	npdDd9x44a06Z7dNPPeFoCZG/nz/bG++asEG5EhVwgb0/NTnQMmOVCP/prJgMwArpA6v
	jU6fuSvTM2CoEJBQf7NfNN6fvf+3tRO8nxBqevMTJ5o/uzeigxKBI/Pof28P1xlZ0bzq
	K64w==
MIME-Version: 1.0
X-Received: by 10.50.55.41 with SMTP id o9mr4525456igp.73.1449855905008; Fri,
	11 Dec 2015 09:45:05 -0800 (PST)
Received: by 10.79.91.134 with HTTP; Fri, 11 Dec 2015 09:45:04 -0800 (PST)
Date: Fri, 11 Dec 2015 11:45:04 -0600
Message-ID: <CAOsp8o_d9p9VyECRhn33+Ne+mMUMDr4d8ZwJtFjCw2N_MGNWUA@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: yocto@yoctoproject.org
Subject: Understanding build work directories (machine vs tuning)
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
X-List-Received-Date: Fri, 11 Dec 2015 17:45:09 -0000
Content-Type: multipart/alternative; boundary=047d7b111a2d3192db0526a2e2ce

--047d7b111a2d3192db0526a2e2ce
Content-Type: text/plain; charset=UTF-8

I have created a new machine, and that new machine has a tuning specific to
our architecture. For example, machine=mymachine and mymachine's default
tuning is myarch.

I've noticed that for the target, we actually get two different work
directories: one based on my machine, e.g. mymachine-distro-linux, and one
based on my tuning, e.g. myarch-distro-linux. I haven't quite figured out
the difference between what gets compiled into myarch vs mymachine, as I
get some of both in my rootfs.

I'm sure I'm missing something obvious, but thought I'd ask.

Thanks all,
Michael

--047d7b111a2d3192db0526a2e2ce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have created a new machine, and that new machine has a t=
uning specific to our architecture. For example, machine=3Dmymachine and my=
machine&#39;s default tuning is myarch.<div><br></div><div>I&#39;ve noticed=
 that for the target, we actually get two different work directories: one b=
ased on my machine, e.g. mymachine-distro-linux, and one based on my tuning=
, e.g. myarch-distro-linux. I haven&#39;t quite figured out the difference =
between what gets compiled into myarch vs mymachine, as I get some of both =
in my rootfs.</div><div><br></div><div>I&#39;m sure I&#39;m missing somethi=
ng obvious, but thought I&#39;d ask.</div><div><br></div><div>Thanks all,</=
div><div>Michael</div></div>

--047d7b111a2d3192db0526a2e2ce--
