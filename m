Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3E69E00CA5; Mon, 25 Jul 2016 18:30:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C72EEE00C9C
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 18:30:39 -0700 (PDT)
Received: from [172.17.144.196] (h34.225.191.173.static.ip.windstream.net
	[173.191.225.34])
	by msfrf2632.sfr.fr (SMTP Server) with ESMTP id 77CC71C001854;
	Tue, 26 Jul 2016 03:30:37 +0200 (CEST)
Received: from [172.17.144.196] (h34.225.191.173.static.ip.windstream.net
	[173.191.225.34])	(using TLSv1
	with cipher ECDHE-RSA-AES256-SHA (256/256 bits))	(No client certificate
	requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2632.sfr.fr (SMTP Server) with ESMTPSA;
	Tue, 26 Jul 2016 03:30:37 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
References: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
	<1469052039-7746-4-git-send-email-herve.jourdain@neuf.fr>
	<1469457954.5627.76.camel@gmail.com>
Mime-Version: 1.0 (1.0)
In-Reply-To: <1469457954.5627.76.camel@gmail.com>
Message-Id: <CB2BF5DF-6FD0-4511-8D70-8D913C1E5F05@neuf.fr>
X-Mailer: iPad Mail (13D15)
From: Herve Jourdain <herve.jourdain@neuf.fr>
Date: Mon, 25 Jul 2016 21:30:31 -0400
To: Francois Muller <forlorn18@gmail.com>
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 26 Jul 2016 01:30:44 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-9FAD3505-42F6-4B02-B217-85C2E28FFA65
Content-Transfer-Encoding: 7bit

--Apple-Mail-9FAD3505-42F6-4B02-B217-85C2E28FFA65
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Fran=C3=A7ois,

Actually, I tried to use a -overlay.dtb as a device tree overlay with the 4.=
4.9, and it didn't load it...
If you don't use the tools dedicated to debug device trees (like vcdbg), the=
re is no error message nor complaint, but the device tree is not loaded. Onl=
y when I used vcdbg did I see it complained that it could not find the .dtbo=
 file.
I'm not sure if the loader has changed since then, but if it has not then yo=
u probably need to impose .dtbo for kernels > 4.4.6. Or issue an error if th=
e KERNEL_DEVICETREE variable is not consistent with the kernel version...

The current behaviour is following some remark/proposal from Andrei - the ve=
ry first proposal had different versions of KERNEL_DEVICETREE, depending on t=
he kernel version actually.
But I agree with Andrei that it would be easier to just maintain one set of d=
efault values for the KERNEL_DEVICETREE.
One thing I didn't consider is the override of that variable, maybe a warnin=
g message could be added if we have to change the -overlay.dtb into .dtbo.
But we should probably do the change to 'dtbo regardless, because it's very l=
ikely it would not load properly later, with no message except with vcdbg...=


Would that solution be OK with you?

Andrei, do you have any comment on this?

Herve

> Le 25 juil. 2016 =C3=A0 10:45, Francois Muller <forlorn18@gmail.com> a =C3=
=A9crit :
>=20
> Hi Herv=C3=A9,
>=20
> Thank you for giving us up and running .dtbo overlays functionality throug=
h this patch, it is running fine for me.
>=20
> Nevertheless, I have a concern about the processing applied to overlay fil=
enames.
>=20
> According to this post https://www.raspberrypi.org/forums/viewtopic.php?f=3D=
107&t=3D139732, '-overlay.dtb' suffixes have been superseded by '.dtbo' suff=
ix to reflect an improvement in overlay functionalities and thus overlay bin=
ary format (or simply content, I don't know).
> Moreover, changing the suffix gives a chance for older and newer overlay f=
ormats to coexist in a boot folder.
>=20
> So, I'm not very fond of a build system changing the inputs I give to it (=
i.e. KERNEL_DEVICETREE) depending on another input from my side (kernel vers=
ion) without at least notifying me the change occurred.
> I would highly prefer a bbwarn (or should it even fail?) if the requested o=
verlay filenames don't suit the kernel version being chosen (btw device tree=
s are theoretically aimed to be kernel version and even OS independent as it=
 should only contain pure hardware platform description).
