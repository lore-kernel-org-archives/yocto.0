Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1957E00CFC; Mon, 17 Oct 2016 20:58:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81E43E00C9B
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 20:57:57 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id i85so10598712pfa.0
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 20:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=T3zZC3UJ1nwc4ZR27oG2cSGRogNGCD1SqlDKstWR3yM=;
	b=bnMhRCT6uxN4zaQmDMeL5i8Z9mBl3kQaCaWC7FzIT193QWHCIydQ75+A0QTUgp3dJO
	/FkBcDOpdDD8f/FAkww2+BoBfqYwSWdU1udzcebTMakv4CcDGvQOz8UUv41qcYi8w+9I
	tSeY6aALC1R+28RVwcJA6bbr2iijX3mA2TNQ/c7MDWuD34XKDGWk5YdjSxKh1cK/HSgL
	Kq4X6UkzzxzAvlxbAccSoYSYF6+Arp3SFf0x+I4KBxYuqR7MEJCCMsq5wApjyJKi06tm
	OrNB9AZHk68b8bvHVxcm5XhT3Ss20oegYR+M8r+U0aO9KHw+FQVIkiDbnJqKIfoCml+t
	5OFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=T3zZC3UJ1nwc4ZR27oG2cSGRogNGCD1SqlDKstWR3yM=;
	b=HENOFILLN6ja+PhoIN2E0h7H0PzPhEOzDkuLgAkVph2hBGtbdBH+c+ie55O8RiQ/2a
	YgXHkcD/pWMgWd1rxqq+HPUtfh9bw0T1CD/SNPCDyi7OwTtskM8EPIoMnF0KiZBSTKBC
	za29s4EbneAwBl7E183ezabxL7TJ/rJEH7SU38QBrqAYCt3UW8DviMp87nNY4YFYruXL
	SnKMNUx6fri78wTTQo/HlPxHP4YEt65Sx3tOsqLQ6fEyTUEa55xdDbh3NaTJRV0gEDTV
	zrLAPVAn3npz3nmUxHTwFEXFvzGe4ZC5EkVcVu8v6nSQLGAg6Qc7EfSEFnS6oiD+W3ho
	Fg1g==
X-Gm-Message-State: AA6/9Rl4GYim8M4TMO0xUQgGumHMKqD+pgDb+zPXue+8+9Xz1xyGn4Q44Vn7wiIKu0Ng+w==
X-Received: by 10.98.61.202 with SMTP id x71mr1231267pfj.163.1476763076796;
	Mon, 17 Oct 2016 20:57:56 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:5ef:e28f:5dce:e040?
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	g78sm51332847pfe.19.2016.10.17.20.57.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Oct 2016 20:57:56 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-4-git-send-email-akuster808@gmail.com>
	<018CC106-A0C9-4953-B42D-497BB4586975@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <fbf55cd9-6194-5483-cb33-6b6166f2963c@gmail.com>
