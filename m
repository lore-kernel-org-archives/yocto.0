Return-Path: <ajlennon@gmail.com>
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61111E009FE
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 08:57:17 -0800 (PST)
Received: by mail-we0-f177.google.com with SMTP id u57so1690232wes.36
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 08:57:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=WG9pgDaV/eUiu0f7IdKV4B4N5Dhgo2gG+hDUsB4w7sw=;
	b=JW8MGgpzU7m3hi/2VWLmCgI/MNje0vDANuvk2oQ76KBpsBnwfRssp1OIDehu6jVQZ/
	kSl+742QP8WVfxxgs61JJXHc06NevuJW4ZWvCyOgHciAiDsUW2br2PoTfMaYWEfYirmU
	5kjOPSdbODAKBzZDh7JC52U77iEH/eV9pMVOO5Sx6r5WfyonNej2M7giTuuaTuSchGvU
	nQ9vfAOmha9d8ZiPtC/9WiWXCyZdoWdr6NCfrtC0gtB1fe3RTozkJo4wdHkH6R/DbOS7
	mvjRJJT1ZKRZSqsvHuQmSje4GOz0hPG2Zm2kcCwvL2ApvW2gh1goIYvJ0S9ENGQBQk4j
	/c2w==
X-Received: by 10.194.158.136 with SMTP id wu8mr5985900wjb.91.1393865828221;
	Mon, 03 Mar 2014 08:57:08 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id f7sm37941181wjb.7.2014.03.03.08.57.06
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Mar 2014 08:57:07 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Mon,  3 Mar 2014 16:56:28 +0000
Message-Id: <cover.1393865664.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-mono] [PATCH 0/1] dbus-sharp, dbus-sharp-glib: Added C# managed implementation of D-Bus and GLib bindings
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
X-List-Received-Date: Mon, 03 Mar 2014 16:57:18 -0000

Please see following patch

The following changes since commit 7f3178c393a9ad71bcda4e6c3aebbaaf16037d10:

  fsharp: Add support for F# programming language v3.1 (2014-03-03 16:46:59 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/meta-mono ajl/dbus-sharp
  http://git.yoctoproject.org/cgit.cgi/meta-mono/log/?h=ajl/dbus-sharp

Alex J Lennon (1):
  dbus-sharp, dbus-sharp-glib: Added C# managed implementation of D-Bus
    and GLib bindings

 recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc   |   35 ++++++++++++++++++++
 .../dbus-sharp-glib/dbus-sharp-glib_0.6.0.bb       |    6 ++++
 .../fix-message-reader-writer.patch                |   29 ++++++++++++++++
 recipes-mono/dbus-sharp/dbus-sharp.inc             |   31 +++++++++++++++++
 recipes-mono/dbus-sharp/dbus-sharp_0.8.0.bb        |    9 +++++
 5 files changed, 110 insertions(+)
 create mode 100644 recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc
 create mode 100644 recipes-mono/dbus-sharp-glib/dbus-sharp-glib_0.6.0.bb
 create mode 100644 recipes-mono/dbus-sharp/dbus-sharp-0.8.0/fix-message-reader-writer.patch
 create mode 100644 recipes-mono/dbus-sharp/dbus-sharp.inc
 create mode 100644 recipes-mono/dbus-sharp/dbus-sharp_0.8.0.bb

-- 
1.7.9.5


