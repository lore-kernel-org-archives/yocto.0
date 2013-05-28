Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99C78E01483
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 04:46:47 -0700 (PDT)
Received: by mail-wg0-f43.google.com with SMTP id x12so2947936wgg.34
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 04:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=GkMB6B+x2HMpJZL5FArd2y0zAt/gP205LCr3Rk/vRVY=;
	b=c6B9Bp7pfuj6SuXE1UbC6seVKvV5GOVmmCPoGbBkruQCT9Rekun3vIqbmDN+lacoK7
	XeMrp9Eols0SDFRDXNEJDm346jMHCo2lqWM8J/CWLUJ9ntQjDEjTbQidGgjreBjDqaDY
	Wk1lOfCm+Fzl6AfYRxa7KAM8fGiFuKcJ1sTPu51Mx5/dUh9/OZKNHZE5RXXhPB4p0HD7
	LH6Bto7WPqlwoNByHg+BkuG+fjTbo6doiz7ouiROfxOLtF/duTwaIWvueBbWuwdRc4DU
	QIx1vkMCXFt0qnJDiopR4C5+j+F0rlvTIYcv9NwSCkmp5Tq5Iq+LRW5nrp8GzZy5zc1g
	VLLw==
X-Received: by 10.194.95.167 with SMTP id dl7mr12237848wjb.46.1369741606143;
	Tue, 28 May 2013 04:46:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.135.79 with HTTP; Tue, 28 May 2013 04:46:26 -0700 (PDT)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 28 May 2013 13:46:26 +0200
Message-ID: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Hello world-Checksum error
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
X-List-Received-Date: Tue, 28 May 2013 11:46:48 -0000
Content-Type: multipart/alternative; boundary=047d7bb042f2de4bd004ddc5d16e

--047d7bb042f2de4bd004ddc5d16e
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I am trying to add Hello world recipe, everything was going good but after
giving bitbake <target> command it breaks with the following error:

siguser@siguser:~/yocto2013-05-08/poky/build$ *bitbake gumstix-console-image
*

ERROR: ExpansionError during parsing
/home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hello/hello.bb:
Failure expanding expression ${@bb.fetch.get_checksum_file_list(d)} which
triggered exception NoMethodError: Could not find a fetcher which supports
the URL: '${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz'
ERROR: Command execution failed: Exited with 1


*My hello.bb file is*:

DESCRIPTION = "GNU Helloworld application"
SECTION = "examples"
LICENSE = "GPLv3+"
LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
PR = "r0"
SRC_URI = "${ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz"
inherit autotools gettext

I downloaded hello-2.7.tar.gz -> extracted -> ran md5sum against COPYING ->
got md5 -> added that md5 to my hello.bb file.
Any ideas where I am doing wrong?


-- 
Regards,
Zafrullah Syed

--047d7bb042f2de4bd004ddc5d16e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I am trying to add Hello world =
recipe, everything was going good but after giving bitbake &lt;target&gt; c=
ommand it breaks with the following error:</div><div><br clear=3D"all"><div=
>

<div><div>siguser@siguser:~/yocto2013-05-08/poky/build$ <b>bitbake gumstix-=
console-image</b></div></div><div><br></div><div>ERROR: ExpansionError duri=
ng parsing /home/siguser/yocto2013-05-08/poky/meta-bebot/recipes-bebot/hell=
o/<a href=3D"http://hello.bb">hello.bb</a>: Failure expanding expression ${=
@bb.fetch.get_checksum_file_list(d)} which triggered exception NoMethodErro=
r: Could not find a fetcher which supports the URL: &#39;${<a href=3D"ftp:/=
/ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz">ftp://ftp.gnu.org/gnu}/hello/h=
ello-${2.7}.tar.gz</a>&#39;</div>

<div>ERROR: Command execution failed: Exited with 1</div><div><br></div></d=
iv><div style><br></div><div style><b>My <a href=3D"http://hello.bb">hello.=
bb</a> file is</b>:</div><div style><br></div><div style><div>DESCRIPTION =
=3D &quot;GNU Helloworld application&quot;=A0</div>

<div>SECTION =3D &quot;examples&quot;=A0</div><div>LICENSE =3D &quot;GPLv3+=
&quot;=A0</div><div>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd32239b=
cb673463ab874e80d47fae504&quot;=A0</div><div>PR =3D &quot;r0&quot;=A0</div>=
<div>SRC_URI =3D &quot;${<a href=3D"ftp://ftp.gnu.org/gnu}/hello/hello-${2.=
7}.tar.gz">ftp://ftp.gnu.org/gnu}/hello/hello-${2.7}.tar.gz</a>&quot;=A0</d=
iv>

<div>inherit autotools gettext=A0</div><div><br></div><div style>I download=
ed hello-2.7.tar.gz -&gt; extracted -&gt; ran md5sum against COPYING -&gt; =
got md5 -&gt; added that md5 to my <a href=3D"http://hello.bb">hello.bb</a>=
 file.</div>

<div style>Any ideas where I am doing wrong?</div></div><div><br></div><div=
><br></div>-- <br><span style=3D"font-family:arial,sans-serif;font-size:13p=
x;border-collapse:collapse;color:rgb(136,136,136)">Regards,<br>Zafrullah Sy=
ed</span><div>

<font color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-co=
llapse:collapse"><br></span></font></div>
</div></div>

--047d7bb042f2de4bd004ddc5d16e--
