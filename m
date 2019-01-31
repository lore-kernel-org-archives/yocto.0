Return-Path: <chuckwolber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06C61E00D1B; Wed, 30 Jan 2019 16:13:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chuckwolber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB9CFE00D15
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 16:13:41 -0800 (PST)
Received: by mail-qk1-f178.google.com with SMTP id q1so870132qkf.13
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 16:13:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=WqZ45gT8h4Wwvqj06xbWfqz8I+/r/VYj9OYtOLfUs3g=;
	b=ZDWUbm8b1pCIZq7KL66WeN2ejGlt/g22VnM4uzl2q2Wv6WA1sAjOYnScEnN1CM+bEE
	IADxBgmkFRL3vW1tIzjnRmYBIcklhv9kXg/jXZtl3JSasQjH1l0JG0oxQVk4w9M6Rv+v
	kraqAPEPfpcrP6qVgy/jzgZGtfDV6vfeA877LIn7ePM2gNTPgK7gr4CdNQFS6adaVfuV
	KFO1IXaHRN5Npl1Dp+5ydCZlKZr6GeKONxtJmPJrO/FzQcuGI5D3O7rwEtpzbeUZnfRD
	SUXskRJ3s2BRGX9KP/vREGfvTGm4aXGVevFMAyrcIyxGwanY/1URoI9rQ8P01L5P1IjM
	Joow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=WqZ45gT8h4Wwvqj06xbWfqz8I+/r/VYj9OYtOLfUs3g=;
	b=pjMWGigg0ERnxrN85IFj1Vqt1jRxYdCtd3QjMlDrEHOZ69hi5mctabdaH0QpW4HwgY
	KLhHHLFPBekOzukk75ycM+6mRstap0xaA3IjB5W84GsdAUvsAmTEl5/WsIvqmkaVmyXH
	IqxjqdQpzEO8YhEQiOhgtcb4I6YS2woyH2S5ta5D4Nj4xjyE+UKc5+VQZesSRmUljF9w
	hVPW8ndjoT1+/SK2UUHofZ87iiOkKfQeVrTSG2WH/kszqFySTos8u7zfg5Ee1jXjvx0W
	JbzAizFbtkssr6t97Cowdta6pjPktNhuif77XN/Ozfnuj8mTATyxZCP/mfqADh0EDxsi
	ph1A==
X-Gm-Message-State: AJcUukc8H5vAJp7u8W/llMirK8WolGl4d6SG61C5PtYsXBIcQoMXNrCG
	mIPEVuvNLeuitNRB+ZNe36uFxs3wuEOW/yLm9hN+1Q==
X-Google-Smtp-Source: ALg8bN4rR/X1gqf85YuLTTvlWOWNSxE8VqWN7FNV2Gz2vl9M1TCZhDDNAsP70svB/KhBNrgXHfm7HmbKrdzv2t7dC0g=
X-Received: by 2002:a37:5cc6:: with SMTP id
	q189mr29989132qkb.235.1548893620653; 
	Wed, 30 Jan 2019 16:13:40 -0800 (PST)
MIME-Version: 1.0
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Wed, 30 Jan 2019 16:13:29 -0800
Message-ID: <CAB=6tBS=QgbPQqOJOJ7u4U-a77J7ukpm6vvHFQMXqsrdF80Wuw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: pcre-config replacement
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
X-List-Received-Date: Thu, 31 Jan 2019 00:13:43 -0000
Content-Type: multipart/alternative; boundary="0000000000000dd1ff0580b5e64d"

--0000000000000dd1ff0580b5e64d
Content-Type: text/plain; charset="UTF-8"

What is the recommended packaging approach for an upstream configure script
that seems to think that it must have pcre-config (which is disabled by the
binconfig-disabled class)?

Looking at the source of the upstream package seems to indicate that they
actually do need pcre, so this is not as simple as patching the configure
script.

..Ch:W..

--0000000000000dd1ff0580b5e64d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div>What is the recommended packaging approach =
for an upstream configure script that seems to think that it must have pcre=
-config (which is disabled by the binconfig-disabled class)?<div><br></div>=
<div>Looking at the source of the upstream package seems to indicate that t=
hey actually do need pcre, so this is not as simple as patching the configu=
re script.<br><div><br></div><div>..Ch:W..</div></div></div>

--0000000000000dd1ff0580b5e64d--
