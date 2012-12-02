Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12978E011C0
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2012 15:01:10 -0800 (PST)
Received: from localhost (71-20-35-93.war.clearwire-wmx.net [71.20.35.93])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 3A69430473
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2012 18:00:57 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: yocto@yoctoproject.org
Date: Sun,  2 Dec 2012 15:00:51 -0800
Message-Id: <cover.1354489190.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 3A69430473.CF1B7
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 0/1] meta-yocto layer.conf consistency fix
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
X-List-Received-Date: Sun, 02 Dec 2012 23:01:10 -0000

Just a fix to make the appending to BBPATH consistent with how we set
it in other layers.

Scott

The following changes since commit 247b6a3754c2c50318e2a73d79981ba0e9cb560b:

  gstreamer, gst-plugins*: fix localdata (2012-11-28 15:25:33 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgarman/meta-yocto-layer-fix
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/meta-yocto-layer-fix

Scott Garman (1):
  meta-yocto layer.conf: Append to BBPATH consistent with other layers

 meta-yocto/conf/layer.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
1.7.9.5


