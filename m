Return-Path: <pierre.ficheux@openwide.fr>
Received: from zimbra3.corp.accelance.fr (zimbra3.corp.accelance.fr
	[213.162.49.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02DC1E006F5
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 11:14:24 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by zimbra3.corp.accelance.fr (Postfix) with ESMTP id 91BDE28066
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 20:14:22 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra3.corp.accelance.fr
Received: from zimbra3.corp.accelance.fr ([127.0.0.1])
	by localhost (zimbra3.corp.accelance.fr [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id kWTPN+SFNf+q for <yocto@yoctoproject.org>;
	Tue, 19 Feb 2013 20:14:22 +0100 (CET)
Received: from zimbra2.corp.accelance.fr (zimbra2.corp.accelance.fr
	[213.162.49.232])
	by zimbra3.corp.accelance.fr (Postfix) with ESMTP id 39F0328063
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 20:14:22 +0100 (CET)
Date: Tue, 19 Feb 2013 20:14:22 +0100 (CET)
From: Pierre Ficheux <pierre.ficheux@openwide.fr>
To: yocto@yoctoproject.org
Message-ID: <7ca09268-8696-4643-87d9-33308da50dee@zimbra2.corp.accelance.fr>
In-Reply-To: <14bba8b5-a545-48ea-80a9-5c4e10de8c33@zimbra2.corp.accelance.fr>
MIME-Version: 1.0
X-Originating-IP: [78.227.34.107]
X-Mailer: Zimbra 7.1.3_GA_3346 (ZimbraWebClient - GC24 (Mac)/7.1.3_GA_3346)
Subject: Always removing status files in case of IPK
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
X-List-Received-Date: Tue, 19 Feb 2013 19:14:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I've noticed a problem in rootfs_ipk.bbclass as status files are always removed in case of using IPK (works fine with
RPM). Here is the small patch which fix it.

regards

diff --git a/meta/classes/rootfs_ipk.bbclass b/meta/classes/rootfs_ipk.bbclass
index fadec4d..89c3128 100644
--- a/meta/classes/rootfs_ipk.bbclass
+++ b/meta/classes/rootfs_ipk.bbclass
@@ -109,9 +109,6 @@ fakeroot rootfs_ipk_do_rootfs () {
                        if $remove_run_postinsts; then
                                update-rc.d -f -r ${IMAGE_ROOTFS} run-postinsts remove
                        fi
-
-                       # Also delete the status files
-                       remove_packaging_data_files
                fi
        fi
        set +x


-- 
Pierre FICHEUX -/- CTO OW/OS4I, France -\- pierre.ficheux@openwide.fr
                                         http://www.os4i.com
                                         http://www.linuxembedded.fr
I would love to change the world, but they won't give me the source code

