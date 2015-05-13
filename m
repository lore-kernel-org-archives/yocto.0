Return-Path: <mario.goulart@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E4D9E00A3F; Wed, 13 May 2015 06:49:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06CA3E007CC
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:49:32 -0700 (PDT)
Received: by qcbgu10 with SMTP id gu10so22407855qcb.2
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 06:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=yqOHpNkkF7CASkaSd9KRyLf6oDd+Ni3m7LHOrqotOps=;
	b=p2w3HZGMt3hKgzHCWPWqpi1Ib+fgc7Ow0yT7v2yZag6a8ZpDNBXMaDnlAgqud1gEzm
	YEKB8AriJ+GQv7FRshOeVy+Zv+DCd8vGc/dW++E+7h/Tga+hPhTQs8M+soTPpn7N6tO0
	PfL/la+ymLfpjLNtaaPTRyYDOHNrGugKTV+4YC2hAvxRyJnoEHdrwh5qNQfuDMF8baA0
	1maPWCDltbnAfkzqMl0GSN7DG9MMkqLjT8V2rGRd885kAHe8mOo1/q2QHLpnucypmW3s
	9ZXEBbGyULB3aEV04WJUcv6Ou2FT3FfeFDNOxNtiWYNUbO+G90+iasNEwq9r6Z5dWpsT
	QV6Q==
X-Received: by 10.55.41.68 with SMTP id p65mr10757400qkh.76.1431524971558;
	Wed, 13 May 2015 06:49:31 -0700 (PDT)
Received: from email.parenteses.org.gmail.com (email.parenteses.org.
	[198.199.72.94]) by mx.google.com with ESMTPSA id
	f91sm15722812qgd.45.2015.05.13.06.49.30
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 May 2015 06:49:31 -0700 (PDT)
Sender: Mario Domenech Goulart <mario.goulart@gmail.com>
From: Mario Domenech Goulart <mario@ossystems.com.br>
To: Maxin John <maxin@maxinbjohn.info>
References: <1431464224-19858-1-git-send-email-mario@ossystems.com.br>
	<CAFicg85wB+c=884wS3yM-7mc4uwGLKw19Gsas4PKuRc5dwB4iQ@mail.gmail.com>
Date: Wed, 13 May 2015 13:49:28 +0000
In-Reply-To: <CAFicg85wB+c=884wS3yM-7mc4uwGLKw19Gsas4PKuRc5dwB4iQ@mail.gmail.com>
	(Maxin John's message of "Wed, 13 May 2015 15:22:15 +0200")
Message-ID: <87y4kssi3b.fsf@email.parenteses.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH 1/6] oracle-jse-jdk: split recipe into per-architecture recipes
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
X-List-Received-Date: Wed, 13 May 2015 13:49:54 -0000
Content-Type: text/plain

On Wed, 13 May 2015 15:22:15 +0200 Maxin John <maxin@maxinbjohn.info> wrote:

> On Tue, May 12, 2015 at 10:56 PM, Mario Domenech Goulart <mario@ossystems.com.br> wrote:
>> Due the way BitBake parses recipes, including architecture-specific
>> include files was happening too late, causing native variants to pick
>> wrong include files, thus ending up generating broken content.
>>
>> Setting COMPATIBLE_HOST guarantees that native installations will be
>> consistent.
>>
>> Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>
>> ---
>>  ...acle-jse-jdk-i586.inc => oracle-jse-jdk-i586_1.7.0.bb} |  2 ++
>>  ...-jse-jdk-x86-64.inc => oracle-jse-jdk-x86-64_1.7.0.bb} |  2 ++
>>  recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb      | 15 ---------------
>>  3 files changed, 4 insertions(+), 15 deletions(-)
>>  rename recipes-devtools/oracle-java/{oracle-jse-jdk-i586.inc => oracle-jse-jdk-i586_1.7.0.bb} (90%)
>>  rename recipes-devtools/oracle-java/{oracle-jse-jdk-x86-64.inc =>
>> oracle-jse-jdk-x86-64_1.7.0.bb} (90%)
>>  delete mode 100644 recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb
>>
>> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-i586.inc
>> b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
>> similarity index 90%
>> rename from recipes-devtools/oracle-java/oracle-jse-jdk-i586.inc
>> rename to recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
>> index 0667161..9fb2188 100644
>> --- a/recipes-devtools/oracle-java/oracle-jse-jdk-i586.inc
>> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.7.0.bb
>> @@ -7,3 +7,5 @@ SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b${BUILD_N
>>
>>  SRC_URI[md5sum] = "715b0e8ba2a06bded75f6a92427e2701"
>>  SRC_URI[sha256sum] = "b6231064ad2c9fbbcb099dba17b1dcf12033e922b9c24e4348b9a01e9ebaa85c"
>> +
>> +COMPATIBLE_HOST = "(i586-linux)"
>> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64.inc
>> b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
>> similarity index 90%
>> rename from recipes-devtools/oracle-java/oracle-jse-jdk-x86-64.inc
>> rename to recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
>> index f18ce55..a6d0bc7 100644
>> --- a/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64.inc
>> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.7.0.bb
>> @@ -7,3 +7,5 @@ SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/7u${PV_UPDATE}-b${BUILD_N
>>
>>  SRC_URI[md5sum] = "81e3e2df33e13781e5fac5756ed90e67"
>>  SRC_URI[sha256sum] = "54dd1e13edf18c64941a55da9c91210b53dc5cf48f1a8f4538c863049e346335"
>> +
>> +COMPATIBLE_HOST = "(x86_64-linux)"
>> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb
>> b/recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb
>> deleted file mode 100644
>> index 56d84b6..0000000
>> --- a/recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb
>> +++ /dev/null
>> @@ -1,15 +0,0 @@
>> -# Automatically choose java package based on target architecture
>> -def get_java_pkg(d):
>> -       TA = d.getVar('TARGET_ARCH', True)
>> -       if TA == "i586":
>> -               javaPkg = "oracle-jse-jdk-i586"
>> -       elif TA == "x86_64":
>> -               javaPkg = "oracle-jse-jdk-x86-64"
>> -       else:
>> - raise bb.parse.SkipPackage("The target architecture '%s' is not
>> supported by the meta-oracle-java layer" %TA)
>> -
>> -       return javaPkg
>> -
>> -JAVA_PKG = "${@get_java_pkg(d)}"
>> -
>> -require ${JAVA_PKG}.inc
>
>
> This change results in the below listed error:
>
> # bitbake oracle-jse-jdk-x86-64
>
> ERROR: Nothing PROVIDES 'oracle-jse-jdk-x86-64'
> ERROR: oracle-jse-jdk-x86-64 was skipped: incompatible with host
> x86_64-poky-linux (not in COMPATIBLE_HOST)
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> The COMPATIBLE_HOST should be "x86_64.*-linux". Please fix it.

Thanks for spotting that, Maxin.  I've submitted a v2.

Best wishes.
Mario
-- 
http://www.ossystems.com.br

