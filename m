Return-Path: <tdhammer99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD2BAE0108B; Fri,  6 Jul 2018 13:22:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tdhammer99[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84AE2E01087
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 13:22:21 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id d189-v6so25651075oib.6
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 13:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=OfNg7WU4Sl+MsHf+S51EiteNFZRoWF4glsZE4Mxzn1g=;
	b=IEX0ihRAgHkvYmzETE6qvYKHEYunBshIiEtQYqomPhGH5fb0EdJ3nhajOFD4ptocZw
	SzcPQUOFo4lvH5C0XVk+RvRqm0WEXGDHNFcqFu4GZ0nJbLS4ziSwyerhGeqQtCfdNBf1
	E7fgnc5ILWQAKgIQ5HOM1FliyxHkt89L8WRDRnnlRew9d+RDSBWHsPCquC1XD1UDworm
	hJsB2kGq34pCCu2Qzgz9EO1l52+ep574N+IgjyuWd4boDQOtIt//gYevU9AH48L1tCC2
	M+cxP/T1o4+HDELTX06Rg8txxUSo4scdsavkbb/mFl1GhPSAXgPtUHw/yCBi/FGTaN4l
	GL9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=OfNg7WU4Sl+MsHf+S51EiteNFZRoWF4glsZE4Mxzn1g=;
	b=CwbqpR3HLaUmCoLfnnKgeqHjqVBXYdJ/zZuo0QuJIQhW7B7AO1i1ABUJAHqF4Gtbp9
	rYSWBh4t89K8EtsVxkt4v3AnXWTUUxNbVGN6UVejqg/W3XWAUjklczWOjYM0jRCkZEm6
	0bkLOI7X+76ZfKAaw4pgc/vn54nWnQykv+CUoTVx+rCwherJ8m5fwYW+5fZvfh7FYi5d
	dx+DVTFcMCCgvJpxLr4U8uZcFB7AbU7ER6O+TNAMbtlx1kMh06muErx3/W2aOTcO1MvK
	9jLoOLXcMwLwXCoxUQ2kt/lbkd1rQQUxppMBocAPELb6G0JBYtXKTbHt202Cuob2cxZM
	qfvQ==
X-Gm-Message-State: APt69E3gkAlg1G8nqk355CG+pfad97DjxXpAkbzgd3XSdenil+A0rHoG
	gDWMOJm89nB9Dtl4YnN7Z2rpNDFa5K1YAs9UW5PRog==
X-Google-Smtp-Source: AAOMgpcykaCMZXO6GJ08t60/ld+OqiMmIiaE+zJ1hBfhxRZWrY6bJWibNzMPJWPerhKiZWiD/YFBwZnmDZxGJrShQvw=
X-Received: by 2002:aca:cd84:: with SMTP id
	d126-v6mr13724163oig.325.1530908540507; 
	Fri, 06 Jul 2018 13:22:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:39a2:0:0:0:0:0 with HTTP;
	Fri, 6 Jul 2018 13:22:20 -0700 (PDT)
From: Tim Hammer <tdhammer99@gmail.com>
Date: Fri, 6 Jul 2018 16:22:20 -0400
Message-ID: <CALh9vaXPQfH1hupu7C3AZv3qNa1Szb9A7_=iEkLvQ8GRn-YuGQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: (still) struggling with initramfs
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
X-List-Received-Date: Fri, 06 Jul 2018 20:22:24 -0000
Content-Type: multipart/alternative; boundary="000000000000bd9cfc05705a6be8"

--000000000000bd9cfc05705a6be8
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 3, 2018 at 2:02 PM, Tim Hammer <tdhammer99@gmail.com> wrote:

>
> ...
> Any help would be greatly appreciated.
>

Thanks for the responses to my first email. I was able to get a working
initramfs in my kernel image that allowed me to do the initial evaluation
of my solution.

Now I am working to get all of the proper content into the filesystem, but
am seeing some strangeness that I cannot comprehend. I have updated the
image recipe that my linux.bbappend is calling out as the INITRAMFS_IMAGE,
but the bitbake linux command did not see anything as changed so ran no
tasks. As a simplistic attempt, I commented out the INITRAMFS_IMAGE line in
the recipe and this time it rebuilt a lot, but ended up with the "old"
initramfs (not an empty one as I kind of expected). I then re-enabled the
INITRAMFS_IMAGE line and this time got a much smaller Linux image which
failed to boot (Unable to mount root fs- more what I expected from the last
build).

How do I get the Linux image to build with the correct version of my
initramfs?



> Thank you!
>
Again!

-- 

.Tim

--000000000000bd9cfc05705a6be8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Jul 3, 2018 at 2:02 PM, Tim Hammer <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:tdhammer99@gmail.com" target=3D"_blank">tdhammer99@gmail.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div=
><br></div><div>...</div><div><span style=3D"font-size:small;background-col=
or:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:ini=
tial;float:none;display:inline"><span style=3D"text-decoration-style:initia=
l;text-decoration-color:initial;float:none;display:inline"><span style=3D"f=
ont-size:small;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">Any help would=
 be greatly appreciated.</span></span></span></div></div></blockquote><div>=
<br></div><div>Thanks for the responses to my first email. I was able to ge=
t a working initramfs in my kernel image that allowed me to do the initial =
evaluation of my solution.</div><div><br></div><div>Now I am working to get=
 all of the proper content into the filesystem, but am seeing some strangen=
ess that I cannot comprehend. I have updated the image recipe that my linux=
.bbappend is calling out as the INITRAMFS_IMAGE, but the bitbake linux comm=
and did not see anything as changed so ran no tasks. As a simplistic attemp=
t, I commented out the INITRAMFS_IMAGE line in the recipe and this time it =
rebuilt a lot, but ended up with the &quot;old&quot; initramfs (not an empt=
y one as I kind of expected). I then re-enabled the INITRAMFS_IMAGE line an=
d this time got a much smaller Linux image which failed to boot (Unable to =
mount root fs- more what I expected from the last build).</div><div><br></d=
iv><div>How do I get the Linux image to build with the correct version of m=
y initramfs?</div><div><br></div><div>=C2=A0<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr"><div>Thank you!</div></div></blockquote><div>Aga=
in!</div><div><br></div></div>-- <br><div class=3D"gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><br><span style=3D"font-family=
:arial narrow,sans-serif">.Tim</span><br></div></div>
</div></div>

--000000000000bd9cfc05705a6be8--
