Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C2D7E00974; Sat, 16 May 2015 11:42:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA7A6E0051B
	for <yocto@yoctoproject.org>; Sat, 16 May 2015 11:42:50 -0700 (PDT)
Received: by qkgv12 with SMTP id v12so14485218qkg.0
	for <yocto@yoctoproject.org>; Sat, 16 May 2015 11:42:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-type;
	bh=RaxxA7dq0KuoRFPQDZ1GQZ/kZjW1e6zZdWyu0pXeBxQ=;
	b=cBRGM/fmGyHVEOQ2kKkMjbuDJfkjSgHNVzRYBkuVazEoDcdxPzq1xzhBP2Fw7gM3kq
	t5QB1Ll3jMMvGVc798c0l7sCAWhDyojsS+5j9/5HtzDMqAd/Cmrstvh+8jbEZItrgv1O
	KjNf8hYEv3pz1rjYunUbYjBZ40ITSaqUNMHUeLHkXMakQfk4I6OwycRAryLrXkG1fFk9
	STYPlRA8Cm/E8i+DfpXxBrXZMt18N52hpJlo0kHA1HzVAGCiQAeLrDYOuhrVsfHQLOcz
	X50gxw/rutzkOEir7zIayVZSng/yqDmOa13PRWAzkKkA3VtkKvVYVFNyU092CHhOeCzt
	cfoQ==
X-Received: by 10.55.51.129 with SMTP id z123mr32419319qkz.102.1431801768342; 
	Sat, 16 May 2015 11:42:48 -0700 (PDT)
MIME-Version: 1.0
References: <005a01d08fc8$f02aeac0$d080c040$@mag.cx>
In-Reply-To: <005a01d08fc8$f02aeac0$d080c040$@mag.cx>
From: Christopher Larson <clarson@kergoth.com>
Date: Sat, 16 May 2015 18:42:47 +0000
Message-ID: <CABcZANnjm15OYLrkm9GPf04Yc=QFmBsEUZBSHq9AJ6UY9AuQ1Q@mail.gmail.com>
To: mag@mag.cx, yocto@yoctoproject.org
Subject: Re: Layer Priority with Wildcard .bbappend Files
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
X-List-Received-Date: Sat, 16 May 2015 18:42:53 -0000
Content-Type: multipart/alternative; boundary=001a1149013eca7bc905163753ca

--001a1149013eca7bc905163753ca
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Richard fixed this in master and fido after I opened a Yocto bug about it.
I don't recall the commit offhand, but you may be able to cherry-pick it.
On Sat, May 16, 2015 at 4:16 AM Christian Magnusson <mag@mag.cx> wrote:

> I also stumbled into this problem.
>
> We are using a BSP from Phytec. It=E2=80=99s using poky and Phytec made a=
 simple distribution in meta-yougurt.
