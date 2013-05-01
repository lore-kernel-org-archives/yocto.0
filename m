Return-Path: <Randy.MacLeod@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAD7AE014C8
	for <yocto@yoctoproject.org>; Wed,  1 May 2013 16:02:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r41N2dQ0016888
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 1 May 2013 16:02:40 -0700 (PDT)
Received: from [128.224.20.55] (128.224.20.55) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 1 May 2013 16:02:38 -0700
Message-ID: <51819F0D.4020607@windriver.com>
Date: Wed, 1 May 2013 19:02:37 -0400
From: Randy MacLeod <randy.macleod@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130404 Thunderbird/17.0.5
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1367378157-8574-1-git-send-email-Randy.MacLeod@windriver.com>
	<DAF195EB-C48B-48DC-A9C5-42A2D4D9F214@gmail.com>
In-Reply-To: <DAF195EB-C48B-48DC-A9C5-42A2D4D9F214@gmail.com>
X-Originating-IP: [128.224.20.55]
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] libsemanage: drop flag: -Wno-unused-but-set-variable
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
X-List-Received-Date: Wed, 01 May 2013 23:02:43 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-05-01 12:12 AM, Khem Raj wrote:
>
> On Apr 30, 2013, at 8:15 PM, Randy MacLeod <randy.macleod@windriver.com> wrote:
>
>> The flag: -Wno-unused-but-set-variable isn't supported on older
>> versions of gcc such as gcc-4.1.2 which is the native compiler for
>> RHEL-5.9. Drop this warning flag for both the native and target builds.
>
>
> why drop from target build ?

I thought I'd have to create a separate -native recipe and
that didn't seem to be worthwhile for this warning flag.

On the other hand, the recipe is tiny so I could fix it up
if you think it's important. Oh and I should fix the _git
version of libselinux too.

// Randy
>
>>
>> Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
>> ---
>> ...semanage-drop-Wno-unused-but-set-variable.patch |   17 +++++++++++++++++
>> recipes-security/selinux/libsemanage_2.1.9.bb      |    6 ++++--
>> recipes-security/selinux/libsemanage_git.bb        |    6 ++++--
>> 3 files changed, 25 insertions(+), 4 deletions(-)
>> create mode 100644 recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
>>
>> diff --git a/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch b/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
>> new file mode 100644
>> index 0000000..faf8fc5
>> --- /dev/null
>> +++ b/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-variable.patch
>> @@ -0,0 +1,17 @@
>> +Subject: libselinux: drop flag: -Wno-unused-but-set-variable
>> +
>> +Upstream status: inappropriate (older compilers only).
>> +
>> +Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
>> +
>> +--- libsemanage-2.1.9.orig/src/Makefile
>> ++++ libsemanage-2.1.9/src/Makefile
>> +@@ -57,7 +57,7 @@
>> + LOBJS= $(patsubst %.c,%.lo,$(SRCS)) conf-scan.lo conf-parse.lo
>> + CFLAGS ?= -Werror -Wall -W -Wundef -Wshadow -Wmissing-noreturn -Wmissing-format-attribute
>> +
>> +-SWIG_CFLAGS += -Wno-error -Wno-unused-but-set-variable -Wno-unused-variable -Wno-shadow \
>> ++SWIG_CFLAGS += -Wno-error -Wno-unused-variable -Wno-shadow \
>> + 		-Wno-unused-parameter
>> +
>> + override CFLAGS += -I../include -I$(INCLUDEDIR) -D_GNU_SOURCE
>> diff --git a/recipes-security/selinux/libsemanage_2.1.9.bb b/recipes-security/selinux/libsemanage_2.1.9.bb
>> index 0e0bc41..3b1d8db 100644
>> --- a/recipes-security/selinux/libsemanage_2.1.9.bb
>> +++ b/recipes-security/selinux/libsemanage_2.1.9.bb
>> @@ -1,4 +1,4 @@
>> -PR = "r0"
>> +PR = "r1"
>>
>> include selinux_20120924.inc
>> include ${BPN}.inc
>> @@ -11,4 +11,6 @@ SRC_URI[sha256sum] = "6f01d17f9751412f7b76e6e7daafeb2faf301b9bfeea83506160c81bec
>> SRC_URI += "\
>> 	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
>> 	file://libsemanage-fix-path-len-limit.patch \
>> -	file://libsemanage-fix-path-nologin.patch"
>> +	file://libsemanage-fix-path-nologin.patch \
>> +	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
>> +	"
>> diff --git a/recipes-security/selinux/libsemanage_git.bb b/recipes-security/selinux/libsemanage_git.bb
>> index 562512c..b3819a0 100644
>> --- a/recipes-security/selinux/libsemanage_git.bb
>> +++ b/recipes-security/selinux/libsemanage_git.bb
>> @@ -1,4 +1,4 @@
>> -PR = "r4"
>> +PR = "r5"
>> PV = "2.1.6+git${SRCPV}"
>>
>> include selinux_git.inc
>> @@ -10,4 +10,6 @@ SRC_URI += "file://Fix-segfault-for-standard-policy.patch \
>> 	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
>> 	file://libsemanage-semanage.conf-for-cross-compile.patch \
>> 	file://libsemanage-fix-path-len-limit.patch \
>> -	file://libsemanage-fix-path-nologin.patch"
>> +	file://libsemanage-fix-path-nologin.patch \
>> +	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
>> +	"
>> --
>> 1.7.4.1
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350

