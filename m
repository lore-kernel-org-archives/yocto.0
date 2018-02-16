Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72EE3E00EDA; Fri, 16 Feb 2018 07:25:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33253E00D41
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 07:25:30 -0800 (PST)
Received: by mail-it0-f45.google.com with SMTP id y16so2202422itc.0
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 07:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=5YWqctZf6PCx1SbiQ9FzqRhd91/TZbHMUOMUfC7tYh4=;
	b=TNJHY6f1ja/EJZAwGiDm6HUM4XPkh3Noa6TqoYqT0UCjyDvlv/irFeX3q238VRizQD
	qgsJ+FJkfCf+Fjmq8twLB1czz4w7XNsZX8kVT706uqSYh60bHg/RffXGTB/kEr17cWTY
	EyTM12fJZfd6munmZBA8QuY1o1HX1hY8uKOrw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5YWqctZf6PCx1SbiQ9FzqRhd91/TZbHMUOMUfC7tYh4=;
	b=ujIYZu7b5KmfLWYQgbrjVwCgTVZSc1B6klKhqjeYIjZ//zRXXqGvgT/6cy5uVtP69L
	ojWZw7HC2A58tnRZcK6FHiVb1VG9DCuqlcCB2yGORSnBkwRx2Tjl3URkp8BPASbXLm5Z
	wc9szWz2x/aEHkP4PAH4SeWjgbvJb09nTTHt1pEh47LY33Ofgy7p/PpDNWYvSnGpvaY7
	6IgCbLCKTHmefJb36dB01NuYfDShCZS/9oca2iTDyjt+v/ZlJNJryrWob40VeAIv5ujz
	KRKnALeJvMs7D/6HKhNmqZgMDJY4grRhvBrCffioq/zvsKYkMCwehNF70OlWcRl59Btf
	DZcA==
X-Gm-Message-State: APf1xPBwPBorwJmuEGqeQKZUa4Gb7wphMD6Ryq3FsLNtCTmag9BqbJSX
	1Um2Mvg+15WTSOjwGa1xp5ol3UkXtZfpvHBycpjDW6xl
X-Google-Smtp-Source: AH8x224dxjVqDuv/Kp4t1USjYN8lRWcrA0PkzNw67YCCyM9wgOMQhR40zFMnUPNfXMSzsZW1kV7MK2fWNj6Qaza+Oz8=
X-Received: by 10.36.146.212 with SMTP id l203mr8836065itd.6.1518794729907;
	Fri, 16 Feb 2018 07:25:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Fri, 16 Feb 2018 07:25:29 -0800 (PST)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 16 Feb 2018 16:25:29 +0100
Message-ID: <CAALXFYwKOjecLZ4tUxWCy-ybxFusQTuB+WHneOPpR0pgY-ZPvg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: go-runtime ABI issues when executing a Go lang project compiled with yocto
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
X-List-Received-Date: Fri, 16 Feb 2018 15:25:32 -0000
Content-Type: multipart/alternative; boundary="94eb2c05b1545d0347056555f4cf"

--94eb2c05b1545d0347056555f4cf
Content-Type: text/plain; charset="UTF-8"

Hi forum.

I'm having ABI issues trying to compile a Go lang related project.

In order to resolve my project dependencies, I use dep tool. To be able to
dep, I had to modify meta/recipes-devtools/go/go-dep_0.3.0.bb, adding this
at the end:

    BBCLASSEXTEND = "native nativesdk"

After that, this .bb builds my project fine:

    GO_IMPORT = "bitbucket.org/project"
    SRC_URI = "git://${GO_IMPORT}/protocol=http;user=${GIT_USER}:${GIT_PAS
S};destsuffix=${PN}-${PV}/src/${GO_IMPORT}"
    SRCREV = "90323909..."

    inherit go

    CGO_ENABLED = "1"
    GO_DYNLINK = ""

    do_compile_prepend() {
        rm -f ${WORKDIR}/build/src/${GO_IMPORT}/Gopkg.toml
        rm -f ${WORKDIR}/build/src/${GO_IMPORT}/Gopkg.lock
        cd ${WORKDIR}/build/src/${GO_IMPORT}
        dep init
        dep ensure
    }

    deltask do_compile_ptest_base
    deltask do_compile_ptest

    DEPENDS = "go-dep-native mercurial-native"

    INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
    INHIBIT_PACKAGE_STRIP = "1"

    FILES_${PN}_append = " /opt/bin"

    RDEPENDS_${PN}-staticdev += "bash"
    RDEPENDS_${PN}-dev += "bash"