>
> Now I want to customize it, and made my own meta-platform to overwrite fi=
les from the other layers. (prio 100)
>
>
>
> # bitbake-layers show-recipes
>
> init-ifupdown:
>
>   meta                 1.0
>
>
>
> # bitbake-layers show-layers
>
> layer                 path                                      priority
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> meta                  /home/s22463/yocto/sources/poky/meta      5
>
> meta-yocto            /home/s22463/yocto/sources/poky/meta-yocto  5
>
> meta-phytec           /home/s22463/yocto/sources/meta-phytec    20
>
> meta-phyam335x        /home/s22463/yocto/sources/meta-phytec/meta-phyam33=
5x  20
>
> meta-yogurt           /home/s22463/yocto/sources/meta-yogurt    10
>
> meta-oe               /home/s22463/yocto/sources/meta-openembedded/meta-o=
e  6
>
> meta-networking       /home/s22463/yocto/sources/meta-openembedded/meta-n=
etworking  5
>
> meta-python           /home/s22463/yocto/sources/meta-openembedded/meta-p=
ython  7
>
> meta-systemd          /home/s22463/yocto/sources/meta-openembedded/meta-s=
ystemd  7
>
> meta-qt5              /home/s22463/yocto/sources/meta-qt5       7
>
> meta-platform         /home/s22463/yocto/sources/meta-platform  100
>
> meta-webserver        /home/s22463/yocto/sources/meta-openembedded/meta-w=
ebserver  6
>
>
>
> # bitbake-layers show-appends
>
> init-ifupdown_1.0.bb:
>
>   /home/s22463/yocto/sources/meta-platform/recipes-core/init-ifupdown/ini=
t-ifupdown_1.0.bbappend
>
>   /home/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/init-=
ifupdown_%.bbappend
>
>
>
> Changing BBFILE_PRIORITY_platform-layer in meta-platform/conf/layer.conf =
doesn=E2=80=99t affect the order either.
>
>
>
>
>
> If I rename
>
> /home/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/init-if=
updown_%.bbappend -> init-ifupdown_1.0.bbappend
>
> the priority works, and my files in meta-platform are installed last, as =
I want to overwrite all other files.
>
>
>
> # mv /home/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/in=
it-ifupdown_%.bbappend /home/s22463/yocto/sources/meta-yogurt/recipes-core/=
init-ifupdown/init-ifupdown_1.0.bbappend
>
> # bitbake-layers show-appends
>
> init-ifupdown_1.0.bb:
>
>   /home/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/init-=
ifupdown_1.0.bbappend
>
>   /home/s22463/yocto/sources/meta-platform/recipes-core/init-ifupdown/ini=
t-ifupdown_1.0.bbappend
>
>
>
> The installation order works now, but I would rather avoid to patch the o=
ther layers.
>
> Changing BBFILE_PRIORITY_platform-layer in meta-platform/conf/layer.conf =
now, will affect the order!, and I can install meta-plaform either before o=
r after the meta-yougurt layer if I want.
>
>
>
> Does anyone know the reason to the faulty sort-order?
>
>
>
> /Christian Magnusson
>
>
>
>
>
>
>
> On 11/24/2014 03:22 PM, Stevens, Nick wrote:
>
> I think I've encountered a bug with how multiple bbappend files are proce=
ssed
>
> when one of the bbappends contains a filename wildcard, but I want to mak=
e sure
>
> there's not something I'm missing before filing a bug report.
>
>
>
> I have a BSP layer and a customization layer that are based on the OE/pok=
y
>
> Daisy release. The output of `bitbake-layers show-layers` looks like:
>
>      layer                 path                 priority
>
>      =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>
>      meta                  poky/meta            5
>
>      meta-yocto            poky/meta-yocto      5
>
>      meta-yocto-bsp        poky/meta-yocto-bsp  5
>
>      ...ellided...
>
>      meta-bsp              meta-bsp             6
>
>      meta-custom           meta-custom          8
>
>
>
> In meta-bsp there is a bbappend for base-files named
>
> base-files_3.0.14.bbappend. The meta-bsp bbappend adds a sysctl.conf to /=
etc -
>
> pretty straightforward:
>
>      FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>
>      SRC_URI +=3D "file://sysctl.conf"
>
>      do_install_append() {
>
>          install -m 0644 ${WORKDIR}/sysctl.conf ${D}${sysconfdir}/
>
>      }
>
>
>
> Now what I want to do is add a file called base-files_%.bbappend to
>
> meta-custom. It has its own version of sysctl.conf, and the recipe looks =
like
>
> this:
>
>      FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>
>
>
> Here's where things get weird. If I run `bitbake -e base-files` and pull =
out
>
> the section for FILESEXTRAPATHS, this is what I get (note that I've strip=
ped
>
> out the huge absolute paths to make this easier to read):
>
>      # $FILESEXTRAPATHS [5 operations]
>
>      #   set poky/meta/conf/documentation.conf:172
>
>      #     [doc] "Extends the search path the OpenEmbedded build system u=
ses when
>
> looking for files and patches as it processes recipes and append files."
>
>      #   _prepend meta-custom/recipes-core/base-files/base-files_%.bbappe=
nd:6
>
>      #     "meta-custom/recipes-core/base-files/base-files:"
>
>      #   _prepend meta-bsp/recipes-core/base-files/base-files_3.0.14.bbap=
pend:3
>
>      #     "meta-bsp/recipes-core/base-files/base-files:"
>
>      #   set data_smart.py:432 [finalize]
>
>      #     "meta-custom/recipes-core/base-files/base-files:"
>
>      #   set data_smart.py:432 [finalize]
>
>      #
>
> "meta-bsp/recipes-core/base-files/base-files:meta-custom/recipes-core/bas=
e-files/base-files:"
>
>      # computed:
>
>      #
>
> "meta-bsp/recipes-core/base-files/base-files:meta-custom/recipes-core/bas=
e-files/base-files:"
>
>
>
> FILESEXTRAPATHS=3D"meta-bsp/recipes-core/base-files/base-files:meta-custo=
m/recipes-core/base-files/base-files:"
>
>
>
> For some reason meta-bsp is coming before meta-custom in FILESEXTRAPATHS,=
 even
