Return-Path: <navani.srivastava@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67B74E008A2; Tue, 14 Oct 2014 02:41:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (navani.srivastava[at]gmail.com)
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
	*      [209.85.213.174 listed in list.dnswl.org]
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E98FE00846
	for <yocto@yoctoproject.org>; Tue, 14 Oct 2014 02:41:11 -0700 (PDT)
Received: by mail-ig0-f174.google.com with SMTP id a13so13806563igq.13
	for <yocto@yoctoproject.org>; Tue, 14 Oct 2014 02:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=xgg15NNh1hlUPgrWHsRK3ssIuHiGvke+zMOFi830vNk=;
	b=o44pxgVYmqEGmUOQDPFPNZ9ak6G2Y1tc5c4Ej06BG1c8Y3Di7wjM01bz98BhVLZ2DX
	YC00hi1Jjw92IaNkgBgmAVzunbqPTLsNlYUE+m6XS+YlkjQ+Za3G29FUrZvowc8VbisI
	TJRCOMZOf9+J2Eu9goLSL2zci4lHrkHvIbOge2mzDCq/QYheSa3dc04ntAHsDAiowfJA
	7zSxMKRMEle6eNGA68n2xUlHupZUsiH+QZyaA/nlIG16/bCPcrIWOYNPGJYXuw3J5JOP
	2JfDf4FwPWa8zt/YvkVge7bRA8VO/Isx5b/efRC8Tde3cNFyCNvQHrQZUNjJaPaqg6Fe
	egRA==
X-Received: by 10.50.112.164 with SMTP id ir4mr8126353igb.1.1413279670161;
	Tue, 14 Oct 2014 02:41:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.26 with HTTP; Tue, 14 Oct 2014 02:40:49 -0700 (PDT)
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Tue, 14 Oct 2014 15:10:49 +0530
Message-ID: <CA+Z6RkVM=PVYmE3o3XfuWDXiWK_rSzdvLuvGgyRjVJpKKkeq+A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Adding nativesdk package to toolchain
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
X-List-Received-Date: Tue, 14 Oct 2014 09:41:19 -0000
X-Groupsio-MsgNum: 21802
Content-Type: multipart/mixed; boundary=089e01175f6bb5896405055ed050

--089e01175f6bb5896405055ed050
Content-Type: multipart/alternative; boundary=089e01175f6bb5896005055ed04e

--089e01175f6bb5896005055ed04e
Content-Type: text/plain; charset=UTF-8

Hello,

I am trying to add a nativesdk package of a custom recipe to toolchain in
Poky-8.0.2. I have added nativesdk-qjson (custom package) to
TOOLCHAIN_HOST_TASK variable, but it is throwing following error while
generating the toolchain-

Collected errors:
|  * opkg_install_cmd: Cannot install package nativesdk-qjson.

Attached is the recipe for nativesdk package. How can I make it work?

Thanks
Navani

--089e01175f6bb5896005055ed04e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I am trying to add a =
nativesdk package of a custom recipe to toolchain in Poky-8.0.2. I have add=
ed nativesdk-qjson (custom package) to TOOLCHAIN_HOST_TASK variable, but it=
 is throwing following error while generating the toolchain-</div><div><br>=
</div><div>Collected errors:</div><div>| =C2=A0* opkg_install_cmd: Cannot i=
nstall package nativesdk-qjson.</div><div><br></div><div>Attached is the re=
cipe for nativesdk package. How can I make it work?</div><div><br></div><di=
v>Thanks</div><div>Navani</div><div><br></div><div><br></div></div>

--089e01175f6bb5896005055ed04e--

--089e01175f6bb5896405055ed050
Content-Type: application/octet-stream; name="nativesdk-qjson_0.8.1.bb"
Content-Disposition: attachment; filename="nativesdk-qjson_0.8.1.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i19238a20

REVTQ1JJUFRJT04gPSAiQSBKc29uIGxpYnJhcnkgZm9yIFFUIgpIT01FUEFHRSA9ICJodHRwOi8v
cWpzb24uc291cmNlZm9yZ2UubmV0LyIKU0VDVElPTiA9ICJsaWJzIgpSREVQRU5EU18ke1BOfSAr
PSAibmF0aXZlc2RrLXFqc29uIgoKTElDRU5TRSA9ICJMR1BMdjIiCkxJQ19GSUxFU19DSEtTVU0g
PSAiZmlsZTovL0NPUFlJTkcubGliO21kNT0zNTExZDcyNmQwOTE0NGM4NTkwYWJhNDYyM2NhMmU5
ZiIKClNSQ1JFViA9ICJjNmQ5MmJhZGE3NmJlMmM0NmRjZjZmNTg1ZjAzYjJmYmE0N2Y5ZGEzIgpQ
ViA9ICIwLjguMSIKUFIgPSAicjAiCgpTID0gIiR7V09SS0RJUn0vZ2l0IgoKU1JDX1VSSSA9ICJn
aXQ6Ly9naXRodWIuY29tL2ZsYXZpby9xanNvbi5naXQ7cHJvdG9jb2w9Z2l0IFwKCSAgIGZpbGU6
Ly9DaGFuZ2VDTWFrZUxpc3QucGF0Y2g7cGF0Y2g9MSAiCgpERVBFTkRTICs9ICJjbWFrZSBwa2dj
b25maWciCgppbmhlcml0IGNtYWtlCmluaGVyaXQgYXV0b3Rvb2xzIGdldHRleHQgcGtnY29uZmln
CmluaGVyaXQgbmF0aXZlc2RrCgojIEFkZGluZyBvdXIgbGliIGZpbGUgdG8gdGhlIG1haW4gcGFj
a2FnZQpGSUxFU18ke1BOfS1kYmcgKz0gIiR7bGliZGlyfS8qIgpGSUxFU18ke1BOfSArPSAiJHtp
bmNsdWRlZGlyfS8qIgoKQkJDTEFTU0VYVEVORCA9ICJuYXRpdmVzZGsiCg==

--089e01175f6bb5896405055ed050--
