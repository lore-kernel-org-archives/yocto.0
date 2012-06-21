Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95FBBE01422
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 08:25:29 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2698400pbb.35
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 08:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=27LDuQX9LEemGnf58Cef6m+WdnUfh+hEa2Z1Yeq+mr8=;
	b=lLORiO0PnjyMQEg/DowPAVRA62cDkhyRa8jO3xovcuVjnh5MBSqzA6SbCycrIdhh+b
	uYKZZ6uaRptL8M43ypn7m+QTwiEdv/zCbBPpemCmWae0YvZPyW0WBFoqcSytWT1xkOpc
	5PvjYFI1nuJXUHHroqW4bzLD3jtNpTo7cNt58kjPsSv9r/3fOX1iCvqUJ2TRL4L2HBbN
	OiiqyC6NmQwNNp/byqJkPXNu0q3FRJpLqSgN7it+x0NsW37BPogoDA9UIbzwRDN0r03d
	70x7mEfQ9Is+9SJtxWwkcOJN8vKHe/ZhbSoq0wYeCYckJiUQijlxi/yX2NaQv09m2ZlT
	pT9Q==
Received: by 10.68.226.137 with SMTP id rs9mr44633648pbc.114.1340292329309;
	Thu, 21 Jun 2012 08:25:29 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id jv6sm35952811pbc.40.2012.06.21.08.25.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 21 Jun 2012 08:25:28 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 21 Jun 2012 19:25:24 +0400
Message-Id: <A932C833-018B-430E-874B-2281A3B80E64@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Error: PATH contains '.' or '', which will break the build, please remove this.
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
X-List-Received-Date: Thu, 21 Jun 2012 15:25:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
     I just updated my yocto repos and tried a fresh build.

My bblayers.conf file looks like this:

# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION =3D "4"

BBFILES ?=3D ""
BBLAYERS ?=3D " \
  /tool/yocto/poky/meta \
  /tool/yocto/poky/meta-yocto \
  /tool/yocto/meta-openembedded/meta-oe \
  /tool/yocto/meta-xilinx \
  "

And when I run the bitake core-image-minimal;bitbake meta-toolchain  I =
get the following errors:

$ bitbake core-image-minimal;bitbake meta-toolchain;
Pseudo is not present but is required, building this first before the =
main build
WARNING: Unable to get checksum for python-numpy SRC_URI entry config.h: =
file could not be found           | ETA:  00:00:49
WARNING: Unable to get checksum for python-numpy SRC_URI entry =
numpyconfig.h: file could not be found
WARNING: =
/tool/yocto/meta-openembedded/meta-oe/recipes-connectivity/networkmanager/=
networkmanager_0.9.2.0.bb: it is recommended to set SYSTEMD_PACKAGES as =
<existing-package>-systemd
WARNING: =
/tool/yocto/poky/meta/recipes-extended/lighttpd/lighttpd_1.4.30.bb: it =
is recommended to set SYSTEMD_PACKAGES as <existing-package>-systemd
Parsing recipes: 100% =
|#########################################################################=
###########| Time: 00:00:37
Parsing of 1186 .bb files complete (0 cached, 1186 parsed). 1524 =
targets, 40 skipped, 0 masked, 0 errors.
WARNING: BBPATH references the current directory, either through an =
empty entry, or a '.'.
	 This is unsafe and means your layer configuration is adding =
empty elements to BBPATH.
	 Please check your layer.conf files and other BBPATH settings to =
remove the current working directory references.
ERROR:  OE-core's config sanity checker detected a potential =
misconfiguration.
    Either fix the cause of this error or at your own risk disable the =
checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    PATH contains '.' or '', which will break the build, please remove =
this.
ERROR: Execution of event handler 'check_sanity_eventhandler' failed
ERROR: Command execution failed: Exited with 1

Summary: There were 5 WARNING messages shown.
Summary: There were 3 ERROR messages shown, returning a non-zero exit =
code.
Pseudo is not present but is required, building this first before the =
main build
Loading cache: 100% =
|#########################################################################=
#############| ETA:  00:00:00
Loaded 1523 entries from dependency cache.
Parsing recipes: 100% =
|#########################################################################=
###########| Time: 00:00:07
Parsing of 1186 .bb files complete (1184 cached, 2 parsed). 1524 =
targets, 40 skipped, 0 masked, 0 errors.
WARNING: BBPATH references the current directory, either through an =
empty entry, or a '.'.
	 This is unsafe and means your layer configuration is adding =
empty elements to BBPATH.
	 Please check your layer.conf files and other BBPATH settings to =
remove the current working directory references.
ERROR:  OE-core's config sanity checker detected a potential =
misconfiguration.
    Either fix the cause of this error or at your own risk disable the =
checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    PATH contains '.' or '', which will break the build, please remove =
this.
ERROR: Execution of event handler 'check_sanity_eventhandler' failed
ERROR: Command execution failed: Exited with 1

Summary: There was 1 WARNING message shown.
Summary: There were 3 ERROR messages shown, returning a non-zero exit =
code.


Best regards,

Elvis Dowson=

