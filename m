Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 358DAE0078E; Fri, 20 Feb 2015 13:43:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E516E00289
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 13:43:03 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 20 Feb 2015 13:35:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,617,1418112000"; 
	d="scan'208,217,223";a="530558986"
Received: from unknown (HELO [10.219.4.144]) ([10.219.4.144])
	by orsmga003.jf.intel.com with ESMTP; 20 Feb 2015 13:34:13 -0800
Message-ID: <54E7AA6B.90701@linux.intel.com>
Date: Fri, 20 Feb 2015 15:43:07 -0600
From: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>, 
	"Rodriguez Bahena, Victor" <victor.rodriguez.bahena@intel.com>
References: <1424449171.16673.20.camel@vrodri3-mobl2.amr.corp.intel.com>
	<2021830550.2900621.1424451679741.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <2021830550.2900621.1424451679741.JavaMail.yahoo@mail.yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Add mpich support
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
X-List-Received-Date: Fri, 20 Feb 2015 21:43:06 -0000
X-Groupsio-MsgNum: 23697
Content-Type: multipart/mixed; boundary="------------050308050305090903060901"

--------------050308050305090903060901
Content-Type: multipart/alternative;
 boundary="------------020602000509090804060403"

--------------020602000509090804060403
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

The issue for shell are because DEPENDS includes tcsh i remove it, also 
i fixed the rpath issue passing to the
OE_EXTRACONF --disable-rpath but still exists problem building with 
hydra pm (default) i changed to gforker.

I think the Hydra issues are for some Makefiles contains -rpath but it 
need more debug, here is the two patches that
actually works.

Kind regards,
     alimon


