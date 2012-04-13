Return-Path: <SRS0=rfAY0h=CT=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout06.eigbox.net (bosmailout06.eigbox.net [66.96.188.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F2CFE0059A
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 14:59:51 -0700 (PDT)
Received: from bosmailscan18.eigbox.net ([10.20.15.18])
	by bosmailout06.eigbox.net with esmtp (Exim) id 1SIoX0-0003NL-9a
	for yocto@yoctoproject.org; Fri, 13 Apr 2012 17:59:50 -0400
Received: from bosimpout01.eigbox.net ([10.20.55.1])
	by bosmailscan18.eigbox.net with esmtp (Exim) id 1SIoX0-0000PT-0N
	for yocto@yoctoproject.org; Fri, 13 Apr 2012 17:59:50 -0400
Received: from bosauthsmtp07.eigbox.net ([10.20.18.7])
	by bosimpout01.eigbox.net with NO UCE
	id xZzq1i002099BUA01Zzq80; Fri, 13 Apr 2012 17:59:50 -0400
X-Authority-Analysis: v=2.0 cv=eq1oOPVX c=1 sm=1
	a=1tk2KXT9X5KuiK9ZGSyBkw==:17 a=mn2ndCrYJZwA:10 a=5XsFQGJ3Uf0A:10
	a=qVlnbR704W4A:10 a=Lk7aQFya1KUA:10 a=8nJEP1OIZ-IA:10 a=jV2zTg0wAAAA:8
	a=a92aKs14cRhwfEIInMIA:9 a=PjWPoXDUeezb8T-mQmoA:7 a=wPNLvfGTeEIA:10
	a=2JmKTArPWNwA:10 a=x8qw8EAkfcRkIpZA8Q87Bg==:117
X-EN-OrigOutIP: 10.20.18.7
X-EN-IMPSID: xZzq1i002099BUA01Zzq80
Received: from [108.25.140.29] (helo=[192.168.1.41])
	by bosauthsmtp07.eigbox.net with esmtpa (Exim) id 1SIoWz-0005Lu-Nz
	for yocto@yoctoproject.org; Fri, 13 Apr 2012 17:59:49 -0400
Message-ID: <4F88A1D2.6070703@mindchasers.com>
Date: Fri, 13 Apr 2012 17:59:46 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.140.29
X-EN-OrigHost: unknown
Subject: [PATCH] Yocto Project Dev Manual - bad reference in dev-manual-common-tasks.xml
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
X-List-Received-Date: Fri, 13 Apr 2012 21:59:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

A reference to meta/recipes-sato/tasks/task-poky.bb is made as a good 
example of a task; however, this file / recipe doesn't exist.  I 
replaced it with meta/recipes-core/tasks/task-core-boot.bb, which I 
think is a both useful and basic example to consider.

Signed-off-by: Robert Cochran<yocto@mindchasers.com>

---
  .../dev-manual/dev-manual-common-tasks.xml         |    2 +-
  1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml 
b/documentation/dev-manual/dev-manual-common-tasks.xml
index a32085d..a81b656 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -495,7 +495,7 @@
                  For complex custom images, the best approach is to 
create a custom task package
                  that is used to build the image or images.
                  A good example of a tasks package is
-                <filename>meta/recipes-sato/tasks/task-poky.bb</filename>.
+ 
<filename>meta/recipes-core/tasks/task-core-boot.bb</filename>
                  The
                  <filename><ulink 
url='&YOCTO_DOCS_REF_URL;#var-PACKAGES'>PACKAGES</ulink></filename>
                  variable lists the task packages to build along with 
the complementary
-- 
1.7.5.4

