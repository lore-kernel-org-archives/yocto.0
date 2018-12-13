Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A486DE00CCC; Thu, 13 Dec 2018 06:58:06 -0800 (PST)
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
	*      [209.85.166.178 listed in list.dnswl.org]
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F444E00C9F
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 06:58:05 -0800 (PST)
Received: by mail-it1-f178.google.com with SMTP id a6so4203869itl.4
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 06:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=NnvSbkVdpnEHCKrscUrBPA5fXDTf8dfJU76SzKVoVGA=;
	b=RpgrO2C95m/52l2Hm0DOH5RjFIAwKOaadfUu2v5mowjQ8JNU604iQPPZ5y2I14UZ13
	LpTnCMOkJdJ5dTxpO3kvfpJuuydIdSYO6LrAWzIMkB0cxxVuSJv+AbjfdnoQjm4+AfbS
	kbLFPnxJ6VjtYd1WcNrfg7i0EOj0T4/vJALGrwAsjfB78sly8pOFmr7MQR9qPGuwEMZS
	2/Yd/VdJYS4Gk4k4nphc+VWOirvK4TGJ43l4BOrTjU6iOIUjHgt5n3AB+ykTaH/pTs4W
	Zv/2PdkP7qid/kziBO/XcHPvtmdiUsocBvkSHPh2O4CEXB3ZchJ8TiLWMQx4sHPNrQ0L
	e1/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=NnvSbkVdpnEHCKrscUrBPA5fXDTf8dfJU76SzKVoVGA=;
	b=YszlV/76LN1W2z3LCAiluo1F6vcQS3RZI7B/gQ3GIIjFg+wDXfnImF6yCdoOkZ3fvm
	fZkQL8oZG2tFASs1HjXtndjgxb4oo0yRBJWUKU7x4GASxhUSjD1smZ4St887i4KY3lT6
	aJ8VXR++LXRMxn4UCmvSlGqypVDJ0YMecOUF+h65dIBXy9s5K6IZxAGonP8360+8ntji
	eDNCi/gXQyPF7k1zfiRWjxbuoxy7D+3xDVjRQWAWjNBcv7CURZKMFIaF/oF4Pe7+CcLc
	EJci/Ydmd3uPxG2NtjqH4OEMTGHYQwsj42wj7aJU2GkZ7TS4rfrUZywngSuuvjlVBaG8
	Igxw==
X-Gm-Message-State: AA+aEWafBQc+CGrupplDi2az/OHguNdLRspgqyoUVlqz1vXX2FyJHsbD
	kRHctt/VjYEn4097MdOKlmYPR8NIN4gkzx6ysnfHJkrl
X-Google-Smtp-Source: AFSGD/X3eGPBR8xnZps/5lHreIwMymmCLkJfZbJ5x9GULZNL91SQHK4A27QwcW3DtAncEBtbyXLXP/QX5gIr7Xpmt9A=
X-Received: by 2002:a24:6890:: with SMTP id v138mr10363231itb.53.1544713084795;
	Thu, 13 Dec 2018 06:58:04 -0800 (PST)
MIME-Version: 1.0
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 13 Dec 2018 15:57:53 +0100
Message-ID: <CAFq4t4injAXT0+YgeXAYmfU50=_LL9BaVBm9e5-E1qyouAMENA@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Fri, 14 Dec 2018 08:21:49 -0800
Subject: core-image-* (minimal) networking
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
X-List-Received-Date: Thu, 13 Dec 2018 14:58:06 -0000
Content-Type: multipart/alternative; boundary="000000000000b30717057ce88aa3"

--000000000000b30717057ce88aa3
Content-Type: text/plain; charset="UTF-8"

I've built bitbake core-image-minimal and it runs but unfortunately I have
no connectivity (networking) available.

> ifconfig
lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:2720 errors:0 dropped:0 overruns:0 frame:0
          TX packets:2720 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1
          RX bytes:206720 (201.8 KiB)  TX bytes:206720 (201.8 KiB)

What's need to be included within local.conf to enable networking?

--000000000000b30717057ce88aa3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I&#39;ve built=C2=A0bitb=
ake core-image-minimal and it runs but unfortunately I have no connectivity=
 (networking) available.=C2=A0</div><div dir=3D"ltr"><br></div><div>&gt; if=
config</div><div dir=3D"ltr"><div dir=3D"ltr">lo=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 Link encap:Local Loopback=C2=A0=C2=A0</div><div dir=3D"ltr">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 inet addr:127.0.0.1=C2=A0 Mask:255.0.0.0</div><div dir=
=3D"ltr">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 addr: ::1/128 Scope:Host<=
/div><div dir=3D"ltr">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP LOOPBACK RUNNIN=
G=C2=A0 MTU:65536=C2=A0 Metric:1</div><div dir=3D"ltr">=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 RX packets:2720 errors:0 dropped:0 overruns:0 frame:0</div><=
div dir=3D"ltr">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:2720 errors:0=
 dropped:0 overruns:0 carrier:0</div><div dir=3D"ltr">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 collisions:0 txqueuelen:1=C2=A0</div><div dir=3D"ltr">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:206720 (201.8 KiB)=C2=A0 TX bytes:2067=
20 (201.8 KiB)</div><div><br></div><div>What&#39;s need to be included with=
in local.conf to enable networking?</div></div></div></div>

--000000000000b30717057ce88aa3--