On 20/02/15 11:01, Alexandru Vaduva wrote:
> Yes, it is my opinion that adding to RDPENDS libxml2 and libpciaccess and changing the /bin/csh and /bin/bash to /bin/sh should solve those warnings.
> The Warnings are related with the patch done by Richard Yang. Here`s a link:[OE-core] [PATCH 0/6] meta: fix rdepends issues for test related packages
> |   |
> |   |   |   |   |   |
> | [OE-core] [PATCH 0/6] meta: fix rdepends issues for test related packages[OE-core] [PATCH 0/6] meta: fix rdepends issues for test related packages Robert Yang liezhi.yang at windriver.com Mon Aug 18 06:06:31 UTC 2014  |
> |  |
> | View on lists.openembedded.org | Preview by Yahoo |
> |  |
> |   |
>
> Hope I am not wrong  with my assumption, but I am pretty sure about this one ;)
>
> Alex Vaduva
>
>
>       On Friday, February 20, 2015 6:19 PM, "Rodriguez Bahena, Victor" <victor.rodriguez.bahena@intel.com> wrote:
>     
>
>   So let me see if I understand, the following error ( build log from this
> patch):
>
> NOTE: Executing RunQueue Tasks
> ERROR: QA Issue: package mpich contains bad
> RPATH /home/vrodri3/poky/build/tmp/sysroots/qemux86/usr/lib in
> file /home/vrodri3/poky/build/tmp/work/i586-poky-linux/mpich/3.1.1-r0/packages-split/mpich/usr/bin/i586-poky-linux-mpiexec.hydra [rpaths]
> WARNING: QA Issue: mpich rdepends on libxml2, but it isn't a build
> dependency? [build-deps]
> WARNING: QA Issue: mpich rdepends on libpciaccess, but it isn't a build
> dependency? [build-deps]
> WARNING: QA Issue: mpich requires /usr/bin/bash, but no providers in its
> RDEPENDS [file-rdeps]
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored
> in: /home/vrodri3/poky/build/tmp/work/i586-poky-linux/mpich/3.1.1-r0/temp/log.do_package_qa.20022
> ERROR: Task 9
> (/home/vrodri3/meta-openembedded/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb, do_package_qa) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 667 tasks of which 646 didn't need to be
> rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>
>
> Is due to the fact that some of the QA scripts need sh instead of bash
> ( or something similar ) ?
>
> I am a little bit lost here
>
> Thanks for the help
>
> Victor Rodriguez
>
>
>
> On Thu, 2015-02-19 at 21:49 +0000, Alexandru Vaduva wrote:
>> Forgot to mention that I identified the line:
>> src/pm/hydra/tools/topo/hwloc/hwloc/contrib/hg/set-hg-share-perms.csh:1:#!/bin/csh -f
>>
>>
>> It seems that one script uses /bin/ch, and also another one
>> using /bin/bash.
>> Adding RDEPENDS_${PN} += "bash perl tcsh" did not solved the problem.
>> but maybe changing them o /bin/sh will do.
>> The idea is similar to the change from
>>
>> meta/recipes-extended/lsb/lsbtest/LSB_Test.s
>> Link: [OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh
>>
>>    
>>    
>>    
>>    
>>    
>>    
>> [OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh
>> [OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh Robert Yang
>> liezhi.yang at windriver.com Wed Aug 27 15:57:11 UTC 2014
>>
>> View on lists.openembedded.org
>> Preview by Yahoo
>>
>>    
>> What do you say?
>>
>>
>>
>>
>> Alex Vaduva
>>
>>
>>
>> On Thursday, February 19, 2015 11:44 PM, Alexandru. Vaduva
>> <Alexandru.Vaduva@enea.com> wrote:
>>
>>
>>
>> From: Victor Rodriguez <victor.rodriguez.bahena@intel.com>
>>
>> This patch add mpich support to yocto in order to run MPI framework on
>> embedded
>> systems.
>>
>> Signed-off-by: Alejandro Hernandez
>> <alejandro.hernandez@linux.intel.com>
>> Signed-off-by: Victor Rodriguez <victor.rodriguez.bahena@intel.com>
>> Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
>> ---
>> meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb | 29
>> +++++++++++++++++++++++++++
>> 1 file changed, 29 insertions(+)
>> create mode 100644 meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
>>
>> diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
>> b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
>> new file mode 100644
>> index 0000000..2f4226e
>> --- /dev/null
>> +++ b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
>> @@ -0,0 +1,29 @@
>> +SUMMARY = "Message Passing Interface(MPI) implementation"
>> +HOMEPAGE = "http://git.mpich.org/mpich.git/"
>> +SECTION = "devel"
>> +
>> +LICENSE = "BSD-2-Clause"
>> +LIC_FILES_CHKSUM =
>> "file://COPYRIGHT;md5=2106f0435056f3dd9349747a766e5816"
>> +
>> +SRC_URI =
>> "http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.gz"
>> +SRC_URI[md5sum] = "40dc408b1e03cc36d80209baaa2d32b7"
>> +SRC_URI[sha256sum] =
>> "455ccfaf4ec724d2cf5d8bff1f3d26a958ad196121e7ea26504fd3018757652d"
>> +
>> +RDEPENDS_${PN} += "bash perl tcsh"
>> +S = "${WORKDIR}/${PN}-${PV}"
>> +
>> +EXTRA_OECONF = "--enable-debuginfo \
>> +                --enable-fast \
>> +                --enable-shared  \
>> +                --disable-f77 \
>> +                --disable-fc \
>> +                --disable-fortran \
>> +                --disable-cxx"
>> +
>> +inherit autotools-brokensep gettext
>> +
>> +do_configure_prepend() {
>> +    autoreconf --verbose --install --force -I . -I confdb/ -I maint/
>> +    oe_runconf
>> +    exit
>> +}
>> -- 
>> 1.9.1
>>
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>
>
>


--------------020602000509090804060403
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi all,<br>
    <br>
    The issue for shell are because DEPENDS includes tcsh i remove it,
    also i fixed the rpath issue passing to the<br>
    OE_EXTRACONF --disable-rpath but still exists problem building with
    hydra pm (default) i changed to gforker.<br>
    <br>
    I think the Hydra issues are for some Makefiles contains -rpath but
    it need more debug, here is the two patches that<br>
    actually works.<br>
    <br>
    Kind regards,<br>
    ††† alimon<br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 20/02/15 11:01, Alexandru Vaduva
      wrote:<br>
    </div>
    <blockquote
cite="mid:2021830550.2900621.1424451679741.JavaMail.yahoo@mail.yahoo.com"
      type="cite">
      <pre wrap="">Yes, it is my opinion that adding to RDPENDS libxml2 and libpciaccess and changing the /bin/csh and /bin/bash to /bin/sh should solve those warnings.
The Warnings are related with the patch done by Richard Yang. Here`s a link:[OE-core] [PATCH 0/6] meta: fix rdepends issues for test related packages
| † |
| † | † | † | † | † |
| [OE-core] [PATCH 0/6] meta: fix rdepends issues for test related packages[OE-core] [PATCH 0/6] meta: fix rdepends issues for test related packages Robert Yang liezhi.yang at windriver.com Mon Aug 18 06:06:31 UTC 2014  |
|  |
| View on lists.openembedded.org | Preview by Yahoo |
|  |
| † |

Hope I am not wrong† with my assumption, but I am pretty sure about this one ;)

Alex Vaduva


     On Friday, February 20, 2015 6:19 PM, "Rodriguez Bahena, Victor" <a class="moz-txt-link-rfc2396E" href="mailto:victor.rodriguez.bahena@intel.com">&lt;victor.rodriguez.bahena@intel.com&gt;</a> wrote:
   

 So let me see if I understand, the following error ( build log from this
patch): 

