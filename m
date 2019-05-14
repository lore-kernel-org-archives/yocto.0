Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55360E00DB7; Mon, 13 May 2019 23:17:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89C5BE00DA9
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 23:17:16 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id j24so12359420ljg.1
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 23:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CjKsJf23MULSFJlktKGRdxhPzC17dP0tI/p+InQvVVs=;
	b=C4QdvEpEFUVq1jmW7e3p7cplob/tTvP3KOqU716Z5lIS4BLQZtbw3BFPoBJyxeoglW
	JeJ2KTZbFsdyVbMzbJjD3t8wf1sjY5jV3TDq42DUm43/yxpggnnumaVypORD8YHg0ZZP
	aj7bBZzWDsXr3XwfDRJfXPGUqRZxsKXwBA15MqkmGf7HkSAkf7H74BlyVTwD8PQu8dPp
	h5/nO3y7riVUW2D//mD3Afg4gyuqhDDObGF5+b02ClctxwKANVPYUelwlceLOAPrZEo9
	QzGKcCQI3o8E98K1QIOrlWOR6kwsuh5vzcUyS/6NqxyU7+nYSdvueSQLxDqc/fqtSr9+
	VM1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CjKsJf23MULSFJlktKGRdxhPzC17dP0tI/p+InQvVVs=;
	b=SZmbcIDSQYhIX87kt6usOVbEvUlMzU0tj0iqdgIvwagG2xFOu281Fbh/iy1iLrey6I
	3h3ne+kQFSsFByI3a8vOS+ZkbEISACFD6FedFcW1SB0M7lFNPYW2ALC0YVqNdFn2/ufk
	cb0qji29IHzW2UIlyIyXTfcXmM1+HPnEbxCd1b5VVUKt4dSpSvCs2tFlzizQZG6NDdBG
	8EL4eHgOmFNnCn5Zc6dzdYzRLlt6miNp20RcW1MIVJUL29Y2J09cKJ6PoBTNeAH2CkL8
	vPBMYBoH2uQnfbT+ptsmXVIpmwT0263mo1lQu5l/h+dSu2lNHgR2h7g7RIDiHRsEOXR7
	gl+g==
X-Gm-Message-State: APjAAAWXIE4ymILCAptAOmTbZ8ChUl3gcg7z0KWNgU5kf4AxFUi6OXNL
	n3KwvnMSMKDCSMiodF+VckwXtoQsNgoRJNQDZXQ=
X-Google-Smtp-Source: APXvYqwbiCvpLJ3ZqEVnLs26JR3n9QP7yqbuPyfvrQb/FWxDtU9R82Wqt61mF8kAflPOucVfsXiqEIMdf+dsZR/QDOk=
X-Received: by 2002:a2e:90d1:: with SMTP id o17mr2487963ljg.187.1557814635079; 
	Mon, 13 May 2019 23:17:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaDU_dtaZqAhkZV6caizdZ+ebBOcRyJdCDwyP97fpLcYbg@mail.gmail.com>
	<CAMKF1spXJDh_a4BRccT0XNYLKn9pgPCX0jJfTnAWefnTyUtEQg@mail.gmail.com>
In-Reply-To: <CAMKF1spXJDh_a4BRccT0XNYLKn9pgPCX0jJfTnAWefnTyUtEQg@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Tue, 14 May 2019 08:17:03 +0200
Message-ID: <CAAx3WaBqabr+PdSKS5qq8cT_d=rtHHgMpgdoVhfmrEjAeWfi5Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Using a native tool from another recipe
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
X-List-Received-Date: Tue, 14 May 2019 06:17:18 -0000
Content-Type: multipart/alternative; boundary="000000000000f32ba40588d2fbd8"

--000000000000f32ba40588d2fbd8
Content-Type: text/plain; charset="UTF-8"

Hi Khem,

what do you mean with "build bpkg as a native recipe"? I though that the
DEPENDS = "build2-native" will achieve this task. Thanks to pointing out
the hosttool option.

Best regards,
Gabriele

Il giorno lun 13 mag 2019 alle ore 17:59 Khem Raj <raj.khem@gmail.com> ha
scritto:

