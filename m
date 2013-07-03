Return-Path: <Sergey_Matyukevich@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA6D9E013CB
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 04:59:14 -0700 (PDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1UuLiL-0004lP-UE from Sergey_Matyukevich@mentor.com ;
	Wed, 03 Jul 2013 04:59:13 -0700
Received: from SVR-IES-FEM-01.mgc.mentorg.com ([137.202.0.104]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Wed, 3 Jul 2013 04:59:13 -0700
Received: from [137.202.140.158] (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server id 14.2.247.3; Wed, 3 Jul 2013 12:59:12 +0100
Message-ID: <51D4120F.6040306@mentor.com>
Date: Wed, 3 Jul 2013 15:59:11 +0400
From: Sergey Matyukevich <Sergey_Matyukevich@mentor.com>
Organization: Mentor Graphics
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.16) Gecko/20121216 Iceowl/1.0b1 Icedove/3.0.11
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <1372850887-10185-1-git-send-email-sergey_matyukevich@mentor.com>
	<CAJTo0LYDTjrq+aSQK638pedtiCpX+_a7uzYwd1Gbe0F41T7p6A@mail.gmail.com>
In-Reply-To: <CAJTo0LYDTjrq+aSQK638pedtiCpX+_a7uzYwd1Gbe0F41T7p6A@mail.gmail.com>
X-OriginalArrivalTime: 03 Jul 2013 11:59:13.0884 (UTC)
	FILETIME=[BC7C61C0:01CE77E4]
Cc: yocto@yoctoproject.org
Subject: [meta-ivi] [PATCHv2] connman: do not delete init scripts in bbappend
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
X-List-Received-Date: Wed, 03 Jul 2013 11:59:14 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

>> Connman init scripts are installed only if 'sysvinit' feature is enabled
>> in DISTRO_FEATURES: see commit 7c8160ccbe17d6e10bd7a09b91843182a89b9055 in
>> poky.
>>
>> Signed-off-by: Sergey Matyukevich<sergey_matyukevich@mentor.com>
>
> I'm curious as to why you're deleting the connman init scripts in meta-ivi...
>
> Ross

Hmm... Thanks for comment. It is good idea to take a break and to see 
the forest for the trees. Here is the second patch revision.

Connman init scripts are now installed only when 'sysvinit' feature is
enabled in DISTRO_FEATURES: commit 
7c8160ccbe17d6e10bd7a09b91843182a89b9055 in
poky. No need to remove them in bbappend: they are not installed for 
'systemd'-enabled
systems and they are needed for 'sysvinit'-enabled systems.

Signed-off-by: Sergey Matyukevich <sergey_matyukevich@mentor.com>
---
  recipes-connectivity/connman/connman_1.15.bbappend |    5 -----
  1 files changed, 0 insertions(+), 5 deletions(-)

diff --git a/recipes-connectivity/connman/connman_1.15.bbappend 
b/recipes-connectivity/connman/connman_1.15.bbappend
index cda612b..83e4b51 100644
--- a/recipes-connectivity/connman/connman_1.15.bbappend
+++ b/recipes-connectivity/connman/connman_1.15.bbappend
@@ -2,8 +2,3 @@ PRINC := "${@int(PRINC) + 2}"

  INITSCRIPT_NAME = ""
  INITSCRIPT_PARAMS = ""
-
-do_install_append() {
-	# Remove init scripts
-	rm -r ${D}${sysconfdir}/init.d
-}
-- 
1.7.2.5

