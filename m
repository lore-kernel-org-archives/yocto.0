Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6402DE00D46; Tue, 18 Oct 2016 08:35:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0315E00D35
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 08:35:45 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id 128so15453258pfz.1
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 08:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=acxYLkkhq61nBfWKfGfBrarY4muNAl2mdMsCROj83XQ=;
	b=ghxv3s/jBHREO5yzkQYtcsqeoSxg6+PUUgdh5VCzd6q03mnLrZvO/0IF1eKyPa7hy9
	2zF228605hzKJ42cH05S2/UvPlJCkaMnSdxGfTdhQgB5mxEVJoTplueOUt9FkzYiZb61
	DyuYFL+YNAWTXHynTkiTk8JDv9gTX3tcEj5/GqWLszqMNjulj+faEIV0MxyIQzUxwRjE
	FQBL6Rz/OZxDRM+82MoJj1wwIAUCWpAACg39sD0ySVIKf5JdKyB6o9flCRVn2w5HMWlx
	TXBshznUvfQGdmwig4ulK/qrhC2X/8n/rA7jT6QElevUYGUfpIYFMb0CJ3dNO/agtPg2
	GUfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=acxYLkkhq61nBfWKfGfBrarY4muNAl2mdMsCROj83XQ=;
	b=NtgPcZpGKIkWKFr+5Y5y/3qm2i8D/9pk6IEGAbUbHL/TXuUtYtZW3o6CKT8LVWK3O+
	pa/ywZj1mZvvi/VMdVlwHZjt/baigBm7okXOsTYAB9cpMOVfOH2XcNGMPNZCyAhJrlIO
	aiQ4Y8SsCAMmH88KNnF3k71fOe2ujnPBuqGWC09d+V1p5l8+VFFTYbHwxPZlTTDN/GEM
	bKAR10dYb7WiVQjdP/ruzYmRs0Y3NUMBLEF8lyOm8d+22dIquXNVAunpX9JUqBeO7MP9
	i/f1Qoga0eYJ6UQ8pamiss2K6thGzf27t3xUTXQAVk7S5GWnK4QkRPk04qYf7qnpJ37y
	rp0w==
X-Gm-Message-State: AA6/9RniqMCZ8cg2D4Xv+GYihQi0GyIJuzntnoPKO/2aiTChVIkV3xUyUywuolT3C4Oktg==
X-Received: by 10.98.133.21 with SMTP id u21mr1696141pfd.157.1476804945271;
	Tue, 18 Oct 2016 08:35:45 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:5ef:e28f:5dce:e040?
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	f67sm56919298pfg.18.2016.10.18.08.35.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Oct 2016 08:35:44 -0700 (PDT)
To: Andre McCurdy <armccurdy@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-4-git-send-email-akuster808@gmail.com>
	<CAJ86T=UUCdy+P6r_dKt1ErR19rKgCw5cNRDN-WEgCjhDXo-A1w@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <d0087161-932e-4621-c46d-b53113901979@gmail.com>
Date: Tue, 18 Oct 2016 08:35:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CAJ86T=UUCdy+P6r_dKt1ErR19rKgCw5cNRDN-WEgCjhDXo-A1w@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 18 Oct 2016 15:35:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/17/2016 09:14 PM, Andre McCurdy wrote:
> On Mon, Oct 17, 2016 at 5:02 PM, Armin Kuster <akuster808@gmail.com> wrote:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>   recipes-tpm/swtpm/files/fix_lib_search_path.patch | 41 +++++++++++++++++++++++
>>   recipes-tpm/swtpm/swtpm_1.0.bb                    | 38 +++++++++++++++++++++
>>   2 files changed, 79 insertions(+)
>>   create mode 100644 recipes-tpm/swtpm/files/fix_lib_search_path.patch
>>   create mode 100644 recipes-tpm/swtpm/swtpm_1.0.bb
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
>> +SECTION = "tpm"
>> +
>> +DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm-native"
>> +
>> +SRCREV = "2cd10cee2f74c84bda22081514b6b2cb566fa42d"
>> +SRC_URI = "git://github.com/stefanberger/swtpm.git \
>> +          file://fix_lib_search_path.patch"
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
> linselinux -> libselinux

ok.

Thanks for the review.

- Armin
>
>> +
>> +CACHED_CONFIGUREVARS = "ac_cv_path_EXPECT=${STAGING_LIBDIR} \
>> +ac_cv_path_SOCAT=${STAGING_LIBDIR} "
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
>> +RDEPENDS_${PN} = "libtpm expect socat bash"
>> --
>> 2.7.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


