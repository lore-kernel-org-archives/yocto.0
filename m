Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDFB8E00566; Tue,  3 May 2016 22:53:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [195.74.38.229 listed in list.dnswl.org]
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3307E0048B
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 22:53:41 -0700 (PDT)
X-Halon-ID: 8ad9811f-11bc-11e6-927c-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Wed,  4 May 2016 07:53:36 +0200 (CEST)
MIME-Version: 1.0
Date: Wed, 04 May 2016 07:53:29 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Andrei Gherzan <andrei@gherzan.ro>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <1461895063-25231-1-git-send-email-net147@gmail.com>
References: <1461895063-25231-1-git-send-email-net147@gmail.com>
Message-ID: <3875f4714534e7f8c761e0054311d7a4@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Fix do_image_rpi_sdimg tashhash mismatch
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
X-List-Received-Date: Wed, 04 May 2016 05:53:49 -0000
Content-Type: multipart/alternative;
	boundary="=_97738e5591bf029eafd2071dd8055d66"

--=_97738e5591bf029eafd2071dd8055d66
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2016-04-29 03:57 skrev Jonathan Liu: 

> IMAGE_CMD_rpi-sdimg() uses
the IMAGEDATESTAMP variable, so the taskhash
> of the function keeps
changing. This results in a taskhash mismatch
> error.
> 
> Fix this by
excluding the IMAGEDATESTAMP variable from the checksum.
> 
> Change-Id:
Ie6f30ad29e279d5312ec655ac4a3bf246c8a04de
> Signed-off-by: Jonathan Liu
<net147@gmail.com>
> ---
> classes/sdcard_image-rpi.bbclass | 1 +
> 1
file changed, 1 insertion(+)
> 
> diff --git
a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
>
index 1b055bd..989d77a 100644
> --- a/classes/sdcard_image-rpi.bbclass
>
+++ b/classes/sdcard_image-rpi.bbclass
> @@ -67,6 +67,7 @@ SDIMG =
"${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
> FATPAYLOAD ?=
""
> 
> IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
>
+IMAGE_CMD_rpi-sdimg[vardepsexclude] = "IMAGEDATESTAMP"
> 
>
IMAGE_CMD_rpi-sdimg () {
> 
> -- 
> 2.8.0

Hi Andrei, 

Any plans for
merging this patch soon? I have been using it in my tree for quite some
time and the fix seems reasonable and solves the annoying taskhash
problem when creating the image. 

BR Petter 

Petter Mabäcker

Technux
<petter@technux.se>
www.technux.se
 

--=_97738e5591bf029eafd2071dd8055d66
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-04-29 03:57 skrev Jonathan Liu:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>IMAGE_CMD_rpi-sdimg() uses the IMAGEDATESTAMP variable, so the taskhas=
h
of the function keeps changing. This results in a taskhash mismatch
error.

Fix this by excluding the IMAGEDATESTAMP variable from the checksum.

Change-Id: Ie6f30ad29e279d5312ec655ac4a3bf246c8a04de
Signed-off-by: Jonathan Liu &lt;<a href=3D"mailto:net147@gmail.com">net147@=
gmail.com</a>&gt;
---
 classes/sdcard_image-rpi.bbclass | 1 +
 1 file changed, 1 insertion(+)

diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bb=
class
index 1b055bd..989d77a 100644
--- a/classes/sdcard_image-rpi.bbclass
+++ b/classes/sdcard_image-rpi.bbclass
@@ -67,6 +67,7 @@ SDIMG =3D "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-s=
dimg"
 FATPAYLOAD ?=3D ""
=20
 IMAGEDATESTAMP =3D "<a href=3D"mailto:${@time.strftime">${@time.strftime</=
a>('%Y.%m.%d',time.gmtime())}"
+IMAGE_CMD_rpi-sdimg[vardepsexclude] =3D "IMAGEDATESTAMP"
=20
 IMAGE_CMD_rpi-sdimg () {
=20
<span class=3D"sig">--=20
2.8.0
</span></pre>
</blockquote>
<p>Hi Andrei,</p>
<p>Any plans for merging this patch soon? I have been using it in my tree f=
or quite some time and the fix seems reasonable and solves the annoying tas=
khash problem when creating the image.</p>
<p>BR Petter</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</body></html>

--=_97738e5591bf029eafd2071dd8055d66--