>
> though meta-custom has a higher priority!
>
>
>
>
>
> I also have some questions about how FILESEXTRAPATHS is supposed to work =
with
> append files and layer priorities.
>
>
>
> Does a higher layer priority mean that the FILESEXTRAPATHS operation shou=
ld
> occur first? If this is the case, then a lower priority layer prepend
> will appear to the left of the higher layer prepend since it runs later,
> and this will probably not provide the result you want.
>
>
>
> The prepend and layer logic seems messy to me. I would like to have a way
> to write my custom layer and specify that what I include in my SRC_URI in
> each recipe is definitive and can not be overwritten. Suggestions on how
> to best accomplish this will be greatly appreciated.
>
>
>
> I have been trying to accomplish this with FILESOVERRIDES, but this logic
> seems counterintuitive since DISTROOVERRIDES take precedence over MACHINE=
OVERRIDES
> in building the file search path during the unpack task.
>
>
>
> It seems to me that the file search path should be built using FILESOVERR=
IDES
> from left to right: TRANSLATED_TARGET_ARCH, MACHINEOVERRIDES, and then
> DISTROOVERRIDES (specific to generic), but this isn't what I'm seeing.
> Still investigating how it's all put together...
>
>
>
>
>
> I verified this by building an image - the sysctl.conf that ends up in th=
e
> final image is the one from meta-bsp, not the one from meta-custom. But
> if I switch the name of base-files_%.bbappend in meta-custom to base-file=
s_3.0.14.bbappend,
> this is what I get:
>
>      # $FILESEXTRAPATHS [5 operations]
>
>      #   set poky/meta/conf/documentation.conf:172
>
>      #     [doc] "Extends the search path the OpenEmbedded build system u=
ses when
>
> looking for files and patches as it processes recipes and append files."
>
>      #   _prepend meta-bsp/recipes-core/base-files/base-files_3.0.14.bbap=
pend:3
>
>      #     "meta-bsp/recipes-core/base-files/base-files:"
>
>      #   _prepend
>
> meta-custom/recipes-core/base-files/base-files_3.0.14.bbappend:6
>
>      #     "meta-custom/recipes-core/base-files/base-files:"
>
>      #   set data_smart.py:432 [finalize]
>
>      #     "meta-bsp/recipes-core/base-files/base-files:"
>
>      #   set data_smart.py:432 [finalize]
>
>      #
>
> "meta-custom/recipes-core/base-files/base-files:meta-bsp/recipes-core/bas=
e-files/base-files:"
>
>      # computed:
>
>      #
>
> "meta-custom/recipes-core/base-files/base-files:meta-bsp/recipes-core/bas=
e-files/base-files:"
>
>
>
> FILESEXTRAPATHS=3D"meta-custom/recipes-core/base-files/base-files:meta-bs=
p/recipes-core/base-files/base-files:"
>
>
>
> And now the sysctl.conf file is being pulled from meta-custom.
>
>
>
> Is there something I'm missing, like some sort of decreased priorty for
>
> bbappend files with a wildcard? Or is this a bug?
>
>
>
> Thanks for any help!
>
>
>
> Nick Stevens
>
>
>
>
>
> --
>
> _______________________________________________
>
> yocto mailing list
>
> yocto@yoctoproject.org
>
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1149013eca7bc905163753ca
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Richard fixed this in master and fido after I opened a Yocto bug about it. =
I don&#39;t recall the commit offhand, but you may be able to cherry-pick i=
t.<br><div class=3D"gmail_quote">On Sat, May 16, 2015 at 4:16 AM Christian =
Magnusson &lt;<a href=3D"mailto:mag@mag.cx">mag@mag.cx</a>&gt; wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div lang=3D"SV" link=3D"blue" vlink=3D"purple=
"><div><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-=
US" style=3D"font-size:10.5pt;font-family:Courier;color:black">I also stumb=
led into this problem.<u></u><u></u></span></pre><pre style=3D"line-height:=
14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;fon=
t-family:Courier;color:black">We are using a BSP from Phytec. It=E2=80=99s =
using poky and Phytec made a simple distribution in meta-yougurt.<u></u><u>=
</u></span></pre><pre style=3D"line-height:14.7pt;background:white"><span l=
ang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black">No=
w I want to customize it, and made my own meta-platform to overwrite files =
from the other layers. (prio 100)<u></u><u></u></span></pre><pre style=3D"l=
ine-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size=
:10.5pt;font-family:Courier;color:black"><u></u>=C2=A0<u></u></span></pre><=
pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.5pt;font-family:Courier;color:black"># bitbake-layers sho=
w-recipes<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;backgr=
ound:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Cour=
ier;color:black">init-ifupdown:<u></u><u></u></span></pre><pre style=3D"lin=
e-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:1=
0.5pt;font-family:Courier;color:black">=C2=A0 meta=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.=
0<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:whi=
te"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;colo=
r:black"><u></u>=C2=A0<u></u></span></pre><pre style=3D"line-height:14.7pt;=
background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-famil=
y:Courier;color:black"># bitbake-layers show-layers<u></u><u></u></span></p=
re><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" =
style=3D"font-size:10.5pt;font-family:Courier;color:black">layer=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 path=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 priority<u></u><u></u></span></pre><pre style=3D"line-heigh=
t:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;f=
ont-family:Courier;color:black">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u></u><u></u></span></pre><pre style=3D"line=
-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10=
.5pt;font-family:Courier;color:black">meta=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/ho=
me/s22463/yocto/sources/poky/meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5<u></u><u>=
</u></span></pre><pre style=3D"line-height:14.7pt;background:white"><span l=
ang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black">me=
ta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
/home/s22463/yocto/sources/poky/meta-yocto=C2=A0 5<u></u><u></u></span></pr=
e><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.5pt;font-family:Courier;color:black">meta-phytec=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /home/s22463/yocto/s=
ources/meta-phytec=C2=A0=C2=A0=C2=A0 20<u></u><u></u></span></pre><pre styl=
e=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"fon=
t-size:10.5pt;font-family:Courier;color:black">meta-phyam335x=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /home/s22463/yocto/sources/meta-phytec/meta-=
phyam335x=C2=A0 20<u></u><u></u></span></pre><pre style=3D"line-height:14.7=
pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-fa=
mily:Courier;color:black">meta-yogurt=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 /home/s22463/yocto/sources/meta-yogurt=C2=A0=C2=A0=
=C2=A0 10<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;backgr=
ound:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Cour=
ier;color:black">meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /home/s22463/yocto/sources/meta-openembed=
ded/meta-oe=C2=A0 6<u></u><u></u></span></pre><pre style=3D"line-height:14.=
7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-f=
amily:Courier;color:black">meta-networking=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 /home/s22463/yocto/sources/meta-openembedded/meta-networking=C2=A0 5<u>=
</u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:white">=
<span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:bl=
ack">meta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 /home/s22463/yocto/sources/meta-openembedded/meta-python=C2=A0 7<u></u>=
<u></u></span></pre><pre style=3D"line-height:14.7pt;background:white"><spa=
n lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black"=
>meta-systemd=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /home/s=
22463/yocto/sources/meta-openembedded/meta-systemd=C2=A0 7<u></u><u></u></s=
pan></pre><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"=
EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black">meta-qt5=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 /home/s22463/yocto/sources/meta-qt5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 7<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:wh=
ite"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;col=
or:black">meta-platform=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /ho=
me/s22463/yocto/sources/meta-platform=C2=A0 100<u></u><u></u></span></pre><=
pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.5pt;font-family:Courier;color:black">meta-webserver=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /home/s22463/yocto/sources/meta-openem=
bedded/meta-webserver=C2=A0 6<u></u><u></u></span></pre><pre style=3D"line-=
height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.=
5pt;font-family:Courier;color:black"><u></u>=C2=A0<u></u></span></pre><pre =
style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D=
"font-size:10.5pt;font-family:Courier;color:black"># bitbake-layers show-ap=
pends<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;background=
:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;=
color:black"><a href=3D"http://init-ifupdown_1.0.bb" target=3D"_blank">init=
-ifupdown_1.0.bb</a>:<u></u><u></u></span></pre><pre style=3D"line-height:1=
4.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font=
-family:Courier;color:black">=C2=A0 /home/s22463/yocto/sources/meta-platfor=
m/recipes-core/init-ifupdown/init-ifupdown_1.0.bbappend<u></u><u></u></span=
></pre><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-=
US" style=3D"font-size:10.5pt;font-family:Courier;color:black">=C2=A0 /home=
/s22463/yocto/sources/meta-yogurt/recipes-core/init-ifupdown/init-ifupdown_=
%.bbappend<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;backg=
round:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Cou=
rier;color:black"><u></u>=C2=A0<u></u></span></pre><pre style=3D"line-heigh=
t:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;f=
ont-family:Courier;color:black">Changing BBFILE_PRIORITY_platform-layer in =
meta-platform/conf/layer.conf doesn=E2=80=99t affect the order either.<u></=
u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:white"><s=
pan lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:blac=
k"><u></u>=C2=A0<u></u></span></pre><pre style=3D"line-height:14.7pt;backgr=
ound:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Cour=
ier;color:black"><u></u>=C2=A0<u></u></span></pre><pre style=3D"line-height=
:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;fo=
nt-family:Courier;color:black">If I rename <u></u><u></u></span></pre><pre =
style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D=
"font-size:10.5pt;font-family:Courier;color:black">/home/s22463/yocto/sourc=
es/meta-yogurt/recipes-core/init-ifupdown/init-ifupdown_%.bbappend -&gt; in=
it-ifupdown_1.0.bbappend<u></u><u></u></span></pre><pre style=3D"line-heigh=
t:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;f=
ont-family:Courier;color:black">the priority works, and my files in meta-pl=
atform are installed last, as I want to overwrite all other files.<u></u><u=
></u></span></pre><pre style=3D"line-height:14.7pt;background:white"><span =
lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black"><=
u></u>=C2=A0<u></u></span></pre><pre style=3D"line-height:14.7pt;background=
:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;=
color:black"># mv /home/s22463/yocto/sources/meta-yogurt/recipes-core/init-=
ifupdown/init-ifupdown_%.bbappend /home/s22463/yocto/sources/meta-yogurt/re=
cipes-core/init-ifupdown/init-ifupdown_1.0.bbappend<u></u><u></u></span></p=
re><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" =
style=3D"font-size:10.5pt;font-family:Courier;color:black"># bitbake-layers=
 show-appends<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;ba=
