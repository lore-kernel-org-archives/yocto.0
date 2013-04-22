Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 877F4E0054B
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 08:14:13 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:38063 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UUIRY-0001XG-1u
	for yocto@yoctoproject.org; Mon, 22 Apr 2013 11:14:12 -0400
Date: Mon, 22 Apr 2013 11:14:08 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304221112120.7521@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [PATCH][meta-yocto] Fix typoes in BSP help scripts.
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
X-List-Received-Date: Mon, 22 Apr 2013 15:14:13 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Numerous examples of command "yocto bsp" should be "yocto-bsp".

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i'm assuming i'm not misintgerpreting what's happening here.



diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 427b5a0..d152025 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -120,13 +120,13 @@ yocto_bsp_create_usage = """
  bblayers.conf file in order for it to be subsequently seen and
  modified by the yocto-kernel tool.

- See 'yocto bsp help create' for more detailed instructions.
+ See 'yocto-bsp help create' for more detailed instructions.

  NOTE: For x86-based BSPs that select the EMGD xserver, the generated
  BSP assumes the presence of the meta-intel layer. Ensure the
  meta-intel layer is present and added to bblayers.conf.

- See 'yocto bsp help create' for more detailed instructions.
+ See 'yocto-bsp help create' for more detailed instructions.
 """

 yocto_bsp_create_help = """
@@ -216,16 +216,16 @@ yocto_bsp_list_usage = """
  specified option or property needed by the BSP creation process.

  The first form enumerates all the possible values that exist and can
- be specified for the 'karch' parameter to the 'yocto bsp create'
+ be specified for the 'karch' parameter to the 'yocto-bsp create'
  command.

  The second form enumerates all the possible properties that exist and
- must have values specified for them in the 'yocto bsp create' command
+ must have values specified for them in the 'yocto-bsp create' command
  for the given 'karch'.

  The third form enumerates all the possible values that exist and can
  be specified for any of the enumerable properties of the given
- 'karch' in the 'yocto bsp create' command.
+ 'karch' in the 'yocto-bsp create' command.

  See 'yocto-bsp help list' for more details.
 """
@@ -247,7 +247,7 @@ DESCRIPTION
     specified option or property needed by the BSP creation process.

     The first form enumerates all the possible values that exist and
-    can be specified for the 'karch' parameter to the 'yocto bsp
+    can be specified for the 'karch' parameter to the 'yocto-bsp
     create' command.  Example output for the 'list karch' command:

     $ yocto-bsp list karch
@@ -260,7 +260,7 @@ DESCRIPTION
         qemu

     The second form enumerates all the possible properties that exist
-    and must have values specified for them in the 'yocto bsp create'
+    and must have values specified for them in the 'yocto-bsp create'
     command for the given 'karch'.  This command is mainly meant to
     allow the development user interface alternatives to the default
     text-based prompting interface.  If the -o option is specified,
@@ -326,7 +326,7 @@ DESCRIPTION

     The third form enumerates all the possible values that exist and
     can be specified for any of the enumerable properties of the given
-    'karch' in the 'yocto bsp create' command.  If the -o option is
+    'karch' in the 'yocto-bsp create' command.  If the -o option is
     specified, the list of values for the given property, in addition
     to being displayed, will be written to the specified file as a
     JSON object.  In this case, the object will consist of the set of


rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

