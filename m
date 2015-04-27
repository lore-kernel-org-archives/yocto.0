Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4F90E007CC; Mon, 27 Apr 2015 11:40:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 609B2E007CC
	for <yocto@yoctoproject.org>; Mon, 27 Apr 2015 11:40:40 -0700 (PDT)
Received: by pdbnk13 with SMTP id nk13so137262260pdb.0
	for <yocto@yoctoproject.org>; Mon, 27 Apr 2015 11:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Aglu/U5IVlS2tQwoKQb9VBn1P1GAPg/+cqyP2WvC4XI=;
	b=xTUIN7/PCU3sg94mzQFtmX61AaM3gRrnFpgrG359Ncyr6+4AKLRMk4TtjLkEpuJroy
	t7N6w5VPOGgU0bGyxivtXGaZrkEEzudJsQYKb/eSbz8MsTX9khbze4LaGe4Ur0vx7brW
	Ppl+L9GPIGAbaKhpHpMZQMo3OKAJZKk3H68tV5UhSJwr1DaZ3NqoYXxlcibZTLAESQ9b
	o1EysJaZc331pLnWHJTdZqRKiZhVBMbBvfYCxtCznKlb8I9PJwwkB8hu3uhIyU9jltWY
	67bXCC/JJ7Il1Y3jfsU/yfhxz40reW/J9L8pEiw7M29OU3+b6qcmFadM21RnJNlADghW
	Txkw==
X-Received: by 10.70.49.35 with SMTP id r3mr4835746pdn.22.1430160039707;
	Mon, 27 Apr 2015 11:40:39 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:b1a4:3fdf:dcf8:7b1c?
	([2601:9:3580:84c:b1a4:3fdf:dcf8:7b1c])
	by mx.google.com with ESMTPSA id u8sm4350796pdi.90.2015.04.27.11.40.38
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 27 Apr 2015 11:40:38 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CACbZ9VL8BtqUEdsdcqfZrqL3Aaa+_J3j9kZV=cBb87aN_JqWOQ@mail.gmail.com>
Date: Mon, 27 Apr 2015 11:40:37 -0700
Message-Id: <86C86F1A-E16A-4A8F-BD7A-B2B0E9296655@gmail.com>
References: <CACbZ9VL8BtqUEdsdcqfZrqL3Aaa+_J3j9kZV=cBb87aN_JqWOQ@mail.gmail.com>
To: Suresh Nagarajan <sureshnagaraja@gmail.com>
X-Mailer: Apple Mail (2.2098)
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
X-List-Received-Date: Mon, 27 Apr 2015 18:40:49 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0D31803D-9F0A-4244-9472-9A438CC1ECE9"

--Apple-Mail=_0D31803D-9F0A-4244-9472-9A438CC1ECE9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Apr 27, 2015, at 11:32 AM, Suresh Nagarajan =
<sureshnagaraja@gmail.com> wrote:
>=20
> Hi,
>=20
> I'm trying to look to see if OpenMP library is included in my yocto =
build.
>=20
> I could not find libgomp library in /usr/lib
> However, when I look at gcc-runtime.inc, I do notice that
>=20
> RUNTIMETARGET =3D "libssp libstdc++-v3 libgomp"
> PACKAGES =3D "\
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
>=20
>=20
> Also, I noticed that in gmane and other web-pages that it is OK to =
have INTIAL/INTERMEDIATE EXTRA_OECONF  to have --disable-libgomp
>=20
> However, it is not disabled in BASE which reads
> EXTRA_OECONF_BASE =3D " --enable-lto \
> 			--enable-libssp \
> 			--disable-bootstrap \
> 			--disable-libmudflap \
> 			--with-system-zlib \
> 			--with-linker-hash-style=3D${LINKER_HASH_STYLE} =
\
> 			--enable-linker-build-id \
> 			--with-ppl=3Dno \
> 			--with-cloog=3Dno \
> 			--enable-checking=3Drelease \
> 			--enable-cheaders=3Dc_global "
>=20
>=20
> Also, it is mentioned that <see below>
> Autoconf will not detect OpenMP after this change, because it will
> build and run a target binary on the build system. In order to use
> OpenMP, the variable ac_cv_prog_c_openmp=3D-fopenmp must be set.
> Where exactly are we supposed to set this variable =
ac_cv_prog_c_openmp=3D-fopenmp?

