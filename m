Return-Path: <ncrypticus@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70373E0078E; Fri, 12 Sep 2014 09:57:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ncrypticus[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1EE0E006C5
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 09:57:26 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id ex7so981784wid.15
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 09:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=5WwjLIIMRaORYfprozjTEmf6vzp57sCdMXiDl8Ih5R0=;
	b=R5N9CEqJdwZsViBduO5ZsP64DQNhSFEQ349812zRgYy/SIZk+aMHw4iCitjAv0Zf9g
	J5yJRc+LvQ4vGPkKyaesAretSuJr3n0Zz5XyaXT8sReM35CwnnJAaNf9MSeNIIk+h0Px
	/NU0DupuTDKq7y+yR7LPJl7H7sjQZchltw2Gh5Pr/155CIXudBmNWQKQDTENnpsVKnng
	pXmyX3ONRoNqMhPkBDGRuGgQlLZFmcb51iWghceURlQwcQPbKzbF9XSTY45zW21DL5NW
	szs0UNrBiV/iJlTUrIFgnHkTnI8vcqlSvEO03X1RQTrvN5UYFCUwgVOfPQYMclCdJN4/
	BbPg==
MIME-Version: 1.0
X-Received: by 10.194.71.11 with SMTP id q11mr3356389wju.33.1410541045472;
	Fri, 12 Sep 2014 09:57:25 -0700 (PDT)
Received: by 10.194.10.202 with HTTP; Fri, 12 Sep 2014 09:57:25 -0700 (PDT)
In-Reply-To: <CAMSG=xXz_1rwzc-gdfNNeMGx3cx051X+sfnCBEZMPbvgryvH6A@mail.gmail.com>
References: <CAMSG=xXz_1rwzc-gdfNNeMGx3cx051X+sfnCBEZMPbvgryvH6A@mail.gmail.com>
Date: Fri, 12 Sep 2014 09:57:25 -0700
Message-ID: <CAMSG=xXmfOnQJwkQ5qHsSendSRX+xSHRH94jc5kJKGqqNV0gAg@mail.gmail.com>
From: Nemicolopterus Crypticus <ncrypticus@gmail.com>
To: yocto@mindchasers.com, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Specified toolchain directory does not contain a toolchain generated with meta-ide-support.
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
X-List-Received-Date: Fri, 12 Sep 2014 16:57:36 -0000
Content-Type: multipart/alternative; boundary=047d7bf0cf64f4e93f0502e12d54

--047d7bf0cf64f4e93f0502e12d54
Content-Type: text/plain; charset=UTF-8

>Just double checking that you are specifying the "toolchain root location"
as your top level build directory (the one above /conf/local.conf - the
directory where you run bitbake).

Yes that occurred to me too, since the phrasing is a bit unclear. I tried
both.  Here's a depiction of my directory structure:

oe-core
     |---- build
          |---- conf (including local.conf)
          |---- downloads
          |---- tmp-eglibc
             |---- environment-setup-blahblah
             |---- <etc.>
          |---- <etcc>
     |---- bitbake
     |---- gcc-toolchain
     |---- meta
     |---- <etc. lots more>

I tried with the root at build, and in build/tmp-eglibc with no luck.

Is it possible the toolchain didn't get built? I'm just wondering since
that's what the error claims. Is there any way to confirm that the
toolchain did indeed get built?  I ran bitbake meta-ide-toolchain, but our
system is large and I'm not familiar with every aspect of it. Is it
possible some other settings elsewhere got changed in a way that would
prevent the toolchain from building?

--047d7bf0cf64f4e93f0502e12d54
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><tt>&gt;Just double checking that you are specifying =
the &quot;toolchain root=20
</tt><tt>location&quot; as your top level build directory (the one above=20
</tt><tt>/conf/local.conf - the directory where you run bitbake).<br><br></=
tt></div><tt>Yes that occurred to me too, since the phrasing is a bit uncle=
ar. I tried both. =C2=A0Here&#39;s a depiction of my directory structure:<b=
r><br></tt><div><font face=3D"monospace">oe-core</font></div><div><font fac=
e=3D"monospace">=C2=A0 =C2=A0 =C2=A0|---- build</font></div><div><font face=
=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |---- conf (including loc=
al.conf)</font></div><div><span style=3D"font-family:monospace">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 |---- downloads</span><font face=3D"monospace"><br=
></font></div><div><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |---- tmp-eglibc</span><span style=3D"font-family:monospa=
ce"><br></span></div><div><span style=3D"font-family:monospace">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|---- environment-setup-blahblah</spa=
n><span style=3D"font-family:monospace"><br></span></div><div><span style=
=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
|---- &lt;etc.&gt;</span><span style=3D"font-family:monospace"><br></span><=
/div><div><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 |---- &lt;etcc&gt;</span><span style=3D"font-family:monospace"><br>=
</span></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0|---- bitbak=
e</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0|---- gcc-t=
oolchain</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0|---=
- meta</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0|---- =
&lt;etc. lots more&gt;</font></div><div><font face=3D"monospace"><br></font=
></div><div><font face=3D"monospace">I tried with the root at build, and in=
 build/tmp-eglibc with no luck.</font></div><div><font face=3D"monospace"><=
br></font></div><div><font face=3D"monospace">Is it possible the toolchain =
didn&#39;t get built? I&#39;m just wondering since that&#39;s what the erro=
r claims. Is there any way to confirm that the toolchain did indeed get bui=
lt? =C2=A0I ran bitbake meta-ide-toolchain, but our system is large and I&#=
39;m not familiar with every aspect of it. Is it possible some other settin=
gs elsewhere got changed in a way that would prevent the toolchain from bui=
lding?</font></div></div>

--047d7bf0cf64f4e93f0502e12d54--
