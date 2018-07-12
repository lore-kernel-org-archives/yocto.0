Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12751E00D91; Thu, 12 Jul 2018 09:54:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1AF4E006B3
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 09:54:57 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id i12-v6so57073849oik.2
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 09:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=V3z1EAgwJ5DN+6sYWz8UP9zoyEa5dAuzFNV3Tdvipag=;
	b=TT8MZ3JesZKwzykJalVfTSjQy8dEqJ994RyCq5xqNz+C1076AF4BZPCHrpgwAIGRji
	ercHoKWLgULpFVyqzskex+SPAoQYl/E0WWZqNLDkWJc/KzfRb9Vy+i3RB4K/I0nKjD1H
	ENjyGsD4UrpveK90aSqIoGTt8Exj9FJdavkG0DeAUCVNyqdCx72FabFAEcmtaIxi0nLS
	5jZlhhE3utKTsnWZDtezoYMxi4Hc9v1jlWr2QfKTuwiEoSanQVzXM80uKokrFgrbYL6d
	WlkqMPc0Je9oiWyFCSgb6nR4rGWC2wSxewboiEU1UnelsdWJLB9P36/t7H74mdaLFMuX
	AFuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=V3z1EAgwJ5DN+6sYWz8UP9zoyEa5dAuzFNV3Tdvipag=;
	b=T3wFwIkxKpKdRL+MYX+8IFcqHlnRoR55e/xIe8DBYd4Ar7g/kYU+dT1HFcBq6Lta3z
	K4Wa7HQ0hCMdjaXVwW84uLt+Dvd0ntDiCO87Mu+AKK2Kw1d1NKitW2vJGK+GsCYYvUmm
	arx/46a3G5G40qIqIeYYX3Z/fUcjO1HSuV0emFn7UZeX2j41PvZpiDYU/e36gNM/FsGW
	FwAfpJZdiIWge42jY8xvY2WTs/S8Vygpg6JEF1Vy8wC0G4iGGDC2gfEAswEWbyk7rU40
	fVmoIRVZp67rCkZ7Fa8Mxv4B7Ibr1xIicjuRsgMNsWZ8f5D2BaXuysuCIdw6HYx2a1RP
	z3Bw==
X-Gm-Message-State: AOUpUlFTPFq57BunCTzSMCWMXqeNmXoWMn6AajGrxlbQijHLaPTlCjeS
	JxdL44z7aoj5Wwwnpf3/8qtZvc9NUuK8ZMyBF2cbtw==
X-Google-Smtp-Source: AAOMgpf/aAjDJcxNMQrepGVEtBJmITsbxpStoqMfN7ljqM359pfdLfLJWOL93l9tR/XUNSWjPJi4ArTqIq1b+WwBJ4c=
X-Received: by 2002:aca:5dc5:: with SMTP id
	r188-v6mr3256261oib.320.1531414497302; 
	Thu, 12 Jul 2018 09:54:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Thu, 12 Jul 2018 09:54:36
	-0700 (PDT)
In-Reply-To: <1531348961-38317-2-git-send-email-juro.bystricky@intel.com>
References: <1531348961-38317-1-git-send-email-juro.bystricky@intel.com>
	<1531348961-38317-2-git-send-email-juro.bystricky@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Jul 2018 17:54:36 +0100
Message-ID: <CAJTo0LZh7vxSP8D0tKk_NPky6NXS_gRz4J2zXMz8aU5b9Bhq9g@mail.gmail.com>
To: Juro Bystricky <juro.bystricky@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Alejandro Enedino Hernandez Samaniego <alejandr@xilinx.com>,
	Juro Bystricky <jurobystricky@hotmail.com>
Subject: Re: [meta-mingw][sumo][PATCH 1/1] openssl: build for mingw
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
X-List-Received-Date: Thu, 12 Jul 2018 16:54:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Does this also work for rocko and master if the bbappend used a
wildcard?  Or is it not required for rocko and master?

Ross

