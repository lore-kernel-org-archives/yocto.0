Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C7E6E006C2
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 16:13:33 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id hm11so2228380wib.3
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 16:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=GamAp95gCHzqU9WPB95kiUwcQVY6vFcx1QqwhpHS8zk=;
	b=P6aGFOa1QaaCJo97fkplLBr+FcAvMyHJbpfB6PpJs29AIrTChMCrrwS6ULkaZ9Oaf6
	A2+Bs8wpY+Q+NtITAWXzV1SdyrdKJU9fYzEfwvo1Ge56O1rB8FU5yUsMFPNKSG90VXyl
	7+44d/SiS/gWRwMuiDGTGN1ZCAGaZBDv3G3RGezLy3tL1/zn//3mvPwF0j2hIYj1AiOW
	QNAk4usQcRrbd515XDN7JIT7XzIzhVwrpbg8WPIAh2G8nGiUMRUy7yolQM85SMaUA51A
	og8VJPS2Vea43gguyP59UUk0xMMwObf4bwhtQLA9YnbABzYQJEqgxh3BfJCEN4bUZqrA
	RY1Q==
X-Received: by 10.180.75.110 with SMTP id b14mr697499wiw.21.1363562012779;
	Sun, 17 Mar 2013 16:13:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Sun, 17 Mar 2013 16:13:12 -0700 (PDT)
In-Reply-To: <CA+chaQfQSwRUH8jpKLRJ_391RtN6_myfGe-Kgb9_=Z27JtedTw@mail.gmail.com>
References: <CAHUNapQOknbQKfj+m6OaONATjhb4Sg9JqX1Vkd-qUV+jj+tM_A@mail.gmail.com>
	<CA+chaQfQSwRUH8jpKLRJ_391RtN6_myfGe-Kgb9_=Z27JtedTw@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Sun, 17 Mar 2013 16:13:12 -0700
Message-ID: <CACzyEJ_m_7TAc4=921zT_6G3esaPZAPxB2ixSzvA4J+Q2St7Tg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: problems building 'neard'
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
X-List-Received-Date: Sun, 17 Mar 2013 23:13:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

I've also ran into this issue and raised in other mail thread.
It seems it is fixed with the latest pull.

Here was my mail response for your reference:


On Sat, Mar 16, 2013 at 5:38 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 16 March 2013 01:16, Insop Song <insop.song@gmail.com> wrote:
>> So at this point, I will wait to see if any one is seen this recently.
>
> The autobuilder appears to be hitting this still, but as several
> oe-core maintainers are still travelling after a conference you may
> have to wait until Monday.

Thank you for the update while you are on the road.

I pull the latest again
(http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=2381e46e77c8d33472f60861f66e44addd53af68)
And it is okay now.

Could be the Richard's this commit fixed it.
"package_rpm: Ensure PV manipulations are correct       Richard Purdie"
(b5e5d25c25f30db1f9855e24afef9d8f0bb77d35)


Here is my output:
-------------------------------------------

 ~/mybuilds/meta-realtime $ time bitbake core-image-realtime
Loading cache: 100%
|######################################################################################|
ETA:  00:00:00
Loaded 1123 entries from dependency cache.

Build Configuration:
BB_VERSION        = "1.17.1"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-12.10"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130316"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:2381e46e77c8d33472f60861f66e44addd53af68"
meta-realtime     = "schedtool-sq:ed7886f649ab945625ccbfed0ecc74a500a7c22d"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 3938 tasks of which 2355 didn't need to
be rerun and all succeeded.

real    122m1.472s
user    514m20.641s
sys     73m56.453s

------------------------------

regards,

Insop



On Sun, Mar 17, 2013 at 2:44 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> Update your oe-core to include
> http://git.openembedded.org/openembedded-core/commit/?id=0f8447a7d99d2645b932eac1c24149f0c2d3791e
>
>
> On Sun, Mar 17, 2013 at 10:37 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>>
>> I'm not sure if this is specific to my host, but:
>>
>> Build Configuration:
>> BB_VERSION        = "1.17.1"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "openSUSE-project-12.3"
>> TARGET_SYS        = "i586-poky-linux"
>> MACHINE           = "qemux86"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.3+snapshot-20130317"
>> TUNE_FEATURES     = "m32 i586"
>> TARGET_FPU        = ""
>> meta
>> meta-yocto
>> meta-yocto-bsp    = "master:1ceb13dda11645229053fc4840954333f8910ba4"
>>
>> ERROR: Function failed: BUILDSPEC (see
>> /home/trevor/devel/yocto/git-method/coreimgmin/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.15728
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /home/trevor/devel/yocto/git-method/coreimgmin/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.15728
>> Log data follows:
>> | DEBUG: Executing python function sstate_task_prefunc
>> | DEBUG: Python function sstate_task_prefunc finished
>> | DEBUG: Executing python function do_package_write_rpm
>> | DEBUG: Executing python function read_subpackage_metadata
>> | DEBUG: Python function read_subpackage_metadata finished
>> | DEBUG: Executing python function do_package_rpm
>> | DEBUG: Executing python function write_specfile
>> | NOTE: Not creating empty RPM package for neard-tests
>> | NOTE: Creating RPM package for neard-dbg
>> | NOTE: Not creating empty RPM package for neard-staticdev
>> | NOTE: Creating RPM package for neard-dev
>> | NOTE: Not creating empty RPM package for neard-doc
>> | NOTE: Not creating empty RPM package for neard-locale
>> | NOTE: Creating RPM package for neard
>> | NOTE: Creating RPM package for neard
>> | DEBUG: Python function write_specfile finished
>> | DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
>> 'common-linux', 'common-glibc', 'i586-linux', 'common']
>> | DEBUG: Executing shell function BUILDSPEC
>> | error: line 152: Illegal char '-' in EVR: Suggests: neard =
>> 0.9-git0+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1
>> | error: Package has no %description: neard-dbg.i586
>> | Building target platforms: i586-poky-linux
>> | DEBUG: Python function do_package_rpm finished
>> | DEBUG: Python function do_package_write_rpm finished
>> | ERROR: Function failed: BUILDSPEC (see
>> /home/trevor/devel/yocto/git-method/coreimgmin/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.15728
>> for further information)
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

