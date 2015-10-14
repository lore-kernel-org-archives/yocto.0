Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42B75E00AC5; Wed, 14 Oct 2015 01:13:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CBB1E00A38
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 01:13:08 -0700 (PDT)
Received: by lbwr8 with SMTP id r8so40314855lbw.2
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 01:13:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=/4KU8/Y4wdkNq06f7ryF6OhxL/07HMT9xBnv3lxZCuE=;
	b=jgQGzXCma8NnKmNN5yo+dM2dsgDMlEBNf/Kgf6QDWACVyjhr2lKd85S8NUN/SOZgMu
	fNvp0rFkQ4FdGQTOJTLDhG1m5QVYph+gLFP+GfaWmji3cS6eOU/S/p3IFRjLBezQ0Cb5
	C8zmXW5IiPNdLhHvsGY8OacaePnsQywIJt5ybOk8SzXkROOFTEetdRF73gYP/cRnvu4p
	e6gM+NpNyfQR4vH+ZrZm2LILpsic+nWusVjYFDaR8znJLa1qRrPEjGXRLWE8BTaHHcb7
	LhBUaKuGU2SHM0VX/xDCpGnxM3T4Ig5waBjvPhmmkNiTp/skBPeT7sMZNkFRsjWiMec5
	JJVg==
X-Gm-Message-State: ALoCoQmaT8T4hCNYEN+ak0P4VRxMiXTXUlA1F4exSQL4tXu+WS75P2CcBf3ExOwe+99578dr76TN
X-Received: by 10.112.17.105 with SMTP id n9mr882475lbd.78.1444810386755; Wed,
	14 Oct 2015 01:13:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.157.72 with HTTP; Wed, 14 Oct 2015 01:12:37 -0700 (PDT)
In-Reply-To: <CAD-yPSd_NrBbQi7mj7KFjEYJmGodMMgvr1BfpOC-V_yudCaeZQ@mail.gmail.com>
References: <CAD-yPSd=ue4FgBSEU6G_OMoQtBC6ZaypkOCQhmFp1X1emWZVpg@mail.gmail.com>
	<CAJTo0LbevEF_mY55dfsasBwXDki3J-f76ih31j8k8kLwfFE8iQ@mail.gmail.com>
	<CAD-yPSeYso2N-KaS3uHVaWKZjTcZ=4yHQxHPust9Qw8nW1Z_8A@mail.gmail.com>
	<CAJTo0Lb9E2PY5wnj-T7VpEyVHzdn4TQ3Vws1mqQY0R2m4dfq_Q@mail.gmail.com>
	<CAD-yPSd_NrBbQi7mj7KFjEYJmGodMMgvr1BfpOC-V_yudCaeZQ@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 14 Oct 2015 11:12:37 +0300
Message-ID: <CAHiDW_GHSTUn6voJFtj7xPmVZUZFb4M+8s+ZxXAuOS08amvCEg@mail.gmail.com>
To: Finn Carlsvi <finncarlsvi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cap'n Proto Recipe Help
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
X-List-Received-Date: Wed, 14 Oct 2015 08:13:11 -0000
Content-Type: multipart/alternative; boundary=001a11c3bfeedeef3705220c21d3

--001a11c3bfeedeef3705220c21d3
Content-Type: text/plain; charset=UTF-8

On 14 October 2015 at 03:57, Finn Carlsvi <finncarlsvi@gmail.com> wrote:

> Thanks Ross,
>
> That makes much more sense. I incorporated your edits, however, I used:
>
> EXTRA_OECONF_append = " --with-external-capnp"
> instead of EXTRA_OECMAKE, since it was used for the configuration
> originally. Am I thinking right about this?
>

configure is typically not used when building with cmake** so giving extra
options for it probably won't help. The reason there is a configure file at
all is that the project seems to support both autotools and cmake**. If you
want to continue with cmake, find out how it does the equivalent of
"--with-external-capnp": probably with something like "-DEXTERNALCAPNP" in
EXTRA_OECMAKE. The other alternative is to use autotools instead of cmake
(and add "--with-external-capnp" in EXTRA_OECONF).

I would suggest picking the build system the main developers actually use
or recommend, then figuring out how to build that with the options you need
_outside of yocto_, and then doing the same with a yocto recipe (keeping an
eye on $WORKDIR/temp/log.* so you know what the build/configure is actually
doing).


