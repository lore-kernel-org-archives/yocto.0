Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5EB5E009E1; Mon, 25 May 2015 07:48:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-05.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24630E0095C
	for <yocto@yoctoproject.org>; Mon, 25 May 2015 07:48:47 -0700 (PDT)
X-Halon-ID: 23c46051-02ed-11e5-b72b-005056916f53
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Mon, 25 May 2015 16:48:43 +0200 (CEST)
MIME-Version: 1.0
Date: Mon, 25 May 2015 16:48:43 +0200
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Andrei Gherzan <andrei@gherzan.ro>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <CAK18fxEsdz9SFurpRx7wpxwu1S_EFMzGoO8se-ULxObaPOmmOw@mail.gmail.com>
References: <cover.1431121258.git.petter@technux.se>
	<b58053204ede81e2de839e62bc0317d2813d6ec1.1431121258.git.petter@technux.se>
	<CAK18fxEsdz9SFurpRx7wpxwu1S_EFMzGoO8se-ULxObaPOmmOw@mail.gmail.com>
Message-ID: <3acef428c770794ffe6fb81a8ca800d3@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/5] devicetree: auto-disable dts for old kernels
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
X-List-Received-Date: Mon, 25 May 2015 14:48:52 -0000
Content-Type: multipart/alternative;
	boundary="=_ce84e669278b8727c8c1964f09f79fb6"

--=_ce84e669278b8727c8c1964f09f79fb6
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

2015-05-18 00:46 skrev Andrei Gherzan: 

> Hi Petter,
> 
>> + #
Check if we are building with device tree support + DTS="${@get_dts(d,
None)}" # Initialize sdcard image file dd if=/dev/zero of=${SDIMG}
bs=1024 count=0 seek=${SDIMG_SIZE} @@ -112,7 +114,7 @@
IMAGE_CMD_rpi-sdimg () { mcopy -i ${WORKDIR}/boot.img -s
${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin
::uImage ;; *) - if test -n "${KERNEL_DEVICETREE}"; then + if test -n
"${DTS}"; then # Copy board device trees to root folder for DTB in
${DT_ROOT}; do DTB_BASE_NAME=`basename ${DTB} .dtb`
> 
> I started to
review these patches and test. I have one concern related
> to this
patch. More specifically the fact that even though you check
> for DTS
now, we are still using DT_ROOT (and co) for the next loops
> which use
KERNEL_DEVICETREE. Maybe a better way to do it would be to
> move
>
DT_ALL = "${@d.getVar('KERNEL_DEVICETREE', True) or ''}"
> DT_OVERLAYS =
"${@oe.utils.str_filter('S+-overlay.dtb$',
> '${DT_ALL}', d)}"
> DT_ROOT
= "${@oe.utils.str_filter_out('S+-overlay.dtb$', '${DT_ALL}', d)}"
> ...
after you define DTS and define these based on DTS variable.
> 
>
Regards,
> Andrei

I Agree, it sounds reasonable. I have prepared a new
changeset for this. Have some final testing to do before sending it.
Biggest problem why I didn't fix this in first change was that the
IMAGE_CMD func seems to behave a little different then I thought. I had
problems to use some functionality and expand variables in some
situations, but I think I figured out a way forward... 

Regards Petter


Petter Mabäcker

Technux <petter@technux.se>
www.technux.se
 

--=_ce84e669278b8727c8c1964f09f79fb6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>2015-05-18 00:46 skrev Andrei Gherzan:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>Hi Petter,</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%">+ # Check if we are building with dev=
ice tree support + DTS=3D"${@get_dts(d, None)}" # Initialize sdcard image f=
ile dd if=3D/dev/zero of=3D${SDIMG} bs=3D1024 count=3D0 seek=3D${SDIMG_SIZE=
} @@ -112,7 +114,7 @@ IMAGE_CMD_rpi-sdimg () { mcopy -i ${WORKDIR}/boot.img=
 -s ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}=
=2Ebin ::uImage ;; *) - if test -n "${KERNEL_DEVICETREE}"; then + if test -=
n "${DTS}"; then # Copy board device trees to root folder for DTB in ${DT_R=
OOT}; do DTB_BASE_NAME=3D`basename ${DTB} .dtb`</blockquote>
<pre>I started to review these patches and test. I have one concern related
to this patch. More specifically the fact that even though you check
for DTS now, we are still using DT_ROOT (and co) for the next loops
which use KERNEL_DEVICETREE. Maybe a better way to do it would be to
move
DT_ALL =3D "<a href=3D"mailto:${@d.getVar">${@d.getVar</a>('KERNEL_DEVICETR=
EE', True) or ''}"
DT_OVERLAYS =3D "<a href=3D"mailto:${@oe.utils.str">${@oe.utils.str</a>_fil=
ter('\S+\-overlay\.dtb$',
'${DT_ALL}', d)}"
DT_ROOT =3D "<a href=3D"mailto:${@oe.utils.str">${@oe.utils.str</a>_filter_=
out('\S+\-overlay\.dtb$', '${DT_ALL}', d)}"
=2E.. after you define DTS and define these based on DTS variable.

Regards,
Andrei
</pre>
</blockquote>
<p>I Agree, it sounds reasonable. I have prepared a new changeset for this=
=2E Have some final testing to do before sending it. Biggest problem why I =
didn't fix this in first change was that the IMAGE_CMD func seems to behave=
 a little different then I thought. I had problems to use some functionalit=
y and expand variables in some situations, but I think I figured out a way =
forward...</p>
<p><br />Regards Petter</p>
<p>&nbsp;</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
</body></html>

--=_ce84e669278b8727c8c1964f09f79fb6--
