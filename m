Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B47AE008D2; Tue, 22 May 2018 03:56:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3C50E0084E
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 03:56:44 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id n202-v6so24709888ita.1
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 03:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=thSIa8BOHZHQlKsv/995jG3+TGd54n4hwJ7wRkglfWA=;
	b=Wxwf74qXm0/zr77IxxvZ1ZSoNlMdDf5RKyLLFGx5yk7CI7BK3efyp3YUTLMp08OuvN
	QaDnISMb/VJkpGhs2gCkgr0MYigK/2xbchanlZrjS5+1+24KTBuvaRvoiAV0bjEdZeTN
	khPUrDmf4hh1yy7BQR5Uy57Kro0pV2z++PZdQhRHKvR+Ejy3i+zN07adTG+eELZbzxoW
	TvieUGkafG8uqymJ3AlaeXyWyYHa8dcn9HpXERVd0712uUUvzKcRBGCnk4S7KjaLJ61v
	6I0p1YSk29a2i/Wc2lhoe8FNqr7u7Fo+oJUtStty+yKrOJGegKkuVYSbd1xgGxn5vg3a
	Epuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=thSIa8BOHZHQlKsv/995jG3+TGd54n4hwJ7wRkglfWA=;
	b=XPvY9/PV+q9ExjQ7VDdrbm8iLFVpZwEFmLcZ1Y4Iwsej0PqYqK1RyHjj5g+jdZI870
	PAunsRBrjfHE5cFLRgDP2Z4iFB29O8OAaUEgy+GhVHiHD7MU5vtYCEvZKZPnTyAitLW5
	RXV5A5NSAPdwAzci2AxsMrj+j1pk4PDtu+w/z8Jqx2tTYXVlIVqcTgv7dCKynRgMisCu
	RWUQ0k64gey4efbcGorQQMs8EcFsygJFHDrcBUhmD9i9LmSbOlvSyTJLnkJY8jVSEE2N
	mJjE8FpWWUFINgJD21Zfh5FpF0Idtmuyug4PMh96JUawxgdBVbPQMv6Ec26aO6M8qMLX
	qNPg==
X-Gm-Message-State: ALKqPweYa8YwQCDEHWNUXehn9EI4u14p6e2uaIZohOIB70ZC2BbhTVgU
	Vja3wl+j+diJ5sCLTnZ+FZBkOVPaFAxTJtfMDQ==
X-Google-Smtp-Source: AB8JxZobbe/yKuF3XeQzEIzxfG1BCKqXzld9Hn7Z0ocJNrmKdiWglaNiUvOd2RXi09Gs2PHKyhu1aPiPwRZBQD445go=
X-Received: by 2002:a24:b310:: with SMTP id e16-v6mr793947itf.58.1526986603954;
	Tue, 22 May 2018 03:56:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:7a4d:0:0:0:0:0 with HTTP; Tue, 22 May 2018 03:56:43
	-0700 (PDT)
In-Reply-To: <CAJTo0LYdi-cXJY6aNoNqVy0+o+EtjfEX-=Cg6RampP3QB7C6UQ@mail.gmail.com>
References: <CA+FhBv_pki=SYi3V4OXCn65Hgph6R=y3tphsJLFeVocQKLV6hw@mail.gmail.com>
	<CAJTo0LYdi-cXJY6aNoNqVy0+o+EtjfEX-=Cg6RampP3QB7C6UQ@mail.gmail.com>
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Tue, 22 May 2018 13:56:43 +0300
Message-ID: <CA+FhBv-Usqs5A-nVGe2pV2YzFmVhebXL7uLZiqUybY_nDuyXgQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: native recipe question
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
X-List-Received-Date: Tue, 22 May 2018 10:56:46 -0000
Content-Type: multipart/alternative; boundary="0000000000001b0527056cc94606"

--0000000000001b0527056cc94606
Content-Type: text/plain; charset="UTF-8"

Thanks that did the trick.

I actually needed to add the tool compilation in do_configure_prepend
because the cmake configuration requires the output folder for bin2cpp.

Just out of completeness. I had created that arrayfire-native recipe and it
looked like this:

BBCLASSEXTEND = "native"
SRC_URI = "gitsm://
github.com/arrayfire/arrayfire.git;protocol=https;branch=v3.6"
SRCREV = "ee21c791d5af4fa56bca168804ba1597cf9d6503"

PR="r0"

S = "${WORKDIR}/git"

