Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7AB8E00C72; Fri, 23 Nov 2018 02:45:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ajlennon[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EF03E00A85
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2018 02:45:30 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id k198so11586566wmd.3
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2018 02:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=532HVwhZPRbU/j7SCaVMG7bbly0YFLo7E//iI1bf+Yg=;
	b=ODo93+Aa9r3dalTMnQQOQE6phihMxHqFPvjUuWQ/M65MgIVpbdMk5fA1fZab7+7QSJ
	iMtq1v46uEfDDsnJ3ZCIJyKge1/IsMtZDyur1ooZb1Nx2nE10mPCB6r+DffNenSsxW4x
	4C5p+NrrCHRW6+8x7xX3jkKFhYf2lpf+jgifCLHmu8zxiBKpuFP2XhAVC+/9rxIkaa8q
	mYIEnVZco5j+u97XBS8AD6OlrMRzFlBVQgkVr7njaDQ+ZsCP+Nl4qmI2Hik2HoaQnKH4
	NCkYUORIj4ONhimr5Gd3evC1XCkxZ80ZLcJZZ5nf3vpO2OHTyPn87S4kSfZnGjTocTXN
	2Zyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=532HVwhZPRbU/j7SCaVMG7bbly0YFLo7E//iI1bf+Yg=;
	b=dC+28/UZWo56nqPpwjnwtyfYtY4QQumELh97hfOstb22L4tOE1sLtVSoAhKrcyWIWY
	y1ZUCpSMPcPMckfL0L8nkHjPBSmnsk2ofAUpjW/eWX4rxImTQT5U3FY8vway8Cb35/6k
	QAjGpH/HgtnozaXI1aoKfkaGd4IlRA+ZOZeQWTO24epCHwj9JQ3K3XndU6YA4fQ/fX3p
	X/mLXqsH7OiNNUNfk2vncwv0Lx+KJWzYusfQOarI37E23pOvacOtdvoVbwiLxYRd5g4H
	6rHC3c/bFi3tm6G3RVBTDLpPI6SXrenwpIr71JUEtuoobTPo/m5JWm5Xq8TBYF9oq8Xp
	8eqg==
X-Gm-Message-State: AA+aEWYHPzawCocDUWK8zbZqDvgMSg3HqxvQp6WhcuaOegQpHZUHDT0n
	q0LretmXnma2TYOI63y+wcUjOF2a
X-Google-Smtp-Source: AJdET5fmlGoJgXtx5QkXKmBmKcTr7Tp3NSlhVUwuWRSPIlWplAZsNe9AcatKrgzoKMNY10jyJgOt6w==
X-Received: by 2002:a1c:7e8e:: with SMTP id
	z136mr14120020wmc.140.1542969929018; 
	Fri, 23 Nov 2018 02:45:29 -0800 (PST)
Received: from [172.20.194.30] (sharedmail10.essensys.co.uk. [151.237.232.131])
	by smtp.gmail.com with ESMTPSA id
	e190sm9680374wmf.0.2018.11.23.02.45.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Nov 2018 02:45:28 -0800 (PST)
To: Martin Townsend <mtownsend1973@gmail.com>
References: <CABatt_xbvyTXSAuExyo+oA4UDqfm3pA9nh4cyga6Yoi9BDnahQ@mail.gmail.com>
	<aa68bde4-1427-860d-1cff-c8bd84b2b3eb@gmail.com>
	<CABatt_yJj5n899GkPVM-UKrTvVfWge=HS1LfA3AqGnr4jQbALQ@mail.gmail.com>
From: Alex Lennon <ajlennon@gmail.com>
Message-ID: <68c0f64c-6b5b-79d1-2fca-c38d30c23046@gmail.com>
Date: Fri, 23 Nov 2018 10:45:27 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CABatt_yJj5n899GkPVM-UKrTvVfWge=HS1LfA3AqGnr4jQbALQ@mail.gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: meta-mono: QA Error building mono-5.12.0.226
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
X-List-Received-Date: Fri, 23 Nov 2018 10:45:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB



On 23/11/2018 08:55, Martin Townsend wrote:
> Hi Alex,
> On Thu, Nov 22, 2018 at 3:49 PM Alex J Lennon <ajlennon@gmail.com> wrote:
>>
>> On 22/11/2018 15:46, Martin Townsend wrote:
>>> Hi,
>>>
>>> This one is probably for the meta-mono maintainer
>>>
>>> I was getting quite a few file-rdeps QA errors.
>>> I managed to get rid of them all except 1 using
>>> RDEPENDS_${PN}-libs-2.0 += "mono"
>>> RDEPENDS_${PN}-libs-3.5 += "mono"
>>> RDEPENDS_${PN}-libs-4.0 += "mono"
>>> RDEPENDS_${PN}-libs-4.5 += "mono"
>>> RDEPENDS_${PN}-gac += "mono"
>>> RDEPENDS_${PN}-configuration-crypto += "mono"
>>> RDEPENDS_${PN}-xbuild += "mono"
>>> RDEPENDS_${PN}-api-4.5.1 += "mono"
>>> RDEPENDS_${PN}-api-4.5.2 += "mono"
>>> RDEPENDS_${PN}-api-4.6 += "mono"
>>> RDEPENDS_${PN}-api-4.6.1 += "mono"
>>> RDEPENDS_${PN}-api-4.6.2 += "mono"
>>> RDEPENDS_${PN}-api-4.7 += "mono"
>>>
>>> The one remaining is
>>>
>>> ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
>>> /usr/lib/mono/4.5/Microsoft.CodeAnalysis.Scripting.dll contained in
>>> package mono-libs-4.5 requires mono(System.Runtime.Loader), but no
>>> providers found in RDEPENDS_mono-libs-4.5? [file-rdeps]
>>> ERROR: mono-5.12.0.226-r0 do_package_qa: QA run found fatal errors.
>>> Please consider fixing them.
>>> ERROR: mono-5.12.0.226-r0 do_package_qa: Function failed: do_package_qa
>>> ERROR: Logfile of failure stored in:
>>> /ws/rufilla/oina/tools-oina-build-local/build_oxinst/tmp/work/armv7ahf-neon-poky-linux-gnueabi/mono/5.12.0.226-r0/temp/log.do_package_qa.15001
>>> ERROR: Task (/ws/rufilla/oina/tools-oina-build-local/build_oxinst/../meta-mono/recipes-mono/mono/mono_5.12.0.226.bb:do_package_qa)
>>> failed with exit code '1'
>>>
>>> It looks like the 4.5 lib package requires the System.Runtime.Loader
>>> library but I'm not sure how to get it to build this or I see there is
>>> an external directory which looks like it contains all the 4.5 libs so
>>> maybe it hasn't been included in here?
>>>
>>> Any Help appreciated,
>>> Martin.
>> Hi Martin,
>>
>> I've been doing some recent work here which might help
>>
>> https://github.com/dynamicdevices/meta-mono/tree/master
>>
>> Cheers,
>>
>> Alex
>>
>>
> Thanks for the reply Alex.
>
> I tried this meta-mono layer too but it failed to compile/link
> | ../../external/corefx/src/Native/Unix/System.Native/.libs/libmono_system_native_la-pal_errno.o:
> file not recognized: File format not recognized
> | collect2: error: ld returned 1 exit status
> | Makefile:1355: recipe for target 'libmono-system-native.la' failed
>
>
> I managed to get the recipe in the normal meta-mono to compile by
> installing System.Runtime.Loader.dll into the image but as soon as it
> tried to create the rootfs I get the following error
> Total size: 75 M
> Installed size: 301 M
> Downloading Packages:
> Running transaction check
> Error: transaction check vs depsolve:
> mono(System.Collections.Immutable) = 1.2.0.0 is needed by
> mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> mono(System.Diagnostics.StackTrace) = 4.0.2.0 is needed by
> mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> mono(System.IO) = 4.0.10.0 is needed by
> mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> mono(System.IO.Compression) = 4.1.1.0 is needed by
> mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> mono(System.Linq.Expressions) = 4.0.10.0 is needed by
> mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> mono(System.Reflection) = 4.0.10.0 is needed by
> mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> mono(System.Runtime) = 4.0.20.0 is needed by
> mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> mono(System.Runtime.Extensions) = 4.0.10.0 is needed by
> mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> mono(System.Runtime.InteropServices) = 4.0.20.0 is needed by
> mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> mono(System.Security.Cryptography.Algorithms) = 4.0.0.0 is needed by
> mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> mono(System.Text.Encoding.CodePages) = 4.0.2.0 is needed by
> mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> mono(System.ValueTuple) = 4.0.1.0 is needed by
> mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> mono(System.Xml.XPath.XDocument) = 4.0.1.0 is needed by
> mono-libs-4.5-5.12.0.226-r0.13.armv7ahf_neon
> To diagnose the problem, try running: 'rpm -Va --nofiles --nodigest'.
> You probably have corrupted RPMDB, running 'rpm --rebuilddb' might fix
> the issue.
>
> I think I need to understand more about the mono packaging, any
> pointers would be greatly appreciated.
>
>

Hi Martin,

I've been setting up an auto-builder using Jenkins pulling from that git 
repo, to make my life easier, and it builds successfully...

@see: http://build.dynamicdevices.co.uk:8080/job/meta-mono/40/console

I could be misunderstanding. Are you doing something custom or does the 
vanilla qemux86-64 build fail for you?

Cheers!

Alex


