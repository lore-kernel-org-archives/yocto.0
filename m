Return-Path: <danimanzaneque@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 088FBE00C87; Fri, 26 Jul 2019 04:35:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danimanzaneque[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70315E00BD5
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 04:35:51 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id j5so99950430ioj.8
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 04:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=mYKZFbJCH9SCNBtkoJrtnUSb7RCI9GAcVyhmDXAM6ns=;
	b=tMlz7lgRNILtvGTjxMYTWvGMYpvVPmo0vdEzzp36v0oFURfQf7ULRgG7SXMaLo8PBt
	kiTaHi6AVOmbkV0fOF+srEC5wcdQkXyGPZ9Hmpy9L//SCyBaqk/l1e4FHOmx646ZfBEe
	32ShDIrH3IV/pmU/XDSddaQ/kbvh0aM+l21oAciYNNW3+0ekCXi0cF42c112Kkbztm+B
	bVnzC/EmrYikTABDGNw0+YgGJByD0ZYH2vUBtmZw32eefp/owSV04nXYpK0SRc+CkU6u
	9ECon1ZYFUKOxIrAXqtAJ6+l3i3sZ6MxmQYwJUwwpoy2eMDUkfI7kT8YRfm5rWA5JM1m
	/2Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=mYKZFbJCH9SCNBtkoJrtnUSb7RCI9GAcVyhmDXAM6ns=;
	b=slq9p1nkq8BcKBZKzMdRzAmyaE+CJlFevxKjQfBMeeAK5SFUwoMIAKQnf3hI+v+m0j
	iPYar2iHmbjv8AK8XL6LaNtEm2zj4Vfya3muR+PKWX+i8Zxi69ndTZvkbsI90dqvYPE+
	CRPnENsyJhj25Y/Fx0EJ/86pnMhJM0M14vZVmiCaQb4Tb5YJD9wvuvMrF7YmGkhYriRL
	ccUaYA/mF71FSFHjKzJaQx5aESDmmEsAlzUTg0V9WBbn2KY1ZSR+ic8a6w+vZ02TIMbe
	BTdGlLnZLkk5Yz8kqAy/wSiBYHHvApQEsuEy+zgvA12nyBtj+5//boSCtsKv8zz8DyTj
	7HYw==
X-Gm-Message-State: APjAAAX/05EJmNJiWxvp88YVYxN4z7IAu+GQDHBOws975ftakMr14YjI
	7SNjMi6dse5XmjS9xC6+MreEYrv/gIoLe4bYn4cNnCOdCEo=
X-Google-Smtp-Source: APXvYqyiT1uOZFOEDICvIBQpO9jutwA7mLmwGBdwh1SHpPXTg0qXOgaNW6fahIYkylTJ2GkW62ihEuEwWC4yTQM1ltc=
X-Received: by 2002:a02:cc8e:: with SMTP id s14mr7437974jap.142.1564140950546; 
	Fri, 26 Jul 2019 04:35:50 -0700 (PDT)
MIME-Version: 1.0
From: Dani Manzaneque <danimanzaneque@gmail.com>
Date: Fri, 26 Jul 2019 13:35:40 +0200
Message-ID: <CAJkrxtRnNOes22KGRonzi_JTeJd0oNVyFeuJQDFtJuc5MGfodQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Integration of Conan Package Manager into the Yocto Project
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
X-List-Received-Date: Fri, 26 Jul 2019 11:35:52 -0000
Content-Type: text/plain; charset="UTF-8"

Hi!

We have developed an integration with Yocto for the open-source Conan
C/C++ package manager.
This integration includes the ability to cross-build packages with a
Yocto SDK Toolchain and later deploy them in the Yocto build.

We have created a blog post with a brief introduction to the Yocto
Project and the announcement of the integration:
https://blog.conan.io/2019/07/26/Conan-Yocto-integration.html

And a detailed section in our documentation with the configuration for
the meta-conan layer and the Bitbake recipes for the packages:
https://docs.conan.io/en/latest/integrations/cross_platform/yocto.html

Feedback is welcomed. Thanks a lot!