**) For reasons some people want multiple build systems in their projects.
As if one wasn't painful enough.


- Jussi



>
This edit brings me to the following error:
>
> | [ 70%] Built target capnp_tool
> | make -f src/capnp/CMakeFiles/capnp-heavy-tests.dir/build.make
> src/capnp/CMakeFiles/capnp-heavy-tests.dir/depend
> | make[2]: Entering directory
> `/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build'
> | /home/finn/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/cmake -E
> cmake_progress_report
> /home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build/CMakeFiles
> 14
> | [ 71%] Compiling Cap'n Proto schema test-import2.capnp
> | cd
> /home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build/src/capnp
> && ./capnp compile -o
> /home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build/src/capnp/capnpc-c++:/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build/src/capnp/test_capnp/capnp
> --src-prefix
> /home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src/capnp
> -I
> /home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src/capnp
> -I
> /home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src
> /home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src/capnp/test-import2.capnp
> | ./capnp: 1: ./capnp: Syntax error: word unexpected (expecting ")")
> | make[2]: *** [src/capnp/test_capnp/capnp/test-import2.capnp.c++] Error 2
> | make[2]: Leaving directory
> `/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build'
> | make[1]: *** [src/capnp/CMakeFiles/capnp-heavy-tests.dir/all] Error 2
> | make[1]: Leaving directory
> `/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
>
> From what I gather,  Syntax error: word unexpected (expecting ")") means
> that the ./capnp is compiled for arm, I need to be running the local
> version right?
>
> I tried adding
> CAPNP = "/usr/local/bin/capnp"
> to the recipe file, but of course that does not make a difference.
>
> This is my updated recipe file:
> INSANE_SKIP_${PN} += "install-host-path"
>
> SRC_URI = "https://capnproto.org/capnproto-c++-${PV}.tar.gz
> <https://capnproto.org/capnproto-c++-$%7BPV%7D.tar.gz>"
> SRC_URI[md5sum] = "d6c91a9129457fe5893302cd92e09324"
> SRC_URI[sha256sum] =
> "cdb17c792493bdcd4a24bcd196eb09f70ee64c83a3eccb0bc6534ff560536afb"
>
> PACKAGES = "${PN}"
>
> S = "${WORKDIR}/capnproto-c++-${PV}"
>
> inherit cmake
>
> EXTRA_OECONF_append = " --with-external-capnp"
>
>
> Thanks again :)
>
> On Tue, Oct 13, 2015 at 2:56 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>>
>> On 13 October 2015 at 20:55, Finn Carlsvi <finncarlsvi@gmail.com> wrote:
>>
>>> INSANE_SKIP_${PN} += "installed-vs-shipped"
>>>
>>
>> You're telling the system not to warn you that you have a do_install()
>> that installs files that are not getting packaged anywhere.
>>
>> do_configure() {
>>>     export CAPNP=/usr/local/bin/capnp
>>>     ${S}/configure --with-external-capnp -build=x86_64-linux
>>> --host=arm-poky-linux-gnueabi --target=arm-poky-linux-gnueabi
>>> }
>>
>>
>> Here you are overriding all of the magic in cmake.bbclass that makes
>> cmake actually work.  You probably just want to add --with-external-capnp
>> to EXTRA_OECMAKE and remove your do_configure().
>>
>> Ross
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c3bfeedeef3705220c21d3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
4 October 2015 at 03:57, Finn Carlsvi <span dir=3D"ltr">&lt;<a href=3D"mail=
to:finncarlsvi@gmail.com" target=3D"_blank">finncarlsvi@gmail.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-le=
ft-style:solid;padding-left:1ex"><div dir=3D"ltr">Thanks Ross,<div><br></di=
v><div>That makes much more sense. I incorporated your edits, however, I us=
ed:</div><div><br></div><div>EXTRA_OECONF_append =3D &quot; --with-external=
-capnp&quot;</div><div>instead of=C2=A0<span style=3D"font-size:12.8px">EXT=
RA_OECMAKE, since it was used for the configuration originally. Am I thinki=
ng right about this?</span></div></div></blockquote><div><br></div><div>con=
figure is typically not used when building with cmake** so giving extra opt=
ions for it probably won&#39;t help. The reason there is a configure file a=
t all is that the project seems to support both autotools and cmake**. If y=
ou want to continue with cmake, find out how it does the equivalent of &quo=
t;--with-external-capnp&quot;: probably with something like &quot;-DEXTERNA=
LCAPNP&quot; in EXTRA_OECMAKE. The other alternative is to use autotools in=
stead of cmake (and add &quot;--with-external-capnp&quot; in EXTRA_OECONF).=
</div><div><br></div><div>I would suggest picking the build system the main=
 developers actually use or recommend, then figuring out how to build that =
with the options you need _outside of yocto_, and then doing the same with =
a yocto recipe (keeping an eye on $WORKDIR/temp/log.* so you know what the =
build/configure is actually doing).</div><div><br></div><div><br></div><div=
>**) For reasons some people want multiple build systems in their projects.=
 As if one wasn&#39;t painful enough.</div><div><br></div><div><br></div><d=
iv>- Jussi</div><div><br></div><div><br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-co=
lor:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div dir=3D"=
ltr"><div>=C2=A0</div></div></blockquote><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:r=
gb(204,204,204);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr">=
<div><span style=3D"font-size:12.8px"></span></div><div><span style=3D"font=
-size:12.8px">This edit brings me to the following error:</span></div><div>=
<span style=3D"font-size:12.8px"><br></span></div><div><div><span style=3D"=
font-size:12.8px">| [ 70%] Built target capnp_tool</span></div><div><span s=
tyle=3D"font-size:12.8px">| make -f src/capnp/CMakeFiles/capnp-heavy-tests.=
dir/build.make src/capnp/CMakeFiles/capnp-heavy-tests.dir/depend</span></di=
v><div><span style=3D"font-size:12.8px">| make[2]: Entering directory `/hom=
e/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/cap=
nproto/0.5.3-r0/build&#39;</span></div><div><span style=3D"font-size:12.8px=
">| /home/finn/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/cmake -E =
cmake_progress_report /home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-n=
eon-poky-linux-gnueabi/capnproto/0.5.3-r0/build/CMakeFiles 14</span></div><=
div><span style=3D"font-size:12.8px">| [ 71%] Compiling Cap&#39;n Proto sch=
ema test-import2.capnp</span></div><div><span style=3D"font-size:12.8px">| =
cd /home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnue=
abi/capnproto/0.5.3-r0/build/src/capnp &amp;&amp; ./capnp compile -o /home/=
finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnp=
roto/0.5.3-r0/build/src/capnp/capnpc-c++:/home/finn/yocto/poky/build/tmp/wo=
rk/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build/src/capn=
p/test_capnp/capnp --src-prefix /home/finn/yocto/poky/build/tmp/work/cortex=
a9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src=
/capnp -I /home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-lin=
ux-gnueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src/capnp -I /home/finn/y=
octo/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0=
.5.3-r0/capnproto-c++-0.5.3/src /home/finn/yocto/poky/build/tmp/work/cortex=
a9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src=
/capnp/test-import2.capnp</span></div><div><span style=3D"font-size:12.8px"=
>| ./capnp: 1: ./capnp: Syntax error: word unexpected (expecting &quot;)&qu=
ot;)</span></div><div><span style=3D"font-size:12.8px">| make[2]: *** [src/=
capnp/test_capnp/capnp/test-import2.capnp.c++] Error 2</span></div><div><sp=
an style=3D"font-size:12.8px">| make[2]: Leaving directory `/home/finn/yoct=
o/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.=
3-r0/build&#39;</span></div><div><span style=3D"font-size:12.8px">| make[1]=
: *** [src/capnp/CMakeFiles/capnp-heavy-tests.dir/all] Error 2</span></div>=
<div><span style=3D"font-size:12.8px">| make[1]: Leaving directory `/home/f=
inn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnpr=
oto/0.5.3-r0/build&#39;</span></div><div><span style=3D"font-size:12.8px">|=
 make: *** [all] Error 2</span></div><div><span style=3D"font-size:12.8px">=
