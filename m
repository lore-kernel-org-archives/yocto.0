Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EF21E00947; Tue, 11 Aug 2015 11:43:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-05.atm.binero.net (vsp-authed02.binero.net
	[195.74.38.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD7F3E00758
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 11:43:02 -0700 (PDT)
X-Halon-ID: d4e5ddf9-4058-11e5-8db1-005056916f53
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPA
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 20:43:17 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 11 Aug 2015 20:42:59 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: <yocto@yoctoproject.org>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <1439312679-24989-2-git-send-email-ajlennon@dynamicdevices.co.uk>
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<1439312679-24989-2-git-send-email-ajlennon@dynamicdevices.co.uk>
Message-ID: <f770f8743b500dde78803cd8b0826854@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build audio driver into kernel
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
X-List-Received-Date: Tue, 11 Aug 2015 18:43:08 -0000
Content-Type: multipart/alternative;
	boundary="=_b0762bf61792815f82ae63bd141f790e"

--=_b0762bf61792815f82ae63bd141f790e
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2015-08-11 19:04 skrev Alex J Lennon: 

> Signed-off-by: Alex J
Lennon <ajlennon@dynamicdevices.co.uk>
> ---
>
recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++
> 1 file changed, 4
insertions(+)
> 
> diff --git
a/recipes-kernel/linux/linux-raspberrypi.inc
b/recipes-kernel/linux/linux-raspberrypi.inc
> index e38d905..8024412
100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++
b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -6,6 +6,10 @@ SECTION
= "kernel"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM =
"file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> 
> +SRC_URI += "

> + file://build-in-audio.cfg [1] 
> + "
> +
> COMPATIBLE_MACHINE =
"raspberrypi"
> 
> PV = "${LINUX_VERSION}+git${SRCREV}"
> -- 
>
1.9.1

It seems like the file build-in-audio.cfg is missing from the
changeset? 

/Petter 

Petter Mabäcker

Technux
<petter@technux.se>
www.technux.se
 

Links:
------
[1]
file://build-in-audio.cfg

--=_b0762bf61792815f82ae63bd141f790e
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2015-08-11 19:04 skrev Alex J Lennon:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>Signed-off-by: Alex J Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdev=
ices.co.uk">ajlennon@dynamicdevices.co.uk</a>&gt;
---
 recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/li=
nux/linux-raspberrypi.inc
index e38d905..8024412 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -6,6 +6,10 @@ SECTION =3D "kernel"
 LICENSE =3D "GPLv2"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd=
7"
=20
+SRC_URI +=3D " \
+        <a href=3D"file://build-in-audio.cfg">file://build-in-audio.cfg</a=
> \
+        "
+
 COMPATIBLE_MACHINE =3D "raspberrypi"
=20
 PV =3D "${LINUX_VERSION}+git${SRCREV}"
<span class=3D"sig">--=20
1.9.1
</span></pre>
</blockquote>
<p>It seems like the file build-in-audio.cfg is missing from the changeset?=
</p>
<p>/Petter </p>
<div>
<pre><br />Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</body></html>

--=_b0762bf61792815f82ae63bd141f790e--
