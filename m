Return-Path: <dario.dabronzo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BAF9E00B20; Tue,  3 Jun 2014 13:20:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dario.dabronzo[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
Received: from mail-yk0-f181.google.com (mail-yk0-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C5F6E0073D
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 13:20:21 -0700 (PDT)
Received: by mail-yk0-f181.google.com with SMTP id 131so5281683ykp.12
	for <yocto@yoctoproject.org>; Tue, 03 Jun 2014 13:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=4c5VO06VIHVWNjejA089/K+iKRV6ahxYPwOv5hrR0po=;
	b=o+0cdtdxNCyUCPHG8ajIRUUe+JXIPRXeTwzAeG+7cBn5xHGRoh8aGlO7WfmQDqLR/v
	UlW7IiK2nCKtmgt+C7xC1Czt9KDo6AOADaVc3iXqNvjT/Wv2edXfzNWcHirDDlX2Z+fL
	jL/63Cdrjk0UbnN+/cxxWC3etUE3/kh/CPAKtXHv3ml/GigVlhMtMXHjtgBjzkKLCmHM
	/dD5RIXt6+IHAuGKDvhK5n05DOnIa7K3IefJs8jR93FAng6omn7+zvPKxwtWU3/jNtNY
	VKDaslseNKA8L8alXMc5SzrPgf4jzWvw/bqw7He/4TRltcJDbpDBHBriyqxILhw4px/P
	b4ng==
MIME-Version: 1.0
X-Received: by 10.236.36.45 with SMTP id v33mr17995113yha.129.1401826821425;
	Tue, 03 Jun 2014 13:20:21 -0700 (PDT)
Received: by 10.170.123.17 with HTTP; Tue, 3 Jun 2014 13:20:21 -0700 (PDT)
Date: Tue, 3 Jun 2014 22:20:21 +0200
Message-ID: <CALDaZEGuW2_-_J8LMj7vd_zf4cJxESUNX9gUhKV_oe7+wktGyw@mail.gmail.com>
From: "Dario D'Abronzo" <dario.dabronzo@gmail.com>
To: yocto@yoctoproject.org
Subject: Syntax error
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
X-List-Received-Date: Tue, 03 Jun 2014 20:20:28 -0000
Content-Type: multipart/alternative; boundary=089e0160bc68ba4cd604faf43d0f

--089e0160bc68ba4cd604faf43d0f
Content-Type: text/plain; charset=UTF-8

Hi everybody!

Dears, my name is Dario D'Abronzo and I'm working with an nvidia tegra 3
SOM.
I've already built the image with the instructions of the developer and I
succeded with oe-core.

Now I'm trying to build an image importing the BSP in Yocto and compiling
trough poky and HOB.
When I add the layer from the manufacturer in HOB (meta toradex) I get a
general error with no explaination, and when I try to bitbake I get:

NOTE: Error during finalise of
/home/ddalnx/poky/meta-toradex/recipes/images/console-trdx-image.bb
NOTE: Error during finalise of
/home/ddalnx/poky/meta-toradex/recipes/images/qt4e-demo-image.bb
NOTE: Error during finalise of
/home/ddalnx/poky/meta-toradex/recipes/images/angstrom-qt-x11-image.bb
NOTE: Error during finalise of
/home/ddalnx/poky/meta-toradex/recipes/images/angstrom-lxde-image.bb
ERROR: ExpansionError during parsing
/home/ddalnx/poky/meta-toradex/recipes/images/console-trdx-image.bb:
Failure expanding variable do_rootfs: SyntaxError: invalid syntax
(<string>, line 2)

the BB file begin with:
#Angstrom image
DESCRIPTION = "Image booting to a console"

So the line 2 is just the description code.

Why am I failing bitbaking from ~/poky/build/  ??
I'm giving exactly the same code as oe-core:

ddalnx@ddassgdeb:~$ cd poky/
ddalnx@ddassgdeb:~/poky$ source oe-init-build-env
.
. etc ...
.
ddalnx@ddassgdeb:~/poky/build$ bitbake angstrom-qt-x11-image

if you're interested on analyzing the source I gitted from
http://git.toradex.com/gitweb specifically from gt://
git.toradex.com/gitweb/meta-toradex.git
PS. I verified that I'm using the correct python version and I do, it's the
v. 2.7.3 and the bitbake folder is unaltered in both oe-core and in poky
folder.


Many thanks for your precious help,
Kind Regards,
Dario.

--089e0160bc68ba4cd604faf43d0f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everybody!<br><br>Dears, my name is Dario D&#39;Abronzo=
 and I&#39;m working with an nvidia tegra 3 SOM.<br>I&#39;ve already built =
the image with the instructions of the developer and I succeded with oe-cor=
e.<br>
<br>Now I&#39;m trying to build an image importing the BSP in Yocto and com=
piling trough poky and HOB.<br>When I add the layer from the manufacturer i=
n HOB (meta toradex) I get a general error with no explaination, and when I=
 try to bitbake I get:<br>
<br><div><div>NOTE: Error during finalise of /home/ddalnx/poky/meta-toradex=
/recipes/images/<a href=3D"http://console-trdx-image.bb">console-trdx-image=
.bb</a></div><div>NOTE: Error during finalise of /home/ddalnx/poky/meta-tor=
adex/recipes/images/<a href=3D"http://qt4e-demo-image.bb">qt4e-demo-image.b=
b</a></div>
<div>NOTE: Error during finalise of /home/ddalnx/poky/meta-toradex/recipes/=
images/<a href=3D"http://angstrom-qt-x11-image.bb">angstrom-qt-x11-image.bb=
</a></div><div>NOTE: Error during finalise of /home/ddalnx/poky/meta-torade=
x/recipes/images/<a href=3D"http://angstrom-lxde-image.bb">angstrom-lxde-im=
age.bb</a></div>
<div>ERROR: ExpansionError during parsing /home/ddalnx/poky/meta-toradex/re=
cipes/images/<a href=3D"http://console-trdx-image.bb">console-trdx-image.bb=
</a>: Failure expanding variable do_rootfs: SyntaxError: invalid syntax (&l=
t;string&gt;, line 2)</div>
</div><div><br></div><div>the BB file begin with:<br><div>#Angstrom image</=
div><div>DESCRIPTION =3D &quot;Image booting to a console&quot;<br><br>So t=
he line 2 is just the description code.<br><br>Why am I failing bitbaking f=
rom ~/poky/build/ =C2=A0??<br>
I&#39;m giving exactly the same code as oe-core:<br><br><div>ddalnx@ddassgd=
eb:~$ cd poky/</div><div>ddalnx@ddassgdeb:~/poky$ source oe-init-build-env<=
/div><div>.</div><div>. etc ...</div><div>.</div><div>ddalnx@ddassgdeb:~/po=
ky/build$ bitbake angstrom-qt-x11-image</div>
</div></div><div><br></div><div>if you&#39;re interested on analyzing the s=
ource I gitted from=C2=A0<a href=3D"http://git.toradex.com/gitweb">http://g=
it.toradex.com/gitweb</a> specifically from=C2=A0gt://<a href=3D"http://git=
.toradex.com/gitweb/meta-toradex.git">git.toradex.com/gitweb/meta-toradex.g=
it</a><br>
PS. I verified that I&#39;m using the correct python version and I do, it&#=
39;s the v. 2.7.3 and the bitbake folder is unaltered in both oe-core and i=
n poky folder.<br><br><br>Many thanks for your precious help,<br>Kind Regar=
ds,=C2=A0<br>
Dario.</div></div>

--089e0160bc68ba4cd604faf43d0f--
