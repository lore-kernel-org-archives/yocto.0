Return-Path: <kevinthesunwy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50000E007EB; Tue,  7 Oct 2014 04:07:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kevinthesunwy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F187E00786
	for <yocto@yoctoproject.org>; Tue,  7 Oct 2014 04:07:17 -0700 (PDT)
Received: by mail-lb0-f181.google.com with SMTP id l4so5960441lbv.12
	for <yocto@yoctoproject.org>; Tue, 07 Oct 2014 04:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=cygankMFJnNB3xb0WnOp6cTPWdZ89crCNNzx96/NMSQ=;
	b=UIyPy/Zfp+RHIYTP46RMPU0lzuUM/WCVzcjzzK7pz1QfUtTimCVoj9j8t8k3NC9+hi
	UnZn+54GUI7JzrBUAMT3Fa5b+oI82Y6XmrlBFVtPeRf5kc7A6YaSKbH/ONF+HHNa+TqZ
	E6FaQWdsJ2YXxSmyXY8On7j0+5PCfIq6fpJ/0n0fK1E33yaB2kxiM94/GV/P42eIHIPu
	+DLSSoluYtkqDXoB2I8jdgmkD/pPz/kifND5kZPP4Sr3twopF1+05leQi2VVW635dBGW
	Yq1CHifKdED61Fkj0WiX/x7K7ewcvg4TrqjaA33LWMll5HK1aBAvxYGK3bedZFuQj091
	etpw==
MIME-Version: 1.0
X-Received: by 10.112.54.130 with SMTP id j2mr3145637lbp.41.1412680036708;
	Tue, 07 Oct 2014 04:07:16 -0700 (PDT)
Received: by 10.112.56.6 with HTTP; Tue, 7 Oct 2014 04:07:16 -0700 (PDT)
Date: Tue, 7 Oct 2014 04:07:16 -0700
Message-ID: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
From: Wy kevinthesun <kevinthesunwy@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 07 Oct 2014 08:06:29 -0700
Subject: Cannot run simple binary executable file
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
X-List-Received-Date: Tue, 07 Oct 2014 11:07:21 -0000
Content-Type: multipart/alternative; boundary=001a11c332b6c4f79a0504d333e6

--001a11c332b6c4f79a0504d333e6
Content-Type: text/plain; charset=UTF-8

Hi, I am new to Yocto Project and learning to develop software on Atmel
SAMA5D3 Xplained board, on which Yocto 1.5.1 is pre-built. I followed the
instructions and got the 1.6.1 toolchain

poky-eglibc-i686-core-image-sato-armv7a-vfp-neon-toolchain-1.6.1.sh.

I can compile the simple HelloWorld program and binary file is made.
Then I copied the binary file

into board and tried to run it. However, when I changed to the file
located directory and type

"./Hello", it returned "sh: ./Hello: No such file or directory". Then
I tried "sh Hello", it gave

me  "Hello: Hello: cannot execute binary file ". If I type "file
Hello", it gives "Hello: ELF 32-bit
 LSB  executable, ARM, EABI5 version 1 (SYSV), dynamically linked
(uses shared libs), for GNU/Linux 2.6.16,
BuildID[sha1]=9933a2d2ce212099c5f9902a8e612c1423e136da, not stripped".
I googled and someone

said the problem may be the toolchain. Then I tried 1.3, 1.5.1
toolchain for arm, but still same

error. Could you please help me about this problem?

Thank you!

Kevin.

--001a11c332b6c4f79a0504d333e6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"text-align:left">Hi, I am new to Yocto Proje=
ct and learning to develop software on Atmel SAMA5D3 Xplained board, on whi=
ch Yocto 1.5.1 is pre-built. I followed the instructions and got the 1.6.1 =
toolchain <br><pre><a href=3D"http://poky-eglibc-i686-core-image-sato-armv7=
a-vfp-neon-toolchain-1.6.1.sh">poky-eglibc-i686-core-image-sato-armv7a-vfp-=
neon-toolchain-1.6.1.sh</a>.<br><span style=3D"font-family:arial,helvetica,=
sans-serif"><font><br>I can compile the simple HelloWorld program and bina<=
/font></span>ry<span style=3D"font-family:arial,helvetica,sans-serif"><font=
> file is made. Then I copied the binary file</font></span><br></pre><pre>i=
<span style=3D"font-family:arial,helvetica,sans-serif"><font>nto board and =
tried to run it. However, when I changed to the file located directory and =
type <br></font></span></pre><pre><span style=3D"font-family:arial,helvetic=
a,sans-serif"><font>&quot;./Hello&quot;, it returned &quot;sh: ./Hello: No =
such file or directory&quot;. Then I tried &quot;sh Hello&quot;, it gave<br=
></font></span></pre></div><pre><span style=3D"font-family:arial,helvetica,=
sans-serif"><font>me  &quot;Hello: Hello: cannot execute binary file &quot;=
. If I type &quot;file Hello&quot;, it gives &quot;Hello: ELF 32-bit</font>=
</span><br><span style=3D"font-family:arial,helvetica,sans-serif"><font>=C2=
=A0LSB  executable, ARM, EABI5 version 1 (SYSV), dynamically linked (uses s=
hared libs), for GNU/Linux 2.6.16, </font></span><br><span style=3D"font-fa=
mily:arial,helvetica,sans-serif"><font>BuildID[sha1]=3D9933a2d2ce212099c5f9=
902a8e612c1423e136da, not stripped&quot;</font></span>. <span style=3D"font=
-family:arial,helvetica,sans-serif"><font>I googled and someone<br></font><=
/span></pre><pre><span style=3D"font-family:arial,helvetica,sans-serif"><fo=
nt>said the problem may be the toolchain. Then I tried 1.3, 1.5.1 toolchain=
 for arm, but still same <br></font></span></pre><pre><span style=3D"font-f=
amily:arial,helvetica,sans-serif"><font>error. Could you please help me abo=
ut this problem?<br><br></font></span></pre><pre><span style=3D"font-family=
:arial,helvetica,sans-serif"><font>Thank you!<br><br></font></span></pre><p=
re><span style=3D"font-family:arial,helvetica,sans-serif"><font>Kevin.<br><=
/font></span></pre><pre><span style=3D"font-family:arial,helvetica,sans-ser=
if"></span><br></pre></div>

--001a11c332b6c4f79a0504d333e6--
