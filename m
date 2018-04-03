Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90185E00BA1; Tue,  3 Apr 2018 16:43:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [69.252.207.37 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Tue, 03 Apr 2018 16:43:38 PDT
Received: from resqmta-ch2-05v.sys.comcast.net
	(resqmta-ch2-05v.sys.comcast.net [69.252.207.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1653CE008D2
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2018 16:43:38 -0700 (PDT)
Received: from resomta-ch2-02v.sys.comcast.net ([69.252.207.98])
	by resqmta-ch2-05v.sys.comcast.net with ESMTP
	id 3VYvfR9MgrSBO3VZVfYCLs; Tue, 03 Apr 2018 23:42:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1522798957;
	bh=L4B3T8r1E0rLxnZeCN3+tGOQa3f1QWJXZUgdQlv8G0Y=;
	h=Received:Received:From:Content-Type:Mime-Version:Subject:
	Message-Id:Date:To;
	b=QrtPvSd6wVluWMUAf4+bjUVwh2ppA/CL8aXf9mQYASqzYFI2CpaBgnr+GoBGQwfzx
	klFols4pm2J7t1Bh18pTtdJriYkK3FDq5bejZTPFXM/2xVD9aNGRiasSVKPB7HpahA
	/dK7m0sBdShZM+Dm7CeJynJ6oSL9BPRhfDgFEGVdplBtfzSj+qGgO9YYMBN0KLAMtX
	wUzt2Dh2tJ44x7u/jPq+CpvznozmnFyEFqOua0usGcWLsdJmXXSG7WQDdZDbn6Wmic
	t1K91VYkag8lqGKzuMhfZfyAaZa4RN5mU3PpsXh5er6XjKWuRwu3iVPULKxhKl2WQq
	MghgDWUuIyjAw==
Received: from [IPv6:2601:18f:880:9aeb:3075:de7b:6b4e:942e]
	([IPv6:2601:18f:880:9aeb:3075:de7b:6b4e:942e])
	by resomta-ch2-02v.sys.comcast.net with SMTP
	id 3VZUf3cT6bdGJ3VZVfy4dA; Tue, 03 Apr 2018 23:42:37 +0000
From: Russell Peterson <bluehills7@comcast.net>
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Message-Id: <2BF5B08D-E9E9-4DEC-BFA0-FFBBDF724795@comcast.net>
Date: Tue, 3 Apr 2018 19:42:36 -0400
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.5.20)
X-CMAE-Envelope: MS4wfLXHbZrHnkvYMZCXC5FtDEc7vf2HecGAh+7ZSzR3HFtbW8XVxXRRb51zWvLGJsbJ5bvDz9l2AuuewZxD0wvn/nSkD+lS1xkF/ICdQ5FyNqCBaf2wUHf+
	61AVptuy5J8K1BsjcnMFabY/2XYByeAtepJ0Bqj3+0QXVb1gVMl/YXS5yZxgW3uBySptDwgaJXY7H6bhutjzQF5/ZjK0Kco5xBo=
Subject: out of tree module dependencies
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
X-List-Received-Date: Tue, 03 Apr 2018 23:43:38 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have some out of tree modules that I have added to my custom meta =
layer.
Normally things work fine, however, when I modify these recipes every =
now and then the do_configure fails because the recipe_sysroot directory =
is not populated.  This seems related to the kernel-build-artifacts and =
the make_scripts task as well but I can=E2=80=99t quite figure it out.  =
Seems like the prepare_recipe_sysroot should execute but in these cases =
it does not.

I realize I didn=E2=80=99t provide much info here but anyone see =
something like this before?  I do have an unpack_extra task as well that =
may somehow be related?



