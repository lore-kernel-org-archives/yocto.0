Return-Path: <dan.florincristian@gmail.com>
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11147E00740
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 23:33:44 -0700 (PDT)
Received: by mail-pd0-f179.google.com with SMTP id x10so2878347pdj.38
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 23:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=eXCUC7I5GIVmlb+mRZPlQccAeIJsQeyR6/fyII7NOR0=;
	b=FYFxsc01Q/Qk/0vulXghlr/9ioT2gQb+MnGmymKL86bS4hyMJYBfTAatg2E/wuYQ14
	3/xWOijcDj/ylxyzQ0BzF6dIXFKPxqbgNvDQ9jfoWjjgU/bufz85J/Bql31/GPlXATjR
	bsidp1K9k466vx3xc7SZ5Du+P88Jw6qK2Fgopyq3mLbI99M2BPqG3H79W/v7tmgjhdin
	aIt9q1+tOfB8SyBu3e2U0SR0LAyAvGSJPxTO6Ap9Ctb6u/iCw20+80i1uYD8Hxid6wpf
	83SuXCY2B19ZSCdqUTG6Mi82t5Ef5X0MzCNBajbmJt3qskkDSVpqImTUltDPCkkolFhR
	2P+w==
MIME-Version: 1.0
X-Received: by 10.66.121.1 with SMTP id lg1mr22695868pab.167.1364279623727;
	Mon, 25 Mar 2013 23:33:43 -0700 (PDT)
Received: by 10.66.134.174 with HTTP; Mon, 25 Mar 2013 23:33:43 -0700 (PDT)
Date: Tue, 26 Mar 2013 08:33:43 +0200
Message-ID: <CABzOdpRcL1L-7xrvuoZFkojQsStR1En1TKmekE_vPVvbYy7ZQQ@mail.gmail.com>
From: Florin Cristian Dan <dan.florincristian@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Yocto Qt!
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
X-List-Received-Date: Tue, 26 Mar 2013 06:33:44 -0000
Content-Type: multipart/alternative; boundary=e89a8ffbab2758c04304d8ce1a1a

--e89a8ffbab2758c04304d8ce1a1a
Content-Type: text/plain; charset=ISO-8859-1

Hi...
I've tried adding this

CORE_IMAGE_EXTRA_INSTALL += "qt4-tools"

 in order to have the qt4 tools, and now, i made a simple qt4 form
aplication with a label ana a test box, nothing special, just for
test...i first tried to compile the program on my target machine

when i enterd qmake "project" i get this : "QMAKESPEC has not been se.
so configuration cannot be deduced.Error processint file..."

Then i tried to compile the program on my PC, i succeded doing that,
and then copied all the folder to a USB and tried to run the
executable on my target, and got this "./project: error thile loading
shared librarie: libQt5Widgets.so.5: cannot open shared object file:
No such file or directory.

What am I missing?

--e89a8ffbab2758c04304d8ce1a1a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi...<div>I&#39;ve tried adding this=A0</div><div><pre style=3D"font-family=
:courier,&#39;courier new&#39;,monospace;font-size:14px;white-space:pre-wra=
p;word-wrap:break-word;margin-top:0px;margin-bottom:0px;line-height:19px;ba=
ckground-color:rgb(255,255,255)">
CORE_IMAGE_EXTRA_INSTALL +=3D &quot;qt4-tools&quot;</pre><pre style=3D"font=
-family:courier,&#39;courier new&#39;,monospace;font-size:14px;white-space:=
pre-wrap;word-wrap:break-word;margin-top:0px;margin-bottom:0px;line-height:=
19px;background-color:rgb(255,255,255)">
<span style=3D"font-family:arial;font-size:small;line-height:normal;white-s=
pace:normal">=A0in order to have the qt4 tools, and now, i made a simple qt=
4 form aplication with a label ana a test box, nothing special, just for te=
st...i first tried to compile the program on my target machine</span></pre>
<pre style=3D"word-wrap:break-word;margin-top:0px;margin-bottom:0px;backgro=
und-color:rgb(255,255,255)"><font face=3D"arial"><span style=3D"white-space=
:normal">when i enterd qmake &quot;project&quot; i get this : &quot;QMAKESP=
EC has not been se. so configuration cannot be deduced.Error processint fil=
e...&quot;</span></font></pre>
<pre style=3D"word-wrap:break-word;margin-top:0px;margin-bottom:0px;backgro=
und-color:rgb(255,255,255)"><font face=3D"arial"><span style=3D"white-space=
:normal">Then i tried to compile the program on my PC, i succeded doing tha=
t, and then copied all the folder to a USB and tried to run the executable =
on my target, and got this &quot;./project: error thile loading shared libr=
arie: libQt5Widgets.so.5: cannot open shared object file: No such file or d=
irectory.</span></font></pre>
<pre style=3D"word-wrap:break-word;margin-top:0px;margin-bottom:0px;backgro=
und-color:rgb(255,255,255)"><font face=3D"arial"><span style=3D"white-space=
:normal">What am I missing?</span></font></pre><pre style=3D"word-wrap:brea=
k-word;margin-top:0px;margin-bottom:0px;background-color:rgb(255,255,255)">
<br></pre></div>

--e89a8ffbab2758c04304d8ce1a1a--