You might have to add it to your image via IMAGE_INSTALL or some such=20

>=20
> Thanks
> Suresh
>=20


--Apple-Mail=_0D31803D-9F0A-4244-9472-9A438CC1ECE9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Apr 27, 2015, at 11:32 AM, Suresh Nagarajan &lt;<a =
href=3D"mailto:sureshnagaraja@gmail.com" =
class=3D"">sureshnagaraja@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Hi,<br class=3D""><br class=3D"">I'm trying to look to see if =
OpenMP library is included in my yocto build.<div class=3D""><br =
class=3D""></div><div class=3D"">I could not find libgomp library in =
/usr/lib</div><div class=3D"">However, when I look at gcc-runtime.inc, I =
do notice that</div><div class=3D""><br class=3D""></div><div =
class=3D""><div class=3D""><div class=3D"">RUNTIMETARGET =3D "libssp =
libstdc++-v3 libgomp"</div></div></div><div class=3D""><div =
class=3D"">PACKAGES =3D "\</div><div class=3D"">&nbsp; ${PN}-dbg =
\</div><div class=3D"">&nbsp; libstdc++ \</div><div class=3D"">&nbsp; =
libstdc++-precompile-dev \</div><div class=3D"">&nbsp; libstdc++-dev =
\</div><div class=3D"">&nbsp; libstdc++-staticdev \</div><div =
class=3D"">&nbsp; libg2c \</div><div class=3D"">&nbsp; libg2c-dev =
\</div><div class=3D"">&nbsp; libssp \</div><div class=3D"">&nbsp; =
libssp-dev \</div><div class=3D"">&nbsp; libssp-staticdev \</div><div =
class=3D"">&nbsp; libgfortran \</div><div class=3D"">&nbsp; =
libgfortran-dev \</div><div class=3D"">&nbsp; libgfortran-staticdev =
\</div><div class=3D"">&nbsp; libmudflap \</div><div class=3D"">&nbsp; =
libmudflap-dev \</div><div class=3D"">&nbsp; libmudflap-staticdev =
\</div><div class=3D"">&nbsp; libquadmath \</div><div class=3D"">&nbsp; =
libquadmath-dev \</div><div class=3D"">&nbsp; libquadmath-staticdev =
\</div><div class=3D"">&nbsp;<span =
style=3D"background-color:rgb(255,255,0)" class=3D""> libgomp =
\</span></div><div class=3D"">&nbsp;<span =
style=3D"background-color:rgb(255,255,0)" class=3D""> libgomp-dev =
\</span></div><div class=3D"">&nbsp; libgomp-staticdev \</div></div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D"">Also, I noticed that in gmane and other web-pages that it is =
OK to have INTIAL/INTERMEDIATE EXTRA_OECONF &nbsp;to =
have&nbsp;--disable-libgomp</div><div class=3D""><br class=3D""></div><div=
 class=3D"">However, it is not disabled in BASE which reads</div><div =
class=3D""><div class=3D"">EXTRA_OECONF_BASE =3D " --enable-lto =
\</div><div class=3D""><span class=3D"" style=3D"white-space:pre">		=
	</span>--enable-libssp \</div><div class=3D""><span class=3D"" =
style=3D"white-space:pre">			=
</span>--disable-bootstrap \</div><div class=3D""><span class=3D"" =
style=3D"white-space:pre">			=
</span>--disable-libmudflap \</div><div class=3D""><span class=3D"" =
style=3D"white-space:pre">			=
</span>--with-system-zlib \</div><div class=3D""><span class=3D"" =
style=3D"white-space:pre">			=
</span>--with-linker-hash-style=3D${LINKER_HASH_STYLE} \</div><div =
class=3D""><span class=3D"" style=3D"white-space:pre">			=
</span>--enable-linker-build-id \</div><div class=3D""><span class=3D"" =
style=3D"white-space:pre">			</span>--with-ppl=3Dno =
\</div><div class=3D""><span class=3D"" style=3D"white-space:pre">		=
	</span>--with-cloog=3Dno \</div><div class=3D""><span class=3D"" =
style=3D"white-space:pre">			=
</span>--enable-checking=3Drelease \</div><div class=3D""><span class=3D""=
 style=3D"white-space:pre">			=