Date: Mon, 17 Oct 2016 20:57:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <018CC106-A0C9-4953-B42D-497BB4586975@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 04/17] swtpm: add new package
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
X-List-Received-Date: Tue, 18 Oct 2016 03:58:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 10/17/2016 05:17 PM, Khem Raj wrote:
>> On Oct 17, 2016, at 5:02 PM, Armin Kuster <akuster808@gmail.com> wrote:
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>> recipes-tpm/swtpm/files/fix_lib_search_path.patch | 41 +++++++++++++++++++++++
>> recipes-tpm/swtpm/swtpm_1.0.bb                    | 38 +++++++++++++++++++++
>> 2 files changed, 79 insertions(+)
>> create mode 100644 recipes-tpm/swtpm/files/fix_lib_search_path.patch
>> create mode 100644 recipes-tpm/swtpm/swtpm_1.0.bb
>>
>> diff --git a/recipes-tpm/swtpm/files/fix_lib_search_path.patch b/recipes-tpm/swtpm/files/fix_lib_search_path.patch
>> new file mode 100644
>> index 0000000..015f418
>> --- /dev/null
>> +++ b/recipes-tpm/swtpm/files/fix_lib_search_path.patch
>> @@ -0,0 +1,41 @@
>> +
>> +Upstream-Status: Inappropriate [OE config]
>> +
>> +Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> +
>> +Index: configure.ac
>> +===================================================================
>> +--- a/configure.ac
>> ++++ b/configure.ac
>> +@@ -349,21 +349,17 @@ CFLAGS="$CFLAGS -Wformat -Wformat-securi
>> + dnl We have to make sure libtpms is using the same crypto library
>> + dnl to avoid problems
>> + AC_MSG_CHECKING([the crypto library libtpms is using])
>> +-dirs=$($CC $CFLAGS -Xlinker --verbose 2>/dev/null | \
>> +-       sed -n '/SEARCH_DIR/p' | \
>> +-       sed 's/SEARCH_DIR("=\?\(@<:@^"@:>@\+\)"); */\1\n/g')
>> +-for dir in $dirs; do
>> +-  if test -r $dir/libtpms.so; then
>> +-    if test -n "`ldd $dir/libtpms.so | grep libcrypto.so`"; then
>> +-      libtpms_cryptolib="openssl"
>> +-      break
>> +-    fi
>> +-    if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
>> +-      libtpms_cryptolib="freebl"
>> +-      break
>> +-    fi
>> ++dir="$SEARCH_DIR"
>> ++if test -r $dir/libtpms.so; then
>> ++  if test -n "`ldd $dir/libtpms.so | grep libcrypto.so`"; then
>> ++    libtpms_cryptolib="openssl"
>> ++    break
>> +   fi
>> +-done
>> ++  if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
>> ++    libtpms_cryptolib="freebl"
>> ++    break
>> ++  fi
>> ++fi
>> +
>> + if test -z "$libtpms_cryptolib"; then
>> +   AC_MSG_ERROR([Could not determine libtpms crypto library.])
>> diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
>> new file mode 100644
>> index 0000000..ae16e51
>> --- /dev/null
>> +++ b/recipes-tpm/swtpm/swtpm_1.0.bb
>> @@ -0,0 +1,38 @@
>> +SUMMARY = "SWTPM - Software TPM Emulator"
>> +LICENSE = "BSD-3-Clause"
>> +LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
>> +SECTION = “tpm"
> this should be ‘apps’ perhaps.
>
>> +
>> +DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm-native"
>> +
>> +SRCREV = "2cd10cee2f74c84bda22081514b6b2cb566fa42d"
>> +SRC_URI = "git://github.com/stefanberger/swtpm.git \
>> +	   file://fix_lib_search_path.patch"
>> +
>> +S = "${WORKDIR}/git"
>> +
>> +inherit autotools-brokensep pkgconfig
>> +PARALLEL_MAKE = ""
>> +
>> +TSS_USER="tss"
>> +TSS_GROUP="tss"
>> +
>> +PACKAGECONFIG ?= "openssl"
>> +PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
>> +PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
>> +PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls"
>> +PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, linselinux"
>> +
>> +CACHED_CONFIGUREVARS = "ac_cv_path_EXPECT=${STAGING_LIBDIR} \
>> +ac_cv_path_SOCAT=${STAGING_LIBDIR} “
> STAGING_LIBDIR seems dubious here. Can you check if it needs it during build then it should
> point to native versions.if it needs during runtime then it should be ${libdir}
K. Found a cleaner solution.

thanks for the feedback.
-Armin
>
>> +
>> +EXTRA_OECONF += "--with-tss-user=${TSS_USER} --with-tss-group=${TSS_GROUP}"
>> +
>> +export SEARCH_DIR = "${STAGING_LIBDIR_NATIVE}"
>> +
>> +USERADD_PACKAGES = "${PN}"
>> +GROUPADD_PARAM_${PN} = "--system ${TSS_USER}"
>> +USERADD_PARAM_${PN} = "--system -g ${TSS_GROUP} --home-dir  \
>> +    --no-create-home  --shell /bin/false ${BPN}"
>> +
>> +RDEPENDS_${PN} = "libtpm expect socat bash”
> This probably should be +=
>
>> --
>> 2.7.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


