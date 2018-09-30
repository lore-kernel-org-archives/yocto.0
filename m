Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4217CE00ADF; Sat, 29 Sep 2018 19:40:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8745EE0097C
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2018 19:40:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w8U2e7QG011664
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sat, 29 Sep 2018 19:40:07 -0700 (PDT)
Received: from [128.224.162.228] (128.224.162.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Sat, 29 Sep 2018 19:40:07 -0700
To: Bruce Ashfield <bruce.ashfield@windriver.com>, <yocto@yoctoproject.org>
References: <1538213181-18700-1-git-send-email-changqing.li@windriver.com>
	<f4d4b8c2-36cd-701a-c0ed-cc4ec423da6c@windriver.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <8a195d27-eb43-6b65-c1ae-5412dd9cf671@windriver.com>
Date: Sun, 30 Sep 2018 10:40:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <f4d4b8c2-36cd-701a-c0ed-cc4ec423da6c@windriver.com>
X-Originating-IP: [128.224.162.228]
Subject: Re: [PATCH][meta-virtualization] docker-distribution: fix do package qa warning
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
X-List-Received-Date: Sun, 30 Sep 2018 02:40:12 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 09/30/2018 01:12 AM, Bruce Ashfield wrote:
> These are all to the wrong mailing list, please resend them
> to the meta-virtualization list.

OK.
>
> On 2018-09-29 5:26 AM, changqing.li@windriver.com wrote:
>> From: Changqing Li <changqing.li@windriver.com>
>>
>> fix below warning:
>>
>> 1.do_package_qa: QA Issue: No GNU_HASH in the elf binary: 
>> xxx/usr/sbin/registry' [ldflags]
>> 2.do_package_qa: QA Issue: ELF binary 'xxx/usr/sbin/registry'
>> has relocations in .text [textrel]
>
> These need to be 2 separate patches on the resend.
>
> Bruce

Got it.

//Sandy

>
>>
>> Add GOBUILDFLAGS which have -buildmode=pie to fix the second problem
>>
>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
>> ---
>>   .../docker-distribution/docker-distribution_git.bb |  3 +-
>>   .../files/0001-fix-do_package_qa-error.patch       | 32 
>> ++++++++++++++++++++++
>>   2 files changed, 34 insertions(+), 1 deletion(-)
>>   create mode 100644 
>> recipes-containers/docker-distribution/files/0001-fix-do_package_qa-error.patch
>>
>> diff --git 
>> a/recipes-containers/docker-distribution/docker-distribution_git.bb 
>> b/recipes-containers/docker-distribution/docker-distribution_git.bb
>> index add5ce1..23d94c9 100644
>> --- a/recipes-containers/docker-distribution/docker-distribution_git.bb
>> +++ b/recipes-containers/docker-distribution/docker-distribution_git.bb
>> @@ -6,6 +6,7 @@ LIC_FILES_CHKSUM = 
>> "file://LICENSE;md5=d2794c0df5b907fdace235a619d80314"
>>   SRCREV_distribution="48294d928ced5dd9b378f7fd7c6f5da3ff3f2c89"
>>   SRC_URI = 
>> "git://github.com/docker/distribution.git;branch=release/2.6;name=distribution;destsuffix=git/src/github.com/docker/distribution 
>> \
>>              file://docker-registry.service \
>> +           file://0001-fix-do_package_qa-error.patch \
>>             "
>>     PACKAGES =+ "docker-registry"
>> @@ -57,7 +58,7 @@ do_install() {
>>   }
>>     INSANE_SKIP_${PN} += "ldflags already-stripped"
>> -INSANE_SKIP_docker-registry += "ldflags already-stripped"
>> +INSANE_SKIP_${MLPREFIX}docker-registry += "ldflags already-stripped"
>>     FILES_docker-registry = "${sbindir}/*"
>>   FILES_docker-registry += 
>> "${systemd_unitdir}/system/docker-registry.service"
>> diff --git 
>> a/recipes-containers/docker-distribution/files/0001-fix-do_package_qa-error.patch 
>> b/recipes-containers/docker-distribution/files/0001-fix-do_package_qa-error.patch 
>>
>> new file mode 100644
>> index 0000000..269b0cd
>> --- /dev/null
>> +++ 
>> b/recipes-containers/docker-distribution/files/0001-fix-do_package_qa-error.patch
>> @@ -0,0 +1,32 @@
>> +From 4b9d701fabff8e7969db081406d00fa9fe46b3fd Mon Sep 17 00:00:00 2001
>> +From: Changqing Li <changqing.li@windriver.com>
>> +Date: Thu, 27 Sep 2018 11:05:51 +0800
>> +Subject: [PATCH] fix do_package_qa error
>> +
>> +fix below error:
>> +do_package_qa: QA Issue: ELF binary 'xxx/usr/sbin/registry'
>> +has relocations in .text [textrel]
>> +
>> +Upstream-Status: Inappropriate [oe-specific]
>> +
>> +Signed-off-by: Changqing Li <changqing.li@windriver.com>
>> +---
>> + Makefile | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +diff --git a/Makefile b/Makefile
>> +index 47b8f1d..13b0f92 100644
>> +--- a/Makefile
>> ++++ b/Makefile
>> +@@ -39,7 +39,7 @@ GODEP=$(shell which godep || echo '')
>> +
>> + ${PREFIX}/bin/registry: $(GOFILES)
>> +     @echo "+ $@"
>> +-    @go build -tags "${DOCKER_BUILDTAGS}" -o $@ ${GO_LDFLAGS} 
>> ${GO_GCFLAGS} ./cmd/registry
>> ++    @go build -tags "${DOCKER_BUILDTAGS}" -o $@ ${GO_LDFLAGS} 
>> ${GOBUILDFLAGS} ${GO_GCFLAGS} ./cmd/registry
>> +
>> + ${PREFIX}/bin/digest:  $(GOFILES)
>> +     @echo "+ $@"
>> +--
>> +2.7.4
>> +
>>
>
>

-- 
BRs

Sandy(Li Changqing)
Wind River Linux