> I understand and appreciate the intention of offering a kind of compatibil=
ity for kernels prior to 4.4.6 but I don't think it's needed here.=20
>=20
> If KERNEL_DEVICETREE isn't empty for kernels prior to 3.18 =3D> let's disa=
ble device trees (or simply remove this test, this layer doesn't provide any=
)
> If KERNEL_DEVICETREE asks for -overlay.dtb and kernel >=3D 3.18 =3D> let's=
 compile it, it has been requested
> If KERNEL_DEVICETREE asks for .dtbo and kernel < 4.4.6 =3D> let's fail wit=
h a comprehensive message (these kernels even don't know what a .dtbo file i=
s!)
> If KERNEL_DEVICETREE asks for -overlay.dtb and/or .dtbo and kernel >=3D 4.=
4.6 =3D> let's compile it, it has been requested
>=20
> The tough thing will be to keep consistency between KERNEL_DEVICETREE cont=
ent and kernel version to build.
> So as long as 4.1 is the layer's kernel preferred version, KERNEL_DEVICETR=
EE should only contain '-overlay.dtb' overlays, along with the next to be us=
ed KERNEL_DEVICETREE variable (containing .dtbo) that is commented out.
> As soon as 4.4 is chosen, let's default to .dtbo overlays and comment out K=
ERNEL_DEVICETREE variable containing '-overlay.dtb' overlays.
>=20
> What do you think about this behavior ?
>=20
> As side notes, you may use some existing utility function to compare softw=
are versions like bb.utils.vercmp_string_op and overlays filtering may be do=
ne in a single pass : I've attached a proposal.
>=20
> BR,
> Fran=C3=A7ois
>=20
>> Le jeudi 21 juillet 2016 =C3=A0 06:00 +0800, Herve Jourdain a =C3=A9crit :=

>> Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of=
 .dtb.
>> Add support for both variants of overlays ("-overlay.dtb" and ".dtbo")
>> Change which variant needs to be supported based on the kernel version
>>=20
>> CAUTION: when called from IMAGE_CMD_rpi-sdimg, 'TMPDIR' is not set, causi=
ng 'STAGING_KERNEL_BUILDDIR' to not be expanded, causing get_kernelversion_f=
ile() to fail!
>> To avoid this problem, get_dts() and split_overlays() MUST be called with=
 the kernel version parameter set, when called from IMAGE_CMD_rpi-sdimg!
