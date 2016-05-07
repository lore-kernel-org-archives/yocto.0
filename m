Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64E10E00C15; Sat,  7 May 2016 14:57:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 232F8E00BFB
	for <yocto@yoctoproject.org>; Sat,  7 May 2016 14:56:58 -0700 (PDT)
Received: by mail-qk0-f169.google.com with SMTP id x7so77656026qkd.3
	for <yocto@yoctoproject.org>; Sat, 07 May 2016 14:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=xq/saak7zSjXSltin//H2j+7jDsYiq8Zj7cPgbWnye4=;
	b=X/1S2vxVprU7Q5aI9ChdbJgUUOsjawVMARr/krItBSniB1dAa0Q7Af6lgoYPKtQxv+
	h8oZ2DJuMN4t/lCvFdLoPBKEek+1XCrqOMAsWXqz2hV1ZV+k2QcU7xZioGaShF51fim2
	JUQcZUn9meT4IjhKlKcQdKpFqu14K4U0vyHVtcWZZzPQaT7VNkjAILLgWl6QSA3Q6ndv
	MlTAatRyfqghoA2Ldo1lOw2sltX94Y+zE0JB9/7gjFq3DM2CGCK2ZdYpAfWYfK1eygn6
	YJHQqCv6gY/pJtNC875MkHmEPwsuL3XkkKOV9z0NyD3If4MdO6yJ+ckI/iqJZT9jFAu6
	YB7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=xq/saak7zSjXSltin//H2j+7jDsYiq8Zj7cPgbWnye4=;
	b=mjyZBpCv2jy3pz4ygY9vS1ptx28sPWMFTPy0ny1HFZcYnWoI6G6cb7VneGzXA5/dtZ
	XY8Vnt1PDPUn4qGrEf/9wWsKIk74bC/k6tOt0vdWyYy+KoiFgnEkzDCLqLTUJ/SVA3On
	+2wwIWD9Ip84MU5SDVwcRJeqzd6lDBfR7CMGTRKb8W+/Licvyx44RgnNq7mfHQo0q1AD
	0YP1Opsn1OVyQN2bsUrMu009bltanM8ip4nB2kNtvRZyqby6h/s6pkd26JD0ovSGOY6C
	9riGY/6hxHwU6xbYCQ87GiEs+vuN9XHdX6kAcuvXe0Ikevhhnm+tNoLsyXW+YzBcTzMc
	Wk3w==
X-Gm-Message-State: AOPr4FV0TG2lIOBdfy5EAzjzBJcix5bsxp91nl1pf9FUtMpXmq7crFR7tErxr1ZGlMtqzqeORp9HnCVSzzRMJg==
X-Received: by 10.55.96.197 with SMTP id u188mr29229089qkb.151.1462658217722; 
	Sat, 07 May 2016 14:56:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sat, 7 May 2016 14:56:28 -0700 (PDT)
In-Reply-To: <58d5375a-323c-97fd-19b6-0b99154c49a7@gmx.de>
References: <58d5375a-323c-97fd-19b6-0b99154c49a7@gmx.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 7 May 2016 14:56:28 -0700
Message-ID: <CAMKF1spVkZ7JE2ZaV4qkJ6GH8MyJE_U02CKw_DBrYB44XdtYvg@mail.gmail.com>
To: dbt@novatux.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: binutils_cross build aborted
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
X-List-Received-Date: Sat, 07 May 2016 21:57:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, May 7, 2016 at 12:08 PM, Thilo Graf <03676470562-0001@gmx.de> wrote=
:
> Hello!
>
> The build of binutils_cross was aborted with this error:
> We are using the current krogoth branch.
>
> Error:
>> ccache g++  -W -Wall    -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=3D64 -fr=
andom-seed=3Ddwp -I../../gold/../zlib -isystem/home/dbt/bs/yocto-poky-cst/b=
uild-hd2/tmp-uclibc/sysroots/i686-linux/usr/include -O2 -pipe  -L/home/dbt/=
bs/yocto-poky-cst/build-hd2/tmp-uclibc/sysroots/i686-linux/usr/lib -L/home/=
dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/sysroots/i686-linux/lib -Wl,-rpa=
th-link,/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/sysroots/i686-linu=
x/usr/lib -Wl,-rpath-link,/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/=
sysroots/i686-linux/lib -Wl,-rpath,/home/dbt/bs/yocto-poky-cst/build-hd2/tm=
p-uclibc/sysroots/i686-linux/usr/lib -Wl,-rpath,/home/dbt/bs/yocto-poky-cst=
/build-hd2/tmp-uclibc/sysroots/i686-linux/lib -Wl,-O1 -o dwp dwp.o libgold.=
a ../libiberty/libiberty.a    -ldl -L./../zlib -lz -ldl
>> dwp.o: In function `gold::Sized_relobj_dwo<64, false>::setup()':
>> dwp.cc:(.text._ZN4gold16Sized_relobj_dwoILi64ELb0EE5setupEv[gold::Sized_=
relobj_dwo<64, false>::setup()]+0x170): undefined reference to `std::map<un=
signed int, gold::Compressed_section_info, std::less<unsigned int>, std::al=
locator<std::pair<unsigned int const, gold::Compressed_section_info> > >* g=
old::build_compressed_section_map<64, false>(unsigned char const*, unsigned=
 int, char const*, unsigned int, gold::Object*, bool)'
