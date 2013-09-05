Return-Path: <mulhern@gmail.com>
Received: from mail-qe0-f50.google.com (mail-qe0-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BF94E003BF;
	Thu,  5 Sep 2013 14:56:12 -0700 (PDT)
Received: by mail-qe0-f50.google.com with SMTP id a11so1284089qen.23
	for <multiple recipients>; Thu, 05 Sep 2013 14:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=tY72kaE0ORhW2u50i0fWI1NPHB1nAdAv38CzSFNF4fU=;
	b=hLWFUP1nf5b8I6+IbEOz/vNoVsSLDoZ6pmtYK0LHWMM1Ef2PFSj757bIYm3pyyk/tI
	+vxRMrnCHnmfj93J+/qJCMoHPwen7ahtepGfNzSEw9Ru9PPGP9N+doiXfGpZ1ljzXKtz
	rm/AokSkdVAeEzgQqrgAtVLwvZbsgiVQOOkuhBCgwODTp+ezAwqwlVWPKikp+XGXUu6M
	jEdlI/+T5fzaOnPE/9Gm6n4s4GBXuH0/5ibBEZb/b7n6pdGx+Tk4Yzh30QUpRTL02Vlp
	C/6dFH5asesOh+/e5fJFa5ux1/JLR/A6hmHTfy3jWGaEUm5ku6dTs0Kz6j+H390jEw0a
	Nl9Q==
X-Received: by 10.49.2.68 with SMTP id 4mr12459996qes.64.1378418171733;
	Thu, 05 Sep 2013 14:56:11 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-67-186-188-203.hsd1.ma.comcast.net.
	[67.186.188.203]) by mx.google.com with ESMTPSA id
	p10sm44321205qat.10.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 05 Sep 2013 14:56:11 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Thu, 05 Sep 2013 17:56:09 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Thu,  5 Sep 2013 17:56:05 -0400
Message-Id: <cover.1378412801.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH 0/2] [meta-security] Cleanup of perl recipes.
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
X-List-Received-Date: Thu, 05 Sep 2013 21:56:12 -0000

Cleanup of perl recipes for CPAN modules in meta-security layer. One is
renamed, one is removed because a recipe already exists in core.
The following changes since commit 5ec81ec5b117de41ed56eb05df271f103213d7be:

  Bastille: document the current status and usability of the Bastille install. (2013-08-30 15:42:10 -0400)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib mulhern/bug5081
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mulhern/bug5081

mulhern (2):
  libenv-perl: Remove redundant recipe in meta-security layer.
  libcurses-perl: curses-perl renamed to libcurses-perl.

 recipes-security/bastille/bastille_3.2.1.bb        |    2 +-
 .../checksecurity/checksecurity_2.0.14.bb          |    2 +-
 recipes-security/perl/env-perl_1.04.bb             |   25 --------------------
 ...{curses-perl_1.28.bb => libcurses-perl_1.28.bb} |    0
 4 files changed, 2 insertions(+), 27 deletions(-)
 delete mode 100644 recipes-security/perl/env-perl_1.04.bb
 rename recipes-security/perl/{curses-perl_1.28.bb => libcurses-perl_1.28.bb} (100%)

-- 
1.7.10.4