>>=20
>> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>> ---
>>  classes/linux-raspberrypi-base.bbclass | 19 ++++++++++++-------
>>  1 file changed, 12 insertions(+), 7 deletions(-)
>>=20
>> diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspb=
errypi-base.bbclass
>> index 40beef1..930fc44 100644
>> --- a/classes/linux-raspberrypi-base.bbclass
>> +++ b/classes/linux-raspberrypi-base.bbclass
>> @@ -1,7 +1,8 @@
>>  inherit linux-kernel-base
>> =20
>> -
>>  def get_dts(d, ver):
>> +    import re
>> +
>>      staging_dir =3D d.getVar("STAGING_KERNEL_BUILDDIR", True)
>>      dts =3D d.getVar("KERNEL_DEVICETREE", True)
>> =20
>> @@ -20,20 +21,24 @@ def get_dts(d, ver):
>> =20
>>      # Always turn off device tree support for kernel's < 3.18
>>      try:
>> -        if int(min_ver[0]) <=3D 3:
>> -            if int(min_ver[1]) < 18:
>> -                dts =3D ""
>> +        if int(min_ver[0]) >=3D 4:
>> +            if (int(min_ver[1]) < 4) or (int(min_ver[1]) =3D=3D 4 and in=
t(min_ver[2]) < 6):
>> +                dts =3D ' '.join([(re.sub(r'(.*)\.dtbo$', r'\1-overlay.d=
tb', x)) for x in dts.split()])
>> +        elif int(min_ver[1]) < 18:
>> +            dts =3D ""
>>      except IndexError:
>>          min_ver =3D None
>> =20
>>      return dts
>> =20
>> =20
>> -def split_overlays(d, out):
>> -    dts =3D get_dts(d, None)
>> +def split_overlays(d, ver, out):
>> +    dts =3D get_dts(d, ver)
>>      if out:
>>          overlays =3D oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, d=
)
>> +        overlays =3D oe.utils.str_filter_out('\S+\.dtbo$', overlays, d)
>>      else:
>> -        overlays =3D oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d)
>> +        overlays =3D oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d) +=
 \
>> +                   " " + oe.utils.str_filter('\S+\.dtbo$', dts, d)
>> =20
>>      return overlays
>> --=20
>> 2.7.4
>>=20
> <linux-raspberrypi-base.bbclass>

--Apple-Mail-9FAD3505-42F6-4B02-B217-85C2E28FFA65
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div></div><div>Hi Fran=C3=A7ois,</div><div=
><br></div><div>Actually, I tried to use a -overlay.dtb as a device tree ove=
rlay with the 4.4.9, and it didn't load it...</div><div>If you don't use the=
 tools dedicated to debug device trees (like vcdbg), there is no error messa=
ge nor complaint, but the device tree is not loaded. Only when I used vcdbg d=
id I see it complained that it could not find the .dtbo file.</div><div>I'm n=
ot sure if the loader has changed since then, but if it has not then you pro=
bably need to impose .dtbo for kernels &gt; 4.4.6. Or issue an error if the K=
ERNEL_DEVICETREE variable is not consistent with the kernel version...</div>=
<div><br></div><div>The current behaviour is following some remark/proposal f=
rom Andrei - the very first proposal had different versions of <span style=3D=
"background-color: rgba(255, 255, 255, 0);">KERNEL_DEVICETREE, depending on t=
he kernel version actually.</span></div><div><span style=3D"background-color=
: rgba(255, 255, 255, 0);">But I agree with Andrei that it would be easier t=
o just maintain one set of default values for the KERNEL_DEVICETREE.</span><=
/div><div><span style=3D"background-color: rgba(255, 255, 255, 0);">One thin=
g I didn't consider is the override of that variable, maybe a warning messag=
e could be added if we have to change the -overlay.dtb into .dtbo.</span></d=
iv><div><span style=3D"background-color: rgba(255, 255, 255, 0);">But we sho=
uld probably do the change to 'dtbo regardless, because it's very likely it w=
ould not load properly later, with no message except with vcdbg...</span></d=
iv><div><br></div><div>Would that solution be OK with you?</div><div><br></d=
iv><div>Andrei, do you have any comment on this?</div><div><br></div><div>He=
rve</div><div><br>Le 25 juil. 2016 =C3=A0 10:45, Francois Muller &lt;<a href=
=3D"mailto:forlorn18@gmail.com">forlorn18@gmail.com</a>&gt; a =C3=A9crit&nbs=
p;:<br><br></div><blockquote type=3D"cite"><div><div>Hi Herv=C3=A9,</div><di=
v><br></div><div>Thank you for giving us up and running .dtbo overlays funct=
ionality through this patch, it is running fine for me.</div><div><br></div>=
<div>Nevertheless, I have a concern about the processing applied to overlay f=
ilenames.</div><div><br></div><div>According to this post&nbsp;<a href=3D"ht=
tps://www.raspberrypi.org/forums/viewtopic.php?f=3D107&amp;t=3D139732">https=
://www.raspberrypi.org/forums/viewtopic.php?f=3D107&amp;t=3D139732</a>, '-ov=
erlay.dtb' suffixes have been superseded by '.dtbo' suffix to reflect an imp=
rovement in overlay functionalities and thus overlay binary format (or simpl=
y content, I don't know).</div><div>Moreover, changing the suffix gives a ch=
ance for older and newer overlay formats to coexist in a boot folder.</div><=
div><br></div><div>So, I'm not very fond of a build system changing the inpu=
ts I give to it (i.e. KERNEL_DEVICETREE) depending on another input from my s=
ide (kernel version) without at least notifying me the change occurred.</div=
><div>I would highly prefer a bbwarn (or should it even fail?) if the reques=
ted overlay filenames don't suit the kernel version being chosen (btw device=
 trees are theoretically aimed to be kernel version and even OS independent a=
s it should only contain pure hardware platform description).</div><div>I un=
derstand and appreciate the intention of offering a kind of compatibility fo=
r kernels prior to 4.4.6 but I don't think it's needed here.&nbsp;</div><div=
><br></div><div>If KERNEL_DEVICETREE isn't empty for kernels prior to 3.18 =3D=
&gt; let's disable device trees (or simply remove this test, this layer does=
n't provide any)</div><div>If KERNEL_DEVICETREE asks for -overlay.dtb and ke=
rnel &gt;=3D 3.18 =3D&gt; let's compile it, it has been requested</div><div c=
lass=3D"-x-evo-paragraph" id=3D"-x-evo-input-start">If KERNEL_DEVICETREE ask=
s for .dtbo and kernel &lt; 4.4.6 =3D&gt; let's fail with a comprehensive me=
ssage (these kernels even don't know what a .dtbo file is!)</div><div><div>I=
f KERNEL_DEVICETREE asks for -overlay.dtb and/or .dtbo and kernel &gt;=3D 4.=
4.6 =3D&gt; let's compile it, it has been requested</div></div><div><br></di=
v><div>The tough thing will be to keep consistency between KERNEL_DEVICETREE=
 content and kernel version to build.</div><div>So as long as 4.1 is the lay=
er's kernel preferred version, KERNEL_DEVICETREE should only contain '-overl=
ay.dtb' overlays, along with the next to be used KERNEL_DEVICETREE variable (=
containing .dtbo) that is commented out.</div><div>As soon as 4.4 is chosen,=
 let's default to .dtbo overlays and comment out KERNEL_DEVICETREE variable c=
ontaining '-overlay.dtb' overlays.</div><div><br></div><div>What do you thin=
k about this behavior ?</div><div><br></div><div>As side notes, you may use s=
ome existing utility function to compare software versions like&nbsp;<i>bb.u=
tils.vercmp_string_op</i>&nbsp;and overlays filtering may be done in a singl=
e pass : I've attached a proposal.</div><div><br></div><div>BR,</div><div>Fra=
n=C3=A7ois</div><div><br></div><div>Le jeudi 21 juillet 2016 =C3=A0 06:00 +0=
800, Herve Jourdain a =C3=A9crit&nbsp;:</div><blockquote type=3D"cite"><pre>=
Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .d=
tb.
Add support for both variants of overlays ("-overlay.dtb" and ".dtbo")
Change which variant needs to be supported based on the kernel version

CAUTION: when called from IMAGE_CMD_rpi-sdimg, 'TMPDIR' is not set, causing '=
STAGING_KERNEL_BUILDDIR' to not be expanded, causing get_kernelversion_file(=
) to fail!
To avoid this problem, get_dts() and split_overlays() MUST be called with th=
e kernel version parameter set, when called from IMAGE_CMD_rpi-sdimg!

Signed-off-by: Herve Jourdain &lt;<a href=3D"mailto:herve.jourdain@neuf.fr">=
herve.jourdain@neuf.fr</a>&gt;
---
 classes/linux-raspberrypi-base.bbclass | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberr=
ypi-base.bbclass
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
+            if (int(min_ver[1]) &lt; 4) or (int(min_ver[1]) =3D=3D 4 and in=
t(min_ver[2]) &lt; 6):
+                dts =3D ' '.join([(re.sub(r'(.*)\.dtbo$', r'\1-overlay.dtb'=
, x)) for x in dts.split()])
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

</pre></blockquote></div></blockquote><blockquote type=3D"cite"><div>&lt;lin=
ux-raspberrypi-base.bbclass&gt;</div></blockquote></body></html>=

--Apple-Mail-9FAD3505-42F6-4B02-B217-85C2E28FFA65--