On 11 July 2018 at 23:42, Juro Bystricky <juro.bystricky@intel.com> wrote:
> Build openssl.exe and several .dll files needed to run openssl
> under Windows
>
> Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
> ---
>  .../openssl/openssl/mingw-targets.patch               | 13 +++++++++++++
>  recipes-connectivity/openssl/openssl_1.0.2o.bbappend  | 19 +++++++++++++=
++++++
>  2 files changed, 32 insertions(+)
>  create mode 100644 recipes-connectivity/openssl/openssl/mingw-targets.pa=
tch
>  create mode 100644 recipes-connectivity/openssl/openssl_1.0.2o.bbappend
>
> diff --git a/recipes-connectivity/openssl/openssl/mingw-targets.patch b/r=
ecipes-connectivity/openssl/openssl/mingw-targets.patch
> new file mode 100644
> index 0000000..a9d98db
> --- /dev/null
> +++ b/recipes-connectivity/openssl/openssl/mingw-targets.patch
> @@ -0,0 +1,13 @@
> +--- a/Configure
> ++++ b/Configure
> +@@ -672,6 +668,10 @@ my %table=3D(
> +
> + # MinGW
> + "mingw", "gcc:-mno-cygwin -DL_ENDIAN -DWIN32_LEAN_AND_MEAN -fomit-frame=
-pointer -O3 -march=3Di486 -Wall::-D_MT:MINGW32:-lws2_32 -lgdi32 -lcrypt32:=
BN_LLONG ${x86_gcc_des} ${x86_gcc_opts} EXPORT_VAR_AS_FN:${x86_asm}:coff:wi=
n32:cygwin-shared:-D_WINDLL -DOPENSSL_USE_APPLINK:-mno-cygwin:.dll.a",
> ++"mingw32-x86_64","gcc:-mno-cygwin -DL_ENDIAN -O3 -Wall -DWIN32_LEAN_AND=
_MEAN -DUNICODE -D_UNICODE::-D_MT:MINGW64:-lws2_32 -lgdi32 -lcrypt32:SIXTY_=
FOUR_BIT RC4_CHUNK_LL DES_INT EXPORT_VAR_AS_FN:${x86_64_asm}:mingw64:win32:=
cygwin-shared:-D_WINDLL:-mno-cygwin:.dll.a",
> ++"i686-pokysdk-mingw32", "gcc:-mno-cygwin -DL_ENDIAN -DWIN32_LEAN_AND_ME=
AN -fomit-frame-pointer -O3 -march=3Di486 -Wall::-D_MT:MINGW32:-lws2_32 -lg=
di32 -lcrypt32:BN_LLONG ${x86_gcc_des} ${x86_gcc_opts} EXPORT_VAR_AS_FN:${x=
86_asm}:coff:win32:cygwin-shared:-D_WINDLL -DOPENSSL_USE_APPLINK:-mno-cygwi=
n:.dll.a",
> ++"mingw32-i686", "gcc:-mno-cygwin -DL_ENDIAN -DWIN32_LEAN_AND_MEAN -fomi=
t-frame-pointer -O3 -march=3Di686 -Wall::-D_MT:MINGW32:-lws2_32 -lgdi32 -lc=
rypt32:BN_LLONG ${x86_gcc_des} ${x86_gcc_opts} EXPORT_VAR_AS_FN:${x86_asm}:=
coff:win32:cygwin-shared:-D_WINDLL -DOPENSSL_USE_APPLINK:-mno-cygwin:.dll.a=
",
> ++
> + # As for OPENSSL_USE_APPLINK. Applink makes it possible to use .dll
> + # compiled with one compiler with application compiled with another
> + # compiler. It's possible to engage Applink support in mingw64 build,
> diff --git a/recipes-connectivity/openssl/openssl_1.0.2o.bbappend b/recip=
es-connectivity/openssl/openssl_1.0.2o.bbappend
> new file mode 100644
> index 0000000..0e4485c
> --- /dev/null
> +++ b/recipes-connectivity/openssl/openssl_1.0.2o.bbappend
> @@ -0,0 +1,19 @@
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> +
> +SRC_URI_append_mingw32 =3D " file://mingw-targets.patch"
> +
> +EXTRA_LIBS_mingw32 =3D "-lws2_32 -lgdi32 -lcrypt32 -lgcc"
> +
> +CFLAG_remove_mingw32 =3D " -DTERMIO"
> +CFLAG_remove_mingw32 =3D " -DHAVE_CRYPTODEV"
> +CFLAG_remove_mingw32 =3D " -Wa,--noexecstack"
> +CFLAG_append_mingw32 =3D " -DNOCRYPT -mno-cygwin -DWIN32_LEAN_AND_MEAN"
> +
> +do_compile_prepend_mingw32 () {
> +       export EX_LIBS=3D"${EXTRA_LIBS}"
> +}
> +
> +do_install_prepend_mingw32 () {
> +       export EX_LIBS=3D"${EXTRA_LIBS}"
> +}
> +
> --
> 2.7.4
>