ckground:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:=
Courier;color:black"><a href=3D"http://init-ifupdown_1.0.bb" target=3D"_bla=
nk">init-ifupdown_1.0.bb</a>:<u></u><u></u></span></pre><pre style=3D"line-=
height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.=
5pt;font-family:Courier;color:black">=C2=A0 /home/s22463/yocto/sources/meta=
-yogurt/recipes-core/init-ifupdown/init-ifupdown_1.0.bbappend<u></u><u></u>=
</span></pre><pre style=3D"line-height:14.7pt;background:white"><span lang=
=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black">=C2=
=A0 /home/s22463/yocto/sources/meta-platform/recipes-core/init-ifupdown/ini=
t-ifupdown_1.0.bbappend<u></u><u></u></span></pre><pre style=3D"line-height=
:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;fo=
nt-family:Courier;color:black"><u></u>=C2=A0<u></u></span></pre><pre style=
=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font=
-size:10.5pt;font-family:Courier;color:black">The installation order works =
now, but I would rather avoid to patch the other layers.<u></u><u></u></spa=
n></pre><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN=
-US" style=3D"font-size:10.5pt;font-family:Courier;color:black">Changing BB=
FILE_PRIORITY_platform-layer in meta-platform/conf/layer.conf now, will aff=
ect the order!, and I can install meta-plaform either before or after the m=
eta-yougurt layer if I want.<u></u><u></u></span></pre><pre style=3D"line-h=
eight:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5=
pt;font-family:Courier;color:black"><u></u>=C2=A0<u></u></span></pre><pre s=
tyle=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"=
font-size:10.5pt;font-family:Courier;color:black">Does anyone know the reas=
on to the faulty sort-order?<u></u><u></u></span></pre><pre style=3D"line-h=
eight:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5=
pt;font-family:Courier;color:black"><u></u>=C2=A0<u></u></span></pre><pre s=
tyle=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"=
font-size:10.5pt;font-family:Courier;color:black">/Christian Magnusson<u></=
u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:white"><s=
pan lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:blac=
k"><u></u>=C2=A0<u></u></span></pre><pre style=3D"line-height:14.7pt;backgr=
ound:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Cour=
ier;color:black"><u></u>=C2=A0<u></u></span></pre><pre style=3D"line-height=
:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;fo=
nt-family:Courier;color:black"><u></u>=C2=A0<u></u></span></pre><pre style=
=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font=
-size:10.5pt;font-family:Courier;color:black">On 11/24/2014 03:22 PM, Steve=
ns, Nick wrote:<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;=
background:white;white-space:pre-wrap;word-wrap:break-word"><span lang=3D"E=
N-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">I think =
I&#39;ve encountered a bug with how multiple bbappend files are processed <=
u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:white=
"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:=
#a01e1e">when one of the bbappends contains a filename wildcard, but I want=
 to make sure <u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;b=
