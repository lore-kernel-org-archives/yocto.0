Return-Path: <actiononmail@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74843E00814; Thu,  7 Aug 2014 06:28:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (actiononmail[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37111E00801
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 06:27:55 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id lf12so6244644vcb.12
	for <yocto@yoctoproject.org>; Thu, 07 Aug 2014 06:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=SSW4jFNebo0MkVQD0YUuffpj3BlgUxqY0dpBc9in6Wk=;
	b=A7R8cvZTjYZZcgGDBeGTCXNFif//q459T3VDVqiSO9H8JEy4ZSMoiTeOdkXGpwV84F
	ldAS1SuolpBLrtToKPgW3S9wdCZV9JmNR9pKRC2YOM5O3yLDeQOQyAbC47bdVpTdBjuK
	i3hKJalMp9wrnoiKP0f0gd6MIagVNDuj8zRze/kILl4qPlcr1ghE3daFXklJkrYPtr3g
	uHO0VsFgdDc3kGEZ9zsfjbsPfpFzmaOxEFvSFOubnOc5DArr8xka9r1NKU368HRTYBeW
	2ypddznC9bQecrNO/217qhgL/avtgKgcyOSxvj4/WgyLUxIJ87XaSn2Pyg27FGV77omD
	xs8A==
X-Received: by 10.52.106.198 with SMTP id gw6mr1955731vdb.23.1407418074770;
	Thu, 07 Aug 2014 06:27:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.248.132 with HTTP; Thu, 7 Aug 2014 06:27:34 -0700 (PDT)
From: Akash Bhatnagar <actiononmail@gmail.com>
Date: Thu, 7 Aug 2014 18:57:34 +0530
Message-ID: <CAJqwu=86hN4VMa+Wg3Xt-zGwksf80uFhqdzxE=GHqepV0ytifw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Unable to use Automatic PR Service (Yocto Daisy)
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
X-List-Received-Date: Thu, 07 Aug 2014 13:28:01 -0000
Content-Type: multipart/alternative; boundary=bcaec54857bc65b45d05000a0e00

--bcaec54857bc65b45d05000a0e00
Content-Type: text/plain; charset=UTF-8

HI,

I am new on Yocto Project and trying to use it in our company. I am able to
generate custom images using Yocto Daisy Version.

Now, I am stuck with getting worked with the Automatic PR service. Using
the wiki page https://wiki.yoctoproject.org/wiki/PR_Service I am able to
set the PR Server and local.conf.

Now  I am testing whether my package (in Debian format) able to get new
Revision ,each time a git commit happens.The commands I ran are as follows:-

A) Starting the Prserver "bitbake-prserv --host=ip --port=5656"

1) git commit my file to change the commit ID
2) bitbake my_package -c cleanall
3) bitbake my_package
4) Verify the package name :-my_package_1.0-r0.0.deb <--This name remains
as it is

In the Build History I verified whether Yocto is taking the new changes :-

cat latest:
PV = 1.0
PR = r0
PKGR = r0.0
RPROVIDES =

git log -p :
@@ -1,2 +1,2 @@
# SRCREV = "${AUTOREV}"
-SRCREV = "be0e7a60527259451b4600b441113608b8c5ca90"
+SRCREV = "4fedd520432d1856b6573786f6fdfb2d54af1753"

Still PR is not bumping up.Please throw some light over it.

--bcaec54857bc65b45d05000a0e00
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div>HI,=
<br><br></div>I am new on Yocto Project and trying to use it in our company=
. I am able to generate custom images using Yocto Daisy Version.<br><br></d=
iv>

Now, I am stuck with getting worked with the Automatic PR service. Using th=
e wiki page <a href=3D"https://wiki.yoctoproject.org/wiki/PR_Service">https=
://wiki.yoctoproject.org/wiki/PR_Service</a> I am able to set the PR Server=
 and local.conf.<br>

<br></div>Now=C2=A0 I am testing whether my package (in Debian format) able=
 to get new Revision ,each time a git commit happens.The commands I ran are=
 as follows:-<br></div><div><br>A) Starting the Prserver &quot;bitbake-prse=
rv --host=3Dip --port=3D5656&quot;<br>

<br></div>1) git commit my file to change the commit ID<br></div>2) bitbake=
 my_package -c cleanall<br></div>3) bitbake my_package<br></div>4) Verify t=
he package name :-my_package_1.0-r0.0.deb &lt;--This name remains as it is<=
br>

<br></div>In the Build History I verified whether Yocto is taking the new c=
hanges :-<br><br></div>cat latest: <br>PV =3D 1.0
<br>PR =3D r0
<br>PKGR =3D r0.0
<br>RPROVIDES =3D=20
<br><br></div>git log -p :<br>@@ -1,2 +1,2 @@
 <br># SRCREV =3D &quot;${AUTOREV}&quot;
<br>-SRCREV =3D &quot;be0e7a60527259451b4600b441113608b8c5ca90&quot;
<br>+SRCREV =3D &quot;4fedd520432d1856b6573786f6fdfb2d54af1753&quot;
<br><br></div>Still PR is not bumping up.Please throw some light over it.<b=
r><br><br><br></div>

--bcaec54857bc65b45d05000a0e00--
