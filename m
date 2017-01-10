Return-Path: <rohitj.chd@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 019BDE0071C; Mon,  9 Jan 2017 23:58:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rohitj.chd[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1568E0050B
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 23:58:07 -0800 (PST)
Received: by mail-lf0-f41.google.com with SMTP id k86so110303413lfi.0
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2017 23:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=xTA0SI8yuMeS/dr0DUKsyBRoh7+1zQCDsuFh17DxKcs=;
	b=XFqBt0XJysw+y8Zci9X5qkYwWiajLbd4tWPFUVbeeCAoUmktooM4E2LwD8eWmJn8WJ
	YfCzKugF3L+pgMm+9OVvmrhufAXWv879aYB31Z3R98PsO5IYFGyemgaUedunVn7bAJvi
	t77GjNc/qIT7ckuKpMh+GqRTyMulIMhzbuW2CJBggAegQRj8huJhoTQmFXDcfsCTi1Ab
	/QaFoyLWoIv6ALG7VgkzFWPz77P3q7hfK1aDAwo9WZkIXUVWtLjGMimRvw6mq8VuGqN2
	ZnfYJy/mEMj2HwygNK5Y/E8bT7eizBgQNwrGj8a/xAPvYC8GLsQxVN8RxrCV00XfmzW0
	GOpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=xTA0SI8yuMeS/dr0DUKsyBRoh7+1zQCDsuFh17DxKcs=;
	b=GXaGYNHR3b/+4Bx8wGLvJW4RpmDp7qDiWBaUJdvb1GiEiIgQRtRO7RFFtxWYpanqXQ
	Dy4cuTdWVXWitt3nsbvFQ5WazoDK+daGZ/WgfwD1//r4FfE6kRpjc/G2elfCb+cD8e+j
	98RPZ7mYkO3DEzH8eomFgpLfa7WLG57PlTuVW21599pRGqtsNk/JhpcvuNF2bASYTPjP
	TCuJnLObu4vDguCzxoUTzSxwAjo7kHfcI0PFUhMtXASpgbGlSgogUEOUlb66QBEXShXC
	4A2+gyaVTvANaxzDkSxZfx4P36DEot9ePP8FfvQ52sIyKdeVrJMDmNyxVlG+vI7oruhP
	gSBw==
X-Gm-Message-State: AIkVDXKatiFQg5lFPXap1STGFKZaSic0lS6cYJ4rhJuHi0S2LSkXWbz6mj42Rv45gl1Rg022GZrZvlxlyCMquw==
X-Received: by 10.25.193.3 with SMTP id r3mr604923lff.54.1484035086383; Mon,
	09 Jan 2017 23:58:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.114.187.47 with HTTP; Mon, 9 Jan 2017 23:58:05 -0800 (PST)
In-Reply-To: <CAHX_jjt4C4VQCKk1Jrz07eSb3vuGuPpjPdfEgds-86pJmD2Zjw@mail.gmail.com>
References: <CAHX_jjtT_JE9L9A4hmxL1QgftWEfC75nabgfGYEYCYWaKTKdNg@mail.gmail.com>
	<de6ecb7c-afa3-348d-a226-24fb735d48ef@linux.intel.com>
	<CAHX_jjt4C4VQCKk1Jrz07eSb3vuGuPpjPdfEgds-86pJmD2Zjw@mail.gmail.com>
From: Rohit Jindal <rohitj.chd@gmail.com>
Date: Tue, 10 Jan 2017 13:28:05 +0530
Message-ID: <CAHX_jjum-pOKSZwfcp=GLffqLBd--gRupQPYW_JOaEoMjWYpvA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: openjdk 8 support compile for arm with jit support
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
X-List-Received-Date: Tue, 10 Jan 2017 07:58:13 -0000
Content-Type: multipart/alternative; boundary=94eb2c1a171028813b0545b8d826

--94eb2c1a171028813b0545b8d826
Content-Type: text/plain; charset=UTF-8

Sorry i am new to this forum, actually my target is as follows:

I want to compile openjdk 8 for arm processor due to one of my requirement .
I have used meta-java layer with openjre 102b14 version.
Its compiling good with arm compiler.
But i want to add any available JIT ie just in time compiler to be added in
my working arm based java binaries to increase the performance of my java
applications to be used.
Steps followed are :
Downloaded poky and meta-java layer.
Set machine to be qemuarm .
Toolchain get downloaded as required along with required tools.
Openjre 8_102b14 is compiled for arm successfully.
I twisted the recipe and added enable-jamvm as config param. Now jamvm is
compiled as dependency.
After successful compilations of recipes i tried to run java binaries using
chroot replacing libjvm.so default with created using jamvm .
Java -jamvm -version
Getting segmentation fault core dumped.

Please suggest the solution for the same.

I tried with diffrrent VMs also but all in vein.

Even i tried diiferent variants of openjdk that says that Jit works fine
with it. Like openjdk8u-111-b14 works fine for debian but same source gives
compilation errors. Please suggest openjdk8 version for arm to add jit
support that will work fine for me.

Thanks
Rohit jindal

--94eb2c1a171028813b0545b8d826
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br>Sorry i am new to this forum, actually my target is as follows:<br><br>=
I want to compile openjdk 8 for arm processor due to one of my requirement =
.<br>I have used meta-java layer with openjre 102b14 version.<br>Its compil=
ing good with arm compiler.<br>But i want to add any available JIT ie just =
in time compiler to be added in my working arm based java binaries to incre=
ase the performance of my java applications to be used.<br>Steps followed a=
re :<br>Downloaded poky and meta-java layer.<br>Set machine to be qemuarm .=
<br>Toolchain get downloaded as required along with required tools.<br>Open=
jre 8_102b14 is compiled for arm successfully.<br>I twisted the recipe and =
added enable-jamvm as config param. Now jamvm is compiled as dependency.<br=
>After successful compilations of recipes i tried to run java binaries usin=
g chroot replacing libjvm.so default with created using jamvm .<br>Java -ja=
mvm -version<br>Getting segmentation fault core dumped.<br><br>Please sugge=
st the solution for the same.<br><br>I tried with diffrrent VMs also but al=
l in vein.<br><br>Even i tried diiferent variants of openjdk that says that=
 Jit works fine with it. Like openjdk8u-111-b14 works fine for debian but s=
ame source gives compilation errors. Please suggest openjdk8 version for ar=
m to add jit support that will work fine for me.<br><br>Thanks<br>Rohit jin=
dal<br>

--94eb2c1a171028813b0545b8d826--
