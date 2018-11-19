Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA8A2E00C58; Sun, 18 Nov 2018 19:08:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A99B1E00C58
	for <yocto@yoctoproject.org>; Sun, 18 Nov 2018 19:08:22 -0800 (PST)
Received: by mail-pl1-f195.google.com with SMTP id f12-v6so13859965plo.1
	for <yocto@yoctoproject.org>; Sun, 18 Nov 2018 19:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=YAB2+kNDxki8bJd+QPzSOlGB+CevN+84+AEVwXtZ+AQ=;
	b=sl0J3evhcpnIW9sydi9Tc/WDkkKj68qtUFAjSW7bSbdD08y55HfBl61Tw2n9UPwdTV
	R5YaqvC7BQlV+oGtGpU2jIeSVebj/U4xdA2vBgi7p+QelT8T7nGw+T4dusnP4PKfVFEY
	Ir7m58HQ1G1FlILuSVQ95IhQ1fgmQYxIl1v6UjWfkzgzkJcbrGSy1Ino2WDwKdAItjta
	+UmXNUDn/Bn32hBehYFgBsvarqRt4EV0qzRob9tzBhClMsPwqxabkSBcH4PfeBNiBODU
	KUVCdSdazY2Kc9Ty/fdKSltvbjkWjHUdLtIEhjYBVio9sQcnaKT0cRN5OsU09bGd915l
	HQ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=YAB2+kNDxki8bJd+QPzSOlGB+CevN+84+AEVwXtZ+AQ=;
	b=sOqpfG5dIrT1l2MhG88dDz6xoyTigKHQXoCzuyunP40eH4div7h2kAFOy/an/6mh+b
	xr6W5fY3mr5rf0ucJ3sQ86ZmaknYrr8zUlexAVRV5wfZi3YObsWbWRYjevDtSieWAbLv
	12Cg5dqKZFb9ACwbvW/D/vRJOM5XWC8tea3UHKseQJA0FY0a34mxDc7R/OnuU6asMBo2
	skBk0A9lqFseLQGVvs0Y9C3T8x/nsJLYZGwd1tppY92aM+BTgaCzTnQbMcumbCsYVzsC
	u27J2YFL+rnFJltfNHvytnJwuhlsTeka3bsjkI4tpVeiJR2+DhInjU/YGKy74vO/0YAH
	BTeQ==
X-Gm-Message-State: AGRZ1gJhdumlqXiH9rlq24JaeachQLWQsR2sa2i+MTBCR28TwDgUAQmM
	p7sb7KLupz7BrwcrefjmVZY=
X-Google-Smtp-Source: AJdET5eoE0AxlnA4T/kQVNkdsrPIcUXrzDSbKnwpGaGqppEgf8LGOMoo9Qm8Wp//vQeXeq4Ijzd+aQ==
X-Received: by 2002:a17:902:24e7:: with SMTP id
	l36-v6mr20563516plg.243.1542596902151; 
	Sun, 18 Nov 2018 19:08:22 -0800 (PST)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:8599:3a91:5ee0:9f77])
	by smtp.gmail.com with ESMTPSA id
	e188sm22519861pfg.130.2018.11.18.19.08.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 18 Nov 2018 19:08:21 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org,
	srifenbark@gmail.com
Date: Sun, 18 Nov 2018 19:08:20 -0800
Message-Id: <1542596900-12856-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [yocto-docs][thud][v2][PATCH] ref-system-requirements: sync with thud poky.conf
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
X-List-Received-Date: Mon, 19 Nov 2018 03:08:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

poky.conf
    ubuntu-16.04
    ubuntu-16.10
    ubuntu-17.04
    fedora-26
    centos-7
    debian-8
    debian-9
    opensuse-42.1
    opensuse-42.2

Signed-off-by: Armin Kuster <akuster808@gmail.com>

--
[v2]
Drop LTS for ubuntu-16.10
---
 documentation/ref-manual/ref-system-requirements.xml | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/documentation/ref-manual/ref-system-requirements.xml b/documentation/ref-manual/ref-system-requirements.xml
index 9298e84..6795a69 100644
--- a/documentation/ref-manual/ref-system-requirements.xml
+++ b/documentation/ref-manual/ref-system-requirements.xml
@@ -93,19 +93,22 @@
                 <listitem><para>Ubuntu 11.10</para></listitem>
                 <listitem><para>Ubuntu 12.04 (LTS)</para></listitem>
                 <listitem><para>Ubuntu 13.10</para></listitem>
-                <listitem><para>Ubuntu 14.04 (LTS)</para></listitem> -->
+                <listitem><para>Ubuntu 14.04 (LTS)</para></listitem> 
                 <listitem><para>Ubuntu 14.10</para></listitem>
                 <listitem><para>Ubuntu 15.04</para></listitem>
-                <listitem><para>Ubuntu 15.10</para></listitem>
+                <listitem><para>Ubuntu 15.10</para></listitem> -->
                 <listitem><para>Ubuntu 16.04 (LTS)</para></listitem>
+                <listitem><para>Ubuntu 16.10 </para></listitem>
+                <listitem><para>Ubuntu 17.04 </para></listitem>
 <!--                <listitem><para>Fedora 16 (Verne)</para></listitem>
                 <listitem><para>Fedora 17 (Spherical)</para></listitem>
                 <listitem><para>Fedora release 19 (Schrödinger's Cat)</para></listitem>
-                <listitem><para>Fedora release 20 (Heisenbug)</para></listitem> -->
+                <listitem><para>Fedora release 20 (Heisenbug)</para></listitem> 
                 <listitem><para>Fedora release 22</para></listitem>
                 <listitem><para>Fedora release 23</para></listitem>
-<!--                <listitem><para>Fedora release 24</para></listitem>
-                <listitem><para>CentOS release 5.6 (Final)</para></listitem>
+                <listitem><para>Fedora release 24</para></listitem> -->
+                <listitem><para>Fedora release 26</para></listitem>
+<!--                <listitem><para>CentOS release 5.6 (Final)</para></listitem>
                 <listitem><para>CentOS release 5.7 (Final)</para></listitem>
                 <listitem><para>CentOS release 5.8 (Final)</para></listitem>
                 <listitem><para>CentOS release 6.3 (Final)</para></listitem>
@@ -121,13 +124,14 @@
                 <listitem><para>Debian GNU/Linux 7.4 (Wheezy)</para></listitem>
                 <listitem><para>Debian GNU/Linux 7.5 (Wheezy)</para></listitem>
                 <listitem><para>Debian GNU/Linux 7.6 (Wheezy)</para></listitem> -->
-<!--                <listitem><para>openSUSE 11.4</para></listitem>
+<!--                <listitem><para>openSUSE 11.4</para></listitem> 
                 <listitem><para>openSUSE 12.1</para></listitem>
                 <listitem><para>openSUSE 12.2</para></listitem>
                 <listitem><para>openSUSE 12.3</para></listitem>
-                <listitem><para>openSUSE 13.1</para></listitem> -->
-                <listitem><para>openSUSE 13.2</para></listitem>
+                <listitem><para>openSUSE 13.1</para></listitem> 
+                <listitem><para>openSUSE 13.2</para></listitem> -->
                 <listitem><para>openSUSE 42.1</para></listitem>
+                <listitem><para>openSUSE 42.2</para></listitem>
             </itemizedlist>
         </para>
 
-- 
2.7.4