inherit cmake cuda

do_configure(){
    cd ${B}
    cmake ${S} \
        -DAF_BUILD_CPU=OFF \
        -DAF_BUILD_CUDA=OFF \
        -DAF_BUILD_OPENCL=OFF \
        -DAF_BUILD_EXAMPLES=OFF \
        -DAF_BUILD_TEST=OFF \
        -DAF_WITH_GRAPHICS=OFF \
        -DCMAKE_BUILD_TYPE=Release
}

do_compile(){
    make bin2cpp
}

do_install() {
    install -d ${D}/${bindir}
    install -m 755 ${WORKDIR}/build/bin2cpp ${D}${bindir}
}

# Defining packages
FILES_${PN} = "${bindir}/*"


The recipe builds. When I try using with  DEPENDS += "arrayfire-native" in
the arrayfire recipe I get this warning:
WARNING: arrayfire-3.6.0-r0 do_prepare_recipe_sysroot: Manifest
/home/damien/pyro/build-jetson-tx2/tmp/sstate-control/manifest-x86_64-arrayfire-native.populate_sysroot
not found?

and /home/damien/pyro/build-jetson-tx2/tmp/work/aarch64_tegra186-poky-linux/arrayfire/3.6.0-r0/recipe-sysroot-native
did not contain the bin2cpp binary.

What did I miss?

Thanks


On Tue, May 22, 2018 at 12:19 PM, Burton, Ross <ross.burton@intel.com>
wrote:

