Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5693BE00CA1; Sun, 23 Dec 2018 05:40:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com
	[209.85.217.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C62CAE00B77
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2018 05:40:35 -0800 (PST)
Received: by mail-vs1-f68.google.com with SMTP id v205so6043491vsc.3
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2018 05:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ZVdIAGoF1ATrQXjgUntsmJvtJy/xmhQJwptNhXN3Mto=;
	b=PuygmJK+bJLth3XejqOBI9Mtnwf2J8I3vgJ8wP46CvBsttUr7WM0EECBA8KqG/5Yqj
	CGXFYv0HyCffX6Yc0sR7VqcIZD8BIMinMiysIiG4auyDrPULG/KAmhrBljQyLGfHEbRH
	yiDR1TpzZya4OCCFOA/PUahvMNuORtFL++6mA/IDijiYbcOpKLD+KeNE4FS3on0wcnT2
	f7sfMc7L4jZgN4gP2aWegvM7D943E689uY2WT1HaZroogbL/7RjqoSTzFSn0GgvE2tgN
	jK0cDT/rcEWiXoDMM1w+t/zxmaAaWbhFnj273TvYOgXNvU1Hfnak60uPgztDb6wvY2TJ
	L0AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ZVdIAGoF1ATrQXjgUntsmJvtJy/xmhQJwptNhXN3Mto=;
	b=MCw5xpNGoqBe8KiPmudql2gfn2A28ZVZawM2X4Eiyk0IHikw5fd201y7jaI49bCKt9
	K3QSPJplprBUWQam5IUYI+Hkv6zICxqu9MinbYEv664cFPb1NZ8jgO+Cp07bjjreASz9
	99JIOE6vHn0JsA0GIjnHaxCeO8RUNPCLKwsUiMUkB2a+1GF0sO4IzxiGjZDlxxpUBIzy
	8GkD8700FCPJpmAZaITl3mRyIeEBorqoq7/RYhWqLENeTynjN7sU6hVcuUea34YIz6WD
	3Wj7cH/z7aDEFYpwggxqjbb02nPmTRBjcEcu9Bl6oFOHtj5IPzZ19wnK/yKzfxZi7jV4
	++MA==
X-Gm-Message-State: AA+aEWbMW9ouhHGmX64iK+rv7amWRH5vO/0GV2CY3fXz8VPAomBa5eqI
	+rYtinsXFTyBOl+RPJdkwrFZVO6ghNs/c4GQP6zLbn/M
X-Google-Smtp-Source: AFSGD/UYDNcBnP09zvOpsHfTuCp9cDdSdjINTQVVhy9owcDVauqL0VY7uGCrlwkdSOY8E7nIdgQStiFnXTisnPStAc0=
X-Received: by 2002:a67:c202:: with SMTP id i2mr3574484vsj.11.1545572434314;
	Sun, 23 Dec 2018 05:40:34 -0800 (PST)
MIME-Version: 1.0
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Sun, 23 Dec 2018 14:40:23 +0100
Message-ID: <CAKRytNy1sf3KRDczj1LSjyPjDwqDNJNXnprdwEDN_pNDn-aKZg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: iMX6 FEC driver Linux-fslc 4.17 - IPV6 Multicast not working when unplugging/plugging ethernet cable
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
X-List-Received-Date: Sun, 23 Dec 2018 13:40:36 -0000
Content-Type: multipart/alternative; boundary="000000000000ec0b89057db09fe8"

--000000000000ec0b89057db09fe8
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

if I boot my device with ethernet cable attached and I execute "ping6
ff02::fb" to ping the multicast address I get this response:
*root@evk:~# ping6 ff02::fb*
*PING ff02::fb (ff02::fb): 56 data bytes*
*64 bytes from fe80::c2f:eff:fe11:2d71: seq=0 ttl=64 time=2.057 ms*
*64 bytes from fe80::809:1bfb:8d4c:ae54: seq=0 ttl=64 time=73.101 ms (DUP!)*
*64 bytes from fe80::3e28:6dff:feed:5b97: seq=0 ttl=64 time=150.772 ms
(DUP!)*

Otherwise, If I unplug and plug again ethernet cable, I cannot ping the
multicast ipv6 address anymore.
The result is:
*root@evk:~# ping6 ff02::fb*
*PING ff02::fb (ff02::fb): 56 data bytes*
*ping6: sendto: Network is unreachable*

It seems an issue in Linux FEC driver, as already explained here
https://community.nxp.com/thread/359397.
I commented that issue to report the problem with linux 4.9.88, but the
same happens also with fslc kernel 4.17 Sumo branch.

Do you have any suggestions? This is really a frustrating and I'm really
surprised to see the same problem also on Linux 4.17.

Thank u.

--000000000000ec0b89057db09fe8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>if I boot my device with e=
thernet cable attached and I execute &quot;ping6 ff02::fb&quot; to ping the=
 multicast address I get this response:</div><div><div><b>root@evk:~# ping6=
 ff02::fb</b></div><div><b>PING ff02::fb (ff02::fb): 56 data bytes</b></div=
><div><b>64 bytes from fe80::c2f:eff:fe11:2d71: seq=3D0 ttl=3D64 time=3D2.0=
57 ms</b></div><div><b>64 bytes from fe80::809:1bfb:8d4c:ae54: seq=3D0 ttl=
=3D64 time=3D73.101 ms (DUP!)</b></div><div><b>64 bytes from fe80::3e28:6df=
f:feed:5b97: seq=3D0 ttl=3D64 time=3D150.772 ms (DUP!)</b></div></div><div>=
<br></div><div>Otherwise, If I unplug and plug again ethernet cable, I cann=
ot ping the multicast ipv6 address anymore.</div><div>The result is:</div><=
div><div><b>root@evk:~# ping6 ff02::fb</b></div><div><b>PING ff02::fb (ff02=
::fb): 56 data bytes</b></div><div><b>ping6: sendto: Network is unreachable=
</b></div></div><div><br></div><div>It seems an issue in Linux FEC driver, =
as already explained here=C2=A0<a href=3D"https://community.nxp.com/thread/=
359397">https://community.nxp.com/thread/359397</a>.</div><div>I commented =
that issue to report the problem with linux 4.9.88, but the same happens al=
so with fslc kernel 4.17 Sumo branch.</div><div><br></div><div>Do you have =
any suggestions? This is really a frustrating and I&#39;m really surprised =
to see the same problem also on Linux 4.17.</div><div><br></div><div>Thank =
u.</div></div>

--000000000000ec0b89057db09fe8--