ackground:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family=
:Courier;color:#a01e1e">there&#39;s not something I&#39;m missing before fi=
ling a bug report.<u></u><u></u></span></pre><pre style=3D"line-height:14.7=
pt;background:white;white-space:pre-wrap;word-wrap:break-word"><span lang=
=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e"><u>=
</u>=C2=A0<u></u></span></pre><pre style=3D"line-height:14.7pt;background:w=
hite"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;co=
lor:#a01e1e">I have a BSP layer and a customization layer that are based on=
 the OE/poky <u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;ba=
ckground:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:=
Courier;color:#a01e1e">Daisy release. The output of `bitbake-layers show-la=
yers` looks like:<u></u><u></u></span></pre><pre style=3D"line-height:14.7p=
t;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-fam=
ily:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 layer=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 path=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 priority<u></u><u></u></span></pre><pre styl=
e=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"fon=
t-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;backgr=
ound:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Cour=
ier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=
=A0poky/meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 5<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;background=
:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;=
color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 poky/meta-yocto=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 5<u></u><u></u></span></pre><pre style=3D"line-height:14.7p=
t;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-fam=
ily:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 meta-yocto-bsp=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 poky/meta-yocto-bsp=C2=A0 5<u></u><u></u>=
</span></pre><pre style=3D"line-height:14.7pt;background:white"><span lang=
=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=
=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font-size:10.5pt;font-family:Co=
urier;color:#a01e1e">...ellided...<u></u><u></u></span></pre><pre style=3D"=
line-height:14.7pt;background:white"><span style=3D"font-size:10.5pt;font-f=
amily:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 meta-bsp=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 meta-bsp=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6<=
u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:white=
"><span style=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=
=C2=A0=C2=A0=C2=A0 </span><span lang=3D"EN-US" style=3D"font-size:10.5pt;fo=
nt-family:Courier;color:#a01e1e">meta-custom=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 meta-custom=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 8<u></u><u></u></span></pre><pre style=3D"line-height=
:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;fo=
nt-family:Courier;color:#a01e1e"><u></u>=C2=A0<u></u></span></pre><pre styl=
e=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"fon=
t-size:10.5pt;font-family:Courier;color:#a01e1e">In meta-bsp there is a bba=
ppend for base-files named <u></u><u></u></span></pre><pre style=3D"line-he=
ight:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5p=
t;font-family:Courier;color:#a01e1e">base-files_3.0.14.bbappend. The meta-b=
sp bbappend adds a sysctl.conf to /etc - <u></u><u></u></span></pre><pre st=
yle=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"f=
ont-size:10.5pt;font-family:Courier;color:#a01e1e">pretty straightforward:<=
u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:white=
"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:=
#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 FILESEXTRAPATHS_prepend :=3D &quot;${THIS=
DIR}/${PN}:&quot;<u></u><u></u></span></pre><pre style=3D"line-height:14.7p=
t;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-fam=
ily:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 SRC_URI +=3D &quot;file=
://sysctl.conf&quot;<u></u><u></u></span></pre><pre style=3D"line-height:14=
.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 do_install_append() =
{<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:whi=
te"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;colo=
r:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0644=
 ${WORKDIR}/sysctl.conf ${D}${sysconfdir}/<u></u><u></u></span></pre><pre s=
tyle=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"=
font-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=
=A0 }<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;background=
:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;=
color:#a01e1e"><u></u>=C2=A0<u></u></span></pre><pre style=3D"line-height:1=
4.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font=
-family:Courier;color:#a01e1e">Now what I want to do is add a file called b=
ase-files_%.bbappend to <u></u><u></u></span></pre><pre style=3D"line-heigh=
t:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;f=
ont-family:Courier;color:#a01e1e">meta-custom. It has its own version of sy=
sctl.conf, and the recipe looks like <u></u><u></u></span></pre><pre style=
=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font=
-size:10.5pt;font-family:Courier;color:#a01e1e">this:<u></u><u></u></span><=
/pre><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US=
" style=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=A0=
=C2=A0=C2=A0 FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<u><=
/u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:white"><=
span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a0=
1e1e"><u></u>=C2=A0<u></u></span></pre><pre style=3D"line-height:14.7pt;bac=
kground:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:C=
ourier;color:#a01e1e">Here&#39;s where things get weird. If I run `bitbake =
-e base-files` and pull out <u></u><u></u></span></pre><pre style=3D"line-h=
eight:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5=
pt;font-family:Courier;color:#a01e1e">the section for FILESEXTRAPATHS, this=
 is what I get (note that I&#39;ve stripped <u></u><u></u></span></pre><pre=
 style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=
=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">out the huge absolu=
te paths to make this easier to read):<u></u><u></u></span></pre><pre style=
=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font=
-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 # =
$FILESEXTRAPATHS [5 operations]<u></u><u></u></span></pre><pre style=3D"lin=
e-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:1=
0.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=A0=
=C2=A0 set poky/meta/conf/documentation.conf:172<u></u><u></u></span></pre>=
<pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" sty=
le=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=
=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0 [doc] &quot;Extends the search path the=
 OpenEmbedded build system uses when <u></u><u></u></span></pre><pre style=
=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font=
-size:10.5pt;font-family:Courier;color:#a01e1e">looking for files and patch=
es as it processes recipes and append files.&quot;<u></u><u></u></span></pr=
e><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=
=A0=C2=A0 #=C2=A0 =C2=A0_prepend meta-custom/recipes-core/base-files/base-f=
iles_%.bbappend:6<u></u><u></u></span></pre><pre style=3D"line-height:14.7p=
t;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-fam=
ily:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=
=A0 &quot;meta-custom/recipes-core/base-files/base-files:&quot;<u></u><u></=
u></span></pre><pre style=3D"line-height:14.7pt;background:white"><span lan=
g=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">=
=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0 _prepend meta-bsp/recipes-core/base-=
files/base-files_3.0.14.bbappend:3<u></u><u></u></span></pre><pre style=3D"=
line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-siz=
e:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=
=A0=C2=A0=C2=A0=C2=A0 &quot;meta-bsp/recipes-core/base-files/base-files:&qu=
ot;<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:w=
hite"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;co=
lor:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0 set data_smart.py:432 [=
finalize]<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;backgr=
ound:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Cour=
ier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0 &quot=
;meta-custom/recipes-core/base-files/base-files:&quot;<u></u><u></u></span>=
</pre><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-U=
S" style=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=
=A0=C2=A0=C2=A0 #=C2=A0=C2=A0 set data_smart.py:432 [finalize]<u></u><u></u=
></span></pre><pre style=3D"line-height:14.7pt;background:white"><span lang=
=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=
=A0=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre>=
<pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" sty=
le=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">&quot;meta-bsp/re=
cipes-core/base-files/base-files:meta-custom/recipes-core/base-files/base-f=
iles:&quot;<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;back=
ground:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Co=
urier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 # computed:<u></u><u></u></sp=
an></pre><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"E=
N-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=
=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0 <u></u><u></u></span></pre><pre style=3D"l=
ine-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size=
:10.5pt;font-family:Courier;color:#a01e1e">&quot;meta-bsp/recipes-core/base=
-files/base-files:meta-custom/recipes-core/base-files/base-files:&quot;<u><=
/u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:white"><=
span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a0=
1e1e">=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre><pre style=3D"lin=
e-height:14.7pt;background:white"><span lang=3D"PT-BR" style=3D"font-size:1=
0.5pt;font-family:Courier;color:#a01e1e">FILESEXTRAPATHS=3D&quot;meta-bsp/r=
ecipes-core/base-files/base-files:meta-custom/recipes-core/base-files/base-=
files:&quot;<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;bac=
kground:white"><span lang=3D"PT-BR" style=3D"font-size:10.5pt;font-family:C=
ourier;color:#a01e1e"><u></u>=C2=A0<u></u></span></pre><pre style=3D"line-h=
eight:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5=
pt;font-family:Courier;color:#a01e1e">For some reason meta-bsp is coming be=
fore meta-custom in FILESEXTRAPATHS, even <u></u><u></u></span></pre><pre s=
tyle=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"=
font-size:10.5pt;font-family:Courier;color:#a01e1e">though meta-custom has =
a higher priority!<u></u><u></u></span></pre><pre style=3D"line-height:14.7=
pt;background:white;white-space:pre-wrap;word-wrap:break-word;text-align:st=
art;word-spacing:0px"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-f=
amily:Courier;color:black"><u></u>=C2=A0<u></u></span></pre><pre style=3D"l=
ine-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size=
:10.5pt;font-family:Courier;color:black"><u></u>=C2=A0<u></u></span></pre><=
p class=3D"MsoNormal"><tt><span lang=3D"EN-US" style=3D"font-size:10.5pt;fo=
nt-family:Courier;color:black;background:white">I also have some questions =
about how FILESEXTRAPATHS is supposed to work</span></tt><span><span lang=
=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black;backgr=
ound:white">=C2=A0</span></span><tt><span lang=3D"EN-US" style=3D"font-size=
:10.5pt;font-family:Courier;color:black;background:white">with append files=
 and layer priorities.</span></tt><span lang=3D"EN-US" style=3D"font-size:1=
2.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><u></u><u>=
</u></span></p><pre style=3D"line-height:14.7pt;background:white"><span lan=
g=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black"><u><=
/u>=C2=A0<u></u></span></pre><p class=3D"MsoNormal"><tt><span lang=3D"EN-US=
" style=3D"font-size:10.5pt;font-family:Courier;color:black;background:whit=
e">Does a higher layer priority mean that the FILESEXTRAPATHS operation</sp=
an></tt><span><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Co=
urier;color:black;background:white">=C2=A0</span></span><tt><span lang=3D"E=
N-US" style=3D"font-size:10.5pt;font-family:Courier;color:black;background:=
white">should occur first? If this is the case, then a lower priority layer=
</span></tt><span><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-famil=
y:Courier;color:black;background:white">=C2=A0</span></span><tt><span lang=
=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black;backgr=
ound:white">prepend will appear to the left of the higher layer prepend sin=
ce it</span></tt><span><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:Courier;color:black;background:white">=C2=A0</span></span><tt><span =
lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black;ba=
ckground:white">runs later, and this will probably not provide the result y=
ou want.</span></tt><span lang=3D"EN-US"><u></u><u></u></span></p><pre styl=
e=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"fon=
t-size:10.5pt;font-family:Courier;color:black"><u></u>=C2=A0<u></u></span><=
/pre><p class=3D"MsoNormal"><tt><span lang=3D"EN-US" style=3D"font-size:10.=
5pt;font-family:Courier;color:black;background:white">The prepend and layer=
 logic seems messy to me. I would like to have a</span></tt><span><span lan=
g=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black;backg=
round:white">=C2=A0</span></span><tt><span lang=3D"EN-US" style=3D"font-siz=
e:10.5pt;font-family:Courier;color:black;background:white">way to write my =
custom layer and specify that what I include in my</span></tt><span><span l=
ang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black;bac=
kground:white">=C2=A0</span></span><tt><span lang=3D"EN-US" style=3D"font-s=
ize:10.5pt;font-family:Courier;color:black;background:white">SRC_URI in eac=
h recipe is definitive and can not be overwritten.</span></tt><span><span l=
ang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black;bac=
kground:white">=C2=A0</span></span><tt><span lang=3D"EN-US" style=3D"font-s=
ize:10.5pt;font-family:Courier;color:black;background:white">Suggestions on=
 how to best accomplish this will be greatly appreciated.</span></tt><span =
lang=3D"EN-US"><u></u><u></u></span></p><pre style=3D"line-height:14.7pt;ba=
ckground:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:=
Courier;color:black"><u></u>=C2=A0<u></u></span></pre><p class=3D"MsoNormal=
"><tt><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;co=
lor:black;background:white">I have been trying to accomplish this with FILE=
SOVERRIDES, but this</span></tt><span><span lang=3D"EN-US" style=3D"font-si=
ze:10.5pt;font-family:Courier;color:black;background:white">=C2=A0</span></=
span><tt><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier=
;color:black;background:white">logic seems counterintuitive since DISTROOVE=
RRIDES take precedence over</span></tt><span><span lang=3D"EN-US" style=3D"=
font-size:10.5pt;font-family:Courier;color:black;background:white">=C2=A0</=
span></span><tt><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:=
Courier;color:black;background:white">MACHINEOVERRIDES in building the file=
 search path during the unpack task.</span></tt><span lang=3D"EN-US"><u></u=
><u></u></span></p><pre style=3D"line-height:14.7pt;background:white"><span=
 lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black">=
<u></u>=C2=A0<u></u></span></pre><p class=3D"MsoNormal"><tt><span lang=3D"E=
N-US" style=3D"font-size:10.5pt;font-family:Courier;color:black;background:=
white">It seems to me that the file search path should be built using</span=
></tt><span><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Cour=
ier;color:black;background:white">=C2=A0</span></span><tt><span lang=3D"EN-=
US" style=3D"font-size:10.5pt;font-family:Courier;color:black;background:wh=
ite">FILESOVERRIDES from left to right: TRANSLATED_TARGET_ARCH,</span></tt>=
<span><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;co=
lor:black;background:white">=C2=A0</span></span><tt><span lang=3D"EN-US" st=
yle=3D"font-size:10.5pt;font-family:Courier;color:black;background:white">M=
ACHINEOVERRIDES, and then DISTROOVERRIDES (specific to generic), but</span>=
</tt><span><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Couri=
er;color:black;background:white">=C2=A0</span></span><tt><span lang=3D"EN-U=
S" style=3D"font-size:10.5pt;font-family:Courier;color:black;background:whi=
te">this isn&#39;t what I&#39;m seeing. Still investigating how it&#39;s al=
l put</span></tt><span><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:Courier;color:black;background:white">=C2=A0</span></span><tt><span =
lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black;ba=
ckground:white">together...</span></tt><span lang=3D"EN-US"><u></u><u></u><=
/span></p><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"=
EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black"><u></u>=
=C2=A0<u></u></span></pre><pre style=3D"line-height:14.7pt;background:white=
"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:=
black"><u></u>=C2=A0<u></u></span></pre><p class=3D"MsoNormal"><tt><span la=
ng=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black;back=
ground:white">I verified this by building an image - the sysctl.conf that e=
nds up in</span></tt><span><span lang=3D"EN-US" style=3D"font-size:10.5pt;f=
ont-family:Courier;color:black;background:white">=C2=A0</span></span><tt><s=
pan lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:blac=
k;background:white">the final image is the one from meta-bsp, not the one f=
rom meta-custom.</span></tt><span><span lang=3D"EN-US" style=3D"font-size:1=
0.5pt;font-family:Courier;color:black;background:white">=C2=A0</span></span=
><tt><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;col=
or:black;background:white">But if I switch the name of base-files_%.bbappen=
d in meta-custom to</span></tt><span><span lang=3D"EN-US" style=3D"font-siz=
e:10.5pt;font-family:Courier;color:black;background:white">=C2=A0</span></s=
pan><tt><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;=
color:black;background:white">base-files_3.0.14.bbappend, this is what I ge=
t:</span></tt><span lang=3D"EN-US"><u></u><u></u></span></p><pre style=3D"l=
ine-height:14.7pt;background:white;white-space:pre-wrap;word-wrap:break-wor=
d"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color=
:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 # $FILESEXTRAPATHS [5 operations]<u></u>=
<u></u></span></pre><pre style=3D"line-height:14.7pt;background:white"><spa=
n lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a01e1=
e">=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0 set poky/meta/conf/documentation.=
conf:172<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;backgro=
und:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Couri=
er;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0 [doc] =
&quot;Extends the search path the OpenEmbedded build system uses when <u></=
u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:white"><s=
pan lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a01=
e1e">looking for files and patches as it processes recipes and append files=
.&quot;<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;backgrou=
nd:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courie=
r;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font-size:1=
0.5pt;font-family:Courier;color:#a01e1e">#=C2=A0=C2=A0 _prepend meta-bsp/re=
cipes-core/base-files/base-files_3.0.14.bbappend:3<u></u><u></u></span></pr=
e><pre style=3D"line-height:14.7pt;background:white"><span style=3D"font-si=
ze:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=
=A0=C2=A0=C2=A0=C2=A0 &quot;meta-bsp/recipes-core/base-files/base-files:&qu=
ot;<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:w=
hite"><span style=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">=
=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0 _prepend <u></u><u></u></span></pre>=
<pre style=3D"line-height:14.7pt;background:white"><span style=3D"font-size=
:10.5pt;font-family:Courier;color:#a01e1e">meta-custom/recipes-core/base-fi=
les/base-files_3.0.14.bbappend:6<u></u><u></u></span></pre><pre style=3D"li=
ne-height:14.7pt;background:white"><span style=3D"font-size:10.5pt;font-fam=
ily:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=
=A0 &quot;meta-custom/recipes-core/base-files/base-files:&quot;<u></u><u></=
u></span></pre><pre style=3D"line-height:14.7pt;background:white"><span sty=
le=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=
=A0=C2=A0 </span><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family=
:Courier;color:#a01e1e">#=C2=A0=C2=A0 set data_smart.py:432 [finalize]<u></=
u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:white"><s=
pan lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a01=
e1e">=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0 &quot;meta-bsp/reci=
pes-core/base-files/base-files:&quot;<u></u><u></u></span></pre><pre style=
=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font=
-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=A0 #=
=C2=A0=C2=A0 set data_smart.py:432 [finalize]<u></u><u></u></span></pre><pr=
e style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=
=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=
=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></span></pre><pre style=3D"l=
ine-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size=
:10.5pt;font-family:Courier;color:#a01e1e">&quot;meta-custom/recipes-core/b=
ase-files/base-files:meta-bsp/recipes-core/base-files/base-files:&quot;<u><=
/u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:white"><=
span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a0=
1e1e">=C2=A0=C2=A0=C2=A0=C2=A0 # computed:<u></u><u></u></span></pre><pre s=
tyle=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"=
font-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=A0=C2=A0=C2=
=A0 #=C2=A0=C2=A0 <u></u><u></u></span></pre><pre style=3D"line-height:14.7=
pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-fa=
mily:Courier;color:#a01e1e">&quot;meta-custom/recipes-core/base-files/base-=
files:meta-bsp/recipes-core/base-files/base-files:&quot;<u></u><u></u></spa=
n></pre><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN=
-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a01e1e">=C2=A0=C2=
=A0=C2=A0=C2=A0 <u></u><u></u></span></pre><pre style=3D"line-height:14.7pt=
;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-fami=
ly:Courier;color:#a01e1e">FILESEXTRAPATHS=3D&quot;meta-custom/recipes-core/=
base-files/base-files:meta-bsp/recipes-core/base-files/base-files:&quot;<u>=
</u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:white">=
<span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a=
01e1e"><u></u>=C2=A0<u></u></span></pre><pre style=3D"line-height:14.7pt;ba=
ckground:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:=
Courier;color:#a01e1e">And now the sysctl.conf file is being pulled from me=
ta-custom.<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;backg=
round:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Cou=
rier;color:#a01e1e"><u></u>=C2=A0<u></u></span></pre><pre style=3D"line-hei=
ght:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt=
;font-family:Courier;color:#a01e1e">Is there something I&#39;m missing, lik=
e some sort of decreased priorty for <u></u><u></u></span></pre><pre style=
=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font=
-size:10.5pt;font-family:Courier;color:#a01e1e">bbappend files with a wildc=
ard? Or is this a bug?<u></u><u></u></span></pre><pre style=3D"line-height:=
14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;fon=
t-family:Courier;color:#a01e1e"><u></u>=C2=A0<u></u></span></pre><pre style=
=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font=
-size:10.5pt;font-family:Courier;color:#a01e1e">Thanks for any help!<u></u>=
<u></u></span></pre><pre style=3D"line-height:14.7pt;background:white"><spa=
n lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:#a01e1=
e"><u></u>=C2=A0<u></u></span></pre><pre style=3D"line-height:14.7pt;backgr=
ound:white"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Cour=
ier;color:#a01e1e">Nick Stevens<u></u><u></u></span></pre><pre style=3D"lin=
e-height:14.7pt;background:white"><span lang=3D"EN-US" style=3D"font-size:1=
0.5pt;font-family:Courier;color:#a01e1e"><u></u>=C2=A0<u></u></span></pre><=
pre style=3D"line-height:14.7pt;background:white;white-space:pre-wrap;word-=
wrap:break-word;text-align:start;word-spacing:0px"><span lang=3D"EN-US" sty=
le=3D"font-size:10.5pt;font-family:Courier;color:black"><u></u>=C2=A0<u></u=
></span></pre><pre style=3D"line-height:14.7pt;background:white"><span lang=
=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:black">--<u>=
</u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:white">=
<span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;color:bl=
ack">_______________________________________________<u></u><u></u></span></=
pre><pre style=3D"line-height:14.7pt;background:white"><span lang=3D"EN-US"=
 style=3D"font-size:10.5pt;font-family:Courier;color:black">yocto mailing l=
ist<u></u><u></u></span></pre><pre style=3D"line-height:14.7pt;background:w=
hite"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-family:Courier;co=
lor:black"><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><u></u><u></u></span></pre><pre style=3D"line-height:=
14.7pt;background:white"><span style=3D"font-size:10.5pt;font-family:Courie=
r;color:black"><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" ta=
rget=3D"_blank"><span lang=3D"EN-US" style=3D"color:#a01e1e">https://lists.=
yoctoproject.org/listinfo/yocto</span></a></span><span lang=3D"EN-US" style=
=3D"font-size:10.5pt;font-family:Courier;color:black"><u></u><u></u></span>=
</pre><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></spa=
n></p></div></div>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a1149013eca7bc905163753ca--
