Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB6A5E01453
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 04:02:34 -0700 (PDT)
Received: from [192.168.0.46] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 64802608BE;
	Mon, 18 Jun 2012 11:01:18 +0100 (BST)
Message-ID: <4FDF0B05.4020607@communistcode.co.uk>
Date: Mon, 18 Jun 2012 12:03:33 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120616 Thunderbird/13.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: scott.a.garman@intel.com
Subject: sgml-common failure
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 18 Jun 2012 11:02:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Trying to build poky on master and I recieve the following error with 
sgml-common-native:

ERROR: Function failed: sgml_common_sstate_postinst (see 
/home/jack/Projects/poky-denzil.git/r0005/tmp/work/x86_64-linux/sgml-common-native-0.6.3-r0/temp/log.do_populate_sysroot.4701 
for further information)
ERROR: Logfile of failure stored in: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/work/x86_64-linux/sgml-common-native-0.6.3-r0/temp/log.do_populate_sysroot.4701
Log data follows:
| DEBUG: Executing python function sstate_task_prefunc
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/bin/sgmlwhich
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/bin/install-catalog
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml.dcl
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOgrk2.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOgrk1.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOlat1.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOdia.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOcyr2.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOgrk3.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOamsc.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOlat2.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOnum.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOtech.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOamsb.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOamsr.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOamso.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOgrk4.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOcyr1.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOamsa.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISObox.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOpub.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/ISOamsn.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/catalog
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOgrk2.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOgrk1.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOlat1.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOdia.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOcyr2.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOgrk3.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOamsc.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOlat2.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOnum.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOtech.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOamsb.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOamsr.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOamso.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOgrk4.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOcyr1.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOamsa.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISObox.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOpub.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/ISOamsn.ent
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/catalog
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/etc/sgml/sgml-ent.cat
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/etc/sgml/sgml.conf
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/etc/sgml/sgml-docbook.cat
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/etc/sgml/catalog
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/sgml-iso-entities-8879.1986/
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/xml-iso-entities-8879.1986/
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/sgml/
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/share/
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/etc/sgml/
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/bin/
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/etc/
| DEBUG: Removing manifest: 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/usr/
| DEBUG: Python function sstate_task_prefunc finished
| DEBUG: Executing python function do_populate_sysroot
| DEBUG: Executing shell function sysroot_stage_all
| DEBUG: Shell function sysroot_stage_all finished
| DEBUG: Executing python function relocatable_binaries_preprocess
| DEBUG: Python function relocatable_binaries_preprocess finished
| DEBUG: Executing shell function sgml_common_native_mangle
| DEBUG: Shell function sgml_common_native_mangle finished
| DEBUG: Python function do_populate_sysroot finished
| DEBUG: Executing python function do_qa_staging
| NOTE: QA checking staging
| DEBUG: Python function do_qa_staging finished
| DEBUG: Executing python function sstate_task_postfunc
| DEBUG: Staging files from 
/home/jack/Projects/poky-denzil.git/r0005/tmp/work/x86_64-linux/sgml-common-native-0.6.3-r0/sysroot-destdir///home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux 
to /home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux
| DEBUG: Staging files from 
/home/jack/Projects/poky-denzil.git/r0005/tmp/work/x86_64-linux/sgml-common-native-0.6.3-r0/sysroot-destdir///home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux 
to /home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux
| DEBUG: Staging files from 
/home/jack/Projects/poky-denzil.git/r0005/tmp/work/x86_64-linux/sgml-common-native-0.6.3-r0/sysroot-destdir///home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux 
to /home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux
| DEBUG: Staging files from 
/home/jack/Projects/poky-denzil.git/r0005/tmp/work/x86_64-linux/sgml-common-native-0.6.3-r0/sysroot-destdir///home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux 
to /home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux
| DEBUG: Staging files from 
/home/jack/Projects/poky-denzil.git/r0005/tmp/work/x86_64-linux/sgml-common-native-0.6.3-r0/sysroot-destdir///home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux 
to /home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux
| DEBUG: Staging files from 
/home/jack/Projects/poky-denzil.git/r0005/tmp/work/x86_64-linux/sgml-common-native-0.6.3-r0/sysroot-destdir///home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux 
to /home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux
| DEBUG: Staging files from 
/home/jack/Projects/poky-denzil.git/r0005/tmp/work/x86_64-linux/sgml-common-native-0.6.3-r0/sysroot-destdir///home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux 
to /home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux
| DEBUG: Staging files from 
/home/jack/Projects/poky-denzil.git/r0005/tmp/work/x86_64-linux/sgml-common-native-0.6.3-r0/sysroot-destdir///home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux 
to /home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux
| DEBUG: Staging files from 
/home/jack/Projects/poky-denzil.git/r0005/tmp/work/x86_64-linux/sgml-common-native-0.6.3-r0/sysroot-destdir///home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux 
to /home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux
| DEBUG: Executing shell function sgml_common_sstate_postinst
| DEBUG: Python function sstate_task_postfunc finished
| ERROR: Function failed: sgml_common_sstate_postinst (see 
/home/jack/Projects/poky-denzil.git/r0005/tmp/work/x86_64-linux/sgml-common-native-0.6.3-r0/temp/log.do_populate_sysroot.4701 
for further information)
| install-catalog: addition of 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/etc/sgml/sgml-docbook-dtd-3.1.cat 
in 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/etc/sgml/sgml-docbook.cat
| install-catalog: addition of 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/etc/sgml/dsssl-docbook-stylesheets.cat 
in 
/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/etc/sgml/sgml-docbook.cat
| install-catalog: 
"/home/jack/Projects/poky-denzil.git/r0005/tmp/sysroots/x86_64-linux/etc/sgml/sgml-docbook-dtd-4.1.cat" 
does not exist or is empty.
NOTE: package sgml-common-native-0.6.3-r0: task do_populate_sysroot: Failed
ERROR: Task 2788 
(/home/jack/Projects/poky-denzil.git/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb, 
do_populate_sysroot) failed with exit code '1'

Has the recipe been updated recently or have things moved? Another 
current issue I am having is that my host distribution does not have 
find.pl included with Perl any more due to depreciation, could it be 
something to do with this?

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


