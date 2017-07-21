Return-Path: <galasso.maurizio@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3634E00B43; Fri, 21 Jul 2017 07:11:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (galasso.maurizio[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.49 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3CEFE00B28
	for <yocto@yoctoproject.org>; Fri, 21 Jul 2017 07:11:21 -0700 (PDT)
Received: by mail-lf0-f49.google.com with SMTP id d78so23914357lfg.3
	for <yocto@yoctoproject.org>; Fri, 21 Jul 2017 07:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=yP38Mou2iqedhYsB0YwplVy20OSYU0K2G8DBIcErwPc=;
	b=DwFxqtaOtbwWe4vntrxeXlv5GKA3aE7xMS8JPeQHZlOjG/PJBa0AguyV/nQUA+km1B
	C6JA9BC8LKSGRNbs2M+9gjobqVcxdm8ebHLtokOVGAU6KTiifla7YPK0Ru89modQnh1L
	7PIZe/ZnJ3MuEZ47FkBrJZuWqkGNIG7X0j7YGdFtuhq8WkNnxMVtdZTwP7sV70gBQVDP
	UTwrk/EtADfueiteJpujldY9cNQTWb67X9wnox3CpktHOHWtbuMmGi/HqTBOTP31c1aO
	cpH05zJF9JN0JQEcw48yRiHJ3LVlAYLyStYp9aJuIpFkpaHTKxvVROrf/XUvgy+D/Qia
	XI9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=yP38Mou2iqedhYsB0YwplVy20OSYU0K2G8DBIcErwPc=;
	b=tJCCBL0upswFVCMO/MzRJk+cg52YFIy0DHgv/wQliFAGNUcC2NiUEBb6zda7c7lhun
	96rc/Tep4JHfxAGLZbyHNk9tkSJ7UayAMJKIg9dZmbficfISgap32HpSV5hOIVbcZugs
	qN7C/3hA84XAVCM1KV86RjU/0WoHY/OSta6tVdYm7u3BjOupYCPs27qz92apQslpo5rI
	iXmzNCpuKAjnrsLf/Ukr7RkxbI4LzDGfawYFZrTb+x0hLZu4QnKKoFfBabwOf8gNpeRF
	J/cHEGAVLLulm3klnA2bb2h7QZ6lrWQDuYVwLh7WW2mlpCzxvGRwho6TwlDX6btTV7za
	8zfA==
X-Gm-Message-State: AIVw113ONwLQOPTyi0dRO01ZOCk5FZuaEsZLSjNg3SJ8IldBphMoNKzS
	pz3UJ9D6/DKBqpVNsu3rRGGrlXrgEreh
X-Received: by 10.25.20.213 with SMTP id 82mr2506250lfu.66.1500646280470; Fri,
	21 Jul 2017 07:11:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAGbeqampN7-BHbkTTDK5EtKzWLQVu0Ziv3whu2BSt-+thj1s3A@mail.gmail.com>
In-Reply-To: <CAGbeqampN7-BHbkTTDK5EtKzWLQVu0Ziv3whu2BSt-+thj1s3A@mail.gmail.com>
From: Maurizio Galasso <galasso.maurizio@gmail.com>
Date: Fri, 21 Jul 2017 14:11:09 +0000
Message-ID: <CAGbeqamDELV-W0i_Kh88nrR8+zb508QfGkxdxQnNmSEyovQp0g@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Mailman-Approved-At: Tue, 25 Jul 2017 11:19:05 -0700
Subject: Yocto Poky meta browser issue on intel 32 image
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
X-List-Received-Date: Fri, 21 Jul 2017 14:11:23 -0000
Content-Type: multipart/alternative; boundary="001a113f95fa7b26b40554d4707b"

--001a113f95fa7b26b40554d4707b
Content-Type: text/plain; charset="UTF-8"

Hello,



i'm trying to integrate meta browser recipe for have a chromium instance on
a intel x86 32 bit machine.

i'm configuring x86 machine and i've integrated the meta-browser proposed
by open-embedded

   1. https://codeload.github.com/OSSystems/meta-browser/zip/master
   2. https://github.com/OSSystems/meta-browser.git

to test the behavior we have downloaded the chromium sample 32 bits and
even that one has created issue to launch on my machine ( the same sample
has been launched easily on a ubuntu 32 bits)
(http://opensource.spotify.com/cefbuilds/index.html)

what we are seeing is that the same recipe created with real machine 32
bits is not working on the intel device.
we have a segmentation fault.
is it correct to integrate this recipe?

to be precise my target was to have Chromium CEF but i would accept for now
to make Chromium work on the machine.

i'll really appreciate you support,

regards,

Mauriizo Galasso

--001a113f95fa7b26b40554d4707b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><br></div><div=
 dir=3D"ltr"><p class=3D"MsoNormal">Hello,</p>

<p class=3D"MsoNormal">=C2=A0</p>

<p class=3D"MsoNormal">i&#39;m trying to integrate meta browser recipe for =
have a chromium instance on a intel x86 32 bit machine.</p><p class=3D"MsoN=
ormal">i&#39;m configuring x86 machine and i&#39;ve integrated the meta-bro=
wser proposed by open-embedded</p><ol start=3D"1" type=3D"1">
 <li class=3D"MsoNormal" style=3D"margin-left:0cm"><span style=3D"font-size=
:12pt"><a href=3D"https://codeload.github.com/OSSystems/meta-browser/zip/ma=
ster">https://codeload.github.com/OSSystems/meta-browser/zip/master</a></sp=
an><u><span style=3D"color:rgb(0,0,238)">=C2=A0</span></u><span style=3D"fo=
nt-size:12pt"></span></li>
 <li class=3D"MsoNormal" style=3D"margin-left:0cm"><a href=3D"https://githu=
b.com/OSSystems/meta-browser.gi">https://github.com/OSSystems/meta-browser.=
gi</a>t<span style=3D"font-size:12pt"></span></li>
</ol><div>to test the behavior we have downloaded the chromium sample 32 bi=
ts and even that one has created issue to launch on my machine ( the same s=
ample has been launched easily on a ubuntu 32 bits)</div><div>(<a href=3D"h=
ttp://opensource.spotify.com/cefbuilds/index.html">http://opensource.spotif=
y.com/cefbuilds/index.html</a>)</div><div><br></div><div>what we are seeing=
 is that the same recipe created with real machine 32 bits is not working o=
n the intel device.</div><div>we have a segmentation fault.</div><div>is it=
 correct to integrate this recipe?</div><div><br></div><div>to be precise m=
y target was to have Chromium CEF but i would accept for now to make Chromi=
um work on the machine.</div><div><br></div><div>i&#39;ll really appreciate=
 you support,</div><div><br></div><div>regards,</div><div><br></div><div>Ma=
uriizo Galasso</div></div></div></div>

--001a113f95fa7b26b40554d4707b--
