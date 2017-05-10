Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54989E00B45; Wed, 10 May 2017 00:46:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1919E00B3D
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 00:46:25 -0700 (PDT)
Received: by mail-wr0-f174.google.com with SMTP id l9so31504884wre.1
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 00:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=9SA/WaMMku8IzYfnsQJ6iX2M6pmjXOJ2CbuNuClHTtQ=;
	b=jE0u6TvJ7L3vWjEYn475mGBfh3+MY4rau0oGP5I0qgDw9+ZsPJ0S4qWdD/dLYkunHI
	YE857Hqg0UNou7d34hzmEM+9KvUqQfeYggY24jdAKHN14YMQvm9GO7S1a8f19262+GTC
	kG04eeE8KtOoWwyo+yYnXVCzdqpSQdtts5mns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=9SA/WaMMku8IzYfnsQJ6iX2M6pmjXOJ2CbuNuClHTtQ=;
	b=hziiOUZq2iJLlANf3q+qERArT9AH6Gcniu6TtqT2GzTuSE22FKjfXWM0iMf4JI4M15
	GNHgTUiRL+Y8kBZfZ3VuSn5fybGmfK0G2qxDt8dWQRTTUPeRKtFLzZpJ96akVKtgWyLH
	3mSyKhGDmfcWuATJnx5jD2tRAycHndANhgteF/ZR0QvTJsZCsQKbVktjfH4uFY+L80ym
	pYOJTUZlyAL78AHerng3RzzCc/1JLnNL+Kog9BD88RL2TGWODNxNO+FtD5bN9MsR0ZJd
	lMfsiW+4DQ83CaHJgPahwyglQtFtpZgkNBhB7/BVxBi5bVa5HqQ5iUNtrzcHMVVh/Cxn
	C17Q==
X-Gm-Message-State: AODbwcCxv5K3kmfwAXaJE1dastAfcusNtghiF0sttIdaY45CpEjTBHDy
	samA7qhVPdDx9BaQ9zU=
X-Received: by 10.28.55.16 with SMTP id e16mr2513087wma.59.1494402383982;
	Wed, 10 May 2017 00:46:23 -0700 (PDT)
Received: from [10.10.61.21] (ARennes-650-1-175-27.w92-135.abo.wanadoo.fr.
	[92.135.46.27]) by smtp.gmail.com with ESMTPSA id
	o17sm1947128wra.56.2017.05.10.00.46.22 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 10 May 2017 00:46:22 -0700 (PDT)
To: yocto@yoctoproject.org
References: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Message-ID: <f993b127-3076-e04b-187d-c0f6a8eda4ab@fridu.net>
Date: Wed, 10 May 2017 09:46:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
Subject: Re: [meta-security][PATCH 00/10] move tpm into its own layer
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
X-List-Received-Date: Wed, 10 May 2017 07:46:29 -0000
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="-1">Armin,<br>
      <br>
      very interesting move. Could you tell us where is located your git
      repo ?<br>
      Regards<br>
      <br>
      Dominig<br>
    </font><br>
    <div class="moz-cite-prefix">Le 09/05/2017 à 16:46, Armin Kuster a
      écrit :<br>
    </div>
    <blockquote
      cite="mid:1494341221-17621-1-git-send-email-akuster808@gmail.com"
      type="cite">
      <pre wrap="">tpm recipes copied as-is

This was done to allow inclusion of TPM components independent of the rest of the layer.
minimizes layerdepends

fixed incorrect use of DISTRO_FEATURES

Updated tpm kernel configs to newer version

added a few new packagegroups