NOTE: Executing RunQueue Tasks
ERROR: QA Issue: package mpich contains bad
RPATH /home/vrodri3/poky/build/tmp/sysroots/qemux86/usr/lib in
file /home/vrodri3/poky/build/tmp/work/i586-poky-linux/mpich/3.1.1-r0/packages-split/mpich/usr/bin/i586-poky-linux-mpiexec.hydra [rpaths]
WARNING: QA Issue: mpich rdepends on libxml2, but it isn't a build
dependency? [build-deps]
WARNING: QA Issue: mpich rdepends on libpciaccess, but it isn't a build
dependency? [build-deps]
WARNING: QA Issue: mpich requires /usr/bin/bash, but no providers in its
RDEPENDS [file-rdeps]
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored
in: /home/vrodri3/poky/build/tmp/work/i586-poky-linux/mpich/3.1.1-r0/temp/log.do_package_qa.20022
ERROR: Task 9
(/home/vrodri3/meta-openembedded/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb, do_package_qa) failed with exit code '1'
NOTE: Tasks Summary: Attempted 667 tasks of which 646 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:


Is due to the fact that some of the QA scripts need sh instead of bash
( or something similar ) ? 

I am a little bit lost here 

Thanks for the help

Victor Rodriguez



On Thu, 2015-02-19 at 21:49 +0000, Alexandru Vaduva wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Forgot to mention that I identified the line:
src/pm/hydra/tools/topo/hwloc/hwloc/contrib/hg/set-hg-share-perms.csh:1:#!/bin/csh -f


It seems that one script uses /bin/ch, and also another one
using /bin/bash.
Adding RDEPENDS_${PN} += "bash perl tcsh" did not solved the problem.
but maybe changing them o /bin/sh will do.
The idea is similar to the change from 

