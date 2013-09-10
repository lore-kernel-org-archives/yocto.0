Return-Path: <arunkr.linux@gmail.com>
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03D09E01579
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 01:41:50 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id ia10so4653086vcb.6
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 01:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=oP2jc9PQGQgnIJRwnS6ukVg/1uJkty/CMKKUEmzK7JY=;
	b=1Apo+0zMzKQVpPuNyQgSYQEoLqWnAhWm8prgg08y3A6UkdjdPohDxbixq5+0Zfw7pM
	dpj4QWo04nA+pAYBie7MHX81ADso7uNV7zCJFQwM8YtvCSrCpSaZQPW+DUSgXCzqAR0F
	T8IWWlPMYyFmeBB4hB7h4SqiTDax5UDJLeGhSAo8KZ9MdWfol/hRyTX1vfo7zhYIxaGa
	R3o7ZaqaYXnE6DAbtiIDajjNBmx765w+P1cdyPUeX73Q3pvIhUt1XCM+BHWQsF2Z213t
	Nxiko4xnjGon3KT4JJMysGmfPdH+83L4qOnM3Rlp4gWq9sg2uLAmAwzWQPEQeGfsNkc6
	EtOg==
MIME-Version: 1.0
X-Received: by 10.52.118.73 with SMTP id kk9mr18199932vdb.13.1378802510040;
	Tue, 10 Sep 2013 01:41:50 -0700 (PDT)
Received: by 10.58.198.167 with HTTP; Tue, 10 Sep 2013 01:41:50 -0700 (PDT)
Date: Tue, 10 Sep 2013 14:11:50 +0530
Message-ID: <CABG0-3x2xXJLTPd81F=AtnL=VB_4kRf90krdDOV2nOWug-FCwA@mail.gmail.com>
From: arun kumar <arunkr.linux@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: error in : $ runqemu qemux86 ( Arun M Kumar)
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
X-List-Received-Date: Tue, 10 Sep 2013 08:41:55 -0000
Content-Type: multipart/alternative; boundary=089e0122f0f2d3960f04e60379dc

--089e0122f0f2d3960f04e60379dc
Content-Type: text/plain; charset=ISO-8859-1

 I have built my first image with the Yocto Project build environment, I

have the image ready.


when I do.


$ runqemu qemux86


I get the following error.

------------------------------------------------------------------------------------------------------

There was an error running bitbake to determine TMPDIR

Here is the output from 'bitbake -e':

ERROR: Unable to parse conf/bitbake.conf: conf/bitbake.conf:18: unparsed

line: 'xport exec_prefix = "/usr"'

_____________________________________________________________


I have figured out the error, with some help from IRC channels.
The mistake was

I somehow corrupted my  " poky/meta/conf/bitbake.conf" file.

deleted the letter 'e' from the string "export".

Thats all that was wrong. Corrected it, now everything working fine.

--089e0122f0f2d3960f04e60379dc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"> I have built my first image with the Yocto Project build =
environment, I<br>
<br>
have the image ready.<br>
<br>
<br>
when I do.<br>
<br>
<br>
$ runqemu qemux86<br>
<br>
<br>
I get the following error.<br><br>-----------------------------------------=
-------------------------------------------------------------<br><div id=3D=
":r9">
<br>
There was an error running bitbake to determine TMPDIR<br>
<br>
Here is the output from &#39;bitbake -e&#39;:<br>
<br>
ERROR: Unable to parse conf/bitbake.conf: conf/bitbake.conf:18: unparsed<br=
>
<br>
line: &#39;xport exec_prefix =3D &quot;/usr&quot;&#39;<br>
<br>
_____________________________________________________________<br>
<br><br></div><div id=3D":r9">I have figured out the error, with some help =
from IRC channels.<br></div><div id=3D":r9">The mistake was<br><br></div><d=
iv id=3D":r9">I somehow corrupted my=A0 &quot; poky/meta/conf/bitbake.conf&=
quot; file.<br>
<br></div><div id=3D":r9">deleted the letter &#39;e&#39; from the string &q=
uot;export&quot;.<br><br></div><div id=3D":r9">Thats all that was wrong. Co=
rrected it, now everything working fine.<br>
</div><br>
</div>

--089e0122f0f2d3960f04e60379dc--
