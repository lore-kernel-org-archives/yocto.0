Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06ACFE00C76; Tue,  8 May 2018 22:42:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38580E009AC
	for <yocto@yoctoproject.org>; Tue,  8 May 2018 22:42:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w495g1NV016753
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 8 May 2018 22:42:02 -0700 (PDT)
Received: from [128.224.162.137] (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Tue, 8 May 2018 22:42:00 -0700
To: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <mnhu@prevas.dk>,
	<yocto@yoctoproject.org>
References: <1523608703-21616-1-git-send-email-yi.zhao@windriver.com>
	<84d22c37-2d4a-424e-25a5-b36b6eee9334@prevas.dk>
From: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <aa45f960-5073-c73b-e8dc-d52da1f1b23c@windriver.com>
Date: Wed, 9 May 2018 13:41:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <84d22c37-2d4a-424e-25a5-b36b6eee9334@prevas.dk>
X-Originating-IP: [128.224.162.137]
Subject: Re: [meta-selinux][PATCH 1/3] libselinux: refresh patches to fix QA warning
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
X-List-Received-Date: Wed, 09 May 2018 05:42:13 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Martin,


在 2018年04月16日 14:07, Martin Hundebøll 写道:
> Hi Yi,
>
> On 2018-04-13 10:38, Yi Zhao wrote:
>> Refresh patches with devtool command to fix do_patch warning.
>>
>> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>> ---
>>   ...c-Makefile-fix-includedir-in-libselinux.pc.patch | 14 
>> ++++++--------
>>   .../libselinux-define-FD_CLOEXEC-as-necessary.patch | 14 
>> ++++++--------
>>   ...ibselinux-drop-Wno-unused-but-set-variable.patch | 21 
>> +++++++++++++++------
>>   .../libselinux-make-O_CLOEXEC-optional.patch        | 12 +++++-------
>>   .../libselinux-make-SOCK_CLOEXEC-optional.patch     | 14 
>> ++++++--------
>>   5 files changed, 38 insertions(+), 37 deletions(-)
>>
>> diff --git 
>> a/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch 
>> b/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch 
>>
>> index 72b97df..c1d2b13 100644
>> --- 
>> a/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
>> +++ 
>> b/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
>> @@ -1,4 +1,4 @@
>> -From 63d2c02a4dfa5ccd5d62a9f80b6a50cbb9946fbb Mon Sep 17 00:00:00 2001
>> +From c5bec43d3fae49e36997884448fc533462028b67 Mon Sep 17 00:00:00 2001
>>   From: Robert Yang <liezhi.yang@windriver.com>
>>   Date: Thu, 18 Feb 2016 02:39:16 +0000
>>   Subject: [PATCH] src/Makefile: fix includedir in libselinux.pc
>> @@ -6,23 +6,21 @@ Subject: [PATCH] src/Makefile: fix includedir in 
>> libselinux.pc
>>   Upstream-Status: Pending
>>     Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
>> +
>>   ---
>>    src/Makefile | 2 +-
>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>     diff --git a/src/Makefile b/src/Makefile
>> -index 1920029..06d291d 100644
>> +index a89c0f7..f304032 100644
>>   --- a/src/Makefile
>>   +++ b/src/Makefile
>> -@@ -115,7 +115,7 @@ $(LIBSO): $(LOBJS)
>> -     ln -sf $@ $(TARGET)
>> +@@ -148,7 +148,7 @@ $(LIBSO): $(LOBJS)
>> +     ln -sf $@ $(TARGET)
>>       $(LIBPC): $(LIBPC).in ../VERSION
>>   -    sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; 
>> s:@libdir@:$(LIBBASE):; s:@includedir@:$(INCLUDEDIR):' < $< > $@
>>   +    sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; 
>> s:@libdir@:$(LIBBASE):; s:@includedir@:${prefix}/include:' < $< > $@
>>       selinuxswig_python_exception.i: ../include/selinux/selinux.h
>> -     bash exception.sh > $@
>> ---
>> -2.5.0
>> -
>> +     bash -e exception.sh > $@ || (rm -f $@ ; false)
>> diff --git 
>> a/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch 
>> b/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch 
>>
>> index 1fa1fba..d2a362e 100644
>> --- 
>> a/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch
>> +++ 
>> b/recipes-security/selinux/libselinux/libselinux-define-FD_CLOEXEC-as-necessary.patch
>> @@ -1,7 +1,7 @@
>> -From 9a843a025fb0eaad537eb9dce28da539cf2cb9c2 Mon Sep 17 00:00:00 2001
>> +From 967beb17658f3f879a2b8640e40c0675e814a257 Mon Sep 17 00:00:00 2001
>>   From: Joe MacDonald <joe.macdonald@windriver.com>
>>   Date: Tue, 15 Oct 2013 10:14:41 -0400
>> -Subject: [PATCH 2/3] libselinux: define FD_CLOEXEC as necessary
>> +Subject: [PATCH] libselinux: define FD_CLOEXEC as necessary
>>     In truly old systems, even FD_CLOEXEC may not be defined. Produce a
>>   warning and duplicate the #define for FD_CLOEXEC found in
>> @@ -10,15 +10,16 @@ asm-generic/fcntl.h on more modern platforms.
>>   Uptream-Status: Inappropriate
>>     Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
>> +
>>   ---
>> - libselinux/src/setrans_client.c |    5 +++++
>> + src/setrans_client.c | 5 +++++
>>    1 file changed, 5 insertions(+)
>>     diff --git a/src/setrans_client.c b/src/setrans_client.c
>> -index f9065bd..e07a779 100644
>> +index fa188a8..a94f02c 100644
>>   --- a/src/setrans_client.c
>>   +++ b/src/setrans_client.c
>> -@@ -38,6 +38,11 @@ static pthread_key_t destructor_key;
>> +@@ -39,6 +39,11 @@ static pthread_key_t destructor_key;
>>    static int destructor_key_initialized = 0;
>>    static __thread char destructor_initialized;
>>    @@ -30,6 +31,3 @@ index f9065bd..e07a779 100644
>>    /*
>>     * setransd_open
>>     *
>> ---
>> -1.7.10.4
>> -
>
> The above patch looks pretty much like a no-op?

Sorry that I missed your mail a long time.
I used devtool finish --force-patch-refresh <recipe> <layer_path> to 
refresh the patches. This command would adjust all patches for the 
recipe. Although some of patches don't cause the QA warning, the devtool 
command also refresh them follow its rules. This is harmless and make 
all patches have uniform format.

Regards,
Yi



>
>> diff --git 
>> a/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch 
>> b/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch 
>>
>> index 9deb67d..20c0c69 100644
>> --- 
>> a/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch
>> +++ 
>> b/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-set-variable.patch
>> @@ -1,17 +1,26 @@
>> -Subject: libselinux: drop flag: -Wno-unused-but-set-variable
>> +From 1312096e1d9d5c9963f18208ced54b63b7e5d9a7 Mon Sep 17 00:00:00 2001
>> +From: Randy MacLeod <Randy.MacLeod@windriver.com>
>> +Date: Tue, 30 Apr 2013 17:28:34 -0400
>> +Subject: [PATCH] libselinux: drop flag: -Wno-unused-but-set-variable
>>     Upstream status: inappropriate (older compilers only).
>>     Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
>>   ---- libselinux-2.1.12.orig/src/Makefile
>> -+++ libselinux-2.1.12/src/Makefile
>> -@@ -79,7 +79,7 @@
>> +---
>> + src/Makefile | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +diff --git a/src/Makefile b/src/Makefile
>> +index 2408fae..a89c0f7 100644
>> +--- a/src/Makefile
>> ++++ b/src/Makefile
>> +@@ -96,7 +96,7 @@ PCRE_LDLIBS ?= -lpcre
>>    - override CFLAGS += -I../include -I$(INCLUDEDIR) -D_GNU_SOURCE 
>> -D_FILE_OFFSET_BITS=64 $(EMFLAGS)
>> + override CFLAGS += -I../include -D_GNU_SOURCE $(DISABLE_FLAGS) 
>> $(PCRE_CFLAGS)
>>      -SWIG_CFLAGS += -Wno-error -Wno-unused-variable 
>> -Wno-unused-but-set-variable -Wno-unused-parameter \
>>   +SWIG_CFLAGS += -Wno-error -Wno-unused-variable 
>> -Wno-unused-parameter \
>>            -Wno-shadow -Wno-uninitialized -Wno-missing-prototypes 
>> -Wno-missing-declarations
>>    - RANLIB=ranlib
>> + RANLIB ?= ranlib
>> diff --git 
>> a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch 
>> b/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch 
>>
>> index a041dd3..2d48deb 100644
>> --- 
>> a/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
>> +++ 
>> b/recipes-security/selinux/libselinux/libselinux-make-O_CLOEXEC-optional.patch
>> @@ -1,7 +1,7 @@
>> -From 0a8c1c5f3d866d3a3c0f95653416f5f72587ce3a Mon Sep 17 00:00:00 2001
>> +From dec50b2504dedc0d13b24b7e7815cc1294249215 Mon Sep 17 00:00:00 2001
>>   From: Joe MacDonald <joe.macdonald@windriver.com>
>>   Date: Fri, 11 Oct 2013 09:56:25 -0400
>> -Subject: [PATCH 2/2] libselinux: make O_CLOEXEC optional
>> +Subject: [PATCH] libselinux: make O_CLOEXEC optional
>>     Various commits in the selinux tree in the current release added 
>> O_CLOEXEC
>>   to open() calls in an attempt to address file descriptor leaks as
>> @@ -18,6 +18,7 @@ Uptream-Status: Inappropriate [O_CLOEXEC has been 
>> in Linux since 2007 and POSIX
>>     Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
>>   Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>> +
>>   ---
>>    src/procattr.c  | 16 ++++++++++++++--
>>    src/sestatus.c  |  8 +++++++-
>> @@ -25,7 +26,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>>    3 files changed, 28 insertions(+), 4 deletions(-)
>>     diff --git a/src/procattr.c b/src/procattr.c
>> -index 7efcd7e..3007876 100644
>> +index 48dd8af..8bf8432 100644
>>   --- a/src/procattr.c
>>   +++ b/src/procattr.c
>>   @@ -79,7 +79,13 @@ static int openattr(pid_t pid, const char *attr, 
>> int flags)
>> @@ -78,7 +79,7 @@ index ed29dc5..0cb15b6 100644
>>            goto error;
>>      diff --git a/src/stringrep.c b/src/stringrep.c
>> -index 2dbec2b..de2a70b 100644
>> +index 2d83f96..17e9232 100644
>>   --- a/src/stringrep.c
>>   +++ b/src/stringrep.c
>>   @@ -105,7 +105,13 @@ static struct discover_class_node * 
>> discover_class(const char *s)
>> @@ -96,6 +97,3 @@ index 2dbec2b..de2a70b 100644
>>            if (fd < 0)
>>                goto err4;
>>    ---
>> -2.7.4
>> -
>
> The above one too?
>
>> diff --git 
>> a/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch 
>> b/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch 
>>
>> index 14f0ce9..95735b9 100644
>> --- 
>> a/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch
>> +++ 
>> b/recipes-security/selinux/libselinux/libselinux-make-SOCK_CLOEXEC-optional.patch
>> @@ -1,7 +1,7 @@
>> -From 193d42c8312cb8b189745696065b3aa5bbcc6968 Mon Sep 17 00:00:00 2001
>> +From 667f8670560d122ba9cff96e1b3ac9e9fad201eb Mon Sep 17 00:00:00 2001
>>   From: Joe MacDonald <joe.macdonald@windriver.com>
>>   Date: Tue, 15 Oct 2013 10:07:43 -0400
>> -Subject: [PATCH 1/3] libselinux: make SOCK_CLOEXEC optional
>> +Subject: [PATCH] libselinux: make SOCK_CLOEXEC optional
>>     libselinux/src/setrans_client.c checks for the existence of 
>> SOCK_CLOEXEC
>>   before using it, however libselinux/src/avc_internal.c does not.  
>> Since
>> @@ -12,12 +12,13 @@ way.
>>   Uptream-Status: Inappropriate
>>     Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
>> +
>>   ---
>> - libselinux/src/avc_internal.c |    8 +++++++-
>> + src/avc_internal.c | 8 +++++++-
>>    1 file changed, 7 insertions(+), 1 deletion(-)
>>   -diff --git a/src/avc_internal.c b/libselinux/src/avc_internal.c
>> -index f735e73..eb0599a 100644
>> +diff --git a/src/avc_internal.c b/src/avc_internal.c
>> +index 49cecc9..148cc83 100644
>>   --- a/src/avc_internal.c
>>   +++ b/src/avc_internal.c
>>   @@ -60,7 +60,13 @@ int avc_netlink_open(int blocking)
>> @@ -35,6 +36,3 @@ index f735e73..eb0599a 100644
>>        if (fd < 0) {
>>            rc = fd;
>>            goto out;
>> ---
>> -1.7.10.4
>> -
>>
>
> And the last one too?
>
> // Martin


