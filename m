Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBD9AE00CA3; Sat, 27 Feb 2016 23:43:16 -0800 (PST)
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
Received: from bin-vsp-out-04.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D307E00C1B
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 23:43:10 -0800 (PST)
X-Halon-ID: e6261cd9-ddee-11e5-8752-005056917c0c
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Sun, 28 Feb 2016 08:43:03 +0100 (CET)
MIME-Version: 1.0
Date: Sun, 28 Feb 2016 08:43:08 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Jonathan Liu <net147@gmail.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CANwerB3hkBTe628KYDG0owzUYjTodMT8X8HhzUmpMA+uT2P_CQ@mail.gmail.com>
References: <1456478817-7221-1-git-send-email-net147@gmail.com>
	<20160226171446.GA4154@resin.home>
	<876d8b2d6f4549cebde5792d84860bee@technux.se>
	<CAK18fxGKNWMUh=SmKe+3=GF3ttayvm_DyhtzFztBxvfzdj64sg@mail.gmail.com>
	<20160226195505.GB27062@resin.home>
	<CANwerB1NhH7sSS-zy8GUHVou4-Ny62=QQpGHsjUaXLf9ii1TMg@mail.gmail.com>
	<20160226212038.GA28071@resin.home>
	<CANwerB3hkBTe628KYDG0owzUYjTodMT8X8HhzUmpMA+uT2P_CQ@mail.gmail.com>
Message-ID: <62e3c31630b6eba170a0705a45d73fe5@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: Yocto <yocto@yoctoproject.org>
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
X-List-Received-Date: Sun, 28 Feb 2016 07:43:17 -0000
Content-Type: multipart/alternative;
	boundary="=_06a7adb919a0f6c8b92d70323c59f3d6"

--=_06a7adb919a0f6c8b92d70323c59f3d6
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2016-02-27 13:25 skrev Jonathan Liu: 

> On 27 February 2016 at
23:21, Andrei Gherzan <andrei@gherzan.ro> wrote:
> 
>> On Sat, Feb 27,
2016 at 08:03:10AM +1100, Jonathan Liu wrote: 
>> 
>>> On 27 February
2016 at 06:55, Andrei Gherzan <andrei@gherzan.ro> wrote: 
>>> 
>>>> On
Fri, Feb 26, 2016 at 07:04:28PM +0100, Andrei Gherzan wrote: 
>>>>

>>>>> -- Andrei Gherzan On Fri, Feb 26, 2016 at 6:48 PM, Petter
Mabäcker <[1]petter@technux.se> wrote: 2016-02-26 18:14 skrev Andrei
Gherzan: On Fri, Feb 26, 2016 at 08:26:57PM +1100, Jonathan Liu wrote:
The path had libexecdir hardcoded so it was no longer correct when
libexecdir was changed in meta/conf/bitbake.conf from ${libdir}/${BPN}
to ${prefix_native}/libexec for nativesdk recipes. Fixes "No such file
or directory" error when executing do_rpiboot_mkimage. Signed-off-by:
Jonathan Liu <[2]net147@gmail.com> ---
recipes-kernel/linux/linux-raspberrypi.inc | 2 +- 1 file changed, 1
insertion(+), 1 deletion(-) diff --git
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
${KERNEL_OUTPUT} fi fi } -- 2.7.1 Back alive. testing this. -- Andrei
Gherzan Hi, I think we should use the older patchset from Maciej
Borzecki (that solves this and some other minor stuffs) instead. It also
keeps the rpi-mkimage structure:
[3]https://lists.yoctoproject.org/pipermail/yocto/2016-February/028271
[1]. html BR Petter Very good catch Petter. I'll test that PR.
>>>>
Merged the patch set sent by Maciej. Which covers this patch too.
Thanks, -- Andrei Gherzan
>>> Note that Maciej's patch doesn't really
preserve the path on older branches like you expect. On master branch:
${libexecdir}/rpi-mkimage expands to /usr/libexec/rpi-mkimage On daisy
branch: ${libexecdir}/rpi-mkimage expands to
/usr/lib/rpi-mkimage/rpi-mkimage
>> This is a very good catch. But for
now this patch is not in daisy it is only in master which is supposed to
work with poky master. I do understand your concern. And I think it is
the same thing on jethro too. So you propose relying on
STAGING_LIBEXECDIR_NATIVE and let it append or not BPN? -- Andrei
Gherzan
> 
> I propose my patch instead which has the following behavior
and goes
> along with the libexecdir change rather than trying to go
against it.
> 
> My patch has the following paths for mkknlimg.
> 
>
daisy:
> [...]/sysroots/x86_64-linux/usr/lib/rpi-mkimage/mkknlimg
>
which matches the previous hardcoded path before the patch so the path
>
doesn't change with the patch for older branches
> 
> master:
>
[...]/sysroots/x86_64-linux/usr/libexec/mkknlimg
> 
> You can then do
something similar for U-Boot.

