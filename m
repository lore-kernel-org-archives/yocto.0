Return-Path: <flowers.joseph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C68ECE0097C; Fri, 19 Oct 2018 14:17:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EC28E00920
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 14:17:51 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id y10-v6so23812089ioa.10
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 14:17:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=t+RcebuP871sVrBwUZc6XgKlNAe0AKxn2yp7jwq4874=;
	b=ei2lg2pB01BJsav+G4KP5Lpashqus0LMiAD2e+czRnVG0M5t1dYQKyKd7iRbjmt4gq
	dovzBfru6YLI9oskvBLVPqudYEk1uv+yk1e7+2S6Wsr94XswoNlcPzz+u5XECMcBrXFJ
	OLjqVXIvA+db4Q5KkjBdBfRe/JEGqipKQkLaBCNeHflCfYaZ1aXmT8caBzpxykwKnd/A
	/6Xf6lIlu8pMavoUH0/bhQepw+IJ13bVUldt1tRk7i4O1IfMZaEMsKA4xz27wk/wNn0M
	tBnK91r20l2LVJLUgqgktePgykwC+Hp6r3uRtkXfn+FkL6OtBtcSlDX7SJQtvMVVjjbb
	C4qw==
X-Gm-Message-State: AGRZ1gKK+5nKpvxK8yC533Y41KZZtAvakZSZyvWQCHi7gr7tRc/vI1JP
	+KJhl6kyvVXi1VoOMZG0KUgQ427RFjt95fbu94Ys
X-Google-Smtp-Source: AJdET5coisk4fKty1qSfWSWEEZPmi1TWZpO80TfvG5iTaBMoNvo0ZOa4hAz2ohL6gJ7Pkytf1ijLf9j2ZtUhBpBlWmo=
X-Received: by 2002:a6b:15c2:: with SMTP id
	185-v6mr4329158iov.161.1539983870624; 
	Fri, 19 Oct 2018 14:17:50 -0700 (PDT)
MIME-Version: 1.0
From: Joe Flowers <joe.flowers@nofreewill.com>
Date: Fri, 19 Oct 2018 17:17:40 -0400
Message-ID: <CA+4=ZEM9oFXNUTU8EKb_e2rCzpqZLw6Yc7dQV4mVMH2TbzRiaw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: SUSE SLES target OS
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
X-List-Received-Date: Fri, 19 Oct 2018 21:17:51 -0000
Content-Type: multipart/alternative; boundary="00000000000091896a05789b6fac"

--00000000000091896a05789b6fac
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I need to get started on a Yocto set that will build a minimal core for a
target OS of SUSE Linux Enterprise Server on x64 target hardware like a
MinnowBoard.

I have scoured the web, SUSE, and this list's (Yocto Project) archives, but
have run into no pointers.  My guess is that it is right under my nose that
can be seen with more experience rather than being hidden behind private
walls.

Will someone please get me started on the pointers and downloads I need to
get started?

I have already run through a tutorial on creating a core OS using Yocto for
a WandBoard target hardware.


Thank you !

Joe
--------------

--00000000000091896a05789b6fac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,<div><br></div><div>I need to get started o=
n a Yocto set that will build a minimal core for a target OS of SUSE Linux =
Enterprise Server on x64 target hardware like a MinnowBoard.</div><div><br>=
</div><div>I have scoured the web, SUSE, and this list&#39;s (Yocto Project=
) archives, but have run into no pointers.=C2=A0 My guess is that it is rig=
ht under my nose that can be seen with more experience rather than being hi=
dden behind private walls.</div><div><br></div><div>Will someone please get=
 me started on the pointers and downloads I need to get started?</div><div>=
<br></div><div>I have already run through a tutorial on creating a core OS =
using Yocto for a WandBoard target hardware.</div><div><br></div><div><br><=
/div><div>Thank you !</div><div><br></div><div>Joe</div><div>--------------=
</div><div><br></div></div>

--00000000000091896a05789b6fac--