Armin Kuster (10):
  tpm: move to a sub layer
  change tpm from distro to machine feature
  meta-tpm: add base package group as was in meta-security
  packagegroup: remove tpm components
  tpm packagegroups: split into logical units
  tpm-i2c: some systems us i2c TPM
  kernel tpm rework
  tpm-image: used for testing for now.
  linux-stable: fix module selections
  tpm2: package groups fixes

 meta-tpm/README                                    |  0
 meta-tpm/conf/layer.conf                           | 13 ++++++++++
 meta-tpm/recipes-core/images/security-tpm-image.bb | 19 ++++++++++++++
 .../packagegroup/packagegroup-security-tpm-i2c.bb  | 19 ++++++++++++++
 .../packagegroup/packagegroup-security-tpm.bb      | 29 ++++++++++++++++++++++
 .../packagegroup/packagegroup-security-tpm2.bb     | 18 ++++++++++++++
 .../packagegroup/packagegroup-security-vtpm.bb     | 14 +++++++++++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg  |  8 ++++++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc  |  3 +++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg |  6 +++++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc |  3 +++
 .../recipes-kernel/linux/linux-yocto/tpm_i2c.cfg   | 15 +++++++++++
 .../recipes-kernel/linux/linux-yocto/tpm_i2c.scc   |  6 +++++
 .../recipes-kernel/linux/linux-yocto/tpm_x86.cfg   |  4 +++
 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg |  5 ++++
 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc |  4 +++
 .../recipes-kernel/linux/linux-yocto_4.%.bbappend  | 17 +++++++++++++
 .../Convert-another-vdprintf-to-dprintf.patch      |  0
 .../files/Use-format-s-for-call-to-dprintf.patch   |  0
 .../libtpm/files/fix_signed_issue.patch            |  0
 .../recipes-tpm}/libtpm/libtpm_1.0.bb              |  0
 .../recipes-tpm}/swtpm/files/fix_fcntl_h.patch     |  0
 .../swtpm/files/fix_lib_search_path.patch          |  0
 .../swtpm/files/fix_signed_issue.patch             |  0
 .../recipes-tpm}/swtpm/files/ioctl_h.patch         |  0
 .../recipes-tpm}/swtpm/swtpm-wrappers-native.bb    |  0
 .../recipes-tpm}/swtpm/swtpm_1.0.bb                |  0
 .../tpm-tools/files/tpm-tools-extendpcr.patch      |  0
 .../recipes-tpm}/tpm-tools/tpm-tools_git.bb        |  0
 .../recipes-tpm}/tpm2.0-tools/tpm2.0-tools_git.bb  |  0
 .../tpm2.0-tss/tpm2.0-tss/ax_pthread.m4            |  0
 .../tpm2.0-tss/fix_musl_select_include.patch       |  0
 .../recipes-tpm}/tpm2.0-tss/tpm2.0-tss_git.bb      |  0
 .../tpm2simulator/tpm2simulator-native_116.bb      |  0
 ...path-use-POSIX-getpwent-instead-of-getpwe.patch |  0
 .../recipes-tpm}/trousers/files/tcsd.service       |  0
 .../trousers/files/trousers-udev.rules             |  0
 .../recipes-tpm}/trousers/files/trousers.init.sh   |  0
 .../recipes-tpm}/trousers/trousers_git.bb          |  0
 recipes-kernel/linux/linux-yocto_4.10.bbappend     |  3 ---
 .../packagegroup/packagegroup-core-security.bb     | 18 ++------------
 41 files changed, 185 insertions(+), 19 deletions(-)
 create mode 100644 meta-tpm/README
 create mode 100644 meta-tpm/conf/layer.conf
 create mode 100644 meta-tpm/recipes-core/images/security-tpm-image.bb
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_x86.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/libtpm/files/Convert-another-vdprintf-to-dprintf.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/libtpm/files/Use-format-s-for-call-to-dprintf.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/libtpm/files/fix_signed_issue.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/libtpm/libtpm_1.0.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/swtpm/files/fix_fcntl_h.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/swtpm/files/fix_lib_search_path.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/swtpm/files/fix_signed_issue.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/swtpm/files/ioctl_h.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/swtpm/swtpm-wrappers-native.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/swtpm/swtpm_1.0.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm-tools/files/tpm-tools-extendpcr.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm-tools/tpm-tools_git.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm2.0-tools/tpm2.0-tools_git.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4 (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss_git.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm2simulator/tpm2simulator-native_116.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/trousers/files/tcsd.service (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/trousers/files/trousers-udev.rules (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/trousers/files/trousers.init.sh (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/trousers/trousers_git.bb (100%)

</pre>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre</pre>
  </body>
</html>

