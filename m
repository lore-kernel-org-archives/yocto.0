Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FA27E013D6
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 03:30:37 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id l18so65386wgh.31
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 03:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=Ivia9XHYUCkvVlaStC5YCdCwIEClYrBp6oO111VozkA=;
	b=xzuYAcQLFd0kFh4tl2LSVat6ZqwBLVoS4fjxB/nzUTMjr/K76ggh2Q9Y0UkBX86mFb
	2tXl0tHQgiJmLDOJDWVaMgNNue3daZDlrHi3fxMBMaoh3ZvNHJmH16jJd8o/YjtkpCli
	/gLLS+XjsNugohwoy/MxXpuuQ3biLa9L7eOscib1I0Q1s8RzAWZUlgQvWyu0XrgjdE95
	0c/8TA+6tJHiLgM1+duKm4h7f4urNO4iauuMU8l+PqKr1Eie36o99c701Sjd1HO7OOMF
	fLUUCvUhg8VeKhQtwBAMk8fO6O9nIf1wiCCS9YwlEPbEW0cSfnDZBwP3IlxTf4vB6fFf
	SymQ==
X-Received: by 10.180.19.67 with SMTP id c3mr9341322wie.2.1377167436782; Thu,
	22 Aug 2013 03:30:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.69 with HTTP; Thu, 22 Aug 2013 03:30:16 -0700 (PDT)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Thu, 22 Aug 2013 12:30:16 +0200
Message-ID: <CAAGt+t0w9Rtia4vVJujgjTfmEU709WyhjCYSPP7PThMN+vpOdg@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: bitbake with cmake recipe
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
X-List-Received-Date: Thu, 22 Aug 2013 10:30:41 -0000
Content-Type: multipart/alternative; boundary=bcaec53d5ec5dda1d804e486c785

--bcaec53d5ec5dda1d804e486c785
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I am trying to integrate my own package which should use cmake.
I regularly use do_compile() and do_install().

when try this with cmake it fails with error: unparsed line: 'do_compile()'
.

Should I follow this guide in writing my own recipe with cmake?
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/cmake/cmake_2.8.11.2.bb

or it would be helpful if anyone can give me some hints regarding writing
recipes with cmake.

Thanks & Regards,
Zafrullah Syed

--bcaec53d5ec5dda1d804e486c785
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div>I am trying to integrate =
my own package which should use cmake.<br><div>I regularly use=A0<span styl=
e=3D"background-color:rgb(248,248,248);color:rgb(0,0,0);font-family:Consola=
s,&#39;Bitstream Vera Sans Mono&#39;,&#39;Courier New&#39;,Courier,monospac=
e;font-size:12px;line-height:13.1875px;white-space:pre">do_compile() and </=
span><span style=3D"background-color:rgb(248,248,248);color:rgb(0,0,0);font=
-family:Consolas,&#39;Bitstream Vera Sans Mono&#39;,&#39;Courier New&#39;,C=
ourier,monospace;font-size:12px;line-height:13.1875px;white-space:pre">do_i=
nstall().</span></div>

<div><br class=3D"">when try this with cmake it fails with error: unparsed =
line: &#39;do_compile()&#39; .<span style=3D"background-color:rgb(248,248,2=
48);color:rgb(0,0,0);font-family:Consolas,&#39;Bitstream Vera Sans Mono&#39=
;,&#39;Courier New&#39;,Courier,monospace;font-size:12px;line-height:13.187=
5px;white-space:pre"><br>

</span></div><div><br></div><div>Should I follow this guide in writing my o=
wn recipe with cmake? =A0<a href=3D"http://git.yoctoproject.org/cgit/cgit.c=
gi/poky/tree/meta/recipes-devtools/cmake/cmake_2.8.11.2.bb">http://git.yoct=
oproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/cmake/cmake_2.8.=
11.2.bb</a></div>

<div><br></div><div><div>or it would be helpful if anyone can give me some =
hints regarding writing recipes with cmake.</div><div><br></div><div>Thanks=
 &amp; Regards,</div><div>Zafrullah Syed</div>
</div></div>

--bcaec53d5ec5dda1d804e486c785--
