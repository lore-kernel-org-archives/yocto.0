Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C39C8E00B3E; Sun, 18 Nov 2018 18:15:14 -0800 (PST)
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
	*      [209.85.215.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 226BBE00901
	for <yocto@yoctoproject.org>; Sun, 18 Nov 2018 18:15:13 -0800 (PST)
Received: by mail-pg1-f196.google.com with SMTP id d72so9655270pga.9
	for <yocto@yoctoproject.org>; Sun, 18 Nov 2018 18:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=rxVT4BCABHGVM3GXyO2/eLmV+lQNSl9jPu413vAozUg=;
	b=SW/BTCA3LjAjeScrghbO6XEAjX+lGOthYVW0waygWzGmVf0tzhO75mq8m/O0RIDAIw
	3Rd9jPc8c8ai3i1bSyJNY2SPyRZ0gkmUGaUKJLZYwATGKSvbLpCPZVnjYhxN2y8ntTif
	41uTrPftjJfN9oksXb2VzJ5CjEzySdjiHwOw1f68gmL8Neb3o7kq4HfX7n4zUeUDwps5
	ORnRakaXq6m2EipuFuH0cKMheZDJvgdXd48+sb6pjZNmJjjqsSCrdXfXo4+wseMGavbQ
	GvkNlfkLhRdibpwMcnrTDnDTfRyw6zukStr/8FHsGQ74X9FWot5I9Qotg3R5QJ9gSUtn
	sh3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=rxVT4BCABHGVM3GXyO2/eLmV+lQNSl9jPu413vAozUg=;
	b=K7gm+gD4udLYd05muOTuqrtA+wPM8xK8kL3fhuizUcw0ejAxCNdmaG1IJhjxDud5nZ
	/Fzifii1cDysCccCBT5GdlN9KvVkHF/uJ05d5QQ5Idfrejw3xQyczIeh8PKV8MAE8/Oe
	KrkP9TRXGzwmUmPXgfL2cosu7TXK0Fj8/xaV96vlePfXVTLQqrkb/GckztIWh3XeHAb+
	st829mq6nHSpPJKGU7gKS9rUR3itAjEkYq+t8j1zi0cA5NzbD9nNQUSxNl14GzQT4vP2
	SgcW83yjQ5+gLUqfzjeRAkpC5+OsUgtpiFnF67729SkdToDjQEqA34s8/+/9wzwVHQhX
	yJsw==
X-Gm-Message-State: AGRZ1gIN3iJIUNnN0lBe4vYtzmkrU+sJQ11zdv8z7rZnhuNbkiHj9KFU
	RSdn90dzYFbniM2JQ8dItVU=
X-Google-Smtp-Source: AJdET5eV+s1eR6jV8n9Gu04ue8lj+LwAqnF6R9VGZUSASDaGRDBg2EIeQvLquxOoz9plD1U2GFJ2Ng==
X-Received: by 2002:a62:e0d8:: with SMTP id d85mr20666020pfm.214.1542593713282;
	Sun, 18 Nov 2018 18:15:13 -0800 (PST)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:8599:3a91:5ee0:9f77])
	by smtp.gmail.com with ESMTPSA id
	p62-v6sm44180597pfp.111.2018.11.18.18.15.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 18 Nov 2018 18:15:12 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org,
	srifenbark@gmail.com
Date: Sun, 18 Nov 2018 18:15:11 -0800
Message-Id: <1542593711-13820-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [[yocto-docs][thud][PATCH] ref-system-requirements: sync with thud poky.conf
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
X-List-Received-Date: Mon, 19 Nov 2018 02:15:14 -0000
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
---
 documentation/ref-manual/ref-system-requirements.xml | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/documentation/ref-manual/ref-system-requirements.xml b/documentation/ref-manual/ref-system-requirements.xml
index 9298e84..0abc47e 100644
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
+                <listitem><para>Ubuntu 16.10 (LTS)</para></listitem>
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


