Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BCF4E0073A; Fri, 23 May 2014 07:45:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f46.google.com (unknown [209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41675E00716
	for <yocto@yoctoproject.org>; Fri, 23 May 2014 07:45:36 -0700 (PDT)
Received: by mail-qg0-f46.google.com with SMTP id q108so8204655qgd.33
	for <yocto@yoctoproject.org>; Fri, 23 May 2014 07:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=tsUgXm/skXvK4fi/ZDyz2s9R7Tn9ww3x6fUn5nD/3NI=;
	b=GgfLa6v+8+aK9UD7y7Wd67xIYmkcocJyTw1cZsPaAxWsU3d+5KvTOV5svScn4fRlIr
	VGNbwhhH6BLMQaKzWGdnsJRvOirK5S6YNSnqfAvSj5zqGN1ZAwpYyX8OhxOLJdr59irS
	m+dVMd8CTgDFS5P6mLClP6hVGkJ11/DmlXFWpgTonTG/YawcfFmcE7/s6bHDqD2kLwiS
	q7jnDFETYspocvsL8qroZNq97ivM+G6v50CB5lcNH/TClOL73LovU8epSgvcKRr5XrmE
	E6xdQ/snS5ipqu1ukHCNH4xwz4koWYkqQ7RZ4B++b+vMYukmuwvUUuLiUkfkghJCOtEk
	JgGg==
X-Received: by 10.224.55.83 with SMTP id t19mr7724649qag.42.1400856335966;
	Fri, 23 May 2014 07:45:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Fri, 23 May 2014 07:45:15 -0700 (PDT)
In-Reply-To: <CAMCfZKHhg9NzCr-DMyX2PAo4qzSYmgiiwwzrukit0T1u+G6LcQ@mail.gmail.com>
References: <CAMCfZKHhg9NzCr-DMyX2PAo4qzSYmgiiwwzrukit0T1u+G6LcQ@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 23 May 2014 11:45:15 -0300
Message-ID: <CAMCfZKH2nO4gt+0bkghcx=OS20AR9mnrnEOuQB6pH5G6ZbaVLg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting default system python version
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
X-List-Received-Date: Fri, 23 May 2014 14:45:40 -0000
Content-Type: multipart/alternative; boundary=047d7b5daf78496b4404fa12486b

--047d7b5daf78496b4404fa12486b
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Folks,

I'm having issues on python3-distribute compile (daisy branch):

Traceback (most recent call last):
|   File "setup.py", line 34, in <module>
|     util.run_2to3(outfiles_2to3)
|   File
"/<snip>/tmp/sysroots/x86_64-linux/usr/lib/python3.3/distutils/util.py",
line 507, in run_2to3
|     from lib2to3.refactor import RefactoringTool, get_fixers_from_package
|   File
"<snip>/tmp/sysroots/x86_64-linux/usr/lib/python3.3/lib2to3/refactor.py",
line 19, in <module>
|     import logging
|   File
"/<snip>/tmp/sysroots/x86_64-linux/usr/lib/python3.3/logging/__init__.py",
line 26, in <module>
|     import sys, os, time, io, traceback, warnings, weakref
| ImportError: No module named 'time'
| ERROR: python3 setup.py build_ext execution failed.
| WARNING: exit code 1 from a shell command.

Any thoughts?



Abra=E7os,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=3Dassinatura=
_diego&utm_medium=3De-mail&utm_campaign=3DAssinatura%20Email%20Diego>

/*long live rock 'n roll*/


On Fri, May 23, 2014 at 11:29 AM, Diego Sueiro <diego.sueiro@gmail.com>wrot=
e:

> Folks,
>
> I did not fount it on manuals.
> How can I set the default system python version for an image?
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=3Dassinatu=
ra_diego&utm_medium=3De-mail&utm_campaign=3DAssinatura%20Email%20Diego>
>
> /*long live rock 'n roll*/
>

--047d7b5daf78496b4404fa12486b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Folks,<div><br></div><div>I&#39;m having issues on python3=
-distribute compile (daisy branch):</div><div><br></div><div><blockquote st=
yle=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><div>Traceback=
 (most recent call last):</div>

<div>| =A0 File &quot;setup.py&quot;, line 34, in &lt;module&gt;</div><div>=
| =A0 =A0 util.run_2to3(outfiles_2to3)</div><div>| =A0 File &quot;/&lt;snip=
&gt;/tmp/sysroots/x86_64-linux/usr/lib/python3.3/distutils/util.py&quot;, l=
ine 507, in run_2to3</div>

<div>| =A0 =A0 from lib2to3.refactor import RefactoringTool, get_fixers_fro=
m_package</div><div>| =A0 File &quot;&lt;snip&gt;/tmp/sysroots/x86_64-linux=
/usr/lib/python3.3/lib2to3/refactor.py&quot;, line 19, in &lt;module&gt;</d=
iv>

<div>| =A0 =A0 import logging</div><div>| =A0 File &quot;/&lt;snip&gt;/tmp/=
sysroots/x86_64-linux/usr/lib/python3.3/logging/__init__.py&quot;, line 26,=
 in &lt;module&gt;</div><div>| =A0 =A0 import sys, os, time, io, traceback,=
 warnings, weakref</div>

<div>| ImportError: No module named &#39;time&#39;</div><div>| ERROR: pytho=
n3 setup.py build_ext execution failed.</div><div>| WARNING: exit code 1 fr=
om a shell command.</div></div><div><br></div></blockquote>Any thoughts?</d=
iv>

<div><br><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0=
px"><div><br></div></blockquote></div><div class=3D"gmail_extra"><br clear=
=3D"all"><div><div dir=3D"ltr"><div>Abra=E7os,</div><div><br></div>--<br>*d=
S<br>Diego Sueiro<br>

<br>Administrador do Embarcados<br><a href=3D"http://www.embarcados.com.br/=
?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_campaign=3DA=
ssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.com.br</a><br><=
br>/*long live rock &#39;n roll*/<br>

</div></div>
<br><br><div class=3D"gmail_quote">On Fri, May 23, 2014 at 11:29 AM, Diego =
Sueiro <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" targ=
et=3D"_blank">diego.sueiro@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">

<div dir=3D"ltr"><div>Folks,</div><div><br></div><div>I did not fount it on=
 manuals.</div><div>How can I set the default system python version for an =
image?</div><div><br></div><br clear=3D"all"><div><div dir=3D"ltr"><div>Reg=
ards,</div>


<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados=
<br><a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&=
amp;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" targ=
et=3D"_blank">www.embarcados.com.br</a><br>


<br>/*long live rock &#39;n roll*/<br></div></div>
</div>
</blockquote></div><br></div></div>

--047d7b5daf78496b4404fa12486b--