>> dwp.o: In function `gold::Sized_relobj_dwo<32, true>::setup()':
>> dwp.cc:(.text._ZN4gold16Sized_relobj_dwoILi32ELb1EE5setupEv[gold::Sized_=
relobj_dwo<32, true>::setup()]+0x15c): undefined reference to `std::map<uns=
igned int, gold::Compressed_section_info, std::less<unsigned int>, std::all=
ocator<std::pair<unsigned int const, gold::Compressed_section_info> > >* go=
ld::build_compressed_section_map<32, true>(unsigned char const*, unsigned i=
nt, char const*, unsigned int, gold::Object*, bool)'
>> dwp.o: In function `gold::Sized_relobj_dwo<32, false>::setup()':
>> dwp.cc:(.text._ZN4gold16Sized_relobj_dwoILi32ELb0EE5setupEv[gold::Sized_=
relobj_dwo<32, false>::setup()]+0x156): undefined reference to `std::map<un=
signed int, gold::Compressed_section_info, std::less<unsigned int>, std::al=
locator<std::pair<unsigned int const, gold::Compressed_section_info> > >* g=
old::build_compressed_section_map<32, false>(unsigned char const*, unsigned=
 int, char const*, unsigned int, gold::Object*, bool)'
>> dwp.o: In function `gold::Sized_relobj_dwo<64, true>::setup()':
>> dwp.cc:(.text._ZN4gold16Sized_relobj_dwoILi64ELb1EE5setupEv[gold::Sized_=
relobj_dwo<64, true>::setup()]+0x174): undefined reference to `std::map<uns=
igned int, gold::Compressed_section_info, std::less<unsigned int>, std::all=
ocator<std::pair<unsigned int const, gold::Compressed_section_info> > >* go=
ld::build_compressed_section_map<64, true>(unsigned char const*, unsigned i=
nt, char const*, unsigned int, gold::Object*, bool)'
>> libgold.a(dynobj.o): In function `gold::Sized_dynobj<32, false>::base_re=
ad_symbols(gold::Read_symbols_data*)':
>> dynobj.cc:(.text._ZN4gold12Sized_dynobjILi32ELb0EE17base_read_symbolsEPN=
S_17Read_symbols_dataE[gold::Sized_dynobj<32, false>::base_read_symbols(gol=
d::Read_symbols_data*)]+0x101): undefined reference to `std::map<unsigned i=
nt, gold::Compressed_section_info, std::less<unsigned int>, std::allocator<=
std::pair<unsigned int const, gold::Compressed_section_info> > >* gold::bui=
ld_compressed_section_map<32, false>(unsigned char const*, unsigned int, ch=
ar const*, unsigned int, gold::Object*, bool)'
>> libgold.a(dynobj.o): In function `gold::Sized_dynobj<64, true>::base_rea=
d_symbols(gold::Read_symbols_data*)':
>> dynobj.cc:(.text._ZN4gold12Sized_dynobjILi64ELb1EE17base_read_symbolsEPN=
S_17Read_symbols_dataE[gold::Sized_dynobj<64, true>::base_read_symbols(gold=
::Read_symbols_data*)]+0x101): undefined reference to `std::map<unsigned in=
t, gold::Compressed_section_info, std::less<unsigned int>, std::allocator<s=
td::pair<unsigned int const, gold::Compressed_section_info> > >* gold::buil=
d_compressed_section_map<64, true>(unsigned char const*, unsigned int, char=
 const*, unsigned int, gold::Object*, bool)'
