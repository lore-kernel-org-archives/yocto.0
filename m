Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33EE8E00CA3; Sun, 28 Feb 2016 00:09:35 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 357B8E00BBF
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 00:09:31 -0800 (PST)
X-Halon-ID: 96d0d803-ddf2-11e5-8752-005056917c0c
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPA
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 09:09:28 +0100 (CET)
MIME-Version: 1.0
Date: Sun, 28 Feb 2016 09:09:33 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: <yocto@yoctoproject.org>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <1455099994-7591-1-git-send-email-voxtok@voxtok.com>
References: <1455099994-7591-1-git-send-email-voxtok@voxtok.com>
Message-ID: <ce692fa73cad56b731e286cf407112dd@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: [meta-raspberrypi][PATCH V2] linux-raspberry.inc: add initramfs support
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
X-List-Received-Date: Sun, 28 Feb 2016 08:09:35 -0000
Content-Type: multipart/alternative;
	boundary="=_3aaab1d16df763ec0e3895ef23a40b8f"

--=_3aaab1d16df763ec0e3895ef23a40b8f
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

5 

Petter Mabäcker

Technux
<petter@technux.se>
www.technux.se

2016-02-10 11:26 skrev Stéphane
Cerveau: 

> append initramfs creation to install RPi bootloader
trailer
> 
> Signed-off-by: Stéphane Cerveau <voxtok@voxtok.com>
> ---
>
recipes-kernel/linux/linux-raspberrypi.inc | 9 +++++++++
> 1 file
changed, 9 insertions(+)
> 
> diff --git
a/recipes-kernel/linux/linux-raspberrypi.inc
b/recipes-kernel/linux/linux-raspberrypi.inc
> index 70e8bfe..74dbf19
100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++
b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -64,4 +64,13 @@
do_rpiboot_mkimage() {
> fi
> fi
> }
> +do_bundle_initramfs_append() {
>
+ if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
> + if test -n
"${KERNEL_DEVICETREE}"; then
> + # Add RPi bootloader trailer to kernel
image to enable DeviceTree support
> +
${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok
${KERNEL_OUTPUT}.initramfs ${KERNEL_OUTPUT}.initramfs
> + fi
> + fi
>
+}
> +
> addtask rpiboot_mkimage before do_install after do_compile
> --

> 2.1.4

Hi, 

You should change the path to mkknlimg to use:
${STAGING_LIBEXECDIR_NATIVE}/mkknlimg 

See the discussion about this
in:
https://lists.yoctoproject.org/pipermail/yocto/2016-February/028769.html


BR Petter 

--=_3aaab1d16df763ec0e3895ef23a40b8f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>5</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
<p>2016-02-10 11:26 skrev St&eacute;phane Cerveau:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>append initramfs creation to install RPi bootloader trailer

Signed-off-by: St&eacute;phane Cerveau &lt;<a href=3D"mailto:voxtok@voxtok=
=2Ecom">voxtok@voxtok.com</a>&gt;
---
 recipes-kernel/linux/linux-raspberrypi.inc | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/li=
nux/linux-raspberrypi.inc
index 70e8bfe..74dbf19 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -64,4 +64,13 @@ do_rpiboot_mkimage() {
         fi
     fi
 }
+do_bundle_initramfs_append() {
+    if test "x${KERNEL_IMAGETYPE}" !=3D "xuImage" ; then
+        if test -n "${KERNEL_DEVICETREE}"; then
+            # Add RPi bootloader trailer to kernel image to enable DeviceT=
ree support
+            ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KE=
RNEL_OUTPUT}.initramfs ${KERNEL_OUTPUT}.initramfs
+        fi
+    fi
+}
+
 addtask rpiboot_mkimage before do_install after do_compile
<span class=3D"sig">--=20
2.1.4
</span></pre>
</blockquote>
<p>Hi,</p>
<p>You should change the path to mkknlimg to use: ${STAGING_LIBEXECDIR_NATI=
VE}/mkknlimg</p>
<p>See the discussion about this in: https://lists.yoctoproject.org/piperma=
il/yocto/2016-February/028769.html</p>
<p>BR Petter</p>
</body></html>

--=_3aaab1d16df763ec0e3895ef23a40b8f--
