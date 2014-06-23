Return-Path: <pourya.shirazian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5BC6E00283; Mon, 23 Jun 2014 15:57:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pourya.shirazian[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.54 listed in list.dnswl.org]
Received: from mail-pb0-f54.google.com (mail-pb0-f54.google.com
	[209.85.160.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7717FE0027B
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 15:57:09 -0700 (PDT)
Received: by mail-pb0-f54.google.com with SMTP id un15so6452732pbc.27
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 15:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=iEuzPE0ilyMFbObdNPYRsNLtR1fqd0XWWKbWi1aIQ/4=;
	b=y4viRTA8r9nG7ucqNee9detgEZS/0E1oIVVvh7bhqaKvlBNBYsMhvl3NNhURDDZ1OS
	/D4vkEeHwqyeDV3n3dr6XHYgf7Rf6sY50QXRU3EPcZd6G+zbz3XzFyoWsKSyvy/xvmkd
	8ARZN+qRcOzBIPW/oxQK+dkxFhCsCW9LZk9w5gwbaaYj+RkzIQudHmPrj34qvU7o5oge
	koBB5YpZM40iHwqBmdtZVWscXaK3yNnJz4K4gNc065MSVyP2SmqyJs79ivfg+/zY0sqz
	Y5cnCDCs4qNiEpTgkoKFIPInnAsv4kc0yzeuRSbU+MwryBTT+d4tYyOoNE/Gw7ObdPQ3
	wMFw==
MIME-Version: 1.0
X-Received: by 10.66.242.171 with SMTP id wr11mr32726327pac.111.1403564228819; 
	Mon, 23 Jun 2014 15:57:08 -0700 (PDT)
Received: by 10.70.26.99 with HTTP; Mon, 23 Jun 2014 15:57:08 -0700 (PDT)
Date: Mon, 23 Jun 2014 15:57:08 -0700
Message-ID: <CAFjJ7KbgxzjNu4ScnDHhHTYv8rft_AKrp72nj-+zT6JOdKE-mA@mail.gmail.com>
From: Pourya Shirazian <pourya.shirazian@gmail.com>
To: yocto@yoctoproject.org
Subject: SRC_URI issue in recipe writing
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
X-List-Received-Date: Mon, 23 Jun 2014 22:57:13 -0000
Content-Type: multipart/alternative; boundary=047d7b15ac3f47412a04fc88c3de

--047d7b15ac3f47412a04fc88c3de
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

When writing a recipe the SRC_URI is supposed to accept git repository
addresses but the following fails to build for me:

1. With http URL: It also does not allow my credentials to be embedded in
the URI

SRC_URI =3D "http://mygitserver.net/myproject.git;protocol=3Dhttp;branch=3D=
master
<http://s624aalp0001.usfdc.corpintra.net/UI-SW/hupf2020-frontend.git;protoc=
ol=3Dhttp;branch=3Dmaster>
"

Exception: ExpansionError: Failure expanding variable SRCPV, expression was
${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetcher
failure: SRCREV was used yet no valid SCM was found in SRC_URI

ERROR: Failed to parse recipe: mycoolrecipe.bb


2. With ssh URL

SRC_URI =3D "git@mygitserver.net <git@s624aalp0001.usfdc.corpintra.net>
:me/myproject.git;protocol=3Dssh;branch=3Dmaster"

Exception: ExpansionError: Failure expanding variable SRCPV, expression was
${@bb.fetch2.get_srcrev(d)} which triggered exception MalformedUrl: The
URL: "git@mygitserver.net
<git@s624aalp0001.usfdc.corpintra.net>:me/myproject.git;protocol=3Dssh;bran=
ch=3Dmaster"
is
invalid and cannot be interpreted



After checking the documentation it seems it only expects the git protocol
only and it worked in this example, however, our internal enterprise github
only supports http and ssh URIs.


SRC_URI =3D "git://
github.com/GraphicsEmpire/gridvisualization.git;branch=3Dmaster=E2=80=9D


What do you guys suggest?

--047d7b15ac3f47412a04fc88c3de
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">







<p class=3D"">Hi,</p><p class=3D"">When writing a recipe the SRC_URI is sup=
posed to accept git repository addresses but the following fails to build f=
or me:</p>
<p class=3D"">1. With http URL: It also does not allow my credentials to be=
 embedded in the URI</p>
<p class=3D""><span class=3D"">SRC_URI =3D &quot;<a href=3D"http://s624aalp=
0001.usfdc.corpintra.net/UI-SW/hupf2020-frontend.git;protocol=3Dhttp;branch=
=3Dmaster"><span class=3D"">http://mygitserver.net/myproject.git;protocol=
=3Dhttp;branch=3Dmaster</span></a>&quot;</span></p>

<p class=3D"">Exception: ExpansionError: Failure expanding variable SRCPV, =
expression was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchE=
rror: Fetcher failure: SRCREV was used yet no valid SCM was found in SRC_UR=
I</p>

<p class=3D"">ERROR: Failed to parse recipe: <a href=3D"http://mycoolrecipe=
.bb">mycoolrecipe.bb</a></p>
<p class=3D""><br></p>
<p class=3D"">2. With ssh URL</p>
<p class=3D"">SRC_URI =3D &quot;<a href=3D"mailto:git@s624aalp0001.usfdc.co=
rpintra.net"><span class=3D"">git@mygitserver.net</span></a>:me/myproject.g=
it;protocol=3Dssh;branch=3Dmaster&quot;</p>
<p class=3D"">Exception: ExpansionError: Failure expanding variable SRCPV, =
expression was ${@bb.fetch2.get_srcrev(d)} which triggered exception Malfor=
medUrl: The URL:=C2=A0&quot;<a href=3D"mailto:git@s624aalp0001.usfdc.corpin=
tra.net"><span class=3D"">git@mygitserver.net</span></a>:me/myproject.git;p=
rotocol=3Dssh;branch=3Dmaster&quot;=C2=A0is invalid and cannot be interpret=
ed</p>

<p class=3D""><br></p>
<p class=3D""><br></p>
<p class=3D"">After checking the documentation it seems it only expects the=
 git protocol only and it worked in this example, however, our internal ent=
erprise github only supports http and ssh URIs.</p>
<p class=3D""><br></p>
<p class=3D"">SRC_URI =3D &quot;git://<a href=3D"http://github.com/Graphics=
Empire/gridvisualization.git;branch=3Dmaster">github.com/GraphicsEmpire/gri=
dvisualization.git;branch=3Dmaster</a>=E2=80=9D</p>
<p class=3D""><br></p>
<p class=3D"">What do you guys suggest?</p></div>

--047d7b15ac3f47412a04fc88c3de--
