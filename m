Return-Path: <muhammad_shakeel@mentor.com>
Received: from gemini.alm.mentorg.com (nat-lmt.mentorg.com [139.181.28.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93726E01512
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 08:31:09 -0700 (PDT)
Received: from pkl-mshakeel-ubuntu.mgc.mentorg.com ([137.202.157.119])
	by gemini.alm.mentorg.com (8.14.4/8.14.4) with ESMTP id r5BFV03B013348; 
	Tue, 11 Jun 2013 10:31:02 -0500
From: "Shakeel, Muhammad" <muhammad_shakeel@mentor.com>
To: holger.behrens@windriver.com, florin.sarbu@windriver.com
Date: Tue, 11 Jun 2013 20:30:38 +0500
Message-Id: <1370964638-30649-1-git-send-email-muhammad_shakeel@mentor.com>
X-Mailer: git-send-email 1.7.9.5
Cc: yocto@yoctoproject.org
Subject: [PATCH 1/3] [meta-ivi] portmap: Use systemd service type forking instead of oneshot
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
X-List-Received-Date: Tue, 11 Jun 2013 15:31:12 -0000

From: Muhammad Shakeel <muhammad_shakeel@mentor.com>

portmap is a resident program and we want to start it in background.
With service type 'forking' systemd knows that the executable is a daemon.
Although in this case 'oneshot' + 'RemainAfterExit=yes' works but it
is intended for non-resident programs.

Signed-off-by: Muhammad Shakeel <muhammad_shakeel@mentor.com>
---
 .../portmap/portmap/portmap.service                |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-connectivity/portmap/portmap/portmap.service b/recipes-connectivity/portmap/portmap/portmap.service
index 7f9bc94..a76754f 100644
--- a/recipes-connectivity/portmap/portmap/portmap.service
+++ b/recipes-connectivity/portmap/portmap/portmap.service
@@ -3,9 +3,9 @@ Description=Portmap
 After=connman.service
 
 [Service]
-Type=oneshot
+Type=forking
 ExecStart=/sbin/portmap -l
-RemainAfterExit=yes
+PIDFile=/var/run/portmap.pid
 
 [Install]
 WantedBy=multi-user.target
-- 
1.7.9.5


