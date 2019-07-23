Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF0D5E00BD5; Mon, 22 Jul 2019 23:38:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9362E00B8E
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 23:38:40 -0700 (PDT)
Received: by mail-wm1-f65.google.com with SMTP id h19so30338902wme.0
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 23:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=IiJsjOiGgt/9q8p0wP2gPuFxxgjfcAQmKwNppzvwqRA=;
	b=IVd0PCUERCzhbN+Se9POpmkSkeGyz9uuP6aVoO1hPTF9ctzVqD65VffGT09tr0PaYO
	wujnhKO424yOAbSMSsN6QuRUx2jmxq+GYE58vFJCrX5foFhuZzimIjI8qTo38IsmBuvw
	HnTDOgucAA9MpohI1R2lKyw53uOr226t3exppFT1M8tnLXKE3E1uxGg5egcgPdkToOTt
	H/zoID4BQmv57LmZVrL2Eyu4ym/MFxeyV8BSHRaSbtp8r8y+Eenv4+N9rdxjzg5n6Bww
	fqQaayqzPECQIioKsHlRxDar3k4pXjHqUREa1SEchczuNK+V2x1HRste45oPPk+JI/z6
	8EyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=IiJsjOiGgt/9q8p0wP2gPuFxxgjfcAQmKwNppzvwqRA=;
	b=tW4ODnwV5UN5XXt//vImWOlNj+n/lkIvLcFXqUzycZbNf6qh7uer7maKj3pR4cOg+G
	Ne7K8xbz9SAHf3cDEUwQHgyUNLyKocMRmqW7j8Zw0vkzPW3EiPtekU8Izn/H2hFvOIFP
	ZmjW0cW3SDjkOz+Ino1LL+Jsj+wXZeW1QOE5uMjTR87EOc3NA1ATW+sAGtGBG3OEF0Uc
	SLFnvCTibZXNuWB0EmRL2pY+DIT9bvLSF7rb8/A63pfb9xavwWu0KjiK4IF+mKsLGrmD
	hczMKy4EHO8RwQqJhSKxB0iptimSjX5+JB8NL3xDos9JyIGjiuPWlGEf51+/+ko6yr3o
	vBVA==
X-Gm-Message-State: APjAAAX5nFq7SNBJuIyy3hRPoWB4Ck0eC8cezNg7i0Xy98c6cm0lDu62
	2qIaJg2o0X2h6cNGT4dWneIOmraY7g4=
X-Google-Smtp-Source: APXvYqwvcodPMQ5lnJsdZbTO1+SCJMoTVw7466JAXKZGiPAuYrIkPSEEvoAVVIwLOkdt2H4Ohj2GBg==
X-Received: by 2002:a1c:c78d:: with SMTP id x135mr60052042wmf.82.1563863919576;
	Mon, 22 Jul 2019 23:38:39 -0700 (PDT)
Received: from [10.128.163.84] (83-244-233-132.cust-83.exponential-e.net.
	[83.244.233.132]) by smtp.gmail.com with ESMTPSA id
	t63sm34363625wmt.6.2019.07.22.23.38.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 22 Jul 2019 23:38:38 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Akuster808 <akuster808@gmail.com>
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <b893d9fb-74ec-d807-ae8d-ce7830d96ed3@windriver.com>
Date: Tue, 23 Jul 2019 07:38:37 +0100
Message-Id: <0D32C76F-BDC4-432B-BB95-9E8DFA1EA7B2@gmail.com>
References: <20190706233230.2774-1-akuster808@gmail.com>
	<20190706233230.2774-2-akuster808@gmail.com>
	<b893d9fb-74ec-d807-ae8d-ce7830d96ed3@windriver.com>
To: Yi Zhao <yi.zhao@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security-compliance][PATCH 2/4] openscap: add 1.3.1 recipes for upstream source
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
X-List-Received-Date: Tue, 23 Jul 2019 06:38:41 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable



> On Jul 23, 2019, at 02:51, Yi Zhao <yi.zhao@windriver.com> wrote:
>=20
> Hi Armin,
>=20
>=20
> I got the following error when build openscap:
>=20
> ERROR: openscap-git-r0 do_compile_ptest_base: Function failed: do_compile_=
ptest_base (log file is located at /buildarea/build/tmp/work/core2-64-poky-l=
inux/openscap/git-r0/temp/log.do_compile_ptest_base.329146)
> ERROR: Logfile of failure stored in: /buildarea/build/tmp/work/core2-64-po=
ky-linux/openscap/git-r0/temp/log.do_compile_ptest_base.329146
> Log data follows:
> | DEBUG: Executing shell function do_compile_ptest_base
> | /buildarea/build/tmp/work/core2-64-poky-linux/openscap/git-r0/temp/run.d=
o_compile_ptest_base.329146: line 108: oe-runcmake: command not found
> | WARNING: /buildarea/build/tmp/work/core2-64-poky-linux/openscap/git-r0/t=
emp/run.do_compile_ptest_base.329146:1 exit 127 from 'oe-runcmake tests'
> | ERROR: Function failed: do_compile_ptest_base (log file is located at /b=
uildarea/build/tmp/work/core2-64-poky-linux/openscap/git-r0/temp/log.do_comp=
ile_ptest_base.329146)

