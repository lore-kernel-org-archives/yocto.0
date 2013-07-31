Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5339CE01584
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 16:00:44 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 Jul 2013 16:00:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,790,1367996400"; d="scan'208";a="379186662"
Received: from unknown (HELO [10.255.13.203]) ([10.255.13.203])
	by fmsmga002.fm.intel.com with ESMTP; 31 Jul 2013 16:00:19 -0700
Message-ID: <51F99703.5060900@linux.intel.com>
Date: Wed, 31 Jul 2013 16:00:19 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: Brad Litterell <bradl@taser.com>
References: <E94D6C02-CADD-4109-97AE-6979171970FA@taser.com>
	<CAJTo0LbpwbUwjRmytE-jiJ2OBihvQt5eUkQbZBpsork69jHg_w@mail.gmail.com>
	<CE1312C1-039E-4F91-BA03-163FDC9E4CD4@taser.com>
In-Reply-To: <CE1312C1-039E-4F91-BA03-163FDC9E4CD4@taser.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to add new recipe - getting QA error I don't understand
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
X-List-Received-Date: Wed, 31 Jul 2013 23:00:45 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/31/2013 03:39 PM, Brad Litterell wrote:
> Hi Ross,
>
>
> Thanks for your reply.
>
>
> First, it appears you are correct that UCI is not following the normal pattern.  Here is the image for the package:
>
> .
> └── usr
>      ├── bin
>      │   ├── uci
>      │   └── uci-static
>      ├── include
>      │   ├── uci_config.h
>      │   ├── uci.h
>      │   └── ucimap.h
>      └── lib
>          ├── libuci.a
>          └── libuci.so
>
>
> So, I added this:
>
>
> FILES_${PN}  +="/usr/lib/*"
>
Brad,

This should be using the ${libdir}, which is the variable that defines 
the correct "/usr/lib"
>
> However that doesn't remove the message.  Did I do it right?
>
> Also, in the error message "uci depends on uci-dev" does "uci" refers to
> the package name or the executable name?
>
> I wasn't able to remove PV, it ran into a different build break since
> the tar.gz emits the source folder with that name.  I'm using the tar.gz
> to make sure I'm building the same source as the project for my old
> board.  That project used a variant of build root, but we're trying to
> move to Yocto because it seems to have a better supported future.  IOW,
> using the tar ball is a way to change only one thing at a time until the
> rest of the build is happy.
>
What's the name of your recipe?  Normally the PV is parsed from the 
recipename <recipename>_<version>.bb recipename goes into BPN (PN) and 
version goes into PV.

You can set the a SRCREV to a specific git hash and that will be stable 
also. But you can start this way and then move to using a true git based 
recipe.

Hope this helps.

Sau!


> Thanks again,
> Brad
>
>
> On Jul 31, 2013, at 11:45 AM, "Burton, Ross" <ross.burton@intel.com
> <mailto:ross.burton@intel.com>> wrote:
>
>> Hi Brad,
>>
>> On 31 July 2013 18:52, Brad Litterell <bradl@taser.com
>> <mailto:bradl@taser.com>> wrote:
>>> I'm new to Yocto, so please let me know if this is the wrong list for
>>> questions like this.
>>
>> You've got the right list for support question.
>>
>>> I'm trying to add a recipe for a new cmake project (for UCI).  The
>>> do_package_qa task reports this problem:
>>>
>>> ERROR: QA Issue: uci rdepends on uci-dev
>>> ERROR: QA run found fatal errors. Please consider fixing them.
>>> ERROR: Function failed: do_package_qa
>>>
>>> uci-dev appears to be automatically generated package - there is no
>>> recipe
>>> for it, and I can't find any reference to it in the actual source
>>> code for
>>> the package.  In other words, it appears as if Yocto itself is generating
>>> this dependency somehow.
>>
>> Correct, oe-core will generate a -dev package by default that contains
>> (typically) /usr/include and /usr/lib/lib*.so.
>>
>> This warning indicates that the automatic library dependency
>> generation added a dependency from uci to uci-dev.  It sounds like
>> that UCI isn't installing versioned libraries (so eg
>> /usr/lib/libuci.so is the full library, not a symlink) and the main
>> uci package is shipping a binary that links to it.
>>
>> If that's the case then basically UCI is doing shared libraries badly,
>> and you'll have to tweak the packaging.  Adding to FILES_${PN} to
>> include all of /usr/lib should put all the libraries into "uci".
>>
>>> PV = "2011-07-18.3"
>>
>> I think hyphen in PV isn't recommended, but you can avoid setting this
>> if you embed the version in the filename.
>>
>>> #see https://forum.openwrt.org/viewtopic.php?id=15243 for git
>>> SRC_URI = "file://uci-${PV}.tar.gz <file:///uci-${PV}.tar.gz>"
>>
>> I presume you have a reason to have a local snapshot of the repo and
>> are not using a git URI in SRC_URI directly?
>>
>> Ross
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