meta/recipes-extended/lsb/lsbtest/LSB_Test.s
Link: [OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh† 

† 
† 
† 
† 
† 
† 
[OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh
[OE-core] [PATCH 6/9] lsbtest: no bashism in LSB_Test.sh Robert Yang
liezhi.yang at windriver.com Wed Aug 27 15:57:11 UTC 2014 

View on lists.openembedded.org
Preview by Yahoo

† 
What do you say?




Alex Vaduva



On Thursday, February 19, 2015 11:44 PM, Alexandru. Vaduva
<a class="moz-txt-link-rfc2396E" href="mailto:Alexandru.Vaduva@enea.com">&lt;Alexandru.Vaduva@enea.com&gt;</a> wrote:



From: Victor Rodriguez <a class="moz-txt-link-rfc2396E" href="mailto:victor.rodriguez.bahena@intel.com">&lt;victor.rodriguez.bahena@intel.com&gt;</a>

This patch add mpich support to yocto in order to run MPI framework on
embedded
systems.

Signed-off-by: Alejandro Hernandez
<a class="moz-txt-link-rfc2396E" href="mailto:alejandro.hernandez@linux.intel.com">&lt;alejandro.hernandez@linux.intel.com&gt;</a>
Signed-off-by: Victor Rodriguez <a class="moz-txt-link-rfc2396E" href="mailto:victor.rodriguez.bahena@intel.com">&lt;victor.rodriguez.bahena@intel.com&gt;</a>
Signed-off-by: Alexandru.Vaduva <a class="moz-txt-link-rfc2396E" href="mailto:Alexandru.Vaduva@enea.com">&lt;Alexandru.Vaduva@enea.com&gt;</a>
---
meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb | 29
+++++++++++++++++++++++++++
1 file changed, 29 insertions(+)
create mode 100644 meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb

diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
new file mode 100644
index 0000000..2f4226e
--- /dev/null
+++ b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
@@ -0,0 +1,29 @@
+SUMMARY = "Message Passing Interface(MPI) implementation"
+HOMEPAGE = <a class="moz-txt-link-rfc2396E" href="http://git.mpich.org/mpich.git/">"http://git.mpich.org/mpich.git/"</a>
+SECTION = "devel"
+
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM =
<a class="moz-txt-link-rfc2396E" href="file://COPYRIGHT;md5=2106f0435056f3dd9349747a766e5816">"file://COPYRIGHT;md5=2106f0435056f3dd9349747a766e5816"</a>
+
+SRC_URI =
<a class="moz-txt-link-rfc2396E" href="http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.gz">"http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.gz"</a>
+SRC_URI[md5sum] = "40dc408b1e03cc36d80209baaa2d32b7"
+SRC_URI[sha256sum] =
"455ccfaf4ec724d2cf5d8bff1f3d26a958ad196121e7ea26504fd3018757652d"
+
+RDEPENDS_${PN} += "bash perl tcsh"
+S = "${WORKDIR}/${PN}-${PV}"
+
+EXTRA_OECONF = "--enable-debuginfo \
+† † † † † † † † --enable-fast \
+† † † † † † † † --enable-shared† \
+† † † † † † † † --disable-f77 \
+† † † † † † † † --disable-fc \
+† † † † † † † † --disable-fortran \
+† † † † † † † † --disable-cxx"
+
+inherit autotools-brokensep gettext
+
+do_configure_prepend() {
+† † autoreconf --verbose --install --force -I . -I confdb/ -I maint/
+† † oe_runconf
+† † exit
+}
-- 
1.9.1

-- 
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>



</pre>
      </blockquote>
      <pre wrap="">

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------020602000509090804060403--

--------------050308050305090903060901
Content-Type: text/x-patch;
 name="0001-Add-mpich-support.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-Add-mpich-support.patch"

From 49b5e0ec2b8b7ac3ebbdc0307d193c2e2476e272 Mon Sep 17 00:00:00 2001
From: Victor Rodriguez <victor.rodriguez.bahena@intel.com>
Date: Thu, 19 Feb 2015 22:43:09 +0100
Subject: [PATCH 1/2] Add mpich support

This patch add mpich support to yocto in order to run MPI framework on embedded
systems.

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Signed-off-by: Victor Rodriguez <victor.rodriguez.bahena@intel.com>
Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb | 29 +++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb

diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
new file mode 100644
index 0000000..2f4226e
--- /dev/null
+++ b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
@@ -0,0 +1,29 @@
+SUMMARY = "Message Passing Interface(MPI) implementation"
+HOMEPAGE = "http://git.mpich.org/mpich.git/"
+SECTION = "devel"
+
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=2106f0435056f3dd9349747a766e5816"
+
+SRC_URI = "http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.gz"
+SRC_URI[md5sum] = "40dc408b1e03cc36d80209baaa2d32b7"
+SRC_URI[sha256sum] = "455ccfaf4ec724d2cf5d8bff1f3d26a958ad196121e7ea26504fd3018757652d"
+
+RDEPENDS_${PN} += "bash perl tcsh"
+S = "${WORKDIR}/${PN}-${PV}"
+
+EXTRA_OECONF = "--enable-debuginfo \
+                --enable-fast \
+                --enable-shared  \
+                --disable-f77 \
+                --disable-fc \
+                --disable-fortran \
+                --disable-cxx"
+
+inherit autotools-brokensep gettext
+
+do_configure_prepend() {
+    autoreconf --verbose --install --force -I . -I confdb/ -I maint/
+    oe_runconf
+    exit
+}
-- 
1.8.4.5


--------------050308050305090903060901
Content-Type: text/x-patch;
 name="0002-mpich-Disable-RPATH-to-avoid-issues-in-package_qa.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename*0="0002-mpich-Disable-RPATH-to-avoid-issues-in-package_qa.patch"

From 621a1acff318d525cc6db82e6159adeeceb87f29 Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
Date: Fri, 20 Feb 2015 13:31:13 +0000
Subject: [PATCH 2/2] mpich: Disable RPATH to avoid issues in package_qa
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Set --disable-rpath to extra opts in order to avoid issues
in package_qa also change default pm to gforker because
hydra has problems with RPATH.

TODO: Make a patch for solve hydra rpath issues.

Signed-off-by: An√≠bal Lim√≥n <anibal.limon@linux.intel.com>
---
 meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
index 2f4226e..0225cee 100644
--- a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
+++ b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
@@ -1,20 +1,25 @@
-SUMMARY = "Message Passing Interface(MPI) implementation"
-HOMEPAGE = "http://git.mpich.org/mpich.git/"
+SUMMARY = "Message Passing Interface (MPI) implementation"
+HOMEPAGE = "http://www.mpich.org/"
 SECTION = "devel"
 
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=2106f0435056f3dd9349747a766e5816"
 
-SRC_URI = "http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.gz"
+SRC_URI = " \
+	http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.gz \
+"
+
 SRC_URI[md5sum] = "40dc408b1e03cc36d80209baaa2d32b7"
 SRC_URI[sha256sum] = "455ccfaf4ec724d2cf5d8bff1f3d26a958ad196121e7ea26504fd3018757652d"
 
-RDEPENDS_${PN} += "bash perl tcsh"
+RDEPENDS_${PN} += "bash perl libxml2"
 S = "${WORKDIR}/${PN}-${PV}"
 
 EXTRA_OECONF = "--enable-debuginfo \
                 --enable-fast \
                 --enable-shared  \
+                --with-pm=gforker  \
+		--disable-rpath \
                 --disable-f77 \
                 --disable-fc \
                 --disable-fortran \
-- 
1.8.4.5


--------------050308050305090903060901--