> On 22 May 2018 at 08:43, Damien LEFEVRE <lefevre.da@gmail.com> wrote:
> > I'm having to build a package (arrayfire) for Tegra. This package
> requires
> > to first build a x86_64 utility (bin2cpp) which is then used for building
> > the tegra arrayfire.
> >
> > Do I understand correctly that I should create:
> >
> > arrayfire-native.bb: for compiling the x86_64 utility. If so how do I
> > instruct the platform?
> > arrayfire.bb: for compiling the tegra platform. This recipe requires
> > arrayfire-native.bb and I should get a copy in the recipe-sysroot-native
> > folder?
>
> That's one solution, but if it's jus a single tool that you need built
> then you can build that yourself using the host compiler.  The best
> practise here is for the upstream build to respect CC_FOR_BUILD ("use
> this compiler to build binaries that I need to run at build time")
> which we already export.  As presumably arrayfire doesn't do this,
> then you can just build it yourself first.  For example, the Pango
> recipe in oe-core basically does this:
>
> do_compile_prepend_class-target () {
>             make CC="${BUILD_CC}" LDFLAGS="${BUILD_LDFLAGS}" -C
> ${B}/tests gen-all-unicode
> }
>
> Which makes it build tests/gen-all-unicode using BUILD_CC (host
> compiler, not cross compiler) for target builds before it goes and
> builds the rest of the project.
>
> Ross
>

--0000000000001b0527056cc94606
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks that did the trick.<div><br></div><div>I actually n=
eeded to add the tool compilation in=C2=A0do_configure_prepend because the =
cmake configuration requires the output folder for bin2cpp.</div><div><br><=
/div><div>Just out of completeness. I had created that arrayfire-native rec=
ipe and it looked like this:</div><div><br></div><blockquote style=3D"margi=
n:0px 0px 0px 40px;border:none;padding:0px"><div><div>BBCLASSEXTEND =3D &qu=
ot;native&quot;</div></div><div><div>SRC_URI =3D &quot;gitsm://<a href=3D"h=
ttp://github.com/arrayfire/arrayfire.git;protocol=3Dhttps;branch=3Dv3.6">gi=
thub.com/arrayfire/arrayfire.git;protocol=3Dhttps;branch=3Dv3.6</a>&quot;</=
div></div><div><div>SRCREV =3D &quot;ee21c791d5af4fa56bca168804ba1597cf9d65=
03&quot;</div></div><div><div><br></div></div><div><div>PR=3D&quot;r0&quot;=
</div></div><div><div><br></div></div><div><div>S =3D &quot;${WORKDIR}/git&=
quot;</div></div><div><div><br></div></div><div><div>inherit cmake cuda</di=
v></div><div><div><br></div></div><div><div>do_configure(){</div></div><div=
><div>=C2=A0 =C2=A0 cd ${B}</div></div><div><div>=C2=A0 =C2=A0 cmake ${S} \=
</div></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -DAF_BUILD_CPU=3DOFF \</d=
iv></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -DAF_BUILD_CUDA=3DOFF \</div=
></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -DAF_BUILD_OPENCL=3DOFF \</div=
></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -DAF_BUILD_EXAMPLES=3DOFF \</d=
iv></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -DAF_BUILD_TEST=3DOFF \</div=
></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -DAF_WITH_GRAPHICS=3DOFF \</di=
v></div><div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 -DCMAKE_BUILD_TYPE=3DRelease<=
/div></div><div><div>}</div></div><div><div><br></div></div><div><div>do_co=
mpile(){</div></div><div><div>=C2=A0 =C2=A0 make bin2cpp</div></div><div><d=
iv>}</div></div><div><div><br></div></div><div><div>do_install() {</div></d=
iv><div><div>=C2=A0 =C2=A0 install -d ${D}/${bindir}</div></div><div><div>=
=C2=A0 =C2=A0 install -m 755 ${WORKDIR}/build/bin2cpp ${D}${bindir}</div></=
div><div><div>}</div></div><div><div><br></div></div><div><div># Defining p=
ackages</div></div><div><div>FILES_${PN} =3D &quot;${bindir}/*&quot;</div><=
/div></blockquote><div><br></div><div>The recipe builds. When I try using w=
ith=C2=A0 DEPENDS +=3D &quot;arrayfire-native&quot; in the arrayfire recipe=
 I get this warning:<br></div><div><div>WARNING: arrayfire-3.6.0-r0 do_prep=
are_recipe_sysroot: Manifest /home/damien/pyro/build-jetson-tx2/tmp/sstate-=
control/manifest-x86_64-arrayfire-native.populate_sysroot not found?</div><=
/div><div><br></div><div>and=C2=A0/home/damien/pyro/build-jetson-tx2/tmp/wo=
rk/aarch64_tegra186-poky-linux/arrayfire/3.6.0-r0/recipe-sysroot-native did=
 not contain the bin2cpp binary.</div><div><br></div><div>What did I miss?<=
/div><div><br></div><div>Thanks</div><div><br></div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Tue, May 22, 2018 at 12:19 PM, =
Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com"=
 target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><span class=3D"">On 22 May 2018 at 08:43, Damien LEFE=
VRE &lt;<a href=3D"mailto:lefevre.da@gmail.com">lefevre.da@gmail.com</a>&gt=
; wrote:<br>
&gt; I&#39;m having to build a package (arrayfire) for Tegra. This package =
requires<br>
&gt; to first build a x86_64 utility (bin2cpp) which is then used for build=
ing<br>
&gt; the tegra arrayfire.<br>
&gt;<br>
&gt; Do I understand correctly that I should create:<br>
&gt;<br>
&gt; <a href=3D"http://arrayfire-native.bb" rel=3D"noreferrer" target=3D"_b=
lank">arrayfire-native.bb</a>: for compiling the x86_64 utility. If so how =
do I<br>
&gt; instruct the platform?<br>
&gt; <a href=3D"http://arrayfire.bb" rel=3D"noreferrer" target=3D"_blank">a=
rrayfire.bb</a>: for compiling the tegra platform. This recipe requires<br>
&gt; <a href=3D"http://arrayfire-native.bb" rel=3D"noreferrer" target=3D"_b=
lank">arrayfire-native.bb</a> and I should get a copy in the recipe-sysroot=
-native<br>
&gt; folder?<br>
<br>
</span>That&#39;s one solution, but if it&#39;s jus a single tool that you =
need built<br>
then you can build that yourself using the host compiler.=C2=A0 The best<br=
>
practise here is for the upstream build to respect CC_FOR_BUILD (&quot;use<=
br>
this compiler to build binaries that I need to run at build time&quot;)<br>
which we already export.=C2=A0 As presumably arrayfire doesn&#39;t do this,=
<br>
then you can just build it yourself first.=C2=A0 For example, the Pango<br>
recipe in oe-core basically does this:<br>
<br>
do_compile_prepend_class-<wbr>target () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 make CC=3D&quot;${BUILD_CC}&quot;=
 LDFLAGS=3D&quot;${BUILD_LDFLAGS}&quot; -C<br>
${B}/tests gen-all-unicode<br>
}<br>
<br>
Which makes it build tests/gen-all-unicode using BUILD_CC (host<br>
compiler, not cross compiler) for target builds before it goes and<br>
builds the rest of the project.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--0000000000001b0527056cc94606--
