Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CBD7E00CE2; Mon, 28 Jan 2019 11:54:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dhanush.ks[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 099E5E00CDF
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 11:54:45 -0800 (PST)
Received: by mail-qt1-f173.google.com with SMTP id d19so19701441qtq.9
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 11:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Vcmk23zsAFFqkZRX+1k1eLFwFWXeCLseFI+oYa6euWw=;
	b=Gi5rJP6KjLmTLr93hYqW6jHT7T18wrubDqhQEpwstUM2ChFbLSK6dHTVmUwov7TbBw
	/P1+ZtQZfNmpQ0N/5QhsWKioTVnE4TW3v37GUVp1aKnyhtTYjzJIV0SWgZ0vl36lMbWL
	P+j8wNhn5LPWq0oSMDXTYYKn76YUb9PkWz9a5Fdae8MmhyigPkpqHYypjLCQLgI0asmu
	WjHshgmp2NLEw60/Zd5qvoI/hIxK1gT1LLphIiKOBxaWCM/olD8R7RqWFtB2heI3qH2t
	6i3TwQAsRoGyt08xDoWpO2WGAWByVelTuxSw6gS2OhIZMA3tVcaU6LPedAr/zJ4apH76
	NZiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Vcmk23zsAFFqkZRX+1k1eLFwFWXeCLseFI+oYa6euWw=;
	b=hCvAClxvqwiaLtFUvdQX7yH7IydeNumfCBC9SfZLtFDcon/i3RQx5eXDHZF9h2WjKU
	YxxM763GhgDHfCH4cpAwGCLO83iMT3dYnoNkKbM7zepWlmBglYjnxUdrqHGU7vMn+DYo
	4oRsmdeo0+oqdnVXG8QapNxafdKyFnKnOioZRjczmbB+cf99zLpaJkgoEdbr0ENrHtYA
	H+X2usAqo6X3j45INcC4rStPS6oxYNEIdUvrT6zFNG31yYzeHE0O5bbmxSEVDS24M9F0
	/1fSXIdWb9BEsf868qBx536GTRdOLZ4i5ne5QXiceCY9EKFbqfdQ6Q2eyLCaA7D4G2pl
	OYCw==
X-Gm-Message-State: AHQUAuaSWnP45WPrtfZJngwJ98BCIFGip0rw7feo+VUXLwKF/meKks5k
	11Qf4gIQR2WlgOn2nf9jNBiIbWTojYOXxfAvWvRtB9VV4jc=
X-Google-Smtp-Source: AHgI3IZBTgBFPFnfChnUI+pxwe2XGUbLfVnhVMI0KBXiYW2FX3oihpctSjZO7+NZZl5jZSRhurUgJvx8yF5CJJsh518=
X-Received: by 2002:a0c:f313:: with SMTP id j19mr2716710qvl.200.1548705285113; 
	Mon, 28 Jan 2019 11:54:45 -0800 (PST)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Mon, 28 Jan 2019 20:54:32 +0100
Message-ID: <CAKPYHZ69_GcJ=yW0p4F=ApYDQZRmQtf4ULdoHB4E89adM57yaw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Expansion Error during parsing of glibc_2.28 recipe
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
X-List-Received-Date: Mon, 28 Jan 2019 19:54:48 -0000
Content-Type: multipart/alternative; boundary="000000000000618c7805808a0c82"

--000000000000618c7805808a0c82
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to upgrade the glibc recipe from version 2.27 to 2.28 in Yocto
Sumo 2.5. Building the recipe for both qemux86 and for arm-cortex-a8
machines throws an Expansion error as below.

WARNING: /source/meta-openembedded/meta-oe/recipes-extended/liblockfile/
liblockfile_1.14.bb: Unable to get checksum for liblockfile SRC_URI entry
0001-Makefile.in-install-nfslock.so-and-nfslock.so.0.patch: file could not
be found       | ETA:  0:00:58
WARNING: /source/poky-sumo-19.0.0/meta/recipes-core/glibc/glibc_2.28.bb:
Exception during build_dependencies for
do_fix_readlib_c##############################################################################################
           | ETA:  0:00:04
WARNING: /source/poky-sumo-19.0.0/meta/recipes-core/glibc/glibc_2.28.bb:
Error during finalise of /source/poky-sumo-19.0.0/meta/recipes-core/glibc/
glibc_2.28.bb
ERROR: ExpansionError during parsing
/source/poky-sumo-19.0.0/meta/recipes-core/glibc/glibc_2.28.bb
Traceback (most recent call last):
  File "/source/poky-sumo-19.0.0/meta/classes/utils.bbclass", line 331, in
all_multilib_tune_values(d=<bb.data_smart.DataSmart object at
0x7fdea72d1630>, var='GLIBC_GETLOADER', unique=True, need_split=True,
delim=' '):
         values = []
    >    value = d.getVar(var) or ""
         if value != "":
  File "/source/poky-sumo-19.0.0/bitbake/lib/bb/data_smart.py", line 608,
in DataSmart.getVar(var='GLIBC_GETLOADER', expand=True,
noweakdefault=False, parsing=False):
         def getVar(self, var, expand=True, noweakdefault=False,
parsing=False):
    >        return self.getVarFlag(var, "_content", expand, noweakdefault,
parsing)

  File "/source/poky-sumo-19.0.0/bitbake/lib/bb/data_smart.py", line 794,
in DataSmart.getVarFlag(var='GLIBC_GETLOADER', flag='_content',
expand=True, noweakdefault=False, parsing=False):
                     cachename = var + "[" + flag + "]"
    >            value = self.expand(value, cachename)

  File "/source/poky-sumo-19.0.0/bitbake/lib/bb/data_smart.py", line 436,
in DataSmart.expand(s='${@get_linuxloader(d)}', varname='GLIBC_GETLOADER'):
         def expand(self, s, varname = None):
    >        return self.expandWithRefs(s, varname).value

  File "/source/poky-sumo-19.0.0/bitbake/lib/bb/data_smart.py", line 426,
in DataSmart.expandWithRefs(s='${@get_linuxloader(d)}',
varname='GLIBC_GETLOADER'):
                 except Exception as exc:
    >                raise ExpansionError(varname, s, exc) from exc

bb.data_smart.ExpansionError: Failure expanding variable GLIBC_GETLOADER,
expression was ${@get_linuxloader(d)} which triggered exception NameError:
name 'get_linuxloader' is not defined

WARNING: /source/poky-sumo-19.0.0/meta/recipes-core/glibc/
glibc-initial_2.28.bb: Exception during build_dependencies for
do_fix_readlib_c
WARNING: /source/poky-sumo-19.0.0/meta/recipes-core/glibc/
glibc-initial_2.28.bb: Error during finalise of
/source/poky-sumo-19.0.0/meta/recipes-core/glibc/glibc-initial_2.28.bb

Using devtool to upgrade the recipe doesn't work as well. Just changes the
recipe name but the SRC_URI remains the same as that of v2.27.

What am I missing here?

Here is my build config.

*Build Configuration:
*>* BB_VERSION           = "1.37.0"
*>* BUILD_SYS            = "x86_64-linux"
*>* NATIVELSBSTRING      = "universal-4.8"
*>* TARGET_SYS           = "arm-poky-linux-gnueabi"
*>* MACHINE              = "arm-cortex-a8"
*>* DISTRO               = "poky"
*>* DISTRO_VERSION       = "2.5"
*>* TUNE_FEATURES        = "arm armv7a vfp neon callconvention-hard cortexa8"
*>* TARGET_FPU           = "hard"*>* meta-poky
*>* meta-yocto-bsp*>* meta-oe              =
"master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2*

*Thanks!*

*-Dhanush*

--000000000000618c7805808a0c82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:georgia,serif"><font color=3D"#666666">Hello,</font></div><div cla=
ss=3D"gmail_default" style=3D"font-family:georgia,serif"><font color=3D"#66=
6666"><br></font></div><div class=3D"gmail_default" style=3D"font-family:ge=
orgia,serif"><font color=3D"#666666">I&#39;m trying to upgrade the glibc re=
cipe from version 2.27 to 2.28 in Yocto Sumo 2.5. Building the recipe for b=
oth qemux86 and for arm-cortex-a8 machines throws an Expansion error as bel=
ow.</font></div><div class=3D"gmail_default" style=3D"font-family:georgia,s=
erif"><font color=3D"#666666"><br></font></div><div class=3D"gmail_default"=
><font color=3D"#666666" face=3D"georgia, serif"><div class=3D"gmail_defaul=
t">WARNING: /source/meta-openembedded/meta-oe/recipes-extended/liblockfile/=
<a href=3D"http://liblockfile_1.14.bb">liblockfile_1.14.bb</a>: Unable to g=
et checksum for liblockfile SRC_URI entry 0001-Makefile.in-install-nfslock.=
so-and-nfslock.so.0.patch: file could not be found=C2=A0 =C2=A0 =C2=A0 =C2=
=A0| ETA:=C2=A0 0:00:58</div><div class=3D"gmail_default">WARNING: /source/=
poky-sumo-19.0.0/meta/recipes-core/glibc/<a href=3D"http://glibc_2.28.bb">g=
libc_2.28.bb</a>: Exception during build_dependencies for do_fix_readlib_c#=
###########################################################################=
##################=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| ETA:=C2=
=A0 0:00:04</div><div class=3D"gmail_default">WARNING: /source/poky-sumo-19=
.0.0/meta/recipes-core/glibc/<a href=3D"http://glibc_2.28.bb">glibc_2.28.bb=
</a>: Error during finalise of /source/poky-sumo-19.0.0/meta/recipes-core/g=
libc/<a href=3D"http://glibc_2.28.bb">glibc_2.28.bb</a></div><div class=3D"=
gmail_default">ERROR: ExpansionError during parsing /source/poky-sumo-19.0.=
0/meta/recipes-core/glibc/<a href=3D"http://glibc_2.28.bb">glibc_2.28.bb</a=
></div><div class=3D"gmail_default">Traceback (most recent call last):</div=
><div class=3D"gmail_default">=C2=A0 File &quot;/source/poky-sumo-19.0.0/me=
ta/classes/utils.bbclass&quot;, line 331, in all_multilib_tune_values(d=3D&=
lt;bb.data_smart.DataSmart object at 0x7fdea72d1630&gt;, var=3D&#39;GLIBC_G=
ETLOADER&#39;, unique=3DTrue, need_split=3DTrue, delim=3D&#39; &#39;):</div=
><div class=3D"gmail_default">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0values =3D =
[]</div><div class=3D"gmail_default">=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 value =
=3D d.getVar(var) or &quot;&quot;</div><div class=3D"gmail_default">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0if value !=3D &quot;&quot;:</div><div class=3D"g=
mail_default">=C2=A0 File &quot;/source/poky-sumo-19.0.0/bitbake/lib/bb/dat=
a_smart.py&quot;, line 608, in DataSmart.getVar(var=3D&#39;GLIBC_GETLOADER&=
#39;, expand=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):</div><div cla=
ss=3D"gmail_default">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0def getVar(self, var=
, expand=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):</div><div class=
=3D"gmail_default">=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 return sel=
f.getVarFlag(var, &quot;_content&quot;, expand, noweakdefault, parsing)</di=
v><div class=3D"gmail_default">=C2=A0 =C2=A0 =C2=A0</div><div class=3D"gmai=
l_default">=C2=A0 File &quot;/source/poky-sumo-19.0.0/bitbake/lib/bb/data_s=
mart.py&quot;, line 794, in DataSmart.getVarFlag(var=3D&#39;GLIBC_GETLOADER=
&#39;, flag=3D&#39;_content&#39;, expand=3DTrue, noweakdefault=3DFalse, par=
sing=3DFalse):</div><div class=3D"gmail_default">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cachename =3D var + &qu=
ot;[&quot; + flag + &quot;]&quot;</div><div class=3D"gmail_default">=C2=A0 =
=C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 value =3D self.expand(=
value, cachename)</div><div class=3D"gmail_default">=C2=A0 =C2=A0 =C2=A0</d=
iv><div class=3D"gmail_default">=C2=A0 File &quot;/source/poky-sumo-19.0.0/=
bitbake/lib/bb/data_smart.py&quot;, line 436, in DataSmart.expand(s=3D&#39;=
${@get_linuxloader(d)}&#39;, varname=3D&#39;GLIBC_GETLOADER&#39;):</div><di=
v class=3D"gmail_default">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0def expand(self=
, s, varname =3D None):</div><div class=3D"gmail_default">=C2=A0 =C2=A0 &gt=
;=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.expandWithRefs(s, varname).value</=
div><div class=3D"gmail_default">=C2=A0 =C2=A0 =C2=A0</div><div class=3D"gm=
ail_default">=C2=A0 File &quot;/source/poky-sumo-19.0.0/bitbake/lib/bb/data=
_smart.py&quot;, line 426, in DataSmart.expandWithRefs(s=3D&#39;${@get_linu=
xloader(d)}&#39;, varname=3D&#39;GLIBC_GETLOADER&#39;):</div><div class=3D"=
gmail_default">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0except Exception as exc:</div><div class=3D"gmail_default">=C2=A0 =C2=A0=
 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 raise Expansio=
nError(varname, s, exc) from exc</div><div class=3D"gmail_default">=C2=A0 =
=C2=A0 =C2=A0</div><div class=3D"gmail_default">bb.data_smart.ExpansionErro=
r: Failure expanding variable GLIBC_GETLOADER, expression was ${@get_linuxl=
oader(d)} which triggered exception NameError: name &#39;get_linuxloader&#3=
9; is not defined</div><div class=3D"gmail_default"><br></div><div class=3D=
"gmail_default">WARNING: /source/poky-sumo-19.0.0/meta/recipes-core/glibc/<=
a href=3D"http://glibc-initial_2.28.bb">glibc-initial_2.28.bb</a>: Exceptio=
n during build_dependencies for do_fix_readlib_c</div><div class=3D"gmail_d=
efault">WARNING: /source/poky-sumo-19.0.0/meta/recipes-core/glibc/<a href=
=3D"http://glibc-initial_2.28.bb">glibc-initial_2.28.bb</a>: Error during f=
inalise of /source/poky-sumo-19.0.0/meta/recipes-core/glibc/<a href=3D"http=
://glibc-initial_2.28.bb">glibc-initial_2.28.bb</a></div><div class=3D"gmai=
l_default"><br></div><div class=3D"gmail_default">Using devtool to upgrade =
the recipe doesn&#39;t work as well. Just changes the recipe name but the S=
RC_URI remains the same as that of v2.27.</div><div class=3D"gmail_default"=
><br></div><div class=3D"gmail_default">What am I missing here?</div><div c=
lass=3D"gmail_default"><br></div><div class=3D"gmail_default">Here is my bu=
ild config.</div><div class=3D"gmail_default"><pre style=3D"white-space:pre=
-wrap;color:rgb(0,0,0)"><i>Build Configuration:
</i>&gt;<i> BB_VERSION           =3D &quot;1.37.0&quot;
</i>&gt;<i> BUILD_SYS            =3D &quot;x86_64-linux&quot;
</i>&gt;<i> NATIVELSBSTRING      =3D &quot;universal-4.8&quot;
</i>&gt;<i> TARGET_SYS           =3D &quot;arm-poky-linux-gnueabi&quot;
</i>&gt;<i> MACHINE              =3D &quot;arm-cortex-a8&quot;
</i>&gt;<i> DISTRO               =3D &quot;poky&quot;
</i>&gt;<i> DISTRO_VERSION       =3D &quot;2.5&quot;
</i>&gt;<i> TUNE_FEATURES        =3D &quot;arm armv7a vfp neon callconventi=
on-hard cortexa8&quot;
</i>&gt;<i> TARGET_FPU           =3D &quot;hard&quot;</i><i>
</i>&gt;<i> meta-poky
</i>&gt;<i> meta-yocto-bsp</i><i>
</i>&gt;<i> meta-oe              =3D &quot;master:45ee3c0e98bd3ed81419aaeae=
1e7324e486161a2</i></pre><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0=
)"><i>Thanks!</i></pre><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0)"=
><i>-Dhanush</i></pre></div></font></div><div><div dir=3D"ltr" class=3D"gma=
il_signature"><div dir=3D"ltr"></div></div></div></div></div>

--000000000000618c7805808a0c82--
