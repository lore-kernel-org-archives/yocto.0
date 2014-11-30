Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD989E008B4; Sat, 29 Nov 2014 20:47:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C54DE00769
	for <yocto@yoctoproject.org>; Sat, 29 Nov 2014 20:46:57 -0800 (PST)
Received: by mail-pd0-f173.google.com with SMTP id ft15so8752851pdb.18
	for <yocto@yoctoproject.org>; Sat, 29 Nov 2014 20:46:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=ndp0lFv2QzkbM+qSg4Xafyq88Yk+eKZ4/NWUjzzrAtY=;
	b=PO3YCSWem59DS7fs+imgphqWMVhWl+Ky8FIoxzNjQZxjpPZ3nzAsB4L3ARxybxUbH4
	/8oyAZ7ufOyGjalEklYNpVsHTxz1nvFjzPbHrrzmZrooGUGowHfbpSUeXK6dt/shF49K
	n6o37x484LVuIFAada0k7h7ChAQlgp+vqUNmmVb1fKNMbESdnzpkbAQ9BEEuYIlZWqII
	lUWzw7ewUlPQwfGd74uS/XGsbpoMIHcVe+7EIVQH1BjRrLbEo7ztzNUeREhq0kqvfCfP
	be8QNWB+2IlNOtuwN25uVCa8OlaLLs0J2fwTsVNnWZW6RsqD6qC/jOPvj84o7WBNKMPd
	ypnA==
X-Received: by 10.68.139.68 with SMTP id qw4mr60362730pbb.164.1417322816877;
	Sat, 29 Nov 2014 20:46:56 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	ju4sm13795160pbc.81.2014.11.29.20.46.54 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 29 Nov 2014 20:46:55 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 29 Nov 2014 20:46:42 -0800
Message-Id: <1417322802-9751-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] libcap-ng: update to 7.4 plus security fix
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
X-List-Received-Date: Sun, 30 Nov 2014 04:47:00 -0000

0.7.4
- In pscap, remove unused code
- Add CAPNG_INIT_SUPP_GRP to capng_change_id
- Drop CAP_COMPROMISE_KERNEL
- Update the autotools components
- Dynamically detect last capability (#895105)
- Add PR_SET_NO_NEW_PRIVS to capng_lock if kernel supports it
  (CVE-2014-3215)

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libcap-ng/{libcap-ng_0.7.3.bb => libcap-ng_0.7.4.bb} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/libcap-ng/{libcap-ng_0.7.3.bb => libcap-ng_0.7.4.bb} (100%)

diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb b/recipes-security/libcap-ng/libcap-ng_0.7.4.bb
similarity index 100%
rename from recipes-security/libcap-ng/libcap-ng_0.7.3.bb
rename to recipes-security/libcap-ng/libcap-ng_0.7.4.bb
-- 
1.9.1