> You need to either build bpkg as a native recipe or install and make it
> available as a hosttool from build machine distribution itself
>
> On Mon, May 13, 2019 at 6:07 AM Gabriele Zampieri <gabbla.malist@gmail.com>
> wrote:
>
>> Hi all,
>>
>> I need to add a couple of tools to my build system (build2 and odb). The
>> second one depends on the first. Following a snippet of the build2 recipe:
>>
>> --------------------------------------------------------------------------------------------
>> DEPENDS = "openssl-native"
>> SRC_URI = "
>> https://download.build2.org/${PV}/build2-toolchain-${PV}.tar.gz"
>> SRC_URI[sha256sum] =
>> "42a254c46b59109b764afade0d50819b3d793a9167f46759fc6aa9d6d8a6ff37"
>>
>> S = "${WORKDIR}/build2-toolchain-${PV}"
>>
>> # build.sh located inside the tarball cannot be used to configure,
>> compile and
>> # install in different steps. This task is misleading, but I didn't find
>> any
>> # other way to make it works
>> do_compile_prepend() {
>>     ./build.sh --timeout 600 --sudo false \
>>         --make ${MAKE} ${PARALLEL_MAKE} \
>>         --trust yes \
>>         --install-dir ${prefix} g++
>> }
>>
>> FILES_${PN}_append_class-nativesdk = " ${SDKPATHNATIVE}"
>> FILES_${PN} = "${D}${prefix}/*"
>>
>> BBCLASSEXTEND = "native nativesdk"
>>
>> --------------------------------------------------------------------------------------------
>>
>> Then the odb-compiler recipe
>>
>>
>> --------------------------------------------------------------------------------------------
>> SECTION = "devtools"
>> DEPENDS = "build2-native"
>> CONFIG_NAME = "odb-gcc-X"
>> do_configure() {
>>     cd ${B}
>>     bpkg create -d ${CONFIG_NAME} cc    \
>>         config.cxx=g++                  \
>>         config.cc.coptions=-O3          \
>>         config.bin.rpath=/usr/lib       \
>>         config.install.root=/usr        \
>>         config.install.sudo=false
>>
>> }
>> BBCLASSEXTEND = "native nativesdk"
>>
>> --------------------------------------------------------------------------------------------
>>
>> When I try to build odb-compiler, bitbake complete the build2-native
>> recipe, but fails on do_configure due to 'bpkg command not found'.
>>
>> Are my recipes correct?
>>
>> Thanks,
>> Gabriele
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--000000000000f32ba40588d2fbd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Khem,</div><div><br></div><div>what do you mean wi=
th &quot;build bpkg as a native recipe&quot;? I though that the DEPENDS =3D=
 &quot;build2-native&quot; will achieve this task. Thanks to pointing out t=
he hosttool option.</div><div><br></div><div>Best regards,</div><div>Gabrie=
le<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">Il giorno lun 13 mag 2019 alle ore 17:59 Khem Raj &lt;<a href=
=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; ha scritto:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div dir=3D"auto=
">You need to either build bpkg as a native recipe or install and make it a=
vailable as a hosttool from build machine distribution itself=C2=A0</div></=
div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Mon, May 13, 2019 at 6:07 AM Gabriele Zampieri &lt;<a href=3D"mailto:=
gabbla.malist@gmail.com" target=3D"_blank">gabbla.malist@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div>Hi all,</div><div><br></div><div>I need to add a couple of tools to =
my build system (build2 and odb). The second one depends on the first. Foll=
owing a snippet of the build2 recipe:</div><div>---------------------------=
-----------------------------------------------------------------</div><div=
>DEPENDS =3D &quot;openssl-native&quot;<br>SRC_URI =3D &quot;<a href=3D"htt=
ps://download.build2.org/$%7BPV%7D/build2-toolchain-$%7BPV%7D.tar.gz" targe=
t=3D"_blank">https://download.build2.org/${PV}/build2-toolchain-${PV}.tar.g=
z</a>&quot;<br>SRC_URI[sha256sum] =3D &quot;42a254c46b59109b764afade0d50819=
b3d793a9167f46759fc6aa9d6d8a6ff37&quot;<br></div><div><br>S =3D &quot;${WOR=
KDIR}/build2-toolchain-${PV}&quot;<br><br># build.sh located inside the tar=
ball cannot be used to configure, compile and<br># install in different ste=
ps. This task is misleading, but I didn&#39;t find any<br># other way to ma=
ke it works<br>do_compile_prepend() {<br>=C2=A0=C2=A0=C2=A0 ./build.sh --ti=
meout 600 --sudo false \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --ma=
ke ${MAKE} ${PARALLEL_MAKE} \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 --trust yes \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --install-dir =
${prefix} g++<br>}<br><br>FILES_${PN}_append_class-nativesdk =3D &quot; ${S=
DKPATHNATIVE}&quot;<br>FILES_${PN} =3D &quot;${D}${prefix}/*&quot;<br><br>B=
BCLASSEXTEND =3D &quot;native nativesdk&quot;</div><div>-------------------=
-------------------------------------------------------------------------</=
div><div><br></div><div>Then the odb-compiler recipe</div><div><br></div><d=
iv>------------------------------------------------------------------------=
--------------------</div><div>SECTION =3D &quot;devtools&quot;<br>DEPENDS =
=3D &quot;build2-native&quot;<br>CONFIG_NAME =3D &quot;odb-gcc-X&quot;<br>d=
o_configure() {<br>=C2=A0=C2=A0=C2=A0 cd ${B}<br>=C2=A0=C2=A0=C2=A0 bpkg cr=
eate -d ${CONFIG_NAME} cc=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 config.cxx=3Dg++=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 config.cc.coptions=3D-O3=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 config.bin.rpath=3D/usr/lib=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 config.install.root=
=3D/usr=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 config.install.sudo=3Dfalse<br><br>}</div><div>BBC=
LASSEXTEND =3D &quot;native nativesdk&quot;<br>----------------------------=
----------------------------------------------------------------</div><div>=
<br></div><div>When I try to build odb-compiler, bitbake complete the build=
2-native recipe, but fails on do_configure due to &#39;bpkg command not fou=
nd&#39;. <br></div><div><br></div><div>Are my recipes correct?</div><div><b=
r></div><div>Thanks,</div><div>Gabriele</div></div></div></div></div></div>=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div><br></div></div></div></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>
</blockquote></div>

--000000000000f32ba40588d2fbd8--