</span>--enable-cheaders=3Dc_global "</div></div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D"">Also, it is mentioned that &lt;see below&gt;<br class=3D""><pre=
 class=3D"" style=3D"font-family:Menlo,'Liberation =
Mono',Consolas,'DejaVu Sans Mono','Ubuntu Mono','Courier New','andale =
mono','lucida =
console',monospace;font-size:12px;white-space:pre-wrap;padding:0px;margin-=
top:15px;margin-bottom:0px;line-height:1.428571429;word-break:break-all;wo=
rd-wrap:break-word;color:rgb(51,51,51);border:none;border-radius:4px;backg=
round-image:none;background-repeat:initial">Autoconf will not detect =
OpenMP after this change, because it will
build and run a target binary on the build system. In order to use
OpenMP, the variable ac_cv_prog_c_openmp=3D-fopenmp must be =
set.</pre><pre class=3D"" style=3D"font-family:Menlo,'Liberation =
Mono',Consolas,'DejaVu Sans Mono','Ubuntu Mono','Courier New','andale =
mono','lucida =
console',monospace;font-size:12px;white-space:pre-wrap;padding:0px;margin-=
top:15px;margin-bottom:0px;line-height:1.428571429;word-break:break-all;wo=
rd-wrap:break-word;color:rgb(51,51,51);border:none;border-radius:4px;backg=
round-image:none;background-repeat:initial"><span =
style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
line-height:normal;white-space:normal" class=3D"">Where exactly are we =
supposed to set this variable&nbsp;</span><span =
style=3D"line-height:1.428571429" =
class=3D"">ac_cv_prog_c_openmp=3D-fopenmp?</span><br =
class=3D""></pre></div></div></div></blockquote><div><br =
class=3D""></div><div>You might have to add it to your image via =
IMAGE_INSTALL or some such&nbsp;</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><div =
class=3D""><pre class=3D"" style=3D"font-family:Menlo,'Liberation =
Mono',Consolas,'DejaVu Sans Mono','Ubuntu Mono','Courier New','andale =
mono','lucida =
console',monospace;font-size:12px;white-space:pre-wrap;padding:0px;margin-=
top:15px;margin-bottom:0px;line-height:1.428571429;word-break:break-all;wo=
rd-wrap:break-word;color:rgb(51,51,51);border:none;border-radius:4px;backg=
round-image:none;background-repeat:initial"><span =
style=3D"line-height:1.428571429" class=3D""><br =
class=3D""></span></pre><pre class=3D"" =
style=3D"font-family:Menlo,'Liberation Mono',Consolas,'DejaVu Sans =
Mono','Ubuntu Mono','Courier New','andale mono','lucida =
console',monospace;font-size:12px;white-space:pre-wrap;padding:0px;margin-=
top:15px;margin-bottom:0px;line-height:1.428571429;word-break:break-all;wo=
rd-wrap:break-word;color:rgb(51,51,51);border:none;border-radius:4px;backg=
round-image:none;background-repeat:initial"><span =
style=3D"line-height:1.428571429" class=3D"">Thanks</span></pre><pre =
class=3D"" style=3D"font-family:Menlo,'Liberation Mono',Consolas,'DejaVu =
Sans Mono','Ubuntu Mono','Courier New','andale mono','lucida =
console',monospace;font-size:12px;white-space:pre-wrap;padding:0px;margin-=
top:15px;margin-bottom:0px;line-height:1.428571429;word-break:break-all;wo=
rd-wrap:break-word;color:rgb(51,51,51);border:none;border-radius:4px;backg=
round-image:none;background-repeat:initial"><span =
style=3D"line-height:1.428571429" class=3D"">Suresh</span></pre><pre =
class=3D"" style=3D"font-family:Menlo,'Liberation Mono',Consolas,'DejaVu =
Sans Mono','Ubuntu Mono','Courier New','andale mono','lucida =
console',monospace;font-size:12px;white-space:pre-wrap;padding:0px;margin-=
top:15px;margin-bottom:0px;line-height:1.428571429;word-break:break-all;wo=
rd-wrap:break-word;color:rgb(51,51,51);border:none;border-radius:4px;backg=
round-image:none;background-repeat:initial"><br =
class=3D""></pre></div></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_0D31803D-9F0A-4244-9472-9A438CC1ECE9--