Thats not good. Thought I had run though this code path. =20

I am traveling the next  2 weeks so i am not sure how quickly I can address t=
his issue.

Armin
>=20
>=20
> //Yi
>=20
>=20
>> On 7/7/19 7:32 AM, Armin Kuster wrote:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>  .../recipes-openscap/openscap/openscap.inc            | 11 +++++------
>>  .../recipes-openscap/openscap/openscap_1.3.1.bb       | 10 ++++++++++
>>  .../recipes-openscap/openscap/openscap_git.bb         |  4 ++--
>>  3 files changed, 17 insertions(+), 8 deletions(-)
>>  create mode 100644 meta-security-compliance/recipes-openscap/openscap/op=
enscap_1.3.1.bb
>>=20
>> diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.=
inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
>> index 4c1f206..e5daaf8 100644
>> --- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
>> +++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
>> @@ -10,10 +10,10 @@ DEPENDS =3D "autoconf-archive dbus acl bzip2 pkgconfi=
g gconf procps curl libxml2 l
>>    DEPENDS_class-native =3D "autoconf-archive-native pkgconfig-native swi=
g-native curl-native libxml2-native libxslt-native dpkg-native libgcrypt-nat=
ive nss-native"
>>  -inherit cmake pkgconfig python3native perlnative ptest
>> -
>>  S =3D "${WORKDIR}/git"
>>  +inherit cmake pkgconfig python3native perlnative ptest
>> +
>>  PACKAGECONFIG ?=3D "python3 rpm perl"
>>  PACKAGECONFIG[python3] =3D "-DENABLE_PYTHON3=3DTrue, , python3, python3"=

>>  PACKAGECONFIG[perl] =3D "-DENABLE_PERL=3DTrue,, perl, perl"
>> @@ -25,7 +25,6 @@ EXTRA_OECONF +=3D "-DENABLE_PROBES_INDEPENDENT=3Dyes -D=
ENABLE_PROBES_LINUX=3Dyes -DWIT
>>                  -DENABLE_OSCAP_UTIL_DOCKER=3Dno \
>>                  "
>>  -EXTRA_OECONF_class-native +=3D "-DENABLE_PROBES=3DTrue"
>>    STAGING_OSCAP_DIR =3D "${TMPDIR}/work-shared/${MACHINE}/oscap-source"
>>  STAGING_OSCAP_BUILDDIR =3D "${TMPDIR}/work-shared/openscap/oscap-build-a=
rtifacts"
>> @@ -33,9 +32,9 @@ STAGING_OSCAP_BUILDDIR =3D "${TMPDIR}/work-shared/opens=
cap/oscap-build-artifacts"
>>  EXTRANATIVEPATH +=3D "chrpath-native"
>>    do_configure_append_class-native () {
>> -    sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGIN=
G_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${S}/config.h
>> -    sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${=
STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${S}/config.h
>> -    sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAG=
ING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${S}/config.h
>> +    sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGIN=
G_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${B}/config.h
>> +    sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${=
STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${B}/config.h
>> +    sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAG=
ING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${B}/config.h
>>  }
>>    do_clean[cleandirs] +=3D " ${STAGING_OSCAP_BUILDDIR}"
>> diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_=
1.3.1.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1=
.bb
>> new file mode 100644
>> index 0000000..c29fd42
>> --- /dev/null
>> +++ b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.1.b=
b
>> @@ -0,0 +1,10 @@
>> +SUMARRY =3D "NIST Certified SCAP 1.2 toolkit"
>> +
>> +require openscap.inc
>> +
>> +SRCREV =3D "3a4c635691380fa990a226acc8558db35d7ebabc"
>> +SRC_URI =3D "git://github.com/OpenSCAP/openscap.git;branch=3Dmaint-1.3 \=

>> +           file://run-ptest \
>> +"
>> +
>> +DEFAULT_PREFERENCE =3D "-1"
>> diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_=
git.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
>> index 3dfa99e..aded920 100644
>> --- a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
>> +++ b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
>> @@ -3,9 +3,9 @@
>>    SUMARRY =3D "NIST Certified SCAP 1.2 toolkit with OE changes"
>>  +include openscap.inc
>> +
>>  SRCREV =3D "4bbdb46ff651f809d5b38ca08d769790c4bfff90"
>>  SRC_URI =3D "git://github.com/akuster/openscap.git;branch=3Doe-1.3 \
>>             file://run-ptest \
>>  "
>> -
>> -include openscap.inc

