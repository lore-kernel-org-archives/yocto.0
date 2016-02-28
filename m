Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77430E00CA4; Sat, 27 Feb 2016 23:56:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-04.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F513E00BBF
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 23:56:33 -0800 (PST)
X-Halon-ID: c5c37882-ddf0-11e5-8752-005056917c0c
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Sun, 28 Feb 2016 08:56:28 +0100 (CET)
MIME-Version: 1.0
Date: Sun, 28 Feb 2016 08:56:33 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Andrei Gherzan <andrei@gherzan.ro>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <1452789643-17903-4-git-send-email-petter@technux.se>
References: <1452789643-17903-1-git-send-email-petter@technux.se>
	<1452789643-17903-4-git-send-email-petter@technux.se>
Message-ID: <decadab49c1ce664ee1e7b5e52cbfcaa@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 3/7] linux-raspberrypi: Update 4.1 recipe to 4.1.15
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 28 Feb 2016 07:56:37 -0000
Content-Type: multipart/alternative;
	boundary="=_8fa8224ecc4193b327a74b0f6a349646"

--=_8fa8224ecc4193b327a74b0f6a349646
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2016-01-14 17:40 skrev Petter Mabäcker: 

> [Support #69]
> 
>
Signed-off-by: Petter Mabäcker <petter@technux.se>
> ---
>
recipes-kernel/linux/linux-raspberrypi_4.1.bb | 4 ++--
> 1 file changed,
2 insertions(+), 2 deletions(-)
> 
> diff --git
a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> index 3a3cf40..cae459a
100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> +++
b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> @@ -1,6 +1,6 @@
>
-LINUX_VERSION ?= "4.1.10"
> +LINUX_VERSION ?= "4.1.15"
> 
> -SRCREV =
"b74df9228c27f55361c065bc5dbfba88861cc771"
> +SRCREV =
"02a8ee530e32b08e5df44f10e24d5fd82bb960e3"
> SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y"
>

> require linux-raspberrypi.inc

Hi Andrei, 

This commit can be
skipped, since Khem have done an even newer update of the 4.1 kernel
(4.1.10 --> 4.1.17) in the large series of commits from yesterday
(https://lists.yoctoproject.org/pipermail/yocto/2016-February/028754.html).
Do you want me to send an updated version of this series of commit
without it or not? 

BR Petter 

--=_8fa8224ecc4193b327a74b0f6a349646
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-01-14 17:40 skrev Petter Mab&auml;cker:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>[Support #69]

Signed-off-by: Petter Mab&auml;cker &lt;<a href=3D"mailto:petter@technux.se=
">petter@technux.se</a>&gt;
---
 recipes-kernel/linux/linux-raspberrypi_4.1.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel=
/linux/linux-raspberrypi_4.1.bb
index 3a3cf40..cae459a 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
@@ -1,6 +1,6 @@
-LINUX_VERSION ?=3D "4.1.10"
+LINUX_VERSION ?=3D "4.1.15"
=20
-SRCREV =3D "b74df9228c27f55361c065bc5dbfba88861cc771"
+SRCREV =3D "02a8ee530e32b08e5df44f10e24d5fd82bb960e3"
 SRC_URI =3D "git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=
=3Drpi-4.1.y"
=20
 require linux-raspberrypi.inc</pre>
</blockquote>
<p>Hi Andrei,</p>
<p>This commit can be skipped, since Khem have done an even newer update of=
 the 4.1 kernel (4.1.10 --&gt; 4.1.17) in the large series of commits from =
yesterday (https://lists.yoctoproject.org/pipermail/yocto/2016-February/028=
754.html). Do you want me to send an updated version of this series of comm=
it without it or not?</p>
<p>BR Petter</p>
</body></html>

--=_8fa8224ecc4193b327a74b0f6a349646--
