Return-Path: <jose.ferreiro@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBA32E01602
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 07:59:23 -0700 (PDT)
Received: from [172.30.250.61] (172.30.250.61) by horus27 (Axigen)
	with (CAMELLIA256-SHA encrypted) ESMTPSA id 28AC41;
	Tue, 1 Oct 2013 16:59:20 +0200
Message-ID: <524AE34E.4000303@horus.es>
Date: Tue, 01 Oct 2013 16:59:26 +0200
From: =?ISO-8859-1?Q?Jose_M=AA_Ferreiro?= <jose.ferreiro@horus.es>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:16.0)
	Gecko/20121005 Thunderbird/16.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 2
Subject: nativesdk-dbus not shipped for meta-toolchain-qt
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
X-List-Received-Date: Tue, 01 Oct 2013 14:59:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello

We are trying to bitbake meta-toolchain-qt with master and dora. Both 
launch this error:

ERROR: QA Issue: nativesdk-dbus: Files/directories were installed but 
not shipped
   /run
   /run/dbus
ERROR: QA run found fatal errors. Please consider fixing them.

We compare it to dylan dbus. We found that dora is creating a 
package-split named nativesdk-dbus with the symbolink link run at
build/tmp/work/i686-nativesdk-pokysdk-linux/nativesdk-dbus/1.6.10-r6.0/packages-split/nativesdk-dbus/opt/poky/1.5/sysroots/i686-pokysdk-linux/var. 
That link is pointing to /run host directory (a bad thing, we suppose).
That link in dylan is pointing to volatile/run (a folder inside the 
package-split)

We try to manually delete the link and recreate it  and the folders, but 
bitbake clean everything and it create again.

Any clue about how to solve this?

Thank you