>> libgold.a(dynobj.o): In function `gold::Sized_dynobj<64, false>::base_re=
ad_symbols(gold::Read_symbols_data*)':
>> dynobj.cc:(.text._ZN4gold12Sized_dynobjILi64ELb0EE17base_read_symbolsEPN=
S_17Read_symbols_dataE[gold::Sized_dynobj<64, false>::base_read_symbols(gol=
d::Read_symbols_data*)]+0x101): undefined reference to `std::map<unsigned i=
nt, gold::Compressed_section_info, std::less<unsigned int>, std::allocator<=
std::pair<unsigned int const, gold::Compressed_section_info> > >* gold::bui=
ld_compressed_section_map<64, false>(unsigned char const*, unsigned int, ch=
ar const*, unsigned int, gold::Object*, bool)'
>> libgold.a(dynobj.o): In function `gold::Sized_dynobj<32, true>::base_rea=
d_symbols(gold::Read_symbols_data*)':
>> dynobj.cc:(.text._ZN4gold12Sized_dynobjILi32ELb1EE17base_read_symbolsEPN=
S_17Read_symbols_dataE[gold::Sized_dynobj<32, true>::base_read_symbols(gold=
::Read_symbols_data*)]+0x101): undefined reference to `std::map<unsigned in=
t, gold::Compressed_section_info, std::less<unsigned int>, std::allocator<s=
td::pair<unsigned int const, gold::Compressed_section_info> > >* gold::buil=
d_compressed_section_map<32, true>(unsigned char const*, unsigned int, char=
 const*, unsigned int, gold::Object*, bool)'
>> collect2: ld returned 1 exit status
>> make[4]: *** [dwp] Error 1
>> make[4]: *** Waiting for unfinished jobs....
>> make[4]: Leaving directory `/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uc=
libc/work/i686-linux/binutils-cross-arm/2.26-r0/git/build.i686-linux.arm-oe=
-linux-uclibceabi/gold'
>> make[3]: *** [all-recursive] Error 1
>> make[3]: Leaving directory `/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uc=
libc/work/i686-linux/binutils-cross-arm/2.26-r0/git/build.i686-linux.arm-oe=
-linux-uclibceabi/gold'
>> make[2]: *** [all] Error 2
>> make[2]: Leaving directory `/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uc=
libc/work/i686-linux/binutils-cross-arm/2.26-r0/git/build.i686-linux.arm-oe=
-linux-uclibceabi/gold'
>> make[1]: *** [all-gold] Error 2
>> make[1]: Leaving directory `/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uc=
libc/work/i686-linux/binutils-cross-arm/2.26-r0/git/build.i686-linux.arm-oe=
-linux-uclibceabi'
>> make: *** [all] Error 2
>> ERROR: oe_runmake failed
>
> I've tried to fix this with this workaround, but I'm sure that this
> can't be the solution.

yes it surely can not. However, you can see if you can disable ccache
and see if that helps you or drill down more on the issue.

>
>
> From dba3ed789a7013f52359b2d064b88a465f031e6d Mon Sep 17 00:00:00 2001
> From: Thilo Graf <dbt@novatux.de>
> Date: Sat, 7 May 2016 20:56:38 +0200
> Subject: [PATCH] Try to fix broken binutils_cross build
>
> BBuild seems to abort in some local constellations.
> Only disable of gold has been helped.
> This is only a workaround and should be fixed more effective.
>
> Signed-off-by: Thilo Graf <dbt@novatux.de>
> ---
>  meta/recipes-devtools/binutils/binutils.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta/recipes-devtools/binutils/binutils.inc
> b/meta/recipes-devtools/binutils/binutils.inc
> index 43e2aa2..3642c55 100644
> --- a/meta/recipes-devtools/binutils/binutils.inc
> +++ b/meta/recipes-devtools/binutils/binutils.inc
> @@ -78,7 +78,7 @@ EXTRA_OECONF =3D "--program-prefix=3D${TARGET_PREFIX} \
>
>  LDGOLD_class-native =3D ""
>  LDGOLD_class-crosssdk =3D ""
> -LDGOLD ?=3D "${@bb.utils.contains('DISTRO_FEATURES', 'ld-is-gold',
> '--enable-gold=3Ddefault --enable-threads', '--enable-gold
> --enable-ld=3Ddefault', d)}"
> +LDGOLD ?=3D "${@bb.utils.contains('DISTRO_FEATURES', 'ld-is-gold',
> '--enable-gold=3Ddefault --enable-threads', '--disable-gold
> --enable-ld=3Ddefault', d)}"
>
>  # This is necessary due to a bug in the binutils Makefiles
>  # EXTRA_OEMAKE =3D "configure-build-libiberty all"
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

