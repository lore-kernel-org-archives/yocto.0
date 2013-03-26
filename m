Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B9EAE0146C
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 12:18:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2QJImME015333
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 12:18:50 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.234) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Tue, 26 Mar 2013 12:18:48 -0700
Message-ID: <5151F495.6010201@windriver.com>
Date: Tue, 26 Mar 2013 14:18:45 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130307 Thunderbird/17.0.4
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <3c725a86-09c2-4c5a-b9c8-541e4a70ee5f@DB8EHSMHS025.ehs.local>
	<7F713EA1-FD12-46CA-9F14-DF9F83585F9D@gmail.com>
	<e978f827-c688-48ed-ad53-346e3231e285@DB8EHSMHS017.ehs.local>
In-Reply-To: <e978f827-c688-48ed-ad53-346e3231e285@DB8EHSMHS017.ehs.local>
Subject: Re: TUNE_PKGARCH for Microblaze
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
X-List-Received-Date: Tue, 26 Mar 2013 19:18:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 3/26/13 1:12 AM, Sipke Vriend wrote:
> Hi all,
>
> With help from Khem's email we have been able to perform 'some' sanity
> checking against the microblaze architecture.
>
> The TUNECONFLICTS assist us in ensuring conflicting features are flagged during
> the bitbake sanity check, however because Microblaze's features are
> independently configurable, we would like to do some additional 'sanity
> checking'.
>
> Using a hierarchical method of features, like in arm, is not really viable for
> Microblaze, so if there are alternate existing ways we would like to use them
> rather than creating localised bb classes to do this for us.
>
> 1. Is there a way similar to TUNECONFLICTS for "paired" features, i.e. if one
>     feature exists another must also?
>     (Certain microblaze versions must have a set of features if a particular
>     feature is enabled).

The values in the conflicts can be adjusted programatically.  It may be what you 
need in this case.  Use inline python such as:

TUNECONFLICTS[foo] = "${@bb.utils.contains("TUNE_FEATURES", "some_feature", 
"conflict_if_set", "conflict_if_not_set", d)}"

> 2. Is there a way to define that certain features must exist, other than
>     defining multiple machines   (e.g. in endian case we would like to ensure one
>     of them is picked)?

You can add a bit of python code that can again use the contains item.  The code 
may need to be in a custom class though to execute.

python() {
     if <your arch selected>:
         if <no endian selected>:
             bb.fatal("You must select an endian")
}

> 3. Additionally (or instead of 1 and 2) is there a way we can introduce/append a
>     'sanity check' into the bitbake layer model - i.e. inform bitbake to
>     run 'our complex sanity' check?

See above.. it will require a custom class.. you can make your tunes/arch file 
include the class using INHERIT += "your_class.bbclass".

> As a continuation from my last email, the following is a list of possible Microblaze
> architecture features, which can be supplied in the machine and/or local.conf
> file. Lack of  a hardware feature means the soft version is used.
>
> big-endian/little-endian
> vXXX where XXX is a microblaze version (like v830)
> barrel-shift
> multiply-high multiply-low
> pattern-compare
> reorder
> divide-hard
> fpu-hard fpu-hard-extended
>
> Additionally we plan to modify the package name slightly, e.g.
> microblazeel-v840-bs-ml-div-fe-cmp-re
> microblazeel-v830-bs-mh
> microblazeel-v830

I think it's a good idea to have some standard tunes with functionality that is 
reasonable for a testable demo environment.  If the developers want to tailor it 
further, they should be able to either by manually selecting the features or 
creating a custom tune file.

This was the intent when the original tune system was introduced.  There was no 
way we would know every possible combination, so making a way the developer 
could specify it was the best answer we could come up with.  The TUNE_FEATURES 
adds the ability for the compiler and other packages to dynamically switch based 
on whatever the developer has configured.  It can be used for blacklisting code, 
changing optimizations, etc.

--Mark

> Regards
> Sipke
>
>> On Mar 20, 2013, at 4:44 PM, Khem Raj <mailto:raj.khem@gmail.com> wrote:
>>
>>
>> On Mar 19, 2013, at 9:08 PM, Sipke Vriend <sipke.vriend@xilinx.com> wrote:
>>
>>
>> Hi all,
>>
>> We are seeking some feedback regarding common practices for defining TUNE_PKGARCH within Yocto.
>>
>>
>> usually its dictated by architecture, ABI and other processor features. the current tune files have good ways to express the relationships
>> you would translate the below table into set of TUNE_FEATURES and define PACKAGE_EXTRA_ARCHS if you need to express compatibility between different tunes
>>
>> Look at arm tunes they are the best examples of complexity
>>
>>
>> We need to define a unique TUNE_PKGARCH for the possible configuration of Microblaze architecture.
>> Our proposal is short unique string for each HW feature which is enabled in Microblaze.
>>
>> For 'extensive hardware usage' architecture, this would result in something like:
>> mbebv730-bs-mh-div-fb-cmp
>> mbebv840-bs-mh-div-fb-cmp-re
>> mbelv840-bs-ml-div-fe-cmp-re
>> and for architecture with no 'hardware usage':
>> mbebv730
>> mbebv840
>> mbelv840
>>
>> The table below details the unique strings and their relation to compiler and hardware flags, and a couple of versions of Microblaze architecture.
>> (If this table does not show cleanly switch to fixed width font)
>> -------------------
>> String Compiler Flag        Hardware Flag         CPU versions
>>        -mcpu=vX.YY.Z                              v7.30.a v8.40.a
>>
>> mbel   -mlittle-endian      C_ENDIANNESS (LITTLE) -       o
>> mbeb   -mbig-endian         C_ENDIANNESS (BIG)    x       o
>>
>> bs     -mxl-barrel-shift    C_USE_BARREL          o       o
>>
>> ml     -mnoxl-soft-mul      C_USE_HW_MUL (MUL32)  o       o
>> mh     -mxl-multiply-high   C_USE_HW_MUL (MUL64)  o       o
>>
>> div    -mnoxl-soft-div      C_USE_DIV             o       o
>>
>> fb     -mhard-float         C_USE_FPU (BASIC)     o       o
>> fe     -mxl-float-convert   C_USE_FPU (EXTENDED)  o       o
>> fe     -mxl-float-sqrt      C_USE_FPU (EXTENDED)  o       o
>>
>> cmp   -mxl-pattern-compare  C_USE_PCMP_INSTR      o       o
>>
>> re    -mxl-reorder          C_USE_REORDER_INSTR   -       o
>>
>> Where '-' means unavailable 'x' is only option and 'o' is optional.
>> -------------------
>>
>>
>>
>> you can express this with TUNECONFLICTS and TUNEVALID
>>
>> and may be create heirarchy of tune files which builds upon common tunings.
>>
>>
>> Note the table rows have hardware feature 'groupings', which means only one of the strings should be present within the TUNE_PKGARCH. For example the Floating Point Unit hardware feature can be defined by either fb (for basic mode) or fe (for extended mode).
>>
>> Regards
>> Sipke
>>
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


