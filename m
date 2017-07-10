Return-Path: <jack.c.kiefer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19304E00BC2; Mon, 10 Jul 2017 10:48:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jack.c.kiefer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79FC4E00B8B
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 10:48:44 -0700 (PDT)
Received: by mail-vk0-f51.google.com with SMTP id y70so51388382vky.3
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 10:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=GNwo6nkzR3p+XY+6c3Zh6PTudfaDsJe6TQQbVGfldBI=;
	b=UZ0tEin4jiIL0R6AuqQWGu2wwzlFcnhog/K9rUCpNucKGLaPZinhFArFLE57nA+MoY
	v0jZijkwwHicinDugHPHgqgCwDDIchvJG/gknAQXL4r2dF23rnhtBmeqLbABLjrfQPlj
	DVMWREELGTzGhmgqwJfgY3YRdiCJzcOTe87LZUdK4oHsSZm7rHemF4KmAlT1R2ZGVkQn
	E1wcdrwl/el9nlSsmqQv1STMjqdOiYl05wFE7NoJyOuHmJ4qFoZKyauR6wcNzdN7d8Ab
	J/o/Pq8n30b7qOQRAXPf1LgVXpIboaQ+1Va1ry6kWqZ1SSOJuufcnbcbzcEvjr5EyFsU
	1oTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GNwo6nkzR3p+XY+6c3Zh6PTudfaDsJe6TQQbVGfldBI=;
	b=My1ZFYkej4PkqlCGjkEiX9FiWULbzCULWmCttTyOyLi/CYPFFZT7tjQTFWNDd+zc1I
	nFzqWEIoyx4WmXwm/7Z7/4RZOYFZlLmLCu4Z/0FbscOP1gfXXOCNbjyACEZqEkZUOXze
	d1WE+6EnJYasOglckxN7nC1iM3Zffyy5ajwu2gfg4urnWU4xoBT7a2wbdUfymaYT9474
	2AOY/In3Z9ew1r6d5J66C9K867XrSW8nIXMM5ll28rBxHXAbgeP9ikyokE3m/5XRnSqK
	S9M8qr4aGBWmLHZRylnithMNBf2DxV07F8f/x4nsTAq1UPvC7vaGjUMyLfYjaLQNyz5Y
	RLeQ==
X-Gm-Message-State: AIVw113Eh7YZugYZRBJiKniFQ30ZPkRd6CWIemAGex3uSFEGU9x0X2pf
	Fce6IpA+7TQLEtcDNUHoYQaHRlsbNv0r
X-Received: by 10.31.140.206 with SMTP id o197mr8779374vkd.92.1499708923107;
	Mon, 10 Jul 2017 10:48:43 -0700 (PDT)
MIME-Version: 1.0
From: Jack Kiefer <jack.c.kiefer@gmail.com>
Date: Mon, 10 Jul 2017 17:48:32 +0000
Message-ID: <CAJQwCK__xrOSmtex3jTp6sY9X7e6ySJJxFA3hQW3Obq=toCurQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Openssh patch being overriden by original unpatched file
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
X-List-Received-Date: Mon, 10 Jul 2017 17:48:46 -0000
Content-Type: multipart/alternative; boundary="001a11426a12a0dd900553fa3160"

--001a11426a12a0dd900553fa3160
Content-Type: text/plain; charset="UTF-8"

Howdy all,

I've been having a bit of an interesting time trying to ship a modified
sshd_config file to my images using Yocto Morty. I first tried adding a
.bbappend to the openssh recipe in which I prepended a patch file that
would modify sshd_config to my liking. Interestingly, Yocto would
definitely run do_patch and presumably patch the file successfully (I
ensured the patch was correct by manually using the patch command), but
somehow the patched file was still overridden by the original file in the
final version of the image.

I've been able to temporarily remedy this by using the .bbappend to simply
use an entire modified sshd_config file from its FILES directory rather
than applying a patch.

Is this how Yocto is supposed to behave? Is there a more correct way of
providing fairly version-agnostic modifications to config files like this?

Thanks!
Jack

--001a11426a12a0dd900553fa3160
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Howdy all,<div><br></div><div>I&#39;ve been having a bit o=
f an interesting time trying to ship a modified sshd_config file to my imag=
es using Yocto Morty. I first tried adding a .bbappend to the openssh recip=
e in which I prepended a patch file that would modify sshd_config to my lik=
ing. Interestingly, Yocto would definitely run do_patch and presumably patc=
h the file successfully (I ensured the patch was correct by manually using =
the patch command), but somehow the patched file was still overridden by th=
e original file in the final version of the image.</div><div><br></div><div=
>I&#39;ve been able to temporarily remedy this by using the .bbappend to si=
mply use an entire modified sshd_config file from its FILES directory rathe=
r than applying a patch.</div><div><br></div><div>Is this how Yocto is supp=
osed to behave? Is there a more correct way of providing fairly version-agn=
ostic modifications to config files like this?</div><div><br></div><div>Tha=
nks!</div><div>Jack</div></div>

--001a11426a12a0dd900553fa3160--
