Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51C42E00DAA; Fri, 26 Feb 2016 09:49:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 Feb 2016 09:49:07 PST
Received: from bin-vsp-out-04.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98506E00D16
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 09:49:07 -0800 (PST)
X-Halon-ID: 14fcdc54-dcb1-11e5-8752-005056917c0c
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Fri, 26 Feb 2016 18:48:02 +0100 (CET)
MIME-Version: 1.0
Date: Fri, 26 Feb 2016 18:48:06 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Yocto <yocto@yoctoproject.org>, Andrei Gherzan <andrei@gherzan.ro>,
	<net147@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <20160226171446.GA4154@resin.home>
References: <1456478817-7221-1-git-send-email-net147@gmail.com>
	<20160226171446.GA4154@resin.home>
Message-ID: <876d8b2d6f4549cebde5792d84860bee@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: fix path to mkknlimg
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
X-List-Received-Date: Fri, 26 Feb 2016 17:49:11 -0000
Content-Type: multipart/alternative;
	boundary="=_aa15e375d5d1c937a100ba41e6dd7173"

--=_aa15e375d5d1c937a100ba41e6dd7173
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

 

2016-02-26 18:14 skrev Andrei Gherzan: 

> On Fri, Feb 26, 2016 at
08:26:57PM +1100, Jonathan Liu wrote:
> 
>> The path had libexecdir
hardcoded so it was no longer correct when libexecdir was changed in
meta/conf/bitbake.conf from ${libdir}/${BPN} to ${prefix_native}/libexec
for nativesdk recipes. Fixes "No such file or directory" error when
executing do_rpiboot_mkimage. Signed-off-by: Jonathan Liu
<net147@gmail.com> --- recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
1 file changed, 1 insertion(+), 1 deletion(-) diff --git
a/recipes-kernel/linux/linux-raspberrypi.inc
b/recipes-kernel/linux/linux-raspberrypi.inc index 70e8bfe..8c7c46c
100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
b/recipes-kernel/linux/linux-raspberrypi.inc @@ -60,7 +60,7 @@
do_rpiboot_mkimage() { if test "x${KERNEL_IMAGETYPE}" != "xuImage" ;
then if test -n "${KERNEL_DEVICETREE}"; then # Add RPi bootloader
trailer to kernel image to enable DeviceTree support -
${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok
${KERNEL_OUTPUT} ${KERNEL_OUTPUT} +
${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}
${KERNEL_OUTPUT} fi fi } -- 2.7.1
> 
> Back alive. testing this.
> 
> --

> Andrei Gherzan

Hi,

I think we should use the older patchset from
_Maciej Borzecki _ (that solves this and some other minor stuffs)
instead. It also keeps the rpi-mkimage
structure:

https://lists.yoctoproject.org/pipermail/yocto/2016-February/028271.html

BR
Petter 

--=_aa15e375d5d1c937a100ba41e6dd7173
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-02-26 18:14 skrev Andrei Gherzan:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On Fri, Feb 26, 2016 at 08:26:57PM +1100, Jonathan Liu wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">The path had libexecdir hardcoded so =
it was no longer correct when libexecdir was changed in meta/conf/bitbake=
=2Econf from ${libdir}/${BPN} to ${prefix_native}/libexec for nativesdk rec=
ipes. Fixes "No such file or directory" error when executing do_rpiboot_mki=
mage. Signed-off-by: Jonathan Liu &lt;<a href=3D"mailto:net147@gmail.com">n=
et147@gmail.com</a>&gt; --- recipes-kernel/linux/linux-raspberrypi.inc | 2 =
+- 1 file changed, 1 insertion(+), 1 deletion(-) diff --git a/recipes-kerne=
l/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc =
index 70e8bfe..8c7c46c 100644 --- a/recipes-kernel/linux/linux-raspberrypi=
=2Einc +++ b/recipes-kernel/linux/linux-raspberrypi.inc @@ -60,7 +60,7 @@ d=
o_rpiboot_mkimage() { if test "x${KERNEL_IMAGETYPE}" !=3D "xuImage" ; then =
if test -n "${KERNEL_DEVICETREE}"; then # Add RPi bootloader trailer to ker=
nel image to enable DeviceTree support - ${STAGING_DIR_NATIVE}/usr/lib/rpi-=
mkimage/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT} + ${STAGING_LIBEX=
ECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT} fi fi } -- =
2.7.1</blockquote>
<pre>Back alive. testing this.

<span class=3D"sig">--=20
Andrei Gherzan<br /><br /><br />
</span></pre>
</blockquote>
<p>Hi,<br /><br />I think we should use the older patchset from <em>Maciej =
Borzecki </em> (that solves this and some other minor stuffs) instead. It a=
lso keeps the rpi-mkimage structure:<br /><br /><br />https://lists.yoctopr=
oject.org/pipermail/yocto/2016-February/028271.html<br /><br />BR Petter</p=
>
</body></html>

--=_aa15e375d5d1c937a100ba41e6dd7173--