Ah, nice. I agree that this difference
from the other solutions for this problem, gives an additional value and
should be merged. I can see that this info is described in the commit
message for the new commits, good =) 

BR Petter 

> Regards, Jonathan



Links:
------
[1]
https://lists.yoctoproject.org/pipermail/yocto/2016-February/028271

--=_06a7adb919a0f6c8b92d70323c59f3d6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2016-02-27 13:25 skrev Jonathan Liu:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>On 27 February 2016 at 23:21, Andrei Gherzan &lt;<a href=3D"mailto:and=
rei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">On Sat, Feb 27, 2016 at 08:03:10AM +1=
100, Jonathan Liu wrote:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">On 27 February 2016 at 06:55, Andrei =
Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; =
wrote:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">On Fri, Feb 26, 2016 at 07:04:28PM +0=
100, Andrei Gherzan wrote:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">-- Andrei Gherzan On Fri, Feb 26, 201=
6 at 6:48 PM, Petter Mab&auml;cker &lt;[1]<a href=3D"mailto:petter@technux=
=2Ese">petter@technux.se</a>&gt; wrote: 2016-02-26 18:14 skrev Andrei Gherz=
an: On Fri, Feb 26, 2016 at 08:26:57PM +1100, Jonathan Liu wrote: The path =
had libexecdir hardcoded so it was no longer correct when libexecdir was ch=
anged in meta/conf/bitbake.conf from ${libdir}/${BPN} to ${prefix_native}/l=
ibexec for nativesdk recipes. Fixes "No such file or directory" error when =
executing do_rpiboot_mkimage. Signed-off-by: Jonathan Liu &lt;[2]<a href=3D=
"mailto:net147@gmail.com">net147@gmail.com</a>&gt; --- recipes-kernel/linux=
/linux-raspberrypi.inc | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-)=
 diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/l=
inux/linux-raspberrypi.inc index 70e8bfe..8c7c46c 100644 --- a/recipes-kern=
el/linux/linux-raspberrypi.inc +++ b/recipes-kernel/linux/linux-raspberrypi=
=2Einc @@ -60,7 +60,7 @@ do_rpiboot_mkimage() { if test "x${KERNEL_IMAGETYP=
E}" !=3D "xuImage" ; then if test -n "${KERNEL_DEVICETREE}"; then # Add RPi=
 bootloader trailer to kernel image to enable DeviceTree support - ${STAGIN=
G_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL=
_OUTPUT} + ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${=
KERNEL_OUTPUT} fi fi } -- 2.7.1 Back alive. testing this. -- Andrei Gherzan=
 Hi, I think we should use the older patchset from Maciej Borzecki (that so=
lves this and some other minor stuffs) instead. It also keeps the rpi-mkima=
ge structure: [3]<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/=
2016-February/028271">https://lists.yoctoproject.org/pipermail/yocto/2016-F=
ebruary/028271</a>. html BR Petter Very good catch Petter. I'll test that P=
R.</blockquote>
Merged the patch set sent by Maciej. Which covers this patch too. Thanks, -=
- Andrei Gherzan</blockquote>
Note that Maciej's patch doesn't really preserve the path on older branches=
 like you expect. On master branch: ${libexecdir}/rpi-mkimage expands to /u=
sr/libexec/rpi-mkimage On daisy branch: ${libexecdir}/rpi-mkimage expands t=
o /usr/lib/rpi-mkimage/rpi-mkimage</blockquote>
This is a very good catch. But for now this patch is not in daisy it is onl=
y in master which is supposed to work with poky master. I do understand you=
r concern. And I think it is the same thing on jethro too. So you propose r=
elying on STAGING_LIBEXECDIR_NATIVE and let it append or not BPN? -- Andrei=
 Gherzan</blockquote>
<pre>I propose my patch instead which has the following behavior and goes
along with the libexecdir change rather than trying to go against it.

My patch has the following paths for mkknlimg.

daisy:
[...]/sysroots/x86_64-linux/usr/lib/rpi-mkimage/mkknlimg
which matches the previous hardcoded path before the patch so the path
doesn't change with the patch for older branches

master:
[...]/sysroots/x86_64-linux/usr/libexec/mkknlimg

You can then do something similar for U-Boot.
</pre>
</blockquote>
<p>Ah, nice. I agree that this difference from the other solutions for this=
 problem, gives an additional value and should be merged. I can see that th=
is info is described in the commit message for the new commits, good =3D)</=
p>
<p>BR Petter</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">Regards, Jonathan</blockquote>
</body></html>

--=_06a7adb919a0f6c8b92d70323c59f3d6--
