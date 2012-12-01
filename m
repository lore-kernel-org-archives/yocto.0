Return-Path: <yocto@mindchasers.com>
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E383E006C6
	for <yocto@yoctoproject.org>; Sat,  1 Dec 2012 07:15:22 -0800 (PST)
Received: from [192.168.1.11] (c-68-46-169-75.hsd1.nj.comcast.net
	[68.46.169.75])
	by smtp.webfaction.com (Postfix) with ESMTP id 4CC60207D3E8
	for <yocto@yoctoproject.org>; Sat,  1 Dec 2012 09:15:21 -0600 (CST)
Message-ID: <50BA1F07.3030802@mindchasers.com>
Date: Sat, 01 Dec 2012 10:15:19 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121011 Thunderbird/16.0.1
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [PATCH] Yocto Project Dev Manual - bad reference in dev-manual-newbie.xml
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
X-List-Received-Date: Sat, 01 Dec 2012 15:15:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I updated a note that points the reader to the maintainers list.  The 
note in the master branch pointed the reader to a nonexistent (old) file.

Signed-off-by: Robert Cochran<yocto@mindchasers.com>

---
  documentation/dev-manual/dev-manual-newbie.xml |    4 ++--
  1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-newbie.xml 
b/documentation/dev-manual/dev-manual-newbie.xml
index bb01131..8b078e1 100644
--- a/documentation/dev-manual/dev-manual-newbie.xml
+++ b/documentation/dev-manual/dev-manual-newbie.xml
@@ -742,8 +742,8 @@
          The maintainer is responsible for allowing changes in from 
other developers and for
          organizing the underlying branch structure to reflect release 
strategies and so forth.
          <note>You can see who is the maintainer for Yocto Project 
files by examining the
-        <filename>distro_tracking_fields.inc</filename> file in the 
Yocto Project
-        <filename>meta/conf/distro/include</filename> directory.</note>
+        <filename>maintainers.inc</filename> file in the Yocto Project
+        <filename>meta-yocto/conf/distro/include</filename> 
directory.</note>
      </para>

      <para>
-- 
1.7.9.5

