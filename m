Return-Path: <finncarlsvi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E302E00C36; Tue, 13 Oct 2015 17:57:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (finncarlsvi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D82C0E00A38
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 17:57:09 -0700 (PDT)
Received: by vkha6 with SMTP id a6so21139819vkh.2
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 17:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=T2An5QN6Dv49srlj/aiLRn8lumfpSUPEgIKHpIP1F6A=;
	b=fn6nZ6AiMGhQpLg7mdDJ56sjEdMG80Gpzazi/z62hVPnLTUDhOmdcie6iZzjrCJdVT
	HJuwb/IYX4nO8eqd4yo/svVXrzeCSjJ39xUJL10T7V6DRDianj27tGbt4K4DLy6idtYl
	LSe8g8NV52OCjEjq4+QOJUMu9ZsiGUTHnGW4ySMGqI3UuLvyaQ5bd8TSpzAJb+BsjqhR
	1RyE+3Uw30EkSfZGeewVgmHO+PiThqiO4l3jJYz242GPXxMQ23zmnFDcGxgt14uS1dO/
	Pbtg5tf8PXDaYJa7cAEnA/D2EGa/SSBily8vuWfRr5MEDkFL6CMF2pn2OeuUEjf79Ect
	2Dlw==
MIME-Version: 1.0
X-Received: by 10.31.132.79 with SMTP id g76mr269738vkd.40.1444784228791; Tue,
	13 Oct 2015 17:57:08 -0700 (PDT)
Received: by 10.31.178.22 with HTTP; Tue, 13 Oct 2015 17:57:08 -0700 (PDT)
In-Reply-To: <CAJTo0Lb9E2PY5wnj-T7VpEyVHzdn4TQ3Vws1mqQY0R2m4dfq_Q@mail.gmail.com>
References: <CAD-yPSd=ue4FgBSEU6G_OMoQtBC6ZaypkOCQhmFp1X1emWZVpg@mail.gmail.com>
	<CAJTo0LbevEF_mY55dfsasBwXDki3J-f76ih31j8k8kLwfFE8iQ@mail.gmail.com>
	<CAD-yPSeYso2N-KaS3uHVaWKZjTcZ=4yHQxHPust9Qw8nW1Z_8A@mail.gmail.com>
	<CAJTo0Lb9E2PY5wnj-T7VpEyVHzdn4TQ3Vws1mqQY0R2m4dfq_Q@mail.gmail.com>
Date: Tue, 13 Oct 2015 17:57:08 -0700
Message-ID: <CAD-yPSd_NrBbQi7mj7KFjEYJmGodMMgvr1BfpOC-V_yudCaeZQ@mail.gmail.com>
From: Finn Carlsvi <finncarlsvi@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Wed, 14 Oct 2015 00:57:17 -0000
Content-Type: multipart/alternative; boundary=001a11458096bbff740522060a59

--001a11458096bbff740522060a59
Content-Type: text/plain; charset=UTF-8

Thanks Ross,

That makes much more sense. I incorporated your edits, however, I used:

EXTRA_OECONF_append = " --with-external-capnp"
instead of EXTRA_OECMAKE, since it was used for the configuration
originally. Am I thinking right about this?

This edit brings me to the following error:

| [ 70%] Built target capnp_tool
| make -f src/capnp/CMakeFiles/capnp-heavy-tests.dir/build.make
src/capnp/CMakeFiles/capnp-heavy-tests.dir/depend
| make[2]: Entering directory
`/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build'
| /home/finn/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/cmake -E
cmake_progress_report
/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build/CMakeFiles
14
| [ 71%] Compiling Cap'n Proto schema test-import2.capnp
| cd
/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build/src/capnp
&& ./capnp compile -o
/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build/src/capnp/capnpc-c++:/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build/src/capnp/test_capnp/capnp
--src-prefix
/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src/capnp
-I
/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src/capnp
-I
/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src
/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src/capnp/test-import2.capnp
| ./capnp: 1: ./capnp: Syntax error: word unexpected (expecting ")")
| make[2]: *** [src/capnp/test_capnp/capnp/test-import2.capnp.c++] Error 2
| make[2]: Leaving directory
`/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build'
| make[1]: *** [src/capnp/CMakeFiles/capnp-heavy-tests.dir/all] Error 2
| make[1]: Leaving directory
`/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.

From what I gather,  Syntax error: word unexpected (expecting ")") means
that the ./capnp is compiled for arm, I need to be running the local
version right?

I tried adding
CAPNP = "/usr/local/bin/capnp"
to the recipe file, but of course that does not make a difference.

This is my updated recipe file:
INSANE_SKIP_${PN} += "install-host-path"

SRC_URI = "https://capnproto.org/capnproto-c++-${PV}.tar.gz"
SRC_URI[md5sum] = "d6c91a9129457fe5893302cd92e09324"
SRC_URI[sha256sum] =
"cdb17c792493bdcd4a24bcd196eb09f70ee64c83a3eccb0bc6534ff560536afb"

PACKAGES = "${PN}"

S = "${WORKDIR}/capnproto-c++-${PV}"

inherit cmake

EXTRA_OECONF_append = " --with-external-capnp"


Thanks again :)

On Tue, Oct 13, 2015 at 2:56 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 13 October 2015 at 20:55, Finn Carlsvi <finncarlsvi@gmail.com> wrote:
>
>> INSANE_SKIP_${PN} += "installed-vs-shipped"
>>
>
> You're telling the system not to warn you that you have a do_install()
> that installs files that are not getting packaged anywhere.
>
> do_configure() {
>>     export CAPNP=/usr/local/bin/capnp
>>     ${S}/configure --with-external-capnp -build=x86_64-linux
>> --host=arm-poky-linux-gnueabi --target=arm-poky-linux-gnueabi
>> }
>
>
> Here you are overriding all of the magic in cmake.bbclass that makes cmake
> actually work.  You probably just want to add --with-external-capnp to
> EXTRA_OECMAKE and remove your do_configure().
>
> Ross
>

--001a11458096bbff740522060a59
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Ross,<div><br></div><div>That makes much more sense=
. I incorporated your edits, however, I used:</div><div><br></div><div>EXTR=
A_OECONF_append =3D &quot; --with-external-capnp&quot;</div><div>instead of=
=C2=A0<span style=3D"font-size:12.8px">EXTRA_OECMAKE, since it was used for=
 the configuration originally. Am I thinking right about this?</span></div>=
<div><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"=
font-size:12.8px">This edit brings me to the following error:</span></div><=
div><span style=3D"font-size:12.8px"><br></span></div><div><div style=3D"">=
<span style=3D"font-size:12.8px">| [ 70%] Built target capnp_tool</span></d=
iv><div style=3D""><span style=3D"font-size:12.8px">| make -f src/capnp/CMa=
keFiles/capnp-heavy-tests.dir/build.make src/capnp/CMakeFiles/capnp-heavy-t=
ests.dir/depend</span></div><div style=3D""><span style=3D"font-size:12.8px=
">| make[2]: Entering directory `/home/finn/yocto/poky/build/tmp/work/corte=
xa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build&#39;</span></div=
><div style=3D""><span style=3D"font-size:12.8px">| /home/finn/yocto/poky/b=
uild/tmp/sysroots/x86_64-linux/usr/bin/cmake -E cmake_progress_report /home=
/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capn=
proto/0.5.3-r0/build/CMakeFiles 14</span></div><div style=3D""><span style=
=3D"font-size:12.8px">| [ 71%] Compiling Cap&#39;n Proto schema test-import=
2.capnp</span></div><div style=3D""><span style=3D"font-size:12.8px">| cd /=
home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/=
capnproto/0.5.3-r0/build/src/capnp &amp;&amp; ./capnp compile -o /home/finn=
/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto=
/0.5.3-r0/build/src/capnp/capnpc-c++:/home/finn/yocto/poky/build/tmp/work/c=
ortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build/src/capnp/te=
st_capnp/capnp --src-prefix /home/finn/yocto/poky/build/tmp/work/cortexa9hf=
-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src/cap=
np -I /home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-g=
nueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src/capnp -I /home/finn/yocto=
/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3=
-r0/capnproto-c++-0.5.3/src /home/finn/yocto/poky/build/tmp/work/cortexa9hf=
-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/capnproto-c++-0.5.3/src/cap=
np/test-import2.capnp</span></div><div style=3D""><span style=3D"font-size:=
12.8px">| ./capnp: 1: ./capnp: Syntax error: word unexpected (expecting &qu=
ot;)&quot;)</span></div><div style=3D""><span style=3D"font-size:12.8px">| =
make[2]: *** [src/capnp/test_capnp/capnp/test-import2.capnp.c++] Error 2</s=
pan></div><div style=3D""><span style=3D"font-size:12.8px">| make[2]: Leavi=
ng directory `/home/finn/yocto/poky/build/tmp/work/cortexa9hf-vfp-neon-poky=
-linux-gnueabi/capnproto/0.5.3-r0/build&#39;</span></div><div style=3D""><s=
pan style=3D"font-size:12.8px">| make[1]: *** [src/capnp/CMakeFiles/capnp-h=
eavy-tests.dir/all] Error 2</span></div><div style=3D""><span style=3D"font=
-size:12.8px">| make[1]: Leaving directory `/home/finn/yocto/poky/build/tmp=
/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/capnproto/0.5.3-r0/build&#39;<=
/span></div><div style=3D""><span style=3D"font-size:12.8px">| make: *** [a=
ll] Error 2</span></div><div style=3D""><span style=3D"font-size:12.8px">| =
ERROR: oe_runmake failed</span></div><div style=3D""><span style=3D"font-si=
ze:12.8px">| WARNING: exit code 1 from a shell command.</span></div><div st=
yle=3D""><span style=3D"font-size:12.8px"><br></span></div><div style=3D"">=
From what I gather,=C2=A0<span style=3D"font-size:12.8px">=C2=A0</span><spa=
n style=3D"font-size:12.8px">Syntax error: word unexpected (expecting &quot=
;)&quot;) means that the ./capnp is compiled for arm, I need to be running =
the local version right?</span></div></div><div style=3D""><span style=3D"f=
ont-size:12.8px"><br></span></div><div style=3D""><span style=3D"font-size:=
12.8px">I tried adding</span></div><div style=3D""><span style=3D"font-size=
:12.8px">CAPNP =3D &quot;/usr/local/bin/capnp&quot;</span></div><div style=
=3D""><span style=3D"font-size:12.8px">to the recipe file, but of course th=
at does not make a difference.</span></div><div style=3D""><span style=3D"f=
ont-size:12.8px"><br></span></div><div style=3D""><span style=3D"font-size:=
12.8px">This is my updated recipe file:</span></div><div style=3D""><div st=
yle=3D""><span style=3D"font-size:12.8px">INSANE_SKIP_${PN} +=3D &quot;inst=
all-host-path&quot;</span></div><div style=3D""><span style=3D"font-size:12=
.8px"><br></span></div><div style=3D""><span style=3D"font-size:12.8px">SRC=
_URI =3D &quot;<a href=3D"https://capnproto.org/capnproto-c++-${PV}.tar.gz"=
>https://capnproto.org/capnproto-c++-${PV}.tar.gz</a>&quot;</span></div><di=
v style=3D""><span style=3D"font-size:12.8px">SRC_URI[md5sum] =3D &quot;d6c=
91a9129457fe5893302cd92e09324&quot;</span></div><div style=3D""><span style=
=3D"font-size:12.8px">SRC_URI[sha256sum] =3D &quot;cdb17c792493bdcd4a24bcd1=
96eb09f70ee64c83a3eccb0bc6534ff560536afb&quot;</span></div><div style=3D"">=
<span style=3D"font-size:12.8px"><br></span></div><div style=3D""><span sty=
le=3D"font-size:12.8px">PACKAGES =3D &quot;${PN}&quot;</span></div><div sty=
le=3D""><span style=3D"font-size:12.8px"><br></span></div><div style=3D""><=
span style=3D"font-size:12.8px">S =3D &quot;${WORKDIR}/capnproto-c++-${PV}&=
quot;</span></div><div style=3D""><span style=3D"font-size:12.8px"><br></sp=
an></div><div style=3D""><span style=3D"font-size:12.8px">inherit cmake</sp=
an></div><div style=3D""><span style=3D"font-size:12.8px"><br></span></div>=
<div style=3D""><span style=3D"font-size:12.8px">EXTRA_OECONF_append =3D &q=
uot; --with-external-capnp&quot;</span></div><div style=3D"font-size:12.8px=
"><br></div><div style=3D"font-size:12.8px"><br></div><div style=3D"font-si=
ze:12.8px">Thanks again :)</div></div></div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Tue, Oct 13, 2015 at 2:56 PM, Burton, Ross <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_bla=
nk">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On 13 October 2015 at 20:55, Finn Carlsvi <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:finncarlsvi@gmail.com" target=3D"_blank">finncarlsvi@gmail.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex"><div>INSANE_SKIP_${PN} +=3D &qu=
ot;installed-vs-shipped&quot;</div><div></div></blockquote></div></div><br>=
<div>You&#39;re telling the system not to warn you that you have a do_insta=
ll() that installs files that are not getting packaged anywhere. =C2=A0</di=
v><div><br></div><div><span class=3D""><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb=
(204,204,204);border-left-style:solid;padding-left:1ex">do_configure() {<br=
>=C2=A0 =C2=A0 export CAPNP=3D/usr/local/bin/capnp<br>=C2=A0 =C2=A0 ${S}/co=
nfigure --with-external-capnp -build=3Dx86_64-linux --host=3Darm-poky-linux=
-gnueabi --target=3Darm-poky-linux-gnueabi<br>}</blockquote><div><br></div>=
</span><div>Here you are overriding all of the magic in cmake.bbclass that =
makes cmake actually work.=C2=A0 You probably just want to add --with-exter=
nal-capnp to EXTRA_OECMAKE and remove your do_configure().</div><span class=
=3D"HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross</div></font></=
span></div></div>
</blockquote></div><br></div>

--001a11458096bbff740522060a59--
