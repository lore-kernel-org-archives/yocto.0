Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D011DE00C71; Fri,  4 Jan 2019 07:21:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA488E00B43
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2019 07:21:44 -0800 (PST)
Received: by mail-it1-f193.google.com with SMTP id g85so1957667ita.3
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2019 07:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id;
	bh=sA5FrTY8Q4MjkSL9iQ2MJrudnYdh6ZVqSRihe9Y+MrQ=;
	b=aDchPneJw/naNRNTTEAXNNY0kIwZjLi0uxfF/YUPXkTnyTqbdU6RIeGEewJbB1jAcG
	/L9zdb/U5veTWY5ZN1kGR5miytamfXZa+5M2eJZsosfzvIBS5E4QzqVc2ebm3LVh5Ek+
	pC7rAuAi6KYT7QtHvVt/uUdhftn1e0fKQgz2wVF6TdjiaqJh3GGYK6N/pQccAUZTWOTC
	+WVBgCPWcoA6wBgnBL3/EIxfOptWOx5pPo1YBWYmiy4HvECIBg8Szh8HAt98ZtSLaTWJ
	1snuJlwAQxIet44QfPsH1jZAO6/eLqRoxLvMGkMz/r3HdyFbKugQxN+FkjrSTw/v2SGn
	7Nng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=sA5FrTY8Q4MjkSL9iQ2MJrudnYdh6ZVqSRihe9Y+MrQ=;
	b=Sxsbbb3KgbM0yWCnbWsbdnY6yw0zVBKu7qdY2iBbA9rIHEcUASAljClEw1gdFJMaaz
	IlVsXqSSIw4zKCu0elf2DwP7HZ7oMAs0IVbdCpoiysW7v/0LFIvcGdgHNOR5jYy6uOnO
	ZU1QNXNqgwkVCSxuT+68Maq6K+F/FPBg6wAjoRU89OWCFSlGzfCdaeB5KXazu9DD1aBK
	EPfbCcsZt7LkG+n9Ne3XyZcLuK15s/FC2F2MhRF4TzeEEnm+VnMleLrn4cvATUmAOlaM
	nxHFaxT1FJ48eoQs1g6jNz6x88fSoXLIc2GEE4Ilj00AU1q/kYst4n3ljZxJT1NA+d3j
	1nGg==
X-Gm-Message-State: AJcUukdsT0sLKk5Cw+orvLljKjNF+k8888r/1kghpF4TBm473JPEzRi2
	f2Eu7bWFfMzRtg97ylQx5Fg=
X-Google-Smtp-Source: ALg8bN7AgRiiRUOjPzqVjW90C7/NiuqbZBSZ+MyHg6A4y2rrb+3pCFaLYeyzufqHs8mh3bAcpvSksw==
X-Received: by 2002:a24:1d1:: with SMTP id 200mr1201530itk.146.1546615304070; 
	Fri, 04 Jan 2019 07:21:44 -0800 (PST)
Received: from localhost.localdomain ([204.77.163.42])
	by smtp.gmail.com with ESMTPSA id
	h13sm7139676ioq.72.2019.01.04.07.21.43
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 04 Jan 2019 07:21:43 -0800 (PST)
Sender: Matt Hoosier <matt.hoosier@gmail.com>
From: Matt Hoosier <matt.hoosier@garmin.com>
To: mark.hatle@windriver.com
Date: Fri,  4 Jan 2019 09:21:30 -0600
Message-Id: <20190104152130.3834-1-matt.hoosier@garmin.com>
X-Mailer: git-send-email 2.17.2
Cc: yocto@yoctoproject.org, Matt Hoosier <matt.hoosier@garmin.com>
Subject: [prelink-cross][PATCH] Support config dropfiles
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
X-List-Received-Date: Fri, 04 Jan 2019 15:21:45 -0000

When packages provide executables or libraries in nonstandard
locations, these have to be declared in prelink.conf in order for
the tool to find them during its crawl through the filesystem.

But arranging for each package to individually edit the centralized
prelink.conf file is error-prone. Dropfiles are a good solution to
this sort of problem (e.g., systemd's unit files and central
configuration each use this mechanism).

