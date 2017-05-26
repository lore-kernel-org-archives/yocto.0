Return-Path: <droid.baner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 575C5E00C30; Thu, 25 May 2017 20:48:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (droid.baner[at]gmail.com)
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
	*      [209.85.213.174 listed in list.dnswl.org]
Received: from mail-yb0-f174.google.com (mail-yb0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA6F9E00C20
	for <yocto@yoctoproject.org>; Thu, 25 May 2017 20:48:35 -0700 (PDT)
Received: by mail-yb0-f174.google.com with SMTP id 132so56946982ybq.1
	for <yocto@yoctoproject.org>; Thu, 25 May 2017 20:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=aPfRfT2iESwt1RxG3s4+FuBT1UgXP+ULLPYF8jIrFtw=;
	b=L41QgZQp/BdBuUUr0vYfCbyazmGJpcUl9yajRZs7HLPnAMJBlsGbljoM+TLzfCaRqE
	FjvzvlUPr8Mog40F9vDDxPaKp3WIddeUWYfmtIgHzs+/v9Sbc9L4YuEO+6k9fqZvXn60
	saluLNzkPhfR0hdhL6KZSwcK88jq+QxbuxEIymVxcnfVsifgo1t1s+ARZch4JAvyMN3r
	EbLMQ/UNHI63hQD7ehiUv1sACc8c034fbdCj8lmC/TAsZqrKZ/PdEl/OAZAgEo9zNuc+
	5WrwHxOR7LQVbVXMI8l+oO3R3Y79f058IQSxuMoQlM2tpPgytEAVlfRqXWzNNqOuAshg
	/Aeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aPfRfT2iESwt1RxG3s4+FuBT1UgXP+ULLPYF8jIrFtw=;
	b=fGdr81E9gAnzbJLfxsLxN39hhutvfMp7Pb/OOvc1OyxIBwxyK6cgMkIo/YhPVsyD2G
	tZyCULGrly796KJYPFCulTXda+wnu7CSYAW4raCiQvJ9uGk+0g3dqdVwBbiMHsMEzJyO
	xcLc8UZ7eteYzApjZlYSAdxZgG33sA/74Qc6AVmGN19vIYOJ9dRNMa7D3snWJaJ7D1rS
	xXRlGTzUiuSrJF4TDolCwAsrcowW+21KP8rgHpc3PHdCGZHjg+KaTPlGfstvjRl1IXCR
	8TLTLEoWFtiuFPJAF/iL5wqUNS3EDHDAW0eii6g4ouIxAu3e+2WVvk4EfD2FAMPEyonP
	8WmA==
X-Gm-Message-State: AODbwcA1i+yW0YtfI1GIF5ztgfGgqRmDhBu4ddTdcEDgsGzOSNwG1gM2
	A1ncQe4iFIvigyvMqYxXzi/ffOjFxPCL
X-Received: by 10.37.214.214 with SMTP id n205mr35540231ybg.45.1495770515041; 
	Thu, 25 May 2017 20:48:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.12.213 with HTTP; Thu, 25 May 2017 20:48:34 -0700 (PDT)
From: sourabh banerjee <droid.baner@gmail.com>
Date: Fri, 26 May 2017 09:18:34 +0530
Message-ID: <CANmFEgs6v-uVX4PtAcptL7qUNYqBqW_UY2aeBySQgEjPg=wn=A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: yocto-jethro: how to define a machine which builds kernel in 64-bit whereas user space in 32bit
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
X-List-Received-Date: Fri, 26 May 2017 03:48:40 -0000
Content-Type: multipart/alternative; boundary="94eb2c065a4036f81005506536fc"

--94eb2c065a4036f81005506536fc
Content-Type: text/plain; charset="UTF-8"

For reference I looked up the default provided machine conf files inside
poky/meta.

Following seems to build qemuarm for 32bit, i.e. both kernel and user space
32bit
*
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/machine/qemuarm.conf?h=jethro

And following seems to build qemuarm64 for 64 bit, i.e. both kernel and
user space 64bit
*
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/machine/qemuarm64.conf?h=jethro

Please guide me how can I define a machine where kernel is built 64bit but
the user space is 32bit.
I attempted a few things by trying to override the TUNE flags but I am not
able to get it right.

Regards,
Sourabh

--94eb2c065a4036f81005506536fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>For reference I looked up the default provided machin=
e conf files inside poky/meta.</div><div><br></div><div>Following seems to =
build qemuarm for 32bit, i.e. both kernel and user space 32bit</div><div>* =
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/ma=
chine/qemuarm.conf?h=3Djethro">http://git.yoctoproject.org/cgit/cgit.cgi/po=
ky/tree/meta/conf/machine/qemuarm.conf?h=3Djethro</a></div><div><br></div><=
div>And following seems to build qemuarm64 for 64 bit, i.e. both kernel and=
 user space 64bit</div><div>* <a href=3D"http://git.yoctoproject.org/cgit/c=
git.cgi/poky/tree/meta/conf/machine/qemuarm64.conf?h=3Djethro">http://git.y=
octoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/machine/qemuarm64.conf?h=
=3Djethro</a><br></div><div><br></div><div>Please guide me how can I define=
 a machine where kernel is built 64bit but the user space is 32bit.</div><d=
iv>I attempted a few things by trying to override the TUNE flags but I am n=
ot able to get it right.</div><div><br></div><div>Regards,</div><div>Sourab=
h</div></div>

--94eb2c065a4036f81005506536fc--