However, when executing the generated binary, it has ABI issues:

    $ /usr/bin/mybin
    abi mismatch detected between the executable and libstd.so
    fatal error: abi mismatch
    runtime: panic before malloc heap initialized

Here I provide more information related with the compiled binary:

    $ ldd /usr/bin/mybin
        linux-vdso.so.1 (0x00007ffe321d9000)
        libstd.so => /usr/lib/go/pkg/linux_amd64_dynlink/libstd.so
(0x00007f95463d7000)
        libc.so.6 => /lib/libc.so.6 (0x0000003436200000)
        libdl.so.2 => /lib/libdl.so.2 (0x0000003436a00000)
        libpthread.so.0 => /lib/libpthread.so.0 (0x0000003436600000)
        /lib/ld-linux-x86-64.so.2 (0x0000003435e00000)

    $ file /usr/bin/mybin
    /usr/bin/mybin: ELF 64-bit LSB executable, x86-64, version 1 (SYSV),
dynamically linked, interpreter /lib/ld-linux-x86-64.so.2, for GNU/Linux
3.2.0, BuildID[sha1]=0103acf63634df77e600eb114bf59977462ca51d, with
debug_info, not stripped

    $ file /usr/lib/go/pkg/linux_amd64_dynlink/libstd.so
    /usr/lib/go/pkg/linux_amd64_dynlink/libstd.so: ELF 64-bit LSB shared
object, x86-64, version 1 (SYSV), dynamically linked,
BuildID[sha1]=2d2f135b2f9eab19a7ceff1923820bf635e10eb1, with debug_info,
not stripped

As the missage error says, the problem seems related with the generation of
the libstd.so dynamic library. Dynamic generation is controlled by
GO_DYNLINK environ variable (see meta/recipes-devtools/go/go-runtime.inc).
I could fix my issue with this nasty hack:

    # if [ -n "${GO_DYNLINK}" ]; then
    #    cp ${B}/go_bootstrap ${B}/pkg/tool/${BUILD_GOTUPLE}
    #    GO_FLAGS="-buildmode=shared" GO_LDFLAGS="-extldflags
\"${LDFLAGS}\"" ./make.bash --target-only
    # fi

After commenting that condicion and rebuilding all my go yocto-related
environment, the binary is compiled as static and it works as expected.

This is not a nice way to solve this issue.

What should be the proper way to manage this issue?

Thank you in advance! :-)

--94eb2c05b1545d0347056555f4cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi forum.</div><div><br></div><div><div>I&#39;m havin=
g ABI issues trying to compile a Go lang related project.=C2=A0</div><div><=
br></div><div>In order to resolve my project dependencies, I use dep tool. =
To be able to dep, I had to modify meta/recipes-devtools/go/<a href=3D"http=
://go-dep_0.3.0.bb" target=3D"_blank">go-de<wbr>p_0.3.0.bb</a>, adding this=
 at the end:</div><div><br></div><div>=C2=A0 =C2=A0 BBCLASSEXTEND =3D &quot=
;native nativesdk&quot;<br></div><div><br></div><div>After that, this .bb b=
uilds my project fine:</div><div><br></div><div>=C2=A0 =C2=A0 GO_IMPORT =3D=
 &quot;<a href=3D"http://bitbucket.org/project" target=3D"_blank">bitbucket=
