Return-Path: <forlorn18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78C56E00A03; Mon, 25 Jul 2016 07:46:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (forlorn18[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFF51E009AA
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 07:45:57 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id q128so17063065wma.1
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 07:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:date:in-reply-to:references:mime-version; 
	bh=UsB20qFPYY2ju5H5aqNOAT/Q5Ss9lH0wEmcTHXfvyKY=;
	b=gFwi7RnpiqFLmNmfU312pSllN67SYwZYg2z4Tl181IGas/kfmgXic6wx7gawX4JLnJ
	0DKQj2rMpHLOAfQ/tDsaT73M3z9n22CcB7tG995n2rXdIjrX9PNgD/+0vmiiAdiXNeYk
	D/wigmETkXq98IUMpGLFZG2bxB/yKFJjE3GwnAGQAL1rQWwDkp7DCnOFdMQU9yGxJp8M
	z4U0n3zrsQm4ia/bgFiKfmiQpjJj65le+dQKKmuKzbgreULQsGi75A7JPMr2enZyOvB6
	ZYgUG9oH4kiwa+62Ff58lxd+97pGAwOeAH4ba/fMflCIgdUN+jJhBeT9ONpf0cXXSy7c
	OB8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version;
	bh=UsB20qFPYY2ju5H5aqNOAT/Q5Ss9lH0wEmcTHXfvyKY=;
	b=lcp7Cb1JgVKS5IOz2vwQgxpFYwf7+x97lbSfwpb6r+By+w7hHgppZ23PJBV6q3nBTt
	0bLy06hbIUYNE1tInkZnULPP5aWAzzHcIkG1NJ93Yvjnt/ujVtmVRv6uSWJVx/N9rZqP
	xsDLFZTZi+FwOUEWGLGrDWfnaElDDoSNSdID+HRr2uSwbPQBM7v7EuIjctQptpRhuLYQ
	EvPZ8Efh2wY3PntvrWxfXqL3SMfYdg738CvYPJw49Ax81u70aNSMsxrN8+K5ctNeTwmv
	vWW2uot/JFWkmPZHu1ex1HU0q0l5kIc3M6JHxd25EFy82wFjY331hst/7dtiSaHwk1ml
	NQKg==
X-Gm-Message-State: AEkooutxE6PBXaCZLh6rH9JfK4XkQz4Sek/nKjcNxwHdIZWqV/UEOiOSl+lw5SrNvEa64w==
X-Received: by 10.28.96.11 with SMTP id u11mr21296186wmb.5.1469457956400;
	Mon, 25 Jul 2016 07:45:56 -0700 (PDT)
Received: from ConcEmb (ger67-1-88-180-180-180.fbx.proxad.net.
	[88.180.180.180]) by smtp.gmail.com with ESMTPSA id
	kq2sm16187511wjc.41.2016.07.25.07.45.55
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 25 Jul 2016 07:45:55 -0700 (PDT)
Message-ID: <1469457954.5627.76.camel@gmail.com>
From: Francois Muller <forlorn18@gmail.com>
To: yocto@yoctoproject.org, Herve Jourdain <herve.jourdain@neuf.fr>
Date: Mon, 25 Jul 2016 16:45:54 +0200
In-Reply-To: <1469052039-7746-4-git-send-email-herve.jourdain@neuf.fr>
References: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
	<1469052039-7746-4-git-send-email-herve.jourdain@neuf.fr>
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
X-List-Received-Date: Mon, 25 Jul 2016 14:46:01 -0000
X-Groupsio-MsgNum: 31225
Content-Type: multipart/mixed; boundary="=-r7o/FTNBuG1wwESbFb+j"

--=-r7o/FTNBuG1wwESbFb+j
Content-Type: multipart/alternative; boundary="=-rzX2Q0G3UactbLVxV/CX"

--=-rzX2Q0G3UactbLVxV/CX
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Hervé,

Thank you for giving us up and running .dtbo overlays functionality
through this patch, it is running fine for me.

Nevertheless, I have a concern about the processing applied to overlay
filenames.

According to this post https://www.raspberrypi.org/forums/viewtopic.php
?f=107&t=139732, '-overlay.dtb' suffixes have been superseded by
'.dtbo' suffix to reflect an improvement in overlay functionalities and
thus overlay binary format (or simply content, I don't know).
Moreover, changing the suffix gives a chance for older and newer
overlay formats to coexist in a boot folder.

So, I'm not very fond of a build system changing the inputs I give to
it (i.e. KERNEL_DEVICETREE) depending on another input from my side
(kernel version) without at least notifying me the change occurred.
I would highly prefer a bbwarn (or should it even fail?) if the
requested overlay filenames don't suit the kernel version being chosen
(btw device trees are theoretically aimed to be kernel version and even
OS independent as it should only contain pure hardware platform
description).
I understand and appreciate the intention of offering a kind of
compatibility for kernels prior to 4.4.6 but I don't think it's needed
here. 

If KERNEL_DEVICETREE isn't empty for kernels prior to 3.18 => let's
disable device trees (or simply remove this test, this layer doesn't
provide any)
If KERNEL_DEVICETREE asks for -overlay.dtb and kernel >= 3.18 => let's
compile it, it has been requested
If KERNEL_DEVICETREE asks for -overlay.dtb and/or .dtbo and kernel >=
4.4.6 => let's compile it, it has been requested

The tough thing will be to keep consistency between KERNEL_DEVICETREE
content and kernel version to build.
So as long as 4.1 is the layer's kernel preferred version,
KERNEL_DEVICETREE should only contain '-overlay.dtb' overlays, along
with the next to be used KERNEL_DEVICETREE variable (containing .dtbo)
that is commented out.
As soon as 4.4 is chosen, let's default to .dtbo overlays and comment
out KERNEL_DEVICETREE variable containing '-overlay.dtb' overlays.

What do you think about this behavior ?

As side notes, you may use some existing utility function to compare
software versions like bb.utils.vercmp_string_op and overlays filtering
may be done in a single pass : I've attached a proposal.

BR,
François

Le jeudi 21 juillet 2016 à 06:00 +0800, Herve Jourdain a écrit :
> > Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays,
instead of .dtb.
> > Add support for both variants of overlays ("-overlay.dtb" and
".dtbo")
> > Change which variant needs to be supported based on the kernel
version
> 
> > > CAUTION: when called from IMAGE_CMD_rpi-sdimg, 'TMPDIR' is not set,
causing 'STAGING_KERNEL_BUILDDIR' to not be expanded, causing
get_kernelversion_file() to fail!
> > > To avoid this problem, get_dts() and split_overlays() MUST be called
with the kernel version parameter set, when called from
IMAGE_CMD_rpi-sdimg!
> 
> > Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  classes/linux-raspberrypi-base.bbclass | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> > diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-
raspberrypi-base.bbclass
> index 40beef1..930fc44 100644
> --- a/classes/linux-raspberrypi-base.bbclass
> +++ b/classes/linux-raspberrypi-base.bbclass
> @@ -1,7 +1,8 @@
>  inherit linux-kernel-base
>  
> -
>  def get_dts(d, ver):
> +    import re
> +
>      staging_dir = d.getVar("STAGING_KERNEL_BUILDDIR", True)
>      dts = d.getVar("KERNEL_DEVICETREE", True)
>  
> @@ -20,20 +21,24 @@ def get_dts(d, ver):
>  
>      # Always turn off device tree support for kernel's < 3.18
>      try:
> -        if int(min_ver[0]) <= 3:
> -            if int(min_ver[1]) < 18:
> -                dts = ""
> +        if int(min_ver[0]) >= 4:
> > +            if (int(min_ver[1]) < 4) or (int(min_ver[1]) == 4 and
int(min_ver[2]) < 6):
> > +                dts = ' '.join([(re.sub(r'(.*)\.dtbo$', r'\1-
overlay.dtb', x)) for x in dts.split()])
> +        elif int(min_ver[1]) < 18:
> +            dts = ""
>      except IndexError:
>          min_ver = None
>  
>      return dts
>  
>  
> -def split_overlays(d, out):
> -    dts = get_dts(d, None)
> +def split_overlays(d, ver, out):
> +    dts = get_dts(d, ver)
>      if out:
> >          overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$',
dts, d)
> > +        overlays = oe.utils.str_filter_out('\S+\.dtbo$', overlays,
d)
>      else:
> -        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d)
> > +        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d)
+ \
> +                   " " + oe.utils.str_filter('\S+\.dtbo$', dts, d)
>  
>      return overlays
> -- 
> 2.7.4
> 

--=-rzX2Q0G3UactbLVxV/CX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div>Hi Herv=C3=A9,</div><div><br></div><div>Thank=
 you for giving us up and running .dtbo overlays functionality through this=
 patch, it is running fine for me.</div><div><br></div><div>Nevertheless, I=
 have a concern about the processing applied to overlay filenames.</div><di=
v><br></div><div>According to this post&nbsp;<a href=3D"https://www.raspber=
rypi.org/forums/viewtopic.php?f=3D107&amp;t=3D139732">https://www.raspberry=
pi.org/forums/viewtopic.php?f=3D107&amp;t=3D139732</a>, '-overlay.dtb' suff=
ixes have been superseded by '.dtbo' suffix to reflect an improvement in ov=
erlay functionalities and thus overlay binary format (or simply content, I =
don't know).</div><div>Moreover, changing the suffix gives a chance for old=
er and newer overlay formats to coexist in a boot folder.</div><div><br></d=
iv><div>So, I'm not very fond of a build system changing the inputs I give =
to it (i.e. KERNEL_DEVICETREE) depending on another input from my side (ker=
nel version) without at least notifying me the change occurred.</div><div>I=
 would highly prefer a bbwarn (or should it even fail?) if the requested ov=
erlay filenames don't suit the kernel version being chosen (btw device tree=
s are theoretically aimed to be kernel version and even OS independent as i=
t should only contain pure hardware platform description).</div><div>I unde=
rstand and appreciate the intention of offering a kind of compatibility for=
 kernels prior to 4.4.6 but I don't think it's needed here.&nbsp;</div><div=
><br></div><div>If KERNEL_DEVICETREE isn't empty for kernels prior to 3.18 =
=3D&gt; let's disable device trees (or simply remove this test, this layer =
doesn't provide any)</div><div>If KERNEL_DEVICETREE asks for -overlay.dtb a=
nd kernel &gt;=3D 3.18 =3D&gt; let's compile it, it has been requested</div=
><div class=3D"-x-evo-paragraph" id=3D"-x-evo-input-start">If KERNEL_DEVICE=
TREE asks for .dtbo and kernel &lt; 4.4.6 =3D&gt; let's fail with a compreh=
ensive message (these kernels even don't know what a .dtbo file is!)</div><=
div><div>If KERNEL_DEVICETREE asks for -overlay.dtb and/or .dtbo and kernel=
 &gt;=3D 4.4.6 =3D&gt; let's compile it, it has been requested</div></div><=
div><br></div><div>The tough thing will be to keep consistency between KERN=
EL_DEVICETREE content and kernel version to build.</div><div>So as long as =
4.1 is the layer's kernel preferred version, KERNEL_DEVICETREE should only =
contain '-overlay.dtb' overlays, along with the next to be used KERNEL_DEVI=
CETREE variable (containing .dtbo) that is commented out.</div><div>As soon=
 as 4.4 is chosen, let's default to .dtbo overlays and comment out KERNEL_D=
EVICETREE variable containing '-overlay.dtb' overlays.</div><div><br></div>=
<div>What do you think about this behavior ?</div><div><br></div><div>As si=
de notes, you may use some existing utility function to compare software ve=
rsions like&nbsp;<i>bb.utils.vercmp_string_op</i>&nbsp;and overlays filteri=
ng may be done in a single pass : I've attached a proposal.</div><div><br><=
/div><div>BR,</div><div>Fran=C3=A7ois</div><div><br></div><div>Le jeudi 21 =
juillet 2016 =C3=A0 06:00 +0800, Herve Jourdain a =C3=A9crit&nbsp;:</div><b=
lockquote type=3D"cite"><pre>Kernel 4.4.6+ on RaspberryPi support .dtbo fil=
es for overlays, instead of .dtb.
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
--=20
2.7.4

</pre></blockquote></body></html>

--=-rzX2Q0G3UactbLVxV/CX--

--=-r7o/FTNBuG1wwESbFb+j
Content-Disposition: attachment; filename="linux-raspberrypi-base.bbclass"
Content-Type: text/plain; name="linux-raspberrypi-base.bbclass"; charset="UTF-8"
Content-Transfer-Encoding: base64

aW5oZXJpdCBsaW51eC1rZXJuZWwtYmFzZQoKZGVmIGdldF9kdHMoZCwgdmVyKToKICAgIGltcG9y
dCByZQoKICAgIHN0YWdpbmdfZGlyID0gZC5nZXRWYXIoIlNUQUdJTkdfS0VSTkVMX0JVSUxERElS
IiwgVHJ1ZSkKICAgIGR0cyA9IGQuZ2V0VmFyKCJLRVJORUxfREVWSUNFVFJFRSIsIFRydWUpCgog
ICAgIyBkLmdldFZhcigpIG1pZ2h0IHJldHVybiAnTm9uZScgYXMgYSBub3JtYWwgc3RyaW5nCiAg
ICAjIGxlYWRpbmcgdG8gJ2lzIE5vbmUnIGNoZWNrIGlzbid0IGVub3VnaC4KICAgICMgVE9ETzog
SW52ZXN0aWdhdGUgaWYgdGhpcyBpcyBhIGJ1ZyBpbiBiaXRiYWtlCiAgICBpZiB2ZXIgaXMgTm9u
ZSBvciB2ZXIgPT0gIk5vbmUiOgogICAgICAgICcnJyBpZiAndmVyJyBpc24ndCBzZXQgdHJ5IHRv
IGdyYWIgdGhlIGtlcm5lbCB2ZXJzaW9uCiAgICAgICAgZnJvbSB0aGUga2VybmVsIHN0YWdpbmcg
JycnCiAgICAgICAgdmVyID0gZ2V0X2tlcm5lbHZlcnNpb25fZmlsZShzdGFnaW5nX2RpcikKCiAg
ICBpZiB2ZXIgaXMgTm9uZToKICAgICAgICByZXR1cm4gZHRzCgogICAgIyBBbHdheXMgdHVybiBv
ZmYgZGV2aWNlIHRyZWUgc3VwcG9ydCBmb3Iga2VybmVsJ3MgPCAzLjE4CiAgICBpZiBiYi51dGls
cy52ZXJjbXBfc3RyaW5nX29wKHZlciwgJzMuMTgnLCAnPCcpOgogICAgICAgIGR0cyA9ICIiCiAg
ICBlbGlmIGJiLnV0aWxzLnZlcmNtcF9zdHJpbmdfb3AodmVyLCAnNC40LjYnLCAnPCcpOgogICAg
ICAgIGR0cyA9ICcgJy5qb2luKFsocmUuc3ViKHInKC4qKVwuZHRibyQnLCByJ1wxLW92ZXJsYXku
ZHRiJywgeCkpIGZvciB4IGluIGR0cy5zcGxpdCgpXSkKICAgIGVsc2U6CiAgICAgICAgcGFzcyAj
IG5vIGNoYW5nZSB0byBkdHMgdmFyaWFibGUKCiAgICByZXR1cm4gZHRzCgoKZGVmIHNwbGl0X292
ZXJsYXlzKGQsIHZlciwgb3V0KToKICAgIGR0cyA9IGdldF9kdHMoZCwgdmVyKQogICAgaWYgb3V0
OgogICAgICAgIG92ZXJsYXlzID0gb2UudXRpbHMuc3RyX2ZpbHRlcl9vdXQoJ1xTKyhcLW92ZXJs
YXlcLmR0YnxcLmR0Ym8pJCcsIGR0cywgZCkKICAgIGVsc2U6CiAgICAgICAgb3ZlcmxheXMgPSBv
ZS51dGlscy5zdHJfZmlsdGVyKCdcUysoXC1vdmVybGF5XC5kdGJ8XC5kdGJvKSQnLCBkdHMsIGQp
CgogICAgcmV0dXJuIG92ZXJsYXlzCg==

--=-r7o/FTNBuG1wwESbFb+j--