| ERROR: oe_runmake failed</span></div><div><span style=3D"font-size:12.8px=
">| WARNING: exit code 1 from a shell command.</span></div><div><span style=
=3D"font-size:12.8px"><br></span></div><div>From what I gather,=C2=A0<span =
style=3D"font-size:12.8px">=C2=A0</span><span style=3D"font-size:12.8px">Sy=
ntax error: word unexpected (expecting &quot;)&quot;) means that the ./capn=
p is compiled for arm, I need to be running the local version right?</span>=
</div></div><div><span style=3D"font-size:12.8px"><br></span></div><div><sp=
an style=3D"font-size:12.8px">I tried adding</span></div><div><span style=
=3D"font-size:12.8px">CAPNP =3D &quot;/usr/local/bin/capnp&quot;</span></di=
v><div><span style=3D"font-size:12.8px">to the recipe file, but of course t=
hat does not make a difference.</span></div><div><span style=3D"font-size:1=
2.8px"><br></span></div><div><span style=3D"font-size:12.8px">This is my up=
dated recipe file:</span></div><div><div><span style=3D"font-size:12.8px">I=
NSANE_SKIP_${PN} +=3D &quot;install-host-path&quot;</span></div><span class=
=3D""><div><span style=3D"font-size:12.8px"><br></span></div><div><span sty=
le=3D"font-size:12.8px">SRC_URI =3D &quot;<a href=3D"https://capnproto.org/=
capnproto-c++-$%7BPV%7D.tar.gz" target=3D"_blank">https://capnproto.org/cap=
nproto-c++-${PV}.tar.gz</a>&quot;</span></div><div><span style=3D"font-size=
:12.8px">SRC_URI[md5sum] =3D &quot;d6c91a9129457fe5893302cd92e09324&quot;</=
span></div><div><span style=3D"font-size:12.8px">SRC_URI[sha256sum] =3D &qu=
ot;cdb17c792493bdcd4a24bcd196eb09f70ee64c83a3eccb0bc6534ff560536afb&quot;</=
span></div><div><span style=3D"font-size:12.8px"><br></span></div><div><spa=
n style=3D"font-size:12.8px">PACKAGES =3D &quot;${PN}&quot;</span></div><di=
v><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"fon=
t-size:12.8px">S =3D &quot;${WORKDIR}/capnproto-c++-${PV}&quot;</span></div=
><div><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D=
"font-size:12.8px">inherit cmake</span></div><div><span style=3D"font-size:=
12.8px"><br></span></div></span><div><span style=3D"font-size:12.8px">EXTRA=
_OECONF_append =3D &quot; --with-external-capnp&quot;</span></div><div styl=
e=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px"><br></div>=
<div style=3D"font-size:12.8px">Thanks again :)</div></div></div><div class=
=3D""><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Tue, Oct 13, 2015 at 2:56 PM, Burton, Ross <span dir=3D"ltr">&lt;=
<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@inte=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204=
,204);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On 13 October 2015 at 20:55=
, Finn Carlsvi <span dir=3D"ltr">&lt;<a href=3D"mailto:finncarlsvi@gmail.co=
m" target=3D"_blank">finncarlsvi@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wi=
dth:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-=
left:1ex"><div>INSANE_SKIP_${PN} +=3D &quot;installed-vs-shipped&quot;</div=
><div></div></blockquote></div></div><br><div>You&#39;re telling the system=
 not to warn you that you have a do_install() that installs files that are =
not getting packaged anywhere. =C2=A0</div><div><br></div><div><span><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-w=
idth:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding=
-left:1ex">do_configure() {<br>=C2=A0 =C2=A0 export CAPNP=3D/usr/local/bin/=
capnp<br>=C2=A0 =C2=A0 ${S}/configure --with-external-capnp -build=3Dx86_64=
-linux --host=3Darm-poky-linux-gnueabi --target=3Darm-poky-linux-gnueabi<br=
>}</blockquote><div><br></div></span><div>Here you are overriding all of th=
e magic in cmake.bbclass that makes cmake actually work.=C2=A0 You probably=
 just want to add --with-external-capnp to EXTRA_OECMAKE and remove your do=
_configure().</div><span><font color=3D"#888888"><div><br></div><div>Ross</=
div></font></span></div></div>
</blockquote></div><br></div>
</div></div><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--001a11c3bfeedeef3705220c21d3--
