Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42DD4E0080A; Mon, 29 Sep 2014 09:45:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56156E006DB
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 09:45:38 -0700 (PDT)
Received: by mail-ig0-f178.google.com with SMTP id l13so2172515iga.5
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 09:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=rwBADbhHhQWmeDYCf8XZBgKeC/OUOp1NN9QMEtVMF2s=;
	b=aKW0ZkkvJaeCvnEl1pfhs24hiLuNX0w2vibW6AEdCyWd1zc1eneuk55IpLcvZi3H9L
	2mfD+vUzRq2xDGtKo4F4lVCgXfF47Npz+Rjtzc9bPBM+BWx982JX/4EOatYo+xV3RiKW
	X/c8VMMUZykr1Bc6OeDdZyoqwqoYbsJlpJqT55eNFk8kaqIk4prVeuEeXRpQsaswwvat
	z2aakg7eyGtmGN5OAX1JSo6zkkLC9FyVeN1vogPUV1RIoS495V+HHlEXDL4g9msxdRyQ
	U+tNLvohVM/ukHeyH7f3gA8BbAjnSQUQzZIw2mFYIerdAXWhPMpNpbuSUMAETsEG7kyh
	VvGg==
X-Received: by 10.50.80.116 with SMTP id q20mr36814134igx.22.1412009137819;
	Mon, 29 Sep 2014 09:45:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.72.132 with HTTP; Mon, 29 Sep 2014 09:45:17 -0700 (PDT)
From: atulkumar singh <atul.singh008@gmail.com>
Date: Mon, 29 Sep 2014 22:15:17 +0530
Message-ID: <CAH21_vHyXpMzbAE_ub-8bbfESPYzLGjq6KXNCt4mHKrDmNg_Xw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: LSB compliant meta-toolchain
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
X-List-Received-Date: Mon, 29 Sep 2014 16:45:41 -0000
Content-Type: multipart/alternative; boundary=089e015366821467e7050436ff6f

--089e015366821467e7050436ff6f
Content-Type: text/plain; charset=UTF-8

Hi All,

I build the LSB compliant meta-toolchain using distro setting as poky-lsb.
But did anyone knows how to test the same with LSB testsuite for
compiler(libstdcpp-4.1).
I google the same aand come to know that it uses Qmtest(testing tool) to do
the same.
But when i try to do so by calling:

/doc/lsb-test-libstdcpp-4.1.0/build_binary_testsuite
/home/atul/lsb-dist-testkit/opt/lsb/test/libstdcpp_4.1.0
i586-windriver-linux-g++
(I have installed qmtest-2.4 version and exported LD_LIBRARY_PATH),
but getting the below mentioned errors:

'import site' failed; use -v for traceback
Traceback (most recent call last):
  File "./../doc/lsb-test-libstdcpp-4.1.0/build_binary_testsuite", line 23, in ?
    import os
ImportError: No module named os

Please provide your inputs and let me know if I am missing anything.





*Thanks and  regards,ATUL KUMAR SINGHE-mail Id- atul.singh008@gmail.com
<atul.singh008@gmail.com>Mob. no.-08055440486(R)*

--089e015366821467e7050436ff6f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;ari=
al narrow&#39;,sans-serif;color:rgb(51,51,255)">Hi All,</div><div class=3D"=
gmail_default" style=3D"font-family:&#39;arial narrow&#39;,sans-serif;color=
:rgb(51,51,255)"><br></div><div class=3D"gmail_default" style=3D"font-famil=
y:&#39;arial narrow&#39;,sans-serif;color:rgb(51,51,255)">I build the LSB c=
ompliant meta-toolchain using distro setting as poky-lsb.</div><div class=
=3D"gmail_default" style=3D"font-family:&#39;arial narrow&#39;,sans-serif;c=
olor:rgb(51,51,255)">But did anyone knows how to test the same with LSB tes=
tsuite for compiler(libstdcpp-4.1).</div><div class=3D"gmail_default" style=
=3D"font-family:&#39;arial narrow&#39;,sans-serif;color:rgb(51,51,255)">I g=
oogle the same aand come to know that it uses Qmtest(testing tool) to do th=
e same.</div><div class=3D"gmail_default" style=3D"font-family:&#39;arial n=
arrow&#39;,sans-serif;color:rgb(51,51,255)">But when i try to do so by call=
ing:</div><div class=3D"gmail_default" style=3D"font-family:&#39;arial narr=
ow&#39;,sans-serif;color:rgb(51,51,255)"><pre style=3D"white-space:pre-wrap=
;color:rgb(0,0,0)">/doc/lsb-test-libstdcpp-4.1.0/build_binary_testsuite /ho=
me/atul/lsb-dist-testkit/opt/lsb/test/libstdcpp_4.1.0 i586-windriver-linux-=
g++
(I have installed qmtest-2.4 version and exported LD_LIBRARY_PATH), but get=
ting the below mentioned errors:</pre><pre style=3D"white-space:pre-wrap;co=
lor:rgb(0,0,0)"><pre style=3D"white-space:pre-wrap">&#39;import site&#39; f=
ailed; use -v for traceback
Traceback (most recent call last):
  File &quot;./../doc/lsb-test-libstdcpp-4.1.0/build_binary_testsuite&quot;=
, line 23, in ?
    import os
ImportError: No module named os

Please provide your inputs and let me know if I am missing anything.</pre><=
/pre></div><div><div><font color=3D"#3366FF"><b><br>Thanks and=C2=A0 regard=
s,<br>ATUL KUMAR SINGH<br>E-mail Id- <a href=3D"mailto:atul.singh008@gmail.=
com" target=3D"_blank">atul.singh008@gmail.com</a><br>Mob. no.-08055440486(=
R)</b></font></div></div>
</div>

--089e015366821467e7050436ff6f--
