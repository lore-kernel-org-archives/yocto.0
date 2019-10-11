Return-Path: <ycnakajsph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47FA6E00BB5; Fri, 11 Oct 2019 06:51:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ycnakajsph[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AB93E00AE6
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 06:51:41 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id w12so21559038iol.11
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 06:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=rO0tb2apQzCMc58QhthaN7CIbNTmuaszYviluhh5QUQ=;
	b=cILyQOeBet1Mr/iP1hOHVIpr48NcVdlACF7GFsRwwUxkldNiifa3xAj8OtwlshnLOM
	adHerkeelbzKaunnSumxh284hGLfYZ9PP8gQjwE7nrj4GCujZtYssT4uSMjfhD6Xsilv
	IQDYUSSbNq5OMO00i+C7iNQSfmrOF5IHb+2Q6bj2H4GShXwdNA+yjtpnP72egH1sGnbJ
	PDSjhGgsAgfbHS8PYmLVsV4eiTbRXqZI9ygcyJ9IsrLTAt3RxfiLs1etzKvjpMLD80N3
	A8RykX3c/d6JXB7hcRuRClHBVJvqgVOD1ACu9i3janzdLVh4Pcfu/WX9BtFjw8702ZKT
	dnxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=rO0tb2apQzCMc58QhthaN7CIbNTmuaszYviluhh5QUQ=;
	b=kEefkzGah0R2fftBDi9/y/XBtxpQLYjPIr0kuEw//34iXkuPLZCVaybOGMg8MjhDxO
	Rox8Dn20sALYXM2JaVqEEIHQAEsPHf/JehbjhmJ0e3WeW9+vJfFOZvQqtgp8HPndPQMs
	ySMgPkHYpwW6m+R7puZhuBmmkX3xIrGj0gXdtXRK9Pfc0epLBXqL5WJsiUI2uv5ekAxK
	ATJo5NYnaRhd4cMgoBlkaZ1j3hodJP84/cP/lEi8YZKCPKnU15xvnl097F6OZA2UDZZi
	gu09dHq9TeaM52xHKLPliwFlh3QPGrejqcFsW9sKl7k8Ag0EFEZhcIAgHdA0ZJfqwk0n
	VNJw==
X-Gm-Message-State: APjAAAVNNgitqXIvFQgnXiUhrqWxQZRAk4MmCMKTML4al31+M2TSv78G
	noqppUPxcB0G2WDuQzZy+ZaeXn7N+kyUQxl6KdK0M9QUxpI=
X-Google-Smtp-Source: APXvYqy5206tttFrSxlheRyDcgUrVNNHw1O4ceajwAH3lA/mG433aI2n/zIr0ISI74a6t9hhHXIJ0IuuJiLKmpWit/s=
X-Received: by 2002:a5e:8217:: with SMTP id l23mr7439680iom.283.1570801901083; 
	Fri, 11 Oct 2019 06:51:41 -0700 (PDT)
MIME-Version: 1.0
From: Ycn aKaJoseph <ycnakajsph@gmail.com>
Date: Fri, 11 Oct 2019 15:51:29 +0200
Message-ID: <CAC3TgAKRkeRjHDasNM6S_eSeBe82i3VYVWWuwLkUxm4GxTca4Q@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 14 Oct 2019 04:18:56 -0700
Cc: opkg-devel@googlegroups.com
Subject: [OE-core][opkg-utils ] Bug 13528 : adding SPDX license identifier
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
X-List-Received-Date: Fri, 11 Oct 2019 13:51:44 -0000
Content-Type: multipart/alternative; boundary="00000000000053a47c0594a2d18b"

--00000000000053a47c0594a2d18b
Content-Type: text/plain; charset="UTF-8"

Hi guys,

https://bugzilla.yoctoproject.org/show_bug.cgi?id=13528

I'm about to work on that bug however most of the script in opkg-utils dir
are un-licenced and there's no hint for me to decide what SPDX Identifier
to add.

The doubt concerns those script :
makePackage
opkg-build
opkg-buildpackage
opkg-compare-indexes
opkg-diff
opkg-extract-file
opkg-graph-deps
opkg-list-fields
opkg-make-index
opkg-show-deps
opkg-unbuild
opkg-update-index

What license do you want them to carry ?

Best regards,

Yann CARDAILLAC

--00000000000053a47c0594a2d18b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi guys,</div><div><br></div><a href=3D"https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D13528">https://bugzilla.yoctoproject=
.org/show_bug.cgi?id=3D13528</a><br><div><br></div><div>I&#39;m about to wo=
rk on that bug however most of the script in opkg-utils dir are un-licenced=
 and there&#39;s no hint for me to decide what SPDX Identifier to add. <br>=
</div><div><br></div><div>The doubt concerns those script :</div><div>makeP=
ackage<br>opkg-build<br>opkg-buildpackage<br>opkg-compare-indexes<br>opkg-d=
iff<br>opkg-extract-file<br>opkg-graph-deps<br>opkg-list-fields<br>opkg-mak=
e-index<br>opkg-show-deps<br>opkg-unbuild<br>opkg-update-index</div><div><b=
r></div><div>What license do you want them to carry ? <br></div><div><br></=
div><div>Best regards,</div><div><br></div><div>Yann CARDAILLAC<br></div></=
div>

--00000000000053a47c0594a2d18b--
