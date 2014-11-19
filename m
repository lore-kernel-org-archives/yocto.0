Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACD42E008D9; Tue, 18 Nov 2014 19:02:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D11CE008C3
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 19:01:58 -0800 (PST)
Received: from [192.168.1.10] (unknown [68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id CCD03207CC72;
	Wed, 19 Nov 2014 03:01:56 +0000 (UTC)
Message-ID: <546C0823.6060808@mindchasers.com>
Date: Tue, 18 Nov 2014 22:01:55 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
References: <545FD907.2070003@mindchasers.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988E52758@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E52758@ORSMSX101.amr.corp.intel.com>
Cc: bitbake-dev <bitbake-devel@lists.openembedded.org>
Subject: Re: newbb.vim vs skeleton recipe in yocto-docs dev manual....
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
X-List-Received-Date: Wed, 19 Nov 2014 03:02:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/2014 09:28 AM, Rifenbark, Scott M wrote:
> newbb.vim needs to be patched.


I have a patch ready to bring newbb.vim in line with Section 5.3.2 of 
the Yocto Project Dev Manual.   However, I'm wondering whether I can 
drop the initial two lines of the generated file (I think I should):


# Copyright (C) 2014 <user_name> <user_email>
# Released under the MIT license (see COPYING.MIT for the terms)


This seems inconsistent with the recipes I see in the Yocto / OE layers 
and the Yocto documentation.

The patch I created, which is provided below for reference, comments out 
the generation of these first two lines:


--- a/bitbake/contrib/vim/plugin/newbb.vim
+++ b/bitbake/contrib/vim/plugin/newbb.vim
@@ -44,21 +44,31 @@ fun! NewBBTemplate()
      let l:paste = &paste
      set nopaste

-    " Get the header
-    call BBHeader()
+    " Uncomment the line below to enable header generation
+    "call BBHeader()

      " New the bb template
+    0 put ='SUMMARY = \"\"'
      put ='DESCRIPTION = \"\"'
      put ='HOMEPAGE = \"\"'
      put ='LICENSE = \"\"'
-    put ='SECTION = \"\"'
+    put ='LIC_FILES_CHKSUM = \"\"'
+    put =''
      put ='DEPENDS = \"\"'
      put =''
      put ='SRC_URI = \"\"'
+    put ='SRC_URI[md5sum] = \"\"'
+    put ='SRC_URI[sha256sum] = \"\"'
+    put =''
+    put ='S = \"${WORKDIR}/${PN}-${PV}\"'
+    put =''
+    put ='#inherit <classes>'
+
+

      " Go to the first place to edit
      0
-    /^DESCRIPTION =/
+    /^SUMMARY =/
      exec "normal 2f\""

      if paste == 1



thanks

Bob




>
> Scott
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Bob Cochran
>> Sent: Sunday, November 09, 2014 1:14 PM
>> To: Yocto discussion list
>> Subject: [yocto] newbb.vim vs skeleton recipe in yocto-docs dev manual....
>>
>> Hi,
>>
>> I just noticed that newbb.vim in bitbake/contrib is notably different from the
>> skeleton recipe proposed in the latest Dev Manual.
>>
>> I'll submit a patch if someone can give me some guidance on what should be
>> in newbb.vim (or maybe it's the manual that needs to be patched).
>>
>> Bob
>>
>>
>>  From yocto-docs: Dev Manual (modify the following skeleton recipe):
>>
>> SUMMARY = ""
>> HOMEPAGE = ""
>> LICENSE = ""
>> LIC_FILES_CHKSUM = ""
>> SRC_URI = ""
>> SRC_URI[md5sum] = ""
>> SRC_URI[sha256sum] = ""
>> S = "${WORKDIR}/${PN}-${PV}"
>>
>>
>>
>>  From newbb.vim:
>>
>> DESCRIPTION = ""
>> HOMEPAGE = ""
>> LICENSE = ""
>> SECTION = ""
>> DEPENDS = ""
>>
>> SRC_URI = ""
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


