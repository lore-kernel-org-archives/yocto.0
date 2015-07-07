Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03000E00957; Tue,  7 Jul 2015 13:26:38 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10260E006C6
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 13:26:35 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t67KQW0M008925
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 7 Jul 2015 13:26:32 -0700 (PDT)
Received: from server.local (128.224.21.97) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 7 Jul 2015 13:26:31 -0700
Message-ID: <559C35F6.7060708@windriver.com>
Date: Tue, 7 Jul 2015 16:26:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Gorny Krystian <krystian.gorny@wipotec.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <10D57FBA9FD7C14FB49EE17590E1AF9453C8FA0A@svr-exc-03.intern.wipotec.de>
	<559BFEB1.5050205@windriver.com>
In-Reply-To: <559BFEB1.5050205@windriver.com>
Subject: Re: Creating image with genericx86 machine and RT-Preempt Patch
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
X-List-Received-Date: Tue, 07 Jul 2015 20:26:38 -0000
X-Groupsio-MsgNum: 25381
Content-Type: multipart/mixed; boundary="------------070000000601090206000505"

--------------070000000601090206000505
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-07-07 12:30 PM, Bruce Ashfield wrote:
> On 2015-07-07 7:56 AM, Gorny Krystian wrote:
>> Hi,
>>
>> I try to build an image for a x86 architecture with RT-Preemtp Patch. So
>> I use the genericx86 machine and try to build the core-image-rt recipe.
>> This fails with the following errors:
>>
>> /> ERROR: Nothing PROVIDES 'linux-yocto-rt' (but
>> /media/disk/myYocto/poky/meta/recipes-rt/images/core-image-rt.bb DEPENDS
>> on or otherwise requires it)/
>>
>> /> ERROR: linux-yocto-rt was skipped: incompatible with machine
>> genericx86 (not in COMPATIBLE_MACHINE)/
>>
>> /> ERROR: Required build target 'core-image-rt' has no buildable
>> providers./
>>
>> /> Missing or unbuildable dependency chain was: ['core-image-rt',
>> 'linux-yocto-rt']/
>>
>> So I add the following parameter to my local.conf file:
>>
>> /> COMPATIBLE_MACHINE_genericx86 = "genericx86"/
>>
>> /> COMPATIBLE_MACHINE_quilt-native = "genericx86"/
>>
>> /> PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"/
>>
>> But I get this error:
>>
>> /> ERROR: Task 80
>> (/media/disk/myYocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.14.bb,
>>
>> do_compile) failed with exit code '1'/
>>
>> In the log.do_compile file I see:
>>
>> /> NOTE: make -j 4 bzImage CC=i686-poky-linux-gcc
>> LD=i686-poky-linux-ld.bfd/
>>
>> /> make[3]: Nothing to be done for `all'./
>>
>> />   CHK     include/config/kernel.release/
>>
>> />   GEN
>> /media/disk/myYocto/poky/build/tmp/work/genericx86-poky-linux/linux-yocto-rt/3.14.36+gitAUTOINC+a996d95104_3428de7103-r0/linux-genericx86preempt-$/
>>
>>
>> />   CHK     include/generated/uapi/linux/version.h/
>>
>> />   CHK     include/generated/utsrelease.h/
>>
>> />   HOSTCC  scripts/conmakehash/
>>
>> />   HOSTCC  scripts/sortextable/
>>
>> />   CC      scripts/mod/empty.o/
>>
>> />
>> /media/disk/myYocto/poky/build/tmp/work-shared/genericx86/kernel-source/scripts/mod/empty.c:1:0:
>>
>> error: code model 'kernel' not supported in the 32 bit >mode/
>>
>> />  /* empty file to figure out endianness / word size *//
>>
>> />  ^/
>>
>> />
>> /media/disk/myYocto/poky/build/tmp/work-shared/genericx86/kernel-source/scripts/mod/empty.c:1:0:
>>
>> sorry, unimplemented: 64-bit mode not compiled in/
>>
>> /> make[4]: *** [scripts/mod/empty.o] Error 1/
>>
>> /> make[4]: *** Waiting for unfinished jobs..../
>>
>> />   HOSTCC  scripts/mod/mk_elfconfig/
>>
>> /> make[3]: *** [scripts/mod] Error 2/
>>
>> /> make[3]: *** Waiting for unfinished jobs..../
>>
>> /> make[2]: *** [scripts] Error 2/
>>
>> /> make[1]: *** [sub-make] Error 2/
>>
>> /> make: *** [all] Error 2/
>>
>> /> ERROR: oe_runmake failed/
>>
>> /> WARNING: exit code 1 from a shell command./
>>
>> I already tried genericx86_64 machine and it’s still not working. Are
>> the genericx86 machine incompatible with the core-image-rt recipy? If
>> yes how can I build a x86 image with the RT patch?
>
> What you did should have worked, since we do map the genericx86 BSP onto
> one of the configurations that supports preempt-rt.
>
> It looks like a compile error has crept in .. I'll start a build and see
> if it is indeed broken at the moment (and then I can fix it).
>

Assuming you are building with yocto/poky, you need the following patch.
(note: this is configure tested only).

Since without this bbappend, we don't have genericx86 mapped to a valid
linux-yocto BSP and commit hash.

I'll be sending this change for merging into the project shortly.

Cheers,

Bruce

> Bruce
>
>>
>> Many Thanks
>>
>>
>> _____________________________________________________________________
>>
>> *Krystian Gorny*
>> Research & Development
>>
>> Wipotec GmbH
>> Adam-Hoffmann-Str. 26
>> 67657 Kaiserslautern
>>
>> T +49.631.34146-0
>> F +49.631.34146-8640
>> http://www.wipotec.com
>>
>>
>>
>> <http://www.wipotec.com>
>>
>> Legal information:
>> Wipotec Wiege- und Positioniersysteme GmbH
>> HRB 2317 Kaiserslautern, Management: T. Düppre, U. Wagner
>>
>> This e-mail may contain confidential and/or privileged information.
>> If you are not the intended recipient (or have received this e-mail in
>> error)
>> please notify the sender immediately and delete this e-mail. Any
>> unauthorized
>> copying, disclosure or distribution of the material in this e-mail is
>> strictly
>> forbidden.
>>
>>
>


--------------070000000601090206000505
Content-Type: application/mbox;
	name="0001-yocto-bsps-add-3.14-rt-configuration.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="0001-yocto-bsps-add-3.14-rt-configuration.patch"

RnJvbSA0Yzc2NGJkNzI2NTdjZTY0MjM1ZDAzODljN2Q3ZGNlMWYzZDI5ZTFhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBCcnVjZSBBc2hmaWVsZCA8YnJ1Y2UuYXNoZmllbGRAd2luZHJp
dmVyLmNvbT4KRGF0ZTogVHVlLCA3IEp1bCAyMDE1IDE2OjIyOjM5IC0wNDAwClN1YmplY3Q6IFtQ
QVRDSF0geW9jdG8tYnNwczogYWRkIDMuMTQtcnQgY29uZmlndXJhdGlvbgoKVG8gZW5hYmxlIHBy
ZWVtcHQtcnQgZm9yIHRoZSBoL3cgcmVmZXJlbmNlIGJvYXJkcywgd2UgY2FuIGNyZWF0ZSBhCmJi
YXBwZW5kIHRoYXQgc2V0cyB0aGUgS01BQ0hJTkUgbWFwcGluZ3MgYW5kIHZhbGlkIGhhc2hlcy4K
CkN1cnJlbnRseSBvbmx5IGdlbmVyaWN4ODYqIGlzIGVuYWJsZWQuIE90aGVyIGJvYXJkcyBjYW4g
YmUgYWRkZWQKb25jZSB2YWxpZGF0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBCcnVjZSBBc2hmaWVsZCA8
YnJ1Y2UuYXNoZmllbGRAd2luZHJpdmVyLmNvbT4KLS0tCiAuLi4vcmVjaXBlcy1rZXJuZWwvbGlu
dXgvbGludXgteW9jdG8tcnRfMy4xNC5iYmFwcGVuZCAgICAgICAgIHwgMTEgKysrKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgbWV0
YS15b2N0by1ic3AvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG8tcnRfMy4xNC5iYmFw
cGVuZAoKZGlmZiAtLWdpdCBhL21ldGEteW9jdG8tYnNwL3JlY2lwZXMta2VybmVsL2xpbnV4L2xp
bnV4LXlvY3RvLXJ0XzMuMTQuYmJhcHBlbmQgYi9tZXRhLXlvY3RvLWJzcC9yZWNpcGVzLWtlcm5l
bC9saW51eC9saW51eC15b2N0by1ydF8zLjE0LmJiYXBwZW5kCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAwMC4uNTJmZDA3ZmQ1ZDgxCi0tLSAvZGV2L251bGwKKysrIGIvbWV0
YS15b2N0by1ic3AvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG8tcnRfMy4xNC5iYmFw
cGVuZApAQCAtMCwwICsxLDExIEBACitLQlJBTkNIX2dlbmVyaWN4ODYgID0gInN0YW5kYXJkL2Nv
bW1vbi1wYy9iYXNlIgorS0JSQU5DSF9nZW5lcmljeDg2LTY0ICA9ICJzdGFuZGFyZC9jb21tb24t
cGMtNjQvYmFzZSIKKworS01BQ0hJTkVfZ2VuZXJpY3g4NiA/PSAiY29tbW9uLXBjIgorS01BQ0hJ
TkVfZ2VuZXJpY3g4Ni02NCA/PSAiY29tbW9uLXBjLTY0IgorCitTUkNSRVZfbWFjaGluZV9nZW5l
cmljeDg2ID89ICJiZGExNzU5NjYwMDlkNWE5NDEwMzU1OWU2ZTZhZTUxMjc5OTUyZjM5IgorU1JD
UkVWX21hY2hpbmVfZ2VuZXJpY3g4Ni02NCA/PSAiYmRhMTc1OTY2MDA5ZDVhOTQxMDM1NTllNmU2
YWU1MTI3OTk1MmYzOSIKKworQ09NUEFUSUJMRV9NQUNISU5FX2dlbmVyaWN4ODYgPSAiZ2VuZXJp
Y3g4NiIKK0NPTVBBVElCTEVfTUFDSElORV9nZW5lcmljeDg2LTY0ID0gImdlbmVyaWN4ODYtNjQi
Ci0tIAoyLjEuMAoK

--------------070000000601090206000505--
