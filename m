Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF607E01767
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 03:46:21 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id wn1so744044obc.13
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 03:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=RwCk6Y4O0w45sVQttdN3QiEQDwaxp26QoqECV6vWJ14=;
	b=hEN7P/SBLuqE+Tqt+9p+MJoVvG1o14itxx6M7T6hHlLDBEm7FkIeUGARI9n4nDbEvK
	ZR7/uCDNN8+5oqSxCPqE9eres2cCAty3T4H9+Vko92YpBmaAZN4kUgNp6HgRyuyhcB41
	My+0bjjDdEeU5RHg4FLNsmU0HMqFRvZHxc+YWQyyCNhdqHokWP7uhrf7GQSPENdBy7ur
	TxrDCQPr3ybj/DHeORqBAN+0YdUGhVfsjtCsFWo5RYbf9VZsdzAcSj/mIIyu81TAbbov
	qNZofSb6TOxZ0U2Vqzok0CLCZh8pce5YsEis8Xt9ZVYWFyMwkzy4auanHN+iNNQczg+y
	6sQA==
MIME-Version: 1.0
X-Received: by 10.60.95.202 with SMTP id dm10mr2604967oeb.0.1382697980684;
	Fri, 25 Oct 2013 03:46:20 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Fri, 25 Oct 2013 03:46:20 -0700 (PDT)
Date: Fri, 25 Oct 2013 12:46:20 +0200
Message-ID: <CAFyqS9o8pzBvi33VuZYkKA7aO=xZgzgvwJdvMArfJV3itme8+A@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Problem with staging dir in Makefile.am
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
X-List-Received-Date: Fri, 25 Oct 2013 10:46:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. I have a package that tries to point to a staged/installed source
file (shared) in the list of files to be compiled.
But how should the Makefile.am properly pick-up the current staging
dir for my target?
Currently it is simply using /usr/share/foo/foo.c, but obviously that
will not work when cross-compiling or using native staging dirs.
Any suggestion to in what way a Makefile.am should be written to
handle such a case?
I tried using $(DESTDIR) but that does not seem to be populated in this context.

Thanks.
Hans

