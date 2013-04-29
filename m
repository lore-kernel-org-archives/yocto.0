Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-we0-f174.google.com (mail-we0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC1CDE0137F
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 02:28:43 -0700 (PDT)
Received: by mail-we0-f174.google.com with SMTP id t9so4724174wey.5
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 02:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=SqXKuvUE5XnRftarJraDznARaMpf5xkAsn2cHQP/lIg=;
	b=Ee8dQoKTKvOZEDUctaYlIfNgiL9zLveaY3wPKuEMG1I5iqpKr30dd1fNcfERdqb5cn
	fTnyz+XS/4wq/Q3CTbPKvauoyg2lAbagFsA5z5rWsD8YdKAl4sSc4aaeFhxS9CufD3zJ
	rDjj5JzL2QzoN8KLjWfb5jPfSo2DFPR7MnLteIS0iGuD1Nwtts54JI/L+Pza/6VpJ71s
	d8dP91lYoOgh0HCYV/JF6qMhT/U6yYqzIZD/665pV+vn+cOJuywJfqHNj4JAPV2vM7nm
	bSwFGb4EU6V1yz7AHheORSaYNH1S41vnmYIUG17uSV9nW0vxDRa6vzZvkV+prDc4wOdo
	IAUg==
X-Received: by 10.194.122.131 with SMTP id ls3mr1689490wjb.55.1367227722924;
	Mon, 29 Apr 2013 02:28:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.40.163 with HTTP; Mon, 29 Apr 2013 02:28:22 -0700 (PDT)
In-Reply-To: <1419490.bYp03IPXpY@helios>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
	<1419490.bYp03IPXpY@helios>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Mon, 29 Apr 2013 11:28:22 +0200
Message-ID: <CAAGt+t3a8AR_+W4toh_xTgw8RYRtVMg12cZdAdAtZ74t2A_OuQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: poky: Bitbake nothing provides error
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
X-List-Received-Date: Mon, 29 Apr 2013 09:28:44 -0000
Content-Type: multipart/alternative; boundary=089e01229032c08ad604db7c8203

--089e01229032c08ad604db7c8203
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

I cloned meta-gumstix[1] and meta-gumstix-extras[2] into poky folder and i
tried to add these values of my machine in the local.conf file

MACHINE_KERNEL_PR = "r1"

KERNEL_IMAGETYPE = "uImage"

UBOOT_ENTRYPOINT = "0x80008000"
UBOOT_LOADADDRESS = "0x80008000"

TARGET_ARCH = "arm"

[1] https://github.com/gumstix/meta-gumstix
[2] https://github.com/gumstix/meta-gumstix-extras

When I give the command '*bitbake u-boot'* or '*bitbake
gumstix-console-image'* it throws again *ERROR: Nothing PROVIDES 'u-boot'*or
*ERROR: Nothing PROVIDES '**gumstix-console-image'*

Regards,
Zafrullah Syed




On Mon, Apr 29, 2013 at 11:09 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Monday 29 April 2013 11:01:54 Zafrullah Syed wrote:
> > I am trying to
> > build<http://gumstix.org/software-development/yocto-project.html>a
> bitbake
> > target for my Overo
> > Series RobOvero board(PCB 30019-R3277). In poky build directory when i
> give
> > the command *bitbake gumstix-console-image* i get an error:* **
> > ERROR: Nothing PROVIDES 'gumstix-console-image'.
> > **
> >  *
> >
> > Previously when i built core-image-minimal. it successfully runs and i am
> > able to run with qemu emulator.
> >
> > I do not know why poky throws *Nothing Provides* error.
>
> gumstix-console-image would need to be provided by a layer enabled in your
> configuration; apparently this image recipe comes from meta-gumstix [1],
> so you
> would need to have that layer cloned and its directory added to your
> conf/bblayers.conf file under your build directory for that image to be
> available.
>
> Cheers,
> Paul
>
> [1] http://layers.openembedded.org/layerindex/layer/meta-gumstix/
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



-- 
Regards,
Zafrullah Syed

--089e01229032c08ad604db7c8203
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div style>I cloned meta-gumstix[1]=
 and meta-gumstix-extras[2] into poky folder and i tried to add these value=
s of my machine in the local.conf file</div><div style><br></div><div style=
>

<div>MACHINE_KERNEL_PR =3D &quot;r1&quot;</div><div><br></div><div>KERNEL_I=
MAGETYPE =3D &quot;uImage&quot;</div><div><br></div><div>UBOOT_ENTRYPOINT =
=3D &quot;0x80008000&quot;</div><div>UBOOT_LOADADDRESS =3D &quot;0x80008000=
&quot;</div>

<div><br></div><div>TARGET_ARCH =3D &quot;arm&quot;<br></div></div><div sty=
le><br></div><div style>[1]=A0<a href=3D"https://github.com/gumstix/meta-gu=
mstix">https://github.com/gumstix/meta-gumstix</a></div><div style>[2]=A0<a=
 href=3D"https://github.com/gumstix/meta-gumstix-extras">https://github.com=
/gumstix/meta-gumstix-extras</a></div>

<div style><br></div><div style>When I give the command &#39;<i>bitbake u-b=
oot&#39;</i> or &#39;<span style=3D"color:rgb(51,51,51);font-family:&#39;Se=
goe UI&#39;,Arial,Helvetica,sans-serif;font-size:12px;line-height:18px"><i>=
bitbake gumstix-console-image&#39;</i> it throws again=A0</span><font color=
=3D"#333333" face=3D"Segoe UI, Arial, Helvetica, sans-serif"><span style=3D=
"font-size:12px;line-height:18px"><i>ERROR: Nothing PROVIDES &#39;u-boot&#3=
9;</i> or=A0<i>ERROR: Nothing PROVIDES &#39;</i></span></font><i><span styl=
e=3D"color:rgb(51,51,51);font-family:&#39;Segoe UI&#39;,Arial,Helvetica,san=
s-serif;font-size:12px;line-height:18px">gumstix-console-image</span><font =
color=3D"#333333" face=3D"Segoe UI, Arial, Helvetica, sans-serif"><span sty=
le=3D"font-size:12px;line-height:18px">&#39;</span></font></i></div>

<div style><font color=3D"#333333" face=3D"Segoe UI, Arial, Helvetica, sans=
-serif"><span style=3D"font-size:12px;line-height:18px"><br></span></font><=
/div><div style><font color=3D"#333333" face=3D"Segoe UI, Arial, Helvetica,=
 sans-serif"><span style=3D"font-size:12px;line-height:18px">Regards,</span=
></font></div>

<div style><font color=3D"#333333" face=3D"Segoe UI, Arial, Helvetica, sans=
-serif"><span style=3D"font-size:12px;line-height:18px">Zafrullah Syed</spa=
n></font></div><div><br></div><div><br></div></div><div class=3D"gmail_extr=
a">
<br>
<br><div class=3D"gmail_quote">On Mon, Apr 29, 2013 at 11:09 AM, Paul Eggle=
ton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" =
target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">

<div class=3D"im">On Monday 29 April 2013 11:01:54 Zafrullah Syed wrote:<br=
>
&gt; I am trying to<br>
</div>&gt; build&lt;<a href=3D"http://gumstix.org/software-development/yoct=
o-project.html" target=3D"_blank">http://gumstix.org/software-development/y=
octo-project.html</a>&gt;a bitbake<br>
<div class=3D"im">&gt; target for my Overo<br>
&gt; Series RobOvero board(PCB 30019-R3277). In poky build directory when i=
 give<br>
</div>&gt; the command *bitbake gumstix-console-image* i get an error:* **<=
br>
<div class=3D"im">&gt; ERROR: Nothing PROVIDES &#39;gumstix-console-image&#=
39;.<br>
</div>&gt; **<br>
<div class=3D"im">&gt; =A0*<br>
&gt;<br>
&gt; Previously when i built core-image-minimal. it successfully runs and i=
 am<br>
&gt; able to run with qemu emulator.<br>
&gt;<br>
</div>&gt; I do not know why poky throws *Nothing Provides* error.<br>
<br>
gumstix-console-image would need to be provided by a layer enabled in your<=
br>
configuration; apparently this image recipe comes from meta-gumstix [1], so=
 you<br>
would need to have that layer cloned and its directory added to your<br>
conf/bblayers.conf file under your build directory for that image to be<br>
available.<br>
<br>
Cheers,<br>
Paul<br>
<br>
[1] <a href=3D"http://layers.openembedded.org/layerindex/layer/meta-gumstix=
/" target=3D"_blank">http://layers.openembedded.org/layerindex/layer/meta-g=
umstix/</a><br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><span style=3D"font-family:arial,sans-serif;font-size:13px;border-collaps=
e:collapse;color:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><f=
ont color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-coll=
apse:collapse"><br>

</span></font></div>
</div>

--089e01229032c08ad604db7c8203--
