Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6E39E0056A; Wed,  9 Jul 2014 22:16:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72161E00559;
	Wed,  9 Jul 2014 22:16:01 -0700 (PDT)
Received: by mail-qg0-f42.google.com with SMTP id e89so7259634qgf.1
	for <multiple recipients>; Wed, 09 Jul 2014 22:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tkHvrkDG32G3D6TvXtBUWOajY3Tx2GzcEakmu+oGFmw=;
	b=PO9SQCC1cJQCU3i8TjKrQRzKJGhDKzpGbiRRQHoPItxrr+NFuWQAdyOlryjhOi1nY3
	tZHjq8TR4Sy/mOxR6TcWsDFsW0CYFeWmgAIoZ/XY+KE1/UN0ztHRDrgdgAt5qB2YlbFv
	IPhKuoBjW40qks0pC7joBRvzcKogGzqQZMVMKfXydoukmG4as+rcbQUx7gSnO5YYTlh2
	B5DG/C+qdUr43kLLseBE3md46fSir7pxoSm6ebTPRvQ4gIL8P4bL9TBy/yNxM0CKGlFv
	odgoXJfFq+4G7DLDq8a8LjONiQQdUK1n5bU3k5SywC/YJgGoK8SLkA7X1bfbzlB1kxoa
	Mr/g==
MIME-Version: 1.0
X-Received: by 10.140.108.200 with SMTP id j66mr70574227qgf.57.1404969360783; 
	Wed, 09 Jul 2014 22:16:00 -0700 (PDT)
Received: by 10.224.37.133 with HTTP; Wed, 9 Jul 2014 22:16:00 -0700 (PDT)
Date: Thu, 10 Jul 2014 10:46:00 +0530
Message-ID: <CAP3RZog91TKaZgjCiDFQhZZaYT8ukVjTE8HZ5pVz9Bz6Jm2J5g@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: meta-freescale@yoctoproject.org, yocto@yoctoproject.org
Subject: unable to get checksum SRC_URI file could not be found
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
X-List-Received-Date: Thu, 10 Jul 2014 05:16:09 -0000
Content-Type: text/plain; charset=UTF-8

I am building yocto for freescale imx6sl evolution kit. For checking
in source code on svn , i have deleted all .git and .gitignore from
the meta directories. Then i have checkout the source code, and tried
to build that. While building i am getting the warning

Unable to get checksum for rfkill SRC_URI entry
dont.call.git.rev-parse.on.parent.dir.patch: file could not be found

What can be the reason of it?
Will it create any problem?

Thanks,
Jags

