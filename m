Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23C79E00AF8; Tue, 11 Apr 2017 23:38:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC2E8E00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 23:37:59 -0700 (PDT)
Received: by mail-vk0-f54.google.com with SMTP id s68so9107148vke.3
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 23:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=KivpLVXH+eReE6TG7cEKB/2yw3LZbAf4CazMQWiy128=;
	b=eqNreXlgBJqOQQpcPSSffPuWeQPI6+lGh8bHAzA6500KW0DzLu87Ri/aTr8Gs56v7n
	ssAoeccCFLhoC2YS3xFXFzPABtngjrwel21GdfPV3OHKtMODM/N7EAwU1d3OCUuY/ALL
	TK41iO6oawPqBNCQFSBfVW7t5IaJfJdH5Te2ER/sWQIVneYY/Y88iZz9tvaJOaYyFAya
	/rQ1PE8rp7QUWoLIUaokqfRIs3Mi0TXmNrLpQE8MdZAmE9M6wyBrZJyjWsGK+FjvyVsv
	7qbm65Az9yC84n8fATEAE/+RygPdNw9t8sK9S47Qcq//8AOf13/N1LA8Ac7TKUKWPzRm
	t7rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=KivpLVXH+eReE6TG7cEKB/2yw3LZbAf4CazMQWiy128=;
	b=j8pMmZD1jdGLy9ZDInyCMdr6jzXVHSEm20jSM7sJMs+cfO3RUtVrHfU5475/2j/yn1
	uRzXijTLf4FXNRJGXYdCD3YKXPFmyz6thOXGU3zI5+dQo5JvioHjBdN5J7J1WXhUDKxK
	E0vV4MzFvPL9urPqXBPbOAOPVf9FL8ek+4c5ozuHubVOWEhORdEhIXs7/4maNBRYmxck
	lr+GeQKEWpKLvtPJD+lrL0DQVQPCV3Sk3wSKdkytSnVrHrIAwC1VjxATO3oWEofHh1pI
	bMQ+zmCNJ0u2mfmilfyAgbxee1nu873ZtVYN6XEyjYsDTrVPoc3V1RaL0ptIr93jIKwh
	m95g==
X-Gm-Message-State: AN3rC/7s4dfIfr5uw5ZJid/tuQaAdCvg2Ul4UO341ZBLo67kz9Xa9px/YTMHyYgH7q9PXY5hSj89+BcFym5ucg==
X-Received: by 10.31.209.71 with SMTP id i68mr653968vkg.125.1491979078767;
	Tue, 11 Apr 2017 23:37:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.38.134 with HTTP; Tue, 11 Apr 2017 23:37:58 -0700 (PDT)
From: Paulo Neves <ptsneves@gmail.com>
Date: Wed, 12 Apr 2017 08:37:58 +0200
Message-ID: <CAJO0J4gwVgC_m9bnzunsfKVsL=nuf-qKZuehhzjwiTq4n4Fe6Q@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Bug 11307 - sstate.bbclass tries to modify mirror files
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
X-List-Received-Date: Wed, 12 Apr 2017 06:38:03 -0000
Content-Type: text/plain; charset=UTF-8

Commit 51edde653707e7a3cd2186082458f01f32cd1996 makes a wrong
assumption that SSTATE_MIRRORS have write permissions.

A mirror is by definition outside of it's user control. In my use case
it happens I does not have permissions to update the access time of
the dereferenced symbolic-link file.

If we had the possibility to modify the sstate-mirror we would have
set SSTATE_DIR instead. There are 3 possible fixes:

* Revert this patch. It seems tailored to a very special use case
which breaks the definition of mirror.
* Only touch the file if the file access time is writeable.
* Set (yet) another option to touch SSTATE_MIRROR files.

I also can imagine this raising sever performance issues if the mirror
is used by several users at the same time. The server will need to
update the file meta data every time

This patch fixes the bug with minimal impact on the original
functionality. Option 2


Related to (https://bugzilla.yoctoproject.org/show_bug.cgi?id=10857)

From aa8cab9660744c8d5277f8e82f10a844884aff78 Mon Sep 17 00:00:00 2001
From: Paulo Neves <paulo.de_sousa_neves@nokia.com>
Date: Tue, 11 Apr 2017 10:57:47 +0300
Subject: [PATCH] Added test for write ability of sstate-mirror .siginfo

---
 meta/classes/sstate.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index af588548c2ef85d966787df7ae1432e1744bdba6..36cbbd151aa1c93f4ca377b3a23c011a527389d8
100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -753,7 +753,7 @@ python sstate_sign_package () {
 sstate_unpack_package () {
  tar -xvzf ${SSTATE_PKG}
  # update .siginfo atime on local/NFS mirror
- [ -h ${SSTATE_PKG}.siginfo ] && touch -a ${SSTATE_PKG}.siginfo
+ [ -w ${SSTATE_PKG}.siginfo ] && [ -h ${SSTATE_PKG}.siginfo ] &&
touch -a ${SSTATE_PKG}.siginfo
  # Use "! -w ||" to return true for read only files
  [ ! -w ${SSTATE_PKG} ] || touch --no-dereference ${SSTATE_PKG}
  [ ! -w ${SSTATE_PKG}.sig ] || [ ! -e ${SSTATE_PKG}.sig ] || touch
--no-dereference ${SSTATE_PKG}.sig
-- 
2.6.2



Best regards
Paulo Neves

