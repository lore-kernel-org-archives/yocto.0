Return-Path: <sureshnagaraja@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AC61E00949; Tue, 28 Apr 2015 09:18:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sureshnagaraja[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87B84E003A8
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 09:18:09 -0700 (PDT)
Received: by oblw8 with SMTP id w8so112182543obl.0
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 09:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Y+aX6lGUaNhMZ0jQeVd+QWbCZMbRosZ52Iwz754AsfI=;
	b=gH0SswvFLS8w0YWLIlMgH3QGLXdgSr+mTac/r//d613ycNjztVRtbbfOC/1XQBqj4+
	w+FDxRcXHFvn4+8gC6Y78ZGxonS3v9KL8NIXrGSRUZtyfebpBY1/5TU352TjU+gOF2R6
	DZMYG03ym2rGjMs9uW2mjeEpIY8cvZ2gIxoRMdgur0X7Z8NDkMka/xrXERFqThaeXd9Y
	nSM/yjPXqWYOcEGzjtJiQthd3vGTr9C8hPkPmISpR7Vs8pFoJiAuVtqpnGLwFTy1SrsR
	aeqVBBi8lcOE88JtwrQQic0raf1IUVT9sa7FXKi01Ob5BPg/yNfL9YO319SLT6uVasiF
	rvgg==
MIME-Version: 1.0
X-Received: by 10.202.230.11 with SMTP id d11mr14247538oih.6.1430237889240;
	Tue, 28 Apr 2015 09:18:09 -0700 (PDT)
Received: by 10.60.62.106 with HTTP; Tue, 28 Apr 2015 09:18:09 -0700 (PDT)
In-Reply-To: <86C86F1A-E16A-4A8F-BD7A-B2B0E9296655@gmail.com>
References: <CACbZ9VL8BtqUEdsdcqfZrqL3Aaa+_J3j9kZV=cBb87aN_JqWOQ@mail.gmail.com>
	<86C86F1A-E16A-4A8F-BD7A-B2B0E9296655@gmail.com>
Date: Tue, 28 Apr 2015 09:18:09 -0700
Message-ID: <CACbZ9VLMuNJVrayjsXavEWoZXNmb1C0+4GSmuPi7bc3W3d-3UQ@mail.gmail.com>
From: Suresh Nagarajan <sureshnagaraja@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailman-Approved-At: Wed, 29 Apr 2015 08:07:35 -0700
Cc: yocto@yoctoproject.org
Subject: Re: libgomp inclusion
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
X-List-Received-Date: Tue, 28 Apr 2015 16:18:16 -0000
Content-Type: multipart/alternative; boundary=001a1140761a5522b90514cb3560

--001a1140761a5522b90514cb3560
Content-Type: text/plain; charset=UTF-8

Thanks for the info.. Yes, that does the trick..

Thanks
Suresh

On Mon, Apr 27, 2015 at 11:40 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Apr 27, 2015, at 11:32 AM, Suresh Nagarajan <sureshnagaraja@gmail.com>
> wrote:
>
> Hi,
>
> I'm trying to look to see if OpenMP library is included in my yocto build.
>
> I could not find libgomp library in /usr/lib
> However, when I look at gcc-runtime.inc, I do notice that
>
> RUNTIMETARGET = "libssp libstdc++-v3 libgomp"
> PACKAGES = "\
>   ${PN}-dbg \
>   libstdc++ \
>   libstdc++-precompile-dev \
>   libstdc++-dev \
>   libstdc++-staticdev \
>   libg2c \
>   libg2c-dev \
>   libssp \
>   libssp-dev \
>   libssp-staticdev \
>   libgfortran \
>   libgfortran-dev \
>   libgfortran-staticdev \
>   libmudflap \
>   libmudflap-dev \
>   libmudflap-staticdev \
>   libquadmath \
>   libquadmath-dev \
>   libquadmath-staticdev \
>   libgomp \
>   libgomp-dev \
>   libgomp-staticdev \
>
>
> Also, I noticed that in gmane and other web-pages that it is OK to have
> INTIAL/INTERMEDIATE EXTRA_OECONF  to have --disable-libgomp
>
> However, it is not disabled in BASE which reads
> EXTRA_OECONF_BASE = " --enable-lto \
> --enable-libssp \
> --disable-bootstrap \
> --disable-libmudflap \
> --with-system-zlib \
> --with-linker-hash-style=${LINKER_HASH_STYLE} \
> --enable-linker-build-id \
> --with-ppl=no \
> --with-cloog=no \
> --enable-checking=release \
> --enable-cheaders=c_global "
>
>
> Also, it is mentioned that <see below>
>
> Autoconf will not detect OpenMP after this change, because it will
> build and run a target binary on the build system. In order to use
> OpenMP, the variable ac_cv_prog_c_openmp=-fopenmp must be set.
>
> Where exactly are we supposed to set this variable ac_cv_prog_c_openmp=-fopenmp?
>
>
> You might have to add it to your image via IMAGE_INSTALL or some such
>
>
> Thanks
>
> Suresh
>
>
>
>

--001a1140761a5522b90514cb3560
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the info.. Yes, that does the trick..<div><br><=
/div><div>Thanks</div><div>Suresh</div></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On Mon, Apr 27, 2015 at 11:40 AM, Khem Raj <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">r=
aj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div style=3D"word-wrap:break-word"><br><div><div><div class=3D"h5"><blockqu=
ote type=3D"cite"><div>On Apr 27, 2015, at 11:32 AM, Suresh Nagarajan &lt;<=
a href=3D"mailto:sureshnagaraja@gmail.com" target=3D"_blank">sureshnagaraja=
@gmail.com</a>&gt; wrote:</div><br><div><div dir=3D"ltr">Hi,<br><br>I&#39;m=
 trying to look to see if OpenMP library is included in my yocto build.<div=
><br></div><div>I could not find libgomp library in /usr/lib</div><div>Howe=
ver, when I look at gcc-runtime.inc, I do notice that</div><div><br></div><=
div><div><div>RUNTIMETARGET =3D &quot;libssp libstdc++-v3 libgomp&quot;</di=
v></div></div><div><div>PACKAGES =3D &quot;\</div><div>=C2=A0 ${PN}-dbg \</=
div><div>=C2=A0 libstdc++ \</div><div>=C2=A0 libstdc++-precompile-dev \</di=
v><div>=C2=A0 libstdc++-dev \</div><div>=C2=A0 libstdc++-staticdev \</div><=
div>=C2=A0 libg2c \</div><div>=C2=A0 libg2c-dev \</div><div>=C2=A0 libssp \=
</div><div>=C2=A0 libssp-dev \</div><div>=C2=A0 libssp-staticdev \</div><di=
v>=C2=A0 libgfortran \</div><div>=C2=A0 libgfortran-dev \</div><div>=C2=A0 =
libgfortran-staticdev \</div><div>=C2=A0 libmudflap \</div><div>=C2=A0 libm=
udflap-dev \</div><div>=C2=A0 libmudflap-staticdev \</div><div>=C2=A0 libqu=
admath \</div><div>=C2=A0 libquadmath-dev \</div><div>=C2=A0 libquadmath-st=
aticdev \</div><div>=C2=A0<span style=3D"background-color:rgb(255,255,0)"> =
libgomp \</span></div><div>=C2=A0<span style=3D"background-color:rgb(255,25=
5,0)"> libgomp-dev \</span></div><div>=C2=A0 libgomp-staticdev \</div></div=
><div><br></div><div><br></div><div>Also, I noticed that in gmane and other=
 web-pages that it is OK to have INTIAL/INTERMEDIATE EXTRA_OECONF =C2=A0to =
