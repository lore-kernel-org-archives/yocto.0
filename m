Return-Path: <forlorn18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1FD0E00D11; Tue, 26 Jul 2016 12:43:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (forlorn18[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FD9FE00D0C
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 12:43:36 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id q128so3265098wma.1
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 12:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version; bh=L8+e+Q0h8mhkbXOXbyjKzealgchCxnj2pEEtEMn+Ecs=;
	b=rytRnmAylBKV72ow/7MFg3XDTWPUYKaKuI5EDSFwI42L4jXeoGyXGJ++MEveXNClvz
	eNZgRgXCY4A0tlhlSvT3ZiWTZH1ujOqo/W0+h78qL5jxVDFSG+KVUFuFbgcbeArOL5TP
	0H+jcb1u4bA1voVtGgBGG2J7M8fCz1szXzXB02iXZ+CMYp9ImmG0QFCbwev+Z8+Dr1UR
	c4VvfpB7WCAC2Zt4K4+T0SA7rptbDe31cPlcxH7o1oG3iXbPzFJlw30pckqrqVho761Y
	Y7ApTPlL7gxCIBjyh8mXkDeyX88JC/9ot6f9SPCE0POSu9NtqSQy8GSxOl4SSEOWzVwp
	9Bdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version;
	bh=L8+e+Q0h8mhkbXOXbyjKzealgchCxnj2pEEtEMn+Ecs=;
	b=d7omHcmFWTjeKOIEu0VxkxW9DCgTBD/oygwq4VfAHyiIn7yTIgdA584QYD/bcA8Y6N
	C7tI04McU1kSKqKO1nrRWzKYogMxySOsMht6fsFmPZ50+a0SHPBciJbVcNYBsJVNmo2s
	6OpsGLuah9+RCN3U7fDas4hEHUGxCqexrQx2JDgV5wa5LbMib8VXgrTX8YioRdtVqzkU
	dVIjKFuT/kEp58Jsg/AcRzaN+2KkU4Fch0t8QP9Gs4ZbGh/4/0qGzJGUt9PAoY71TSrw
	h/9xMI9g8WwR7l/YcTrLEqwvj+K9J72I7PvG30xK3UwPVLTEgZjW5GWmH+txncfYjNcf
	7Buw==
X-Gm-Message-State: ALyK8tKvpsde9F+arFWNS0YmI6YA1zbDUwIh9LDu/4bt0X4jFSYEwZI8LkJWIiZWCtig5A==
X-Received: by 10.28.25.135 with SMTP id 129mr45188943wmz.59.1469562215054;
	Tue, 26 Jul 2016 12:43:35 -0700 (PDT)
Received: from ConcEmb (ger67-1-88-180-180-180.fbx.proxad.net.
	[88.180.180.180]) by smtp.gmail.com with ESMTPSA id
	kq2sm2483446wjc.41.2016.07.26.12.43.33
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 26 Jul 2016 12:43:34 -0700 (PDT)
Message-ID: <1469562211.30247.38.camel@gmail.com>
From: Francois Muller <forlorn18@gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>, yocto@yoctoproject.org
Date: Tue, 26 Jul 2016 21:43:31 +0200
In-Reply-To: <CB2BF5DF-6FD0-4511-8D70-8D913C1E5F05@neuf.fr>
References: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
	<1469052039-7746-4-git-send-email-herve.jourdain@neuf.fr>
	<1469457954.5627.76.camel@gmail.com>
	<CB2BF5DF-6FD0-4511-8D70-8D913C1E5F05@neuf.fr>
X-Mailer: Evolution 3.20.4-1 
Mime-Version: 1.0
Subject: Re: [meta-raspberrypi][PATCH v6 3/4] linux-raspberrypi-base.bbclass: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Tue, 26 Jul 2016 19:43:39 -0000
X-Groupsio-MsgNum: 31254
Content-Type: multipart/mixed; boundary="=-OsiEvXAHq7PM0Fxm5JIQ"

--=-OsiEvXAHq7PM0Fxm5JIQ
Content-Type: multipart/alternative; boundary="=-Suq1jIUF3EdQb1Y9pjcM"

--=-Suq1jIUF3EdQb1Y9pjcM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Hervé,

I also experienced this overlay move the hard way... and fortunately
"simply" renaming the file did the trick, but it took me hours to
figure out that "simple" thing!

I clearly understand Andrei's position but IMHO the current layer's
management of DT files to build and include in sd_img is kind of
hackish (and was already before your patch)...
.dtbo files are required for rpi kernel 4.4+ which isn't the preferred
version to date. Paul Barker asked if there was any objection to move
to 4.4+ : seems no objection arised.
So maybe it's time to default to .dtbo + kernel 4.4 in a single move,
and document the fact that older kernel have to adapt KERNEL_DEVICETREE
variable.

Today I needed to build a WIC image for RPi. DT files aren't currently
included in the boot partition because IMAGE_BOOT_FILES isn't set and
that one needs to be set in (machine) conf files.
With the current RPi's management of DTs, which dynamically change
which DT files have to be included and eventually now there names, it's
impossible to do... or I would maybe have had to extend the hackish
way!
So I've done changes to support WIC populating DT files and also
touched the layer's DT files management: the patch is attached for
comments (to be applied on your v6 patchset).
I tried to simplify things and add warnings/error in case overlay
filenames doesn't suit kernel's version, but for sure the dynamic DT
management has been lost.

If you have time to review, I'd be happy to receive your comments!

Thanks,
François

Le lundi 25 juillet 2016 à 21:30 -0400, Herve Jourdain a écrit :
> Hi François,
> 
> > Actually, I tried to use a -overlay.dtb as a device tree overlay with
the 4.4.9, and it didn't load it...
> > > > If you don't use the tools dedicated to debug device trees (like
vcdbg), there is no error message nor complaint, but the device tree
is not loaded. Only when I used vcdbg did I see it complained that it
could not find the .dtbo file.
> > > > I'm not sure if the loader has changed since then, but if it has not
then you probably need to impose .dtbo for kernels > 4.4.6. Or issue
an error if the KERNEL_DEVICETREE variable is not consistent with the
kernel version...
> 
> > > The current behaviour is following some remark/proposal from Andrei -
the very first proposal had different versions of KERNEL_DEVICETREE,
depending on the kernel version actually.
> > But I agree with Andrei that it would be easier to just maintain one
set of default values for the KERNEL_DEVICETREE.
> > > One thing I didn't consider is the override of that variable, maybe a
warning message could be added if we have to change the -overlay.dtb
into .dtbo.
> > > But we should probably do the change to 'dtbo regardless, because
it's very likely it would not load properly later, with no message
except with vcdbg...
> 
> Would that solution be OK with you?
> 
> Andrei, do you have any comment on this?
> 
> Herve
> 
> > > Le 25 juil. 2016 à 10:45, Francois Muller <forlorn18@gmail.com> a
écrit :
> 
> > Hi Hervé,
> > > > Thank you for giving us up and running .dtbo overlays functionality
through this patch, it is running fine for me.
> > 
> > > > Nevertheless, I have a concern about the processing applied to
overlay filenames.
> > 
> > > > > > > > > > According to this post https://www.raspberrypi.org/forums/viewtopic
.php?f=107&t=139732, '-overlay.dtb' suffixes have been superseded
by '.dtbo' suffix to reflect an improvement in overlay
functionalities and thus overlay binary format (or simply content,
I don't know).
> > > > Moreover, changing the suffix gives a chance for older and newer
overlay formats to coexist in a boot folder.
> > 
> > > > > > > > So, I'm not very fond of a build system changing the inputs I give
to it (i.e. KERNEL_DEVICETREE) depending on another input from my
side (kernel version) without at least notifying me the change
occurred.
> > > > > > > > > > I would highly prefer a bbwarn (or should it even fail?) if the
requested overlay filenames don't suit the kernel version being
chosen (btw device trees are theoretically aimed to be kernel
version and even OS independent as it should only contain pure
hardware platform description).
> > > > > > I understand and appreciate the intention of offering a kind of
compatibility for kernels prior to 4.4.6 but I don't think it's
needed here. 
> > 
> > > > > > If KERNEL_DEVICETREE isn't empty for kernels prior to 3.18 => let's
disable device trees (or simply remove this test, this layer
doesn't provide any)
> > > > If KERNEL_DEVICETREE asks for -overlay.dtb and kernel >= 3.18 =>
let's compile it, it has been requested
> > 
> > > > > > If KERNEL_DEVICETREE asks for .dtbo and kernel < 4.4.6 => let's
fail with a comprehensive message (these kernels even don't know
what a .dtbo file is!)
> > > > If KERNEL_DEVICETREE asks for -overlay.dtb and/or .dtbo and kernel
>= 4.4.6 => let's compile it, it has been requested
> > 
> > > > The tough thing will be to keep consistency between
KERNEL_DEVICETREE content and kernel version to build.
> > > > > > > > So as long as 4.1 is the layer's kernel preferred version,
KERNEL_DEVICETREE should only contain '-overlay.dtb' overlays,
along with the next to be used KERNEL_DEVICETREE variable
(containing .dtbo) that is commented out.
> > > > > > As soon as 4.4 is chosen, let's default to .dtbo overlays and
comment out KERNEL_DEVICETREE variable containing '-overlay.dtb'
overlays.
> > 
> > What do you think about this behavior ?
> > 
> > > > > > > > As side notes, you may use some existing utility function to
compare software versions like bb.utils.vercmp_string_op and
overlays filtering may be done in a single pass : I've attached a
proposal.
> > 
> > BR,
> > François
> > 
> > Le jeudi 21 juillet 2016 à 06:00 +0800, Herve Jourdain a écrit :
> > > > > > Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays,
instead of .dtb.
> > > > > > Add support for both variants of overlays ("-overlay.dtb" and
".dtbo")
> > > > > > Change which variant needs to be supported based on the kernel
version
> > > 
> > > > > > > > > CAUTION: when called from IMAGE_CMD_rpi-sdimg, 'TMPDIR' is not
set, causing 'STAGING_KERNEL_BUILDDIR' to not be expanded,
causing get_kernelversion_file() to fail!
> > > > > > > > > To avoid this problem, get_dts() and split_overlays() MUST be
called with the kernel version parameter set, when called from
IMAGE_CMD_rpi-sdimg!
> > > 
> > > > > > Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> > > ---
> > >  classes/linux-raspberrypi-base.bbclass | 19 ++++++++++++-------
> > >  1 file changed, 12 insertions(+), 7 deletions(-)
> > > 
> > > > > > diff --git a/classes/linux-raspberrypi-base.bbclass
b/classes/linux-raspberrypi-base.bbclass
> > > index 40beef1..930fc44 100644
> > > --- a/classes/linux-raspberrypi-base.bbclass
> > > +++ b/classes/linux-raspberrypi-base.bbclass
> > > @@ -1,7 +1,8 @@
> > >  inherit linux-kernel-base
> > >  
> > > -
> > >  def get_dts(d, ver):
> > > +    import re
> > > +
> > >      staging_dir = d.getVar("STAGING_KERNEL_BUILDDIR", True)
> > >      dts = d.getVar("KERNEL_DEVICETREE", True)
> > >  
> > > @@ -20,20 +21,24 @@ def get_dts(d, ver):
> > >  
> > >      # Always turn off device tree support for kernel's < 3.18
> > >      try:
> > > -        if int(min_ver[0]) <= 3:
> > > -            if int(min_ver[1]) < 18:
> > > -                dts = ""
> > > +        if int(min_ver[0]) >= 4:
> > > > > > +            if (int(min_ver[1]) < 4) or (int(min_ver[1]) == 4
and int(min_ver[2]) < 6):
> > > > > > +                dts = ' '.join([(re.sub(r'(.*)\.dtbo$', r'\1-
overlay.dtb', x)) for x in dts.split()])
> > > +        elif int(min_ver[1]) < 18:
> > > +            dts = ""
> > >      except IndexError:
> > >          min_ver = None
> > >  
> > >      return dts
> > >  
> > >  
> > > -def split_overlays(d, out):
> > > -    dts = get_dts(d, None)
> > > +def split_overlays(d, ver, out):
> > > +    dts = get_dts(d, ver)
> > >      if out:
> > > > > >          overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$', 
dts, d)
> > > > > > +        overlays = oe.utils.str_filter_out('\S+\.dtbo$',
overlays, d)
> > >      else:
> > > > > > -        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$',
dts, d)
> > > > > > +        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$',
dts, d) + \
> > > > > > +                   " " + oe.utils.str_filter('\S+\.dtbo$', dts,
d)
> > >  
> > >      return overlays

--=-Suq1jIUF3EdQb1Y9pjcM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=3Dutf-8"></head><body dir=3D"auto"><div>Hi Herv=C3=A9,</div><div><br></div=
><div>I also experienced this overlay move the hard way... and fortunately =
"simply" renaming the file did the trick, but it took me hours to figure ou=
t that "simple" thing!</div><div><br></div><div>I clearly understand Andrei=
's position but IMHO the current layer's management of DT files to build an=
d include in sd_img is kind of hackish (and was already before your patch).=
..</div><div>.dtbo files are required for rpi kernel 4.4+ which isn't the p=
referred version to date. Paul Barker asked if there was any objection to m=
ove to 4.4+ : seems no objection arised.</div><div>So maybe it's time to de=
fault to .dtbo + kernel 4.4 in a single move, and document the fact that ol=
der kernel have to adapt KERNEL_DEVICETREE variable.</div><div><br></div><d=
iv>Today I needed to build a WIC image for RPi. DT files aren't currently i=
ncluded in the boot partition because IMAGE_BOOT_FILES isn't set and that o=
ne needs to be set in (machine) conf files.</div><div>With the current RPi'=
s management of DTs, which dynamically change which DT files have to be inc=
luded and eventually now there names, it's impossible to do... or I would m=
aybe have had to extend the hackish way!</div><div>So I've done changes to =
support WIC populating DT files and also touched the layer's DT files manag=
ement: the patch is attached for comments (to be applied on your v6 patchse=
t).</div><div>I tried to simplify things and add warnings/error in case ove=
rlay filenames doesn't suit kernel's version, but for sure the dynamic DT m=
anagement has been lost.</div><div><br></div><div>If you have time to revie=
w, I'd be happy to receive your comments!</div><div><br></div><div>Thanks,<=
/div><div>Fran=C3=A7ois</div><div class=3D"-x-evo-paragraph -x-evo-top-sign=
ature-spacer"><br></div><div>Le lundi 25 juillet 2016 =C3=A0 21:30 -0400, H=
erve Jourdain a =C3=A9crit&nbsp;:</div><blockquote type=3D"cite"><div></div=
><div>Hi Fran=C3=A7ois,</div><div><br></div><div>Actually, I tried to use a=
 -overlay.dtb as a device tree overlay with the 4.4.9, and it didn't load i=
t...</div><div>If you don't use the tools dedicated to debug device trees (=
like vcdbg), there is no error message nor complaint, but the device tree i=
s not loaded. Only when I used vcdbg did I see it complained that it could =
not find the .dtbo file.</div><div>I'm not sure if the loader has changed s=
ince then, but if it has not then you probably need to impose .dtbo for ker=
nels &gt; 4.4.6. Or issue an error if the KERNEL_DEVICETREE variable is not=
 consistent with the kernel version...</div><div><br></div><div>The current=
 behaviour is following some remark/proposal from Andrei - the very first p=
roposal had different versions of <span style=3D"background-color: rgba(255=
, 255, 255, 0);">KERNEL_DEVICETREE, depending on the kernel version actuall=
y.</span></div><div><span style=3D"background-color: rgba(255, 255, 255, 0)=
;">But I agree with Andrei that it would be easier to just maintain one set=
 of default values for the KERNEL_DEVICETREE.</span></div><div><span style=
=3D"background-color: rgba(255, 255, 255, 0);">One thing I didn't consider =
is the override of that variable, maybe a warning message could be added if=
 we have to change the -overlay.dtb into .dtbo.</span></div><div><span styl=
e=3D"background-color: rgba(255, 255, 255, 0);">But we should probably do t=
he change to 'dtbo regardless, because it's very likely it would not load p=
roperly later, with no message except with vcdbg...</span></div><div><br></=
div><div>Would that solution be OK with you?</div><div><br></div><div>Andre=
i, do you have any comment on this?</div><div><br></div><div>Herve</div><di=
v><br>Le 25 juil. 2016 =C3=A0 10:45, Francois Muller &lt;<a href=3D"mailto:=
forlorn18@gmail.com">forlorn18@gmail.com</a>&gt; a =C3=A9crit&nbsp;:<br><br=
></div><blockquote type=3D"cite"><div><div>Hi Herv=C3=A9,</div><div><br></d=
iv><div>Thank you for giving us up and running .dtbo overlays functionality=
 through this patch, it is running fine for me.</div><div><br></div><div>Ne=
vertheless, I have a concern about the processing applied to overlay filena=
mes.</div><div><br></div><div>According to this post&nbsp;<a href=3D"https:=
//www.raspberrypi.org/forums/viewtopic.php?f=3D107&amp;t=3D139732">https://=
www.raspberrypi.org/forums/viewtopic.php?f=3D107&amp;t=3D139732</a>, '-over=
lay.dtb' suffixes have been superseded by '.dtbo' suffix to reflect an impr=
ovement in overlay functionalities and thus overlay binary format (or simpl=
y content, I don't know).</div><div>Moreover, changing the suffix gives a c=
hance for older and newer overlay formats to coexist in a boot folder.</div=
><div><br></div><div>So, I'm not very fond of a build system changing the i=
nputs I give to it (i.e. KERNEL_DEVICETREE) depending on another input from=
 my side (kernel version) without at least notifying me the change occurred=
.</div><div>I would highly prefer a bbwarn (or should it even fail?) if the=
 requested overlay filenames don't suit the kernel version being chosen (bt=
w device trees are theoretically aimed to be kernel version and even OS ind=
ependent as it should only contain pure hardware platform description).</di=
v><div>I understand and appreciate the intention of offering a kind of comp=
atibility for kernels prior to 4.4.6 but I don't think it's needed here.&nb=
sp;</div><div><br></div><div>If KERNEL_DEVICETREE isn't empty for kernels p=
rior to 3.18 =3D&gt; let's disable device trees (or simply remove this test=
, this layer doesn't provide any)</div><div>If KERNEL_DEVICETREE asks for -=
overlay.dtb and kernel &gt;=3D 3.18 =3D&gt; let's compile it, it has been r=
equested</div></div></blockquote></blockquote><blockquote type=3D"cite"><bl=
ockquote type=3D"cite"><div><div>If KERNEL_DEVICETREE asks for .dtbo and ke=
rnel &lt; 4.4.6 =3D&gt; let's fail with a comprehensive message (these kern=
els even don't know what a .dtbo file is!)</div></div></blockquote></blockq=
uote><blockquote type=3D"cite"><blockquote type=3D"cite"><div><div><div>If =
KERNEL_DEVICETREE asks for -overlay.dtb and/or .dtbo and kernel &gt;=3D 4.4=
.6 =3D&gt; let's compile it, it has been requested</div></div><div><br></di=
v><div>The tough thing will be to keep consistency between KERNEL_DEVICETRE=
E content and kernel version to build.</div><div>So as long as 4.1 is the l=
ayer's kernel preferred version, KERNEL_DEVICETREE should only contain '-ov=
erlay.dtb' overlays, along with the next to be used KERNEL_DEVICETREE varia=
ble (containing .dtbo) that is commented out.</div><div>As soon as 4.4 is c=
hosen, let's default to .dtbo overlays and comment out KERNEL_DEVICETREE va=
riable containing '-overlay.dtb' overlays.</div><div><br></div><div>What do=
 you think about this behavior ?</div><div><br></div><div>As side notes, yo=
u may use some existing utility function to compare software versions like&=
nbsp;<i>bb.utils.vercmp_string_op</i>&nbsp;and overlays filtering may be do=
ne in a single pass : I've attached a proposal.</div><div><br></div><div>BR=
,</div><div>Fran=C3=A7ois</div><div><br></div><div>Le jeudi 21 juillet 2016=
 =C3=A0 06:00 +0800, Herve Jourdain a =C3=A9crit&nbsp;:</div><blockquote ty=
pe=3D"cite"><pre>Kernel 4.4.6+ on RaspberryPi support .dtbo files for overl=
ays, instead of .dtb.
Add support for both variants of overlays ("-overlay.dtb" and ".dtbo")
Change which variant needs to be supported based on the kernel version

CAUTION: when called from IMAGE_CMD_rpi-sdimg, 'TMPDIR' is not set, causing=
 'STAGING_KERNEL_BUILDDIR' to not be expanded, causing get_kernelversion_fi=
le() to fail!
To avoid this problem, get_dts() and split_overlays() MUST be called with t=
he kernel version parameter set, when called from IMAGE_CMD_rpi-sdimg!

Signed-off-by: Herve Jourdain &lt;<a href=3D"mailto:herve.jourdain@neuf.fr"=
>herve.jourdain@neuf.fr</a>&gt;
---
 classes/linux-raspberrypi-base.bbclass | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspber=
rypi-base.bbclass
index 40beef1..930fc44 100644
--- a/classes/linux-raspberrypi-base.bbclass
+++ b/classes/linux-raspberrypi-base.bbclass
@@ -1,7 +1,8 @@
 inherit linux-kernel-base
=20
-
 def get_dts(d, ver):
+    import re
+
     staging_dir =3D d.getVar("STAGING_KERNEL_BUILDDIR", True)
     dts =3D d.getVar("KERNEL_DEVICETREE", True)
=20
@@ -20,20 +21,24 @@ def get_dts(d, ver):
=20
     # Always turn off device tree support for kernel's &lt; 3.18
     try:
-        if int(min_ver[0]) &lt;=3D 3:
-            if int(min_ver[1]) &lt; 18:
-                dts =3D ""
+        if int(min_ver[0]) &gt;=3D 4:
+            if (int(min_ver[1]) &lt; 4) or (int(min_ver[1]) =3D=3D 4 and i=
nt(min_ver[2]) &lt; 6):
+                dts =3D ' '.join([(re.sub(r'(.*)\.dtbo$', r'\1-overlay.dtb=
', x)) for x in dts.split()])
+        elif int(min_ver[1]) &lt; 18:
+            dts =3D ""
     except IndexError:
         min_ver =3D None
=20
     return dts
=20
=20
-def split_overlays(d, out):
-    dts =3D get_dts(d, None)
+def split_overlays(d, ver, out):
+    dts =3D get_dts(d, ver)
     if out:
         overlays =3D oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, d)
+        overlays =3D oe.utils.str_filter_out('\S+\.dtbo$', overlays, d)
     else:
-        overlays =3D oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d)
+        overlays =3D oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d) + \
+                   " " + oe.utils.str_filter('\S+\.dtbo$', dts, d)
=20
     return overlays
</pre></blockquote></div></blockquote></blockquote></body></html>

--=-Suq1jIUF3EdQb1Y9pjcM--

--=-OsiEvXAHq7PM0Fxm5JIQ
Content-Disposition: attachment;
	filename*0=0001-Changed-DT-root-overlays-management-and-populate-WIC.pat;
	filename*1=ch
Content-Type: text/x-patch;
	name="0001-Changed-DT-root-overlays-management-and-populate-WIC.patch";
	charset="UTF-8"
Content-Transfer-Encoding: base64

RnJvbSBiMDdjMjJmYWVhZDRkZWExZjVlYjkwZTVlMzFlYmNhNmI2NTE5NWM0IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBGcmFuY29pcyBNdWxsZXIgPGZvcmxvcm4xOEBnbWFpbC5jb20+
CkRhdGU6IFR1ZSwgMjYgSnVsIDIwMTYgMjA6MzU6MzcgKzAyMDAKU3ViamVjdDogW1BBVENIIDEv
MV0gQ2hhbmdlZCBEVCByb290L292ZXJsYXlzIG1hbmFnZW1lbnQgYW5kIHBvcHVsYXRlIFdJQwog
aW1hZ2VzIHdpdGggdGhlc2UgRFQuCgotLS0KIGNsYXNzZXMvbGludXgtcmFzcGJlcnJ5cGktYmFz
ZS5iYmNsYXNzICAgICB8IDQ0IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogY2xhc3Nl
cy9zZGNhcmRfaW1hZ2UtcnBpLmJiY2xhc3MgICAgICAgICAgIHwgNDAgKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0tCiBjb25mL21hY2hpbmUvaW5jbHVkZS9ycGktYmFzZS5pbmMgICAgICAgICAg
fCAyNSArKysrKysrKysrKysrKysrKwogcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgtcmFzcGJl
cnJ5cGkuaW5jIHwgMjYgKysrKysrKysrKysrKy0tLS0tCiA0IGZpbGVzIGNoYW5nZWQsIDYxIGlu
c2VydGlvbnMoKyksIDc0IGRlbGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0IGNsYXNzZXMv
bGludXgtcmFzcGJlcnJ5cGktYmFzZS5iYmNsYXNzCgpkaWZmIC0tZ2l0IGEvY2xhc3Nlcy9saW51
eC1yYXNwYmVycnlwaS1iYXNlLmJiY2xhc3MgYi9jbGFzc2VzL2xpbnV4LXJhc3BiZXJyeXBpLWJh
c2UuYmJjbGFzcwpkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggOTMwZmM0NC4uMDAwMDAw
MAotLS0gYS9jbGFzc2VzL2xpbnV4LXJhc3BiZXJyeXBpLWJhc2UuYmJjbGFzcworKysgL2Rldi9u
dWxsCkBAIC0xLDQ0ICswLDAgQEAKLWluaGVyaXQgbGludXgta2VybmVsLWJhc2UKLQotZGVmIGdl
dF9kdHMoZCwgdmVyKToKLSAgICBpbXBvcnQgcmUKLQotICAgIHN0YWdpbmdfZGlyID0gZC5nZXRW
YXIoIlNUQUdJTkdfS0VSTkVMX0JVSUxERElSIiwgVHJ1ZSkKLSAgICBkdHMgPSBkLmdldFZhcigi
S0VSTkVMX0RFVklDRVRSRUUiLCBUcnVlKQotCi0gICAgIyBkLmdldFZhcigpIG1pZ2h0IHJldHVy
biAnTm9uZScgYXMgYSBub3JtYWwgc3RyaW5nCi0gICAgIyBsZWFkaW5nIHRvICdpcyBOb25lJyBj
aGVjayBpc24ndCBlbm91Z2guCi0gICAgIyBUT0RPOiBJbnZlc3RpZ2F0ZSBpZiB0aGlzIGlzIGEg
YnVnIGluIGJpdGJha2UKLSAgICBpZiB2ZXIgaXMgTm9uZSBvciB2ZXIgPT0gIk5vbmUiOgotICAg
ICAgICAnJycgaWYgJ3ZlcicgaXNuJ3Qgc2V0IHRyeSB0byBncmFiIHRoZSBrZXJuZWwgdmVyc2lv
bgotICAgICAgICBmcm9tIHRoZSBrZXJuZWwgc3RhZ2luZyAnJycKLSAgICAgICAgdmVyID0gZ2V0
X2tlcm5lbHZlcnNpb25fZmlsZShzdGFnaW5nX2RpcikKLQotICAgIGlmIHZlciBpcyBub3QgTm9u
ZToKLSAgICAgICAgbWluX3ZlciA9IHZlci5zcGxpdCgnLicsIDMpCi0gICAgZWxzZToKLSAgICAg
ICAgcmV0dXJuIGR0cwotCi0gICAgIyBBbHdheXMgdHVybiBvZmYgZGV2aWNlIHRyZWUgc3VwcG9y
dCBmb3Iga2VybmVsJ3MgPCAzLjE4Ci0gICAgdHJ5OgotICAgICAgICBpZiBpbnQobWluX3Zlclsw
XSkgPj0gNDoKLSAgICAgICAgICAgIGlmIChpbnQobWluX3ZlclsxXSkgPCA0KSBvciAoaW50KG1p
bl92ZXJbMV0pID09IDQgYW5kIGludChtaW5fdmVyWzJdKSA8IDYpOgotICAgICAgICAgICAgICAg
IGR0cyA9ICcgJy5qb2luKFsocmUuc3ViKHInKC4qKVwuZHRibyQnLCByJ1wxLW92ZXJsYXkuZHRi
JywgeCkpIGZvciB4IGluIGR0cy5zcGxpdCgpXSkKLSAgICAgICAgZWxpZiBpbnQobWluX3Zlclsx
XSkgPCAxODoKLSAgICAgICAgICAgIGR0cyA9ICIiCi0gICAgZXhjZXB0IEluZGV4RXJyb3I6Ci0g
ICAgICAgIG1pbl92ZXIgPSBOb25lCi0KLSAgICByZXR1cm4gZHRzCi0KLQotZGVmIHNwbGl0X292
ZXJsYXlzKGQsIHZlciwgb3V0KToKLSAgICBkdHMgPSBnZXRfZHRzKGQsIHZlcikKLSAgICBpZiBv
dXQ6Ci0gICAgICAgIG92ZXJsYXlzID0gb2UudXRpbHMuc3RyX2ZpbHRlcl9vdXQoJ1xTK1wtb3Zl
cmxheVwuZHRiJCcsIGR0cywgZCkKLSAgICAgICAgb3ZlcmxheXMgPSBvZS51dGlscy5zdHJfZmls
dGVyX291dCgnXFMrXC5kdGJvJCcsIG92ZXJsYXlzLCBkKQotICAgIGVsc2U6Ci0gICAgICAgIG92
ZXJsYXlzID0gb2UudXRpbHMuc3RyX2ZpbHRlcignXFMrXC1vdmVybGF5XC5kdGIkJywgZHRzLCBk
KSArIFwKLSAgICAgICAgICAgICAgICAgICAiICIgKyBvZS51dGlscy5zdHJfZmlsdGVyKCdcUytc
LmR0Ym8kJywgZHRzLCBkKQotCi0gICAgcmV0dXJuIG92ZXJsYXlzCmRpZmYgLS1naXQgYS9jbGFz
c2VzL3NkY2FyZF9pbWFnZS1ycGkuYmJjbGFzcyBiL2NsYXNzZXMvc2RjYXJkX2ltYWdlLXJwaS5i
YmNsYXNzCmluZGV4IGEwNDIwNGEuLjU1ZmFmNzQgMTAwNjQ0Ci0tLSBhL2NsYXNzZXMvc2RjYXJk
X2ltYWdlLXJwaS5iYmNsYXNzCisrKyBiL2NsYXNzZXMvc2RjYXJkX2ltYWdlLXJwaS5iYmNsYXNz
CkBAIC0xLDUgKzEsNCBAQAogaW5oZXJpdCBpbWFnZV90eXBlcwotaW5oZXJpdCBsaW51eC1yYXNw
YmVycnlwaS1iYXNlCiAKICMKICMgQ3JlYXRlIGFuIGltYWdlIHRoYXQgY2FuIGJ5IHdyaXR0ZW4g
b250byBhIFNEIGNhcmQgdXNpbmcgZGQuCkBAIC03NSw4ICs3NCw2IEBAIElNQUdFREFURVNUQU1Q
ID0gIiR7QHRpbWUuc3RyZnRpbWUoJyVZLiVtLiVkJyx0aW1lLmdtdGltZSgpKX0iCiBJTUFHRV9D
TURfcnBpLXNkaW1nW3ZhcmRlcHNleGNsdWRlXSArPSAiSU1BR0VEQVRFU1RBTVAiCiBJTUFHRV9D
TURfcnBpLXNkaW1nW3ZhcmRlcHNleGNsdWRlXSArPSAiREFURVRJTUUiCiAKLVJQSV9LRVJORUxf
VkVSU0lPTiA6PSAiJHtAZ2V0X2tlcm5lbHZlcnNpb25fZmlsZSgnJHtTVEFHSU5HX0tFUk5FTF9C
VUlMRERJUn0nKX0iCi0KIElNQUdFX0NNRF9ycGktc2RpbWcgKCkgewogCiAJIyBBbGlnbiBwYXJ0
aXRpb25zCkBAIC04Niw5ICs4Myw2IEBAIElNQUdFX0NNRF9ycGktc2RpbWcgKCkgewogCiAJZWNo
byAiQ3JlYXRpbmcgZmlsZXN5c3RlbSB3aXRoIEJvb3QgcGFydGl0aW9uICR7Qk9PVF9TUEFDRV9B
TElHTkVEfSBLaUIgYW5kIFJvb3RGUyAkUk9PVEZTX1NJWkUgS2lCIgogCi0JIyBDaGVjayBpZiB3
ZSBhcmUgYnVpbGRpbmcgd2l0aCBkZXZpY2UgdHJlZSBzdXBwb3J0Ci0JRFRTPSIke0BnZXRfZHRz
KGQsICcke1JQSV9LRVJORUxfVkVSU0lPTn0nKX0iCi0KIAkjIEluaXRpYWxpemUgc2RjYXJkIGlt
YWdlIGZpbGUKIAlkZCBpZj0vZGV2L3plcm8gb2Y9JHtTRElNR30gYnM9MTAyNCBjb3VudD0wIHNl
ZWs9JHtTRElNR19TSVpFfQogCkBAIC0xMDYsMjcgKzEwMCwyNyBAQCBJTUFHRV9DTURfcnBpLXNk
aW1nICgpIHsKIAlybSAtZiAke1dPUktESVJ9L2Jvb3QuaW1nCiAJbWtmcy52ZmF0IC1uICIke0JP
T1RERF9WT0xVTUVfSUR9IiAtUyA1MTIgLUMgJHtXT1JLRElSfS9ib290LmltZyAkQk9PVF9CTE9D
S1MKIAltY29weSAtaSAke1dPUktESVJ9L2Jvb3QuaW1nIC1zICR7REVQTE9ZX0RJUl9JTUFHRX0v
YmNtMjgzNS1ib290ZmlsZXMvKiA6Oi8KLQlpZiB0ZXN0IC1uICIke0RUU30iOyB0aGVuCi0JCSMg
RGV2aWNlIFRyZWUgT3ZlcmxheXMgYXJlIGFzc3VtZWQgdG8gYmUgc3VmZml4ZWQgYnkgJy1vdmVy
bGF5LmR0YicgKDQuMS54KSBvciBieSAnLmR0Ym8nICg0LjQuOSspIHN0cmluZyBhbmQgd2lsbCBi
ZSBwdXQgaW4gYSBkZWRpY2F0ZWQgZm9sZGVyCi0JCURUX09WRVJMQVlTPSIke0BzcGxpdF9vdmVy
bGF5cyhkLCAnJHtSUElfS0VSTkVMX1ZFUlNJT059JywgMCl9IgotCQlEVF9ST09UPSIke0BzcGxp
dF9vdmVybGF5cyhkLCAnJHtSUElfS0VSTkVMX1ZFUlNJT059JywgMSl9IgogCi0JCSMgQ29weSBi
b2FyZCBkZXZpY2UgdHJlZXMgdG8gcm9vdCBmb2xkZXIKLQkJZm9yIERUQiBpbiAke0RUX1JPT1R9
OyBkbwotCQkJRFRCX0JBU0VfTkFNRT1gYmFzZW5hbWUgJHtEVEJ9IC5kdGJgCisJIyBEZXZpY2Ug
VHJlZSBPdmVybGF5cyBhcmUgYXNzdW1lZCB0byBiZSBzdWZmaXhlZCBieSAnLW92ZXJsYXkuZHRi
JyAoNC4xLngpIG9yIGJ5ICcuZHRibycgKDQuNC45Kykgc3RyaW5nIGFuZCB3aWxsIGJlIHB1dCBp
biBhIGRlZGljYXRlZCBmb2xkZXIKKwlEVF9PVkVSTEFZUz0iJHtAIiAiLmpvaW4oZC5nZXRWYXJG
bGFnKCdLRVJORUxfREVWSUNFVFJFRScsICdkdG92ZXJsYXlzJywgVHJ1ZSkpfSIKKwlEVF9ST09U
PSIke0AiICIuam9pbihkLmdldFZhckZsYWcoJ0tFUk5FTF9ERVZJQ0VUUkVFJywgJ2R0cm9vdHMn
LCBUcnVlKSl9IgogCi0JCQltY29weSAtaSAke1dPUktESVJ9L2Jvb3QuaW1nIC1zICR7REVQTE9Z
X0RJUl9JTUFHRX0vJHtLRVJORUxfSU1BR0VUWVBFfS0ke0RUQl9CQVNFX05BTUV9LmR0YiA6OiR7
RFRCX0JBU0VfTkFNRX0uZHRiCi0JCWRvbmUKKwkjIENvcHkgYm9hcmQgZGV2aWNlIHRyZWVzIHRv
IHJvb3QgZm9sZGVyCisJZm9yIERUQiBpbiAke0RUX1JPT1R9OyBkbworCQlEVEJfQkFTRV9OQU1F
PWBiYXNlbmFtZSAke0RUQn0gLmR0YmAKIAotCQkjIENvcHkgZGV2aWNlIHRyZWUgb3ZlcmxheXMg
dG8gZGVkaWNhdGVkIGZvbGRlcgotCQltbWQgLWkgJHtXT1JLRElSfS9ib290LmltZyBvdmVybGF5
cwotCQlmb3IgRFRCIGluICR7RFRfT1ZFUkxBWVN9OyBkbwotCQkJCURUQl9FWFQ9JHtEVEIjIyou
fQotCQkJCURUQl9CQVNFX05BTUU9YGJhc2VuYW1lICR7RFRCfSAuIiR7RFRCX0VYVH0iYAorCQlt
Y29weSAtaSAke1dPUktESVJ9L2Jvb3QuaW1nIC1zICR7REVQTE9ZX0RJUl9JTUFHRX0vJHtLRVJO
RUxfSU1BR0VUWVBFfS0ke0RUQl9CQVNFX05BTUV9LmR0YiA6OiR7RFRCX0JBU0VfTkFNRX0uZHRi
CisJZG9uZQorCisJIyBDb3B5IGRldmljZSB0cmVlIG92ZXJsYXlzIHRvIGRlZGljYXRlZCBmb2xk
ZXIKKwltbWQgLWkgJHtXT1JLRElSfS9ib290LmltZyBvdmVybGF5cworCWZvciBEVEIgaW4gJHtE
VF9PVkVSTEFZU307IGRvCisJCQlEVEJfRVhUPSR7RFRCIyMqLn0KKwkJCURUQl9CQVNFX05BTUU9
YGJhc2VuYW1lICR7RFRCfSAuIiR7RFRCX0VYVH0iYAorCisJCW1jb3B5IC1pICR7V09SS0RJUn0v
Ym9vdC5pbWcgLXMgJHtERVBMT1lfRElSX0lNQUdFfS8ke0tFUk5FTF9JTUFHRVRZUEV9LSR7RFRC
X0JBU0VfTkFNRX0uJHtEVEJfRVhUfSA6Om92ZXJsYXlzLyR7RFRCX0JBU0VfTkFNRX0uJHtEVEJf
RVhUfQorCWRvbmUKIAotCQkJbWNvcHkgLWkgJHtXT1JLRElSfS9ib290LmltZyAtcyAke0RFUExP
WV9ESVJfSU1BR0V9LyR7S0VSTkVMX0lNQUdFVFlQRX0tJHtEVEJfQkFTRV9OQU1FfS4ke0RUQl9F
WFR9IDo6b3ZlcmxheXMvJHtEVEJfQkFTRV9OQU1FfS4ke0RUQl9FWFR9Ci0JCWRvbmUKLQlmaQog
CWNhc2UgIiR7S0VSTkVMX0lNQUdFVFlQRX0iIGluCiAJInVJbWFnZSIpCiAJCW1jb3B5IC1pICR7
V09SS0RJUn0vYm9vdC5pbWcgLXMgJHtERVBMT1lfRElSX0lNQUdFfS91LWJvb3QuYmluIDo6JHtT
RElNR19LRVJORUxJTUFHRX0KZGlmZiAtLWdpdCBhL2NvbmYvbWFjaGluZS9pbmNsdWRlL3JwaS1i
YXNlLmluYyBiL2NvbmYvbWFjaGluZS9pbmNsdWRlL3JwaS1iYXNlLmluYwppbmRleCA0N2ViMjNi
Li44YTBkMTRhIDEwMDY0NAotLS0gYS9jb25mL21hY2hpbmUvaW5jbHVkZS9ycGktYmFzZS5pbmMK
KysrIGIvY29uZi9tYWNoaW5lL2luY2x1ZGUvcnBpLWJhc2UuaW5jCkBAIC01MSwzICs1MSwyOCBA
QCBNQUNISU5FX0VYVFJBX1JSRUNPTU1FTkRTICs9ICIga2VybmVsLW1vZHVsZXMiCiBTUExBU0gg
PSAicHNwbGFzaC1yYXNwYmVycnlwaSIKIAogSU1BR0VfQk9PVF9GSUxFUyA/PSAiYmNtMjgzNS1i
b290ZmlsZXMvKiAke0tFUk5FTF9JTUFHRVRZUEV9OyR7U0RJTUdfS0VSTkVMSU1BR0V9IgorCitw
eXRob24gKCkgeworICAgICMgUHJvY2VzcyBLRVJORUxfREVWSUNFVFJFRSB2YXJpYWJsZSB0byBz
ZXBlcmF0ZSBub3JtYWwgZGV2aWNlIHRyZWVzIGZyb20gb3ZlcmxheXMgYW5kCisgICAgIyBwcmVw
YXJlIHRoZSBJTUFHRV9CT09UX0ZJTEVTIHZhcmlhYmxlIHJlcXVpcmVkIGZvciBXSUMgdG8gcG9w
dWxhdGUgYm9vdCBwYXJ0aXRpb24gd2l0aCBkZXZpY2UgdHJlZXMuCisKKyAgICBrZXJuZWx0eXBl
ID0gZC5nZXRWYXIoJ0tFUk5FTF9JTUFHRVRZUEUnLCBUcnVlKQorICAgIGtlcm5lbGR0ID0gZC5n
ZXRWYXIoIktFUk5FTF9ERVZJQ0VUUkVFIiwgVHJ1ZSkKKworICAgIGJvb3RfZmlsZXMgPSBbXQor
ICAgIGR0b3ZybCA9IFtdCisgICAgZHRyb290ID0gW10KKworICAgIGZvciBkdCBpbiBrZXJuZWxk
dC5zcGxpdCgpIDoKKyAgICAgICAgIyBEZXZpY2UgVHJlZSBPdmVybGF5cyBhcmUgYXNzdW1lZCB0
byBiZSBzdWZmaXhlZCBieSAnLW92ZXJsYXkuZHRiJyAoNC4xLngpIG9yIGJ5ICcuZHRibycgKDQu
NC45KykKKyAgICAgICAgaWYgKCBkdC5lbmRzd2l0aCgnLW92ZXJsYXkuZHRiJykgb3IgZHQuZW5k
c3dpdGgoJy5kdGJvJykgKSA6CisgICAgICAgICAgICBib290X2ZpbGVzLmFwcGVuZCgiezB9LXsx
fTt7Mn0iLmZvcm1hdChrZXJuZWx0eXBlLCBvcy5wYXRoLmJhc2VuYW1lKGR0KSwgZHQpICkKKyAg
ICAgICAgICAgIGR0b3ZybC5hcHBlbmQoZHQpCisgICAgICAgIGVsc2UgOgorICAgICAgICAgICAg
Ym9vdF9maWxlcy5hcHBlbmQoInswfS17MX07ezJ9Ii5mb3JtYXQoa2VybmVsdHlwZSwgb3MucGF0
aC5iYXNlbmFtZShkdCksIGR0KSApCisgICAgICAgICAgICBkdHJvb3QuYXBwZW5kKGR0KQorCisg
ICAgZC5zZXRWYXJGbGFnKCJLRVJORUxfREVWSUNFVFJFRSIsICJkdG92ZXJsYXlzIiwgZHRvdnJs
KQorICAgIGQuc2V0VmFyRmxhZygiS0VSTkVMX0RFVklDRVRSRUUiLCAiZHRyb290cyIsIGR0cm9v
dCkKKyAgICBkLmFwcGVuZFZhcigiSU1BR0VfQk9PVF9GSUxFUyIsICcgJysnICcuam9pbihib290
X2ZpbGVzKSkKK30KZGlmZiAtLWdpdCBhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXJhc3Bi
ZXJyeXBpLmluYyBiL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXJhc3BiZXJyeXBpLmluYwpp
bmRleCA2MTg0NDAyLi5mZjEyY2Q0IDEwMDY0NAotLS0gYS9yZWNpcGVzLWtlcm5lbC9saW51eC9s
aW51eC1yYXNwYmVycnlwaS5pbmMKKysrIGIvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgtcmFz
cGJlcnJ5cGkuaW5jCkBAIC0xLDUgKzEsNCBAQAogcmVxdWlyZSBsaW51eC1ycGkuaW5jCi1pbmhl
cml0IGxpbnV4LXJhc3BiZXJyeXBpLWJhc2UKIAogREVTQ1JJUFRJT04gPSAiTGludXggS2VybmVs
IGZvciBSYXNwYmVycnkgUGkiCiBTRUNUSU9OID0gImtlcm5lbCIKQEAgLTI5LDEzICsyOCwyNiBA
QCBVREVWX0dFXzE0MSA/PSAiMSIKIAogS0VSTkVMX01PRFVMRV9BVVRPTE9BRCArPSAiJHtAYmIu
dXRpbHMuY29udGFpbnMoIk1BQ0hJTkVfRkVBVFVSRVMiLCAicGl0ZnQyOHIiLCAic3RtcGUtdHMi
LCAiIiwgZCl9IgogCi0jIFNldCBwcm9ncmFtbWF0aWNhbGx5IHNvbWUgdmFyaWFibGVzIGR1cmlu
ZyByZWNpcGUgcGFyc2luZwotIyBTZWUgaHR0cDovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3Mv
Y3VycmVudC9iaXRiYWtlLXVzZXItbWFudWFsL2JpdGJha2UtdXNlci1tYW51YWwuaHRtbCNhbm9u
eW1vdXMtcHl0aG9uLWZ1bmN0aW9ucwotcHl0aG9uIF9fYW5vbnltb3VzICgpIHsKLSAgICBrZXJu
ZWx0eXBlID0gZC5nZXRWYXIoJ0tFUk5FTF9JTUFHRVRZUEUnLCBUcnVlKQotICAgIGtlcm5lbGR0
ID0gZ2V0X2R0cyhkLCBkLmdldFZhcignTElOVVhfVkVSU0lPTicsIFRydWUpKQotICAgIGQuc2V0
VmFyKCJLRVJORUxfREVWSUNFVFJFRSIsIGtlcm5lbGR0KQorRElTQUJMRV9PVkVSTEFZRFRCX1dB
Uk5JTkcgPz0gIjAiCisKK3B5dGhvbiBjaGVja19kZXZpY2V0cmVlX292ZXJsYXlzKCkgeworICAg
IGxpbnV4X3ZlcnNpb24gPSBkLmdldFZhcignTElOVVhfVkVSU0lPTicsIFRydWUpCisKKyAgICBp
ZiBiYi51dGlscy52ZXJjbXBfc3RyaW5nX29wKGxpbnV4X3ZlcnNpb24sICczLjE4JywgJzwnKToK
KyAgICAgICAgaWYgYW55KCBkLmdldFZhcigiS0VSTkVMX0RFVklDRVRSRUUiLFRydWUpLnNwbGl0
KCkgKToKKyAgICAgICAgICAgIGJiLmZhdGFsKCJSUGkga2VybmVscyBwcmlvciB0byAzLjE4IGNh
bid0IGhhbmRsZSBkZXZpY2V0cmVlcy4gUGxlYXNlIGVtcHR5IG91dCB0aGUgS0VSTkVMX0RFVklD
RVRSRUUgdmFyaWFibGUgaW4geW91ciBjb25maWd1cmF0aW9uLiIpCisKKyAgICBlbGlmIGJiLnV0
aWxzLnZlcmNtcF9zdHJpbmdfb3AobGludXhfdmVyc2lvbiwgJzQuNC42JywgJzwnKToKKyAgICAg
ICAgaWYgYW55KCBbZHRiX292cmwuZW5kc3dpdGgoJy5kdGJvJykgZm9yIGR0Yl9vdnJsIGluIGQu
Z2V0VmFyRmxhZygiS0VSTkVMX0RFVklDRVRSRUUiLCJkdG92ZXJsYXlzIixUcnVlKV0pOgorICAg
ICAgICAgICAgYmIuZXJyb3IoIlJQaSBrZXJuZWxzIHByaW9yIHRvIDQuNC42IGNhbid0IGhhbmRs
ZSBkZXZpY2V0cmVlIG92ZXJsYXlzIHdpdGggJyouZHRibycgZXh0ZW5zaW9uLiBQbGVhc2UgcmVt
b3ZlIGFueSAnKi5kdGJvJyBmaWxlbmFtZSBsaXN0ZWQgaW4gS0VSTkVMX0RFVklDRVRSRUUgdmFy
aWFibGUgaW4geW91ciBjb25maWd1cmF0aW9uIG9yIHJlbmFtZSBlYWNoIHdpdGggJyotb3Zlcmxh
eS5kdGInIHN1ZmZpeCBzaG91bGQgdGhlIG92ZXJsYXkgYmUgZ2VuZXJhdGVkIGZvciB0aGUgdGFy
Z2V0LiIpCisKKyAgICBlbHNlOgorICAgICAgICBpZiBkLmdldFZhcigiRElTQUJMRV9PVkVSTEFZ
RFRCX1dBUk5JTkciLCBUcnVlKSA9PSAiMCI6CisgICAgICAgICAgICBpZiBhbnkoIFtkdGJfb3Zy
bC5lbmRzd2l0aCgnLW92ZXJsYXkuZHRiJykgZm9yIGR0Yl9vdnJsIGluIGQuZ2V0VmFyRmxhZygi
S0VSTkVMX0RFVklDRVRSRUUiLCJkdG92ZXJsYXlzIixUcnVlKV0pOgorICAgICAgICAgICAgICAg
IGJiLndhcm4oIlJQaSBib290bG9hZGVyIGFuZCBrZXJuZWxzIHN0YXJ0aW5nIGZyb20gNC40LjYg
aGF2ZSBkaXNhYmxlZCB1c2FnZSBvZiAnKi1vdmVybGF5LmR0Yicgb3ZlcmxheXMgaW4gYmVuZWZp
dCB0byAnKi5kdGJvJyBzdWZmaXguIFBsZWFzZSB1cGRhdGUgdGhlIEtFUk5FTF9ERVZJQ0VUUkVF
IHZhcmlhYmxlIGluIHlvdXIgY29uZmlndXJhdGlvbiB0byByZWZsZWN0IHRoaXMgY2hhbmdlIGFz
ICcqLW92ZXJsYXkuZHRiJyBmaWxlcyB3b24ndCBiZSBsb2FkZWQgYnkgdGhlIHRhcmdldCBhbnkg
bW9yZSEiKQogfQorZG9fY29uZmlndXJlW3ByZWZ1bmNzXSArPSAiY2hlY2tfZGV2aWNldHJlZV9v
dmVybGF5cyIKKwogCiBkb19rZXJuZWxfY29uZmlnbWVfcHJlcGVuZCgpIHsKICAgICBpbnN0YWxs
IC1tIDA2NDQgJHtTfS9hcmNoLyR7QVJDSH0vY29uZmlncy8ke0tFUk5FTF9ERUZDT05GSUd9ICR7
V09SS0RJUn0vZGVmY29uZmlnIHx8IGRpZSAiTm8gZGVmYXVsdCBjb25maWd1cmF0aW9uIGZvciAk
e01BQ0hJTkV9IC8gJHtLRVJORUxfREVGQ09ORklHfSBhdmFpbGFibGUuIgotLSAKMi44LjEKCg==

--=-OsiEvXAHq7PM0Fxm5JIQ--
