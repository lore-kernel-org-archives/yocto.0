Return-Path: <harshjain32@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B306E00852; Fri, 19 Sep 2014 11:11:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (harshjain32[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0019]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15E32E00844
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 11:11:00 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id fb4so45564wid.2
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 11:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+GTUXdd/7MODc6KPbmzvgfTaWHM+M/vB1zqEH2O7KJE=;
	b=zN5wZKrD5n0eoMBuAfWeIh16axeq/7GUDIytZfZlukJ1O7hFF9bWQ1KZVyShDb5Qi+
	O2X1vSYe10qdERwzG63wL9PPPwPSxvGbaxbd/oGb0++aQPN66fXvQew5W8FYCodfNMaW
	W9Ax7YupIea3xyj0VGG/G3pwmtC7Ceuu4qnU7++GgomqzvU0TYwUEdw9tDFjKzOyQA3b
	PGkriKOPJDj/8CfAAtJgbI+phykN6mLqz9fHoOtNCVdyYoRMGEjL4rJhsgLoEmOqj23v
	ckaM0xmtmiy0r5rK7cbQJhF2WOopqqcOMZLVTgr9iN5xZOex43atwoD2QbbWu6fVxBmi
	pocQ==
MIME-Version: 1.0
X-Received: by 10.194.95.8 with SMTP id dg8mr2823529wjb.1.1411150260124; Fri,
	19 Sep 2014 11:11:00 -0700 (PDT)
Received: by 10.216.96.11 with HTTP; Fri, 19 Sep 2014 11:11:00 -0700 (PDT)
Date: Fri, 19 Sep 2014 23:41:00 +0530
Message-ID: <CAKuL1XTwmyTHTOZxwxCh31F3aB0M=PWExkO-SVLwXhGGD1vveA@mail.gmail.com>
From: harsh jain <harshjain32@gmail.com>
To: yocto@yoctoproject.org
Subject: Update recipe file to avoid conflict with other dependant packages
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
X-List-Received-Date: Fri, 19 Sep 2014 18:11:07 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I am trying to install python version 2.7.4 after updating recipe file
of version 2.7.3.There are several other packages in my build system
which depends upon Python version 2.7.3.When I try to make build these
dependant packages give warning.
What I needs to update in build environment so that these packages can
also included.I am assuming that these dependants packages are also
compatible with python verson 2.7.4.


Regards
Harsh Jain