have=C2=A0--disable-libgomp</div><div><br></div><div>However, it is not dis=
abled in BASE which reads</div><div><div>EXTRA_OECONF_BASE =3D &quot; --ena=
ble-lto \</div><div><span style=3D"white-space:pre-wrap">			</span>--enable=
-libssp \</div><div><span style=3D"white-space:pre-wrap">			</span>--disabl=
e-bootstrap \</div><div><span style=3D"white-space:pre-wrap">			</span>--di=
sable-libmudflap \</div><div><span style=3D"white-space:pre-wrap">			</span=
>--with-system-zlib \</div><div><span style=3D"white-space:pre-wrap">			</s=
pan>--with-linker-hash-style=3D${LINKER_HASH_STYLE} \</div><div><span style=
=3D"white-space:pre-wrap">			</span>--enable-linker-build-id \</div><div><s=
pan style=3D"white-space:pre-wrap">			</span>--with-ppl=3Dno \</div><div><s=
pan style=3D"white-space:pre-wrap">			</span>--with-cloog=3Dno \</div><div>=
<span style=3D"white-space:pre-wrap">			</span>--enable-checking=3Drelease =
\</div><div><span style=3D"white-space:pre-wrap">			</span>--enable-cheader=
s=3Dc_global &quot;</div></div><div><br></div><div><br></div><div>Also, it =
is mentioned that &lt;see below&gt;<br><pre style=3D"font-family:Menlo,&#39=
;Liberation Mono&#39;,Consolas,&#39;DejaVu Sans Mono&#39;,&#39;Ubuntu Mono&=
#39;,&#39;Courier New&#39;,&#39;andale mono&#39;,&#39;lucida console&#39;,m=
onospace;font-size:12px;white-space:pre-wrap;padding:0px;margin-top:15px;ma=
rgin-bottom:0px;line-height:1.428571429;word-break:break-all;word-wrap:brea=
k-word;color:rgb(51,51,51);border:none;border-radius:4px;background-image:n=
one;background-repeat:initial">Autoconf will not detect OpenMP after this c=
hange, because it will
build and run a target binary on the build system. In order to use
OpenMP, the variable ac_cv_prog_c_openmp=3D-fopenmp must be set.</pre><pre =
style=3D"font-family:Menlo,&#39;Liberation Mono&#39;,Consolas,&#39;DejaVu S=
ans Mono&#39;,&#39;Ubuntu Mono&#39;,&#39;Courier New&#39;,&#39;andale mono&=
#39;,&#39;lucida console&#39;,monospace;font-size:12px;white-space:pre-wrap=
;padding:0px;margin-top:15px;margin-bottom:0px;line-height:1.428571429;word=
-break:break-all;word-wrap:break-word;color:rgb(51,51,51);border:none;borde=
r-radius:4px;background-image:none;background-repeat:initial"><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;line-h=
eight:normal;white-space:normal">Where exactly are we supposed to set this =
variable=C2=A0</span><span style=3D"line-height:1.428571429">ac_cv_prog_c_o=
penmp=3D-fopenmp?</span><br></pre></div></div></div></blockquote><div><br><=
/div></div></div><div>You might have to add it to your image via IMAGE_INST=
ALL or some such=C2=A0</div><br><blockquote type=3D"cite"><div><div dir=3D"=
ltr"><div><pre style=3D"font-family:Menlo,&#39;Liberation Mono&#39;,Consola=
s,&#39;DejaVu Sans Mono&#39;,&#39;Ubuntu Mono&#39;,&#39;Courier New&#39;,&#=
39;andale mono&#39;,&#39;lucida console&#39;,monospace;font-size:12px;white=
-space:pre-wrap;padding:0px;margin-top:15px;margin-bottom:0px;line-height:1=
.428571429;word-break:break-all;word-wrap:break-word;color:rgb(51,51,51);bo=
rder:none;border-radius:4px;background-image:none;background-repeat:initial=
"><span style=3D"line-height:1.428571429"><br></span></pre><pre style=3D"fo=
nt-family:Menlo,&#39;Liberation Mono&#39;,Consolas,&#39;DejaVu Sans Mono&#3=
9;,&#39;Ubuntu Mono&#39;,&#39;Courier New&#39;,&#39;andale mono&#39;,&#39;l=
ucida console&#39;,monospace;font-size:12px;white-space:pre-wrap;padding:0p=
x;margin-top:15px;margin-bottom:0px;line-height:1.428571429;word-break:brea=
k-all;word-wrap:break-word;color:rgb(51,51,51);border:none;border-radius:4p=
x;background-image:none;background-repeat:initial"><span style=3D"line-heig=
ht:1.428571429">Thanks</span></pre><pre style=3D"font-family:Menlo,&#39;Lib=
eration Mono&#39;,Consolas,&#39;DejaVu Sans Mono&#39;,&#39;Ubuntu Mono&#39;=
,&#39;Courier New&#39;,&#39;andale mono&#39;,&#39;lucida console&#39;,monos=
pace;font-size:12px;white-space:pre-wrap;padding:0px;margin-top:15px;margin=
-bottom:0px;line-height:1.428571429;word-break:break-all;word-wrap:break-wo=
rd;color:rgb(51,51,51);border:none;border-radius:4px;background-image:none;=
background-repeat:initial"><span style=3D"line-height:1.428571429">Suresh</=
span></pre><pre style=3D"font-family:Menlo,&#39;Liberation Mono&#39;,Consol=
as,&#39;DejaVu Sans Mono&#39;,&#39;Ubuntu Mono&#39;,&#39;Courier New&#39;,&=
#39;andale mono&#39;,&#39;lucida console&#39;,monospace;font-size:12px;whit=
e-space:pre-wrap;padding:0px;margin-top:15px;margin-bottom:0px;line-height:=
1.428571429;word-break:break-all;word-wrap:break-word;color:rgb(51,51,51);b=
order:none;border-radius:4px;background-image:none;background-repeat:initia=
l"><br></pre></div></div>
</div></blockquote></div><br></div></blockquote></div><br></div>

--001a1140761a5522b90514cb3560--
