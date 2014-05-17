Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 163E0E00B65; Sat, 17 May 2014 10:19:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 386 seconds by postgrey-1.32 at yocto-www;
	Sat, 17 May 2014 10:19:33 PDT
Received: from mail-ie0-f176.google.com (unknown [209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA762E00B20
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 10:19:33 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id rl12so685746iec.7
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 10:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6gFnbue/6CmoYqi1SYT7+fXJoKOkn0NH8s+s+rT0ilQ=;
	b=j6NtI6qx9ZeqhZUyPD4P2dSOHk6zOkJnCU+lEwH5LT4AXLmdDsEGItFdOM7U2OAr38
	xo6bVgiyrWHwbKvtWbxmf/J/mfq0jfZbsHPTgFT8FJGv6ucMtU9qFMe9GRocBTh5pt+m
	nyb0w4eQu9sviX6HhvJ1olu3VbolL7ICO62qJe7FlwR9j6zVYRvHycYiNHVQK+qRh4E0
	xcwk3VNw2uoaDmzeTaDmTQZTWxNXtIHjvIpXK8Rq6/nzEY3SVctvxryLqsx6z5AwD6cv
	Dda4jS4QgAATgeTDkKfMh1JtODcCxwoRREPV/Efm4remTm/JA0/9wD+u8tVGCXeCbWe0
	7NDw==
MIME-Version: 1.0
X-Received: by 10.43.137.5 with SMTP id im5mr2936708icc.69.1400346787299; Sat,
	17 May 2014 10:13:07 -0700 (PDT)
Received: by 10.64.228.141 with HTTP; Sat, 17 May 2014 10:13:07 -0700 (PDT)
Received: by 10.64.228.141 with HTTP; Sat, 17 May 2014 10:13:07 -0700 (PDT)
Date: Sat, 17 May 2014 13:13:07 -0400
Message-ID: <CAAPegz1-8Xq2wwq1jM+k9O1qaPn_NO7N_8fNA5C_8twQ7+9t_A@mail.gmail.com>
From: Chris Morgan <chmorgan@gmail.com>
To: yocto@yoctoproject.org
Subject: git.py support for submodules
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
X-List-Received-Date: Sat, 17 May 2014 17:19:40 -0000
Content-Type: multipart/alternative; boundary=001a11c2205cd1ca7b04f99ba41a

--001a11c2205cd1ca7b04f99ba41a
Content-Type: text/plain; charset=UTF-8

Hello.

I noticed that git.py doesn't seem to have support for submodules. I worked
around this in my recipe by adding a pre configure step but I was wondering
if a patch to add another option to git.py to fetch submodules would make
sense and be welcomed (pending it's implementation of course).

Chris

--001a11c2205cd1ca7b04f99ba41a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hello.</p>
<p dir=3D"ltr">I noticed that git.py doesn&#39;t seem to have support for s=
ubmodules. I worked around this in my recipe by adding a pre configure step=
 but I was wondering if a patch to add another option to git.py to fetch su=
bmodules would make sense and be welcomed (pending it&#39;s implementation =
of course).</p>

<p dir=3D"ltr">Chris<br>
</p>

--001a11c2205cd1ca7b04f99ba41a--