Add support in prelink for a similar paradigm. Whatever the config
file is, search also for *.conf in <configfile>.d. In practice, this
works out to <sysrootdir>/etc/prelink.conf.d/*.conf.

Signed-off-by: Matt Hoosier <matt.hoosier@garmin.com>
---
 doc/prelink.8   | 18 +++++++++++++-----
 doc/prelink.tex |  2 +-
 src/gather.c    | 26 ++++++++++++++++++++++++++
 3 files changed, 40 insertions(+), 6 deletions(-)

diff --git a/doc/prelink.8 b/doc/prelink.8
index 215445e..9bdd247 100644
--- a/doc/prelink.8
+++ b/doc/prelink.8
@@ -58,7 +58,9 @@ print what would be prelinked.
 .B \-a \-\-all
 Prelink all binaries and dependent libraries found in directory hierarchies
 specified in
-.IR /etc/prelink.conf .
+.IR /etc/prelink.conf
+and
+.IR /etc/prelink.conf.d/*.conf .
 Normally, only binaries specified on the command line and their dependent
 libraries are prelinked.
 .TP
@@ -101,7 +103,9 @@ option).
 .TP
 .B \-c \-\-config\-file=CONFIG
 Specify an alternate config file instead of default
-.IR /etc/prelink.conf .
+.IR /etc/prelink.conf
+and
+.IR /etc/prelink.conf.d/*.conf .
 .TP
 .B \-C \-\-cache\-file=CACHE
 Specify an alternate cache file instead of default
@@ -257,6 +261,8 @@ the libraries they depend on are prelinked with them.
 .RE
 prelinks all binaries found in directories specified in
 .I /etc/prelink.conf
+and
+.I /etc/prelink.conf.d/*.conf
 and all their dependent libraries, assigning libraries unique virtual
 address space slots only if they ever appear together, and starts
 assigning libraries at a random address.
@@ -284,10 +290,10 @@ You can run
 .I /usr/sbin/prelink -p
 to see what is stored in there.
 .TP 20
-.B /etc/prelink.conf
-Configuration file containing a list of directory hierarchies that
+.B /etc/prelink.conf /etc/prelink.conf.d/*.conf
+Configuration files containing a list of directory hierarchies that
 contain ELF shared libraries or binaries which should be prelinked.
-This configuration file is used in
+These configuration files are used in
 .B \-a
 mode to find binaries which should be prelinked and also, no matter whether
 .B \-a
@@ -297,6 +303,8 @@ prelinked. If
 finds a dependent library of some binary or other library which is not
 present in any of the directories specified either in
 .B /etc/prelink.conf
+and
+.B /etc/prelink.conf.d/*.conf
 or on the command line, then it cannot be prelinked.
 Each line of the config file should be either a comment starting with
 .BR # ,
diff --git a/doc/prelink.tex b/doc/prelink.tex
index 5075030..a931166 100644
--- a/doc/prelink.tex
+++ b/doc/prelink.tex
@@ -625,7 +625,7 @@ The second mode is {\sl full prelinking}, where the \tts{-a} option is
 given on the command line.  This in addition to incremental prelinking
 queues all executables found in directory trees specified in \tts{prelink.conf}
 (which typically includes all or most directories where system executables
-are found).  For each directory subtree in the config file the user
+are found) or \tts{prelink.conf.d/*.conf}.  For each directory subtree in the config file the user
 can specify whether symbolic links to places outside of the tree are to be followed
 or not and whether searching should continue even across filesystem
 boundaries.
diff --git a/src/gather.c b/src/gather.c
index 751822c..130ecd5 100644
--- a/src/gather.c
+++ b/src/gather.c
@@ -1190,6 +1190,32 @@ read_config (const char *config)
 
   free (line);
   fclose (file);
+
+  /* read all dropfiles recursively */
+  if (!ret)
+    {
+      char *p;
+      glob_t g;
+
+      asprintf (&p, "%s.d/*.conf", config);
+
+      if (!wrap_glob(p, 0, NULL, &g))
+	{
+	  size_t n;
+
+	  for (n = 0; n < g.gl_pathc; ++n)
+	    if (read_config (g.gl_pathv[n]))
+	      {
+		ret = 1;
+		break;
+	      }
+
+	  globfree(&g);
+	}
+
+	free (p);
+    }
+
   return ret;
 }
 
-- 
2.17.2


