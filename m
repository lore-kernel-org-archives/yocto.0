Return-Path: <peterson.russell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F310E00D53; Tue, 23 Jul 2019 13:49:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (peterson.russell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1362FE008A4
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2019 13:49:25 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id d23so43281158qto.2
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2019 13:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ze/xD9iKMblacODYDS+ByXxNiQoNMh977zsB92Pp2Q8=;
	b=bOgHz/D6cFxDZ64XAycxzCEWMjxu3it5G1Yx0wORthXop0ne30VboJWelWHXEFYz24
	1H2qhTdcpNnzENuh/Grgo8cm4r6RPh1SgUirZVwrJDQP22AAdxX5vLMHAd/7WWFxO4m1
	14BbJw6IuDJvk9/01muk26K/VgVHyrdPiB999e7tkgylfKpx0obv8gUQNikVDDOPOIEO
	jl7G3XWirkFdetGDhx371BULuBMqo7BpEe/h0LyATxtsqiO4W/IVyHvaW6wLAvzSJY1G
	7XALZfwMZ6N+AIn4mY40xSAJ9x3WtNBK0MoztYUbDcN0RW55xuLhXDwHhQ72XQ1BCcJx
	074A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ze/xD9iKMblacODYDS+ByXxNiQoNMh977zsB92Pp2Q8=;
	b=LtkcyIrq9yNT8HujsLl+69pnJmjZkcFJ74nxGdMCNJiXCCX8p4NmYUcJTRAwUmwQ1X
	W99+ZVWT9leTpGlL5VgEL+VlPTbOZ6YPIy9D5N+UGCghQ/cKTKOUW1daG8rG8MyypWkQ
	nVUY3h64F8ozar5QlZ1Tfbfu+OXN+mZiB6MZI4N0X/UrylmlQEPOm2Z06QmIO2NebSKa
	A86IthYAeML3V1seCfM4ttsqIeusIsS7fI9yVGIbVGg9V2zNd6MwjBImKaYC8edIRAaU
	mhQmK57hMwee7sHES5t2NcFw8GXzBPrwtMgMScQvfNZqWvK1lHfkEM4GFT2JqCUb+nBG
	2Y5w==
X-Gm-Message-State: APjAAAW0zUXTkN4GLDMJN70trD2fWg7VZErTI5Xcsk6xSXAFeBAy1Umd
	nkvs1AfBSvKsXfQM/mlX+y2xmJ32nI/RXIHP0vl7PA==
X-Google-Smtp-Source: APXvYqzNJEokX0b7eZF/BuOAbwLC41zPtymGPvLSMvmNNqiUb3BK8l9Mk5Gc0CufBOqNZ1BROqaOUHi1qs1pyVOz9w0=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr55550226qtc.300.1563914964915;
	Tue, 23 Jul 2019 13:49:24 -0700 (PDT)
MIME-Version: 1.0
From: Russell Peterson <peterson.russell@gmail.com>
Date: Tue, 23 Jul 2019 16:49:14 -0400
Message-ID: <CAJxG=fmKGb1fSVi=tRF2shqYbOkuYBiDzXOhSQRPXdHxs63gbg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: PREMIRROR
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
X-List-Received-Date: Tue, 23 Jul 2019 20:49:26 -0000
Content-Type: multipart/alternative; boundary="000000000000f1640e058e5f530e"

--000000000000f1640e058e5f530e
Content-Type: text/plain; charset="UTF-8"

Hello,

I am looking to have bitbake pick up files for a particular recipe from a
local git repository using the PREMIRROR functionality.

Basically, the recipe (bb file) points to github but in my local build I
add PREMIRROR_prepend = "git://.*/.*
git:///local/path/BASENAME;protocol=file\n"

I will probably make the git regular expression more exact for my specific
github repo but this works for now.

This all works (as I deleted the github download from the local download
directory) because I can see in the do_fetch log and the correct (local)
repo was found and placed in the DL_DIR.

Problem is, do_unpack fails because it appears to be looking for the
original (github) SRC_URI.  Then it complains about "no up to date source
found: clone or directory not available or not up to date (shallow clone
not enabled)"

Any help on what I am missing would be appreciated.

Regards,

Russell

--000000000000f1640e058e5f530e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br></div><div><br></div><div>I am looking to h=
ave bitbake pick up files for a particular recipe from a local git reposito=
ry using the PREMIRROR functionality.</div><div><br></div><div>Basically, t=
he recipe (bb file) points to github but in my local build I add PREMIRROR_=
prepend =3D &quot;git://.*/.*=C2=A0 git:///local/path/BASENAME;protocol=3Df=
ile\n&quot;</div><div><br></div><div>I will probably make the git regular e=
xpression more exact for my specific github repo but this works for now.</d=
iv><div><br></div><div>This all works (as I deleted the github download fro=
m the local download directory) because I can see in the do_fetch log and t=
he correct (local) repo was found and placed in the DL_DIR.</div><div><br><=
/div><div>Problem is, do_unpack fails because it appears to be looking for =
the original (github) SRC_URI.=C2=A0 Then it complains about &quot;no up to=
 date source found: clone or directory not available or not up to date (sha=
llow clone not enabled)&quot;</div><div><br></div><div>Any help on what I a=
m missing would be appreciated.</div><div><br></div><div>Regards,</div><div=
><br></div><div>Russell</div><div><br></div><div><br></div></div>

--000000000000f1640e058e5f530e--