.org/project</a>&quot;<br></div><div><div>=C2=A0 =C2=A0 SRC_URI =3D &quot;g=
it://${GO_IMPORT}/protocol=3Dh<wbr>ttp;user=3D${GIT_USER}:${GIT_PAS<wbr>S};=
destsuffix=3D${PN}-${PV}/src/<wbr>${GO_IMPORT}&quot;</div><div>=C2=A0 =C2=
=A0 SRCREV =3D &quot;90323909...&quot;</div><div><br></div><div>=C2=A0 =C2=
=A0 inherit go<br></div><div><br></div><div>=C2=A0 =C2=A0 CGO_ENABLED =3D &=
quot;1&quot;</div><div>=C2=A0 =C2=A0 GO_DYNLINK =3D &quot;&quot;</div><div>=
<br></div><div>=C2=A0 =C2=A0 do_compile_prepend() {</div><div>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 rm -f ${WORKDIR}/build/src/${GO_IMPO<wbr>RT}/Gopkg.toml</div=
><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm -f ${WORKDIR}/build/src/${GO_IMPO<wbr>=
RT}/Gopkg.lock</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 cd ${WORKDIR}/build/sr=
c/${GO_IMPO<wbr>RT}</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 dep init</div><di=
v>=C2=A0 =C2=A0 =C2=A0 =C2=A0 dep ensure</div><div>=C2=A0 =C2=A0 }</div><di=
v><br></div><div>=C2=A0 =C2=A0 deltask do_compile_ptest_base<br></div><div>=
=C2=A0 =C2=A0 deltask do_compile_ptest</div><div><br></div><div>=C2=A0 =C2=
=A0 DEPENDS =3D &quot;go-dep-native mercurial-native&quot;</div><div><br></=
div><div>=C2=A0 =C2=A0 INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;</div><=
div>=C2=A0 =C2=A0 INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;</div><div><br></d=
iv><div>=C2=A0 =C2=A0 FILES_${PN}_append =3D &quot; /opt/bin&quot;</div><di=
v><br></div><div>=C2=A0 =C2=A0 RDEPENDS_${PN}-staticdev +=3D &quot;bash&quo=
t;</div><div>=C2=A0 =C2=A0 RDEPENDS_${PN}-dev +=3D &quot;bash&quot;</div><d=
iv><br></div><div>However, when executing the generated binary, it has ABI =
issues:</div><div><br></div><div>=C2=A0 =C2=A0 $ /usr/bin/mybin<br></div><d=
iv><div>=C2=A0 =C2=A0 abi mismatch detected between the executable and libs=
td.so</div><div>=C2=A0 =C2=A0 fatal error: abi mismatch</div><div>=C2=A0 =
=C2=A0 runtime: panic before malloc heap initialized</div></div><div><br></=
div><div>Here I provide more information related with the compiled binary:<=
/div><div><br></div><div><div>=C2=A0 =C2=A0 $ ldd /usr/bin/mybin</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 linux-vdso.so.1 (0x00007ffe321d9000)</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 libstd.so =3D&gt; /usr/lib/go/pkg/linux_amd64_d=
ynlink/libstd.so (0x00007f95463d7000)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 libc.so.6 =3D&gt; /lib/libc.so.6 (0x0000003436200000)</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 libdl.so.2 =3D&gt; /lib/libdl.so.2 (0x0000003436a00000)</=
div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 libpthread.so.0 =3D&gt; /lib/libpthrea=
d.so.0 (0x0000003436600000)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/ld-l=
inux-x86-64.so.2 (0x0000003435e00000)</div><div><br></div><div>=C2=A0 =C2=
=A0 $ file /usr/bin/mybin</div><div>=C2=A0 =C2=A0 /usr/bin/mybin: ELF 64-bi=
t LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter=
 /lib/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=3D0103acf636=
34df77e600eb114bf59977462ca51d, with debug_info, not stripped</div><div><br=
></div><div>=C2=A0 =C2=A0 $ file /usr/lib/go/pkg/linux_amd64_dynlink/libstd=
.so</div><div>=C2=A0 =C2=A0 /usr/lib/go/pkg/linux_amd64_dynlink/libstd.so: =
ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked,=
 BuildID[sha1]=3D2d2f135b2f9eab19a7ceff1923820bf635e10eb1, with debug_info,=
 not stripped</div></div><div><br></div><div>As the missage error says, the=
 problem seems related with the generation of the <span style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
>libstd.so=C2=A0</span>dynamic library. Dynamic generation is controlled by=
 GO_DYNLINK environ variable (see meta/recipes-devtools/go/go-runtime.inc).=
 I could fix my issue with this nasty hack:<br></div><div><br></div><div><d=
iv>=C2=A0 =C2=A0 # if [ -n &quot;${GO_DYNLINK}&quot; ]; then<br></div><div>=
=C2=A0 =C2=A0 #=C2=A0 =C2=A0 cp ${B}/go_bootstrap ${B}/pkg/tool/${BUILD_GOT=
UPLE}</div><div>=C2=A0 =C2=A0 #=C2=A0 =C2=A0 GO_FLAGS=3D&quot;-buildmode=3D=
shared&quot; GO_LDFLAGS=3D&quot;-extldflags \&quot;${LDFLAGS}\&quot;&quot; =
./make.bash --target-only</div><div>=C2=A0 =C2=A0 # fi</div></div><div><br>=
</div><div>After commenting that condicion and rebuilding all my go yocto-r=
elated environment, the binary is compiled as static and it works as expect=
ed.=C2=A0</div><div><br></div><div>This is not a nice way to solve this iss=
ue.=C2=A0</div><div><br></div><div>What should be the proper way to manage =
this issue?</div><div><br></div><div>Thank you in advance! :-)</div><div><b=
r></div></div></div>
</div>

--94eb2c05b1545d0347056555f4cf--
