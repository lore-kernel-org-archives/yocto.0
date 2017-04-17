Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2AB4E0083C; Mon, 17 Apr 2017 08:29:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 529BBE00826
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 08:29:00 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id r203so145310341oib.3
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 08:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4ls6m2fXjozWQN6WemYKh5nCQ82+uQv+62UYiN+zUBQ=;
	b=OruRO0QPOjvSD0Op56KWd9H+Tmz4QBHWcK1YLzGU+wTJNIC9uWJaAUlCrHBBID9Zpj
	ix7oP7tyfQi2bpdKuCNwC9XN5NIP1VeeMbmsVxbVBvxfAO9/R4psUdEvvYN+xEZ5MAVU
	gUi0HBXS3bnaQ/rqq/pm97drZGEwV2ykSK3qqCRub/W4hLkab+CjHq4FrlcQRiTPnkB+
	7JZLjk5dO9krnquPJES+VOdcIMJ3r9K5s3mpLDza8E/pUHqBMr1eNXXas74WIsvBm0uh
	pLShQCnAt+/o2oezk3c32bD0SDN6fbtqIuGstbPgPjCFxYTKxVRU1AlDZWTxtK+mqROx
	rWLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4ls6m2fXjozWQN6WemYKh5nCQ82+uQv+62UYiN+zUBQ=;
	b=ju7mCSdojkowuOR2hV0KsPKObPxwG1Wm5WsQwHD5k+6ByfIStrEFzKQWnN9Isf1sQh
	VJb7dAaCSg3vFO6LJUT5X6biC7CagWvnZ8CIian02KsN6d0J42xZxKZ9xS9GyOjuAwq/
	LFkBxi2z5t/+wUVgb18swjrB3EOCRUlMCQzSkVT5LgjIOIPlu/VsbyRCyKuLoxeKHhh9
	BrKXJbfym9P2ZY44mElLLb3wIk6HBdBnZWh5x8duRzRy70sK1A8cYzvKJrnHxJ9jXqFA
	TTNng+mzkbTWVBLDE6qMMhMUSwgr3zCrLMwA0+32SN/rYVdcRWVJ0PbWzUvb1Eyl23pW
	jxqA==
X-Gm-Message-State: AN3rC/7l1T3Ht4MCsnIONFIB3pIZa333xQTs8TkK5V6LP4nXNZTR7ftq
	uFYAWEvioJx0zXrtKxZ+64ADequmNw==
X-Received: by 10.202.77.11 with SMTP id a11mr4874417oib.79.1492442939939;
	Mon, 17 Apr 2017 08:28:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.33.197 with HTTP; Mon, 17 Apr 2017 08:28:39 -0700 (PDT)
In-Reply-To: <CAJO0J4gwVgC_m9bnzunsfKVsL=nuf-qKZuehhzjwiTq4n4Fe6Q@mail.gmail.com>
References: <CAJO0J4gwVgC_m9bnzunsfKVsL=nuf-qKZuehhzjwiTq4n4Fe6Q@mail.gmail.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Mon, 17 Apr 2017 08:28:39 -0700
Message-ID: <CABcZANmEUS+=TQvvv-cFestb06+YpT8YDt3vtQAQGrarqAz1fA@mail.gmail.com>
To: Paulo Neves <ptsneves@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Bug 11307 - sstate.bbclass tries to modify mirror files
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
X-List-Received-Date: Mon, 17 Apr 2017 15:29:02 -0000
Content-Type: multipart/alternative; boundary=001a11494d0e486026054d5e7396

--001a11494d0e486026054d5e7396
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 11, 2017 at 11:37 PM, Paulo Neves <ptsneves@gmail.com> wrote:

> Commit 51edde653707e7a3cd2186082458f01f32cd1996 makes a wrong
> assumption that SSTATE_MIRRORS have write permissions.
>
> A mirror is by definition outside of it's user control. In my use case
> it happens I does not have permissions to update the access time of
> the dereferenced symbolic-link file.
>
> If we had the possibility to modify the sstate-mirror we would have
> set SSTATE_DIR instead. There are 3 possible fixes:
>
> * Revert this patch. It seems tailored to a very special use case
> which breaks the definition of mirror.
> * Only touch the file if the file access time is writeable.
> * Set (yet) another option to touch SSTATE_MIRROR files.
>
> I also can imagine this raising sever performance issues if the mirror
> is used by several users at the same time. The server will need to
> update the file meta data every time
>
> This patch fixes the bug with minimal impact on the original
> functionality. Option 2
>
>
> Related to (https://bugzilla.yoctoproject.org/show_bug.cgi?id=10857)
>
> From aa8cab9660744c8d5277f8e82f10a844884aff78 Mon Sep 17 00:00:00 2001
> From: Paulo Neves <paulo.de_sousa_neves@nokia.com>
> Date: Tue, 11 Apr 2017 10:57:47 +0300
> Subject: [PATCH] Added test for write ability of sstate-mirror .siginfo
>

Thanks much for your contribution, this seems reasonable to me. That said,
the subject line needs tweaking to meet our commit message guidelines,
i.e.: sstate.bbclass: handle non-writable sstate mirror, or similar. And
the yocto bug id should go in the body, not the subject line. I realize it
probably sounds nitpicky, but maintaining commit message quality makes it
much easier to review the logs in the future. This file is also in the
oe-core layer, so the patch should ideally go to the openembedded-core
mailing list. Thanks again!

See http://openembedded.org/wiki/Commit_Patch_Message_Guidelines.
-- 
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--001a11494d0e486026054d5e7396
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Apr 11, 2017 at 11:37 PM, Paulo Neves <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ptsneves@gmail.com" target=3D"_blank">ptsneves@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:=
rgb(204,204,204);padding-left:1ex"><div id=3D"gmail-:1rj" class=3D"gmail-a3=
s gmail-aXjCH gmail-m15b60e2f1005875f">Commit 51edde653707e7a3cd2186082458f=
0<wbr>1f32cd1996 makes a wrong<br>
assumption that SSTATE_MIRRORS have write permissions.<br>
<br>
A mirror is by definition outside of it&#39;s user control. In my use case<=
br>
it happens I does not have permissions to update the access time of<br>
the dereferenced symbolic-link file.<br>
<br>
If we had the possibility to modify the sstate-mirror we would have<br>
set SSTATE_DIR instead. There are 3 possible fixes:<br>
<br>
* Revert this patch. It seems tailored to a very special use case<br>
which breaks the definition of mirror.<br>
* Only touch the file if the file access time is writeable.<br>
* Set (yet) another option to touch SSTATE_MIRROR files.<br>
<br>
I also can imagine this raising sever performance issues if the mirror<br>
is used by several users at the same time. The server will need to<br>
update the file meta data every time<br>
<br>
This patch fixes the bug with minimal impact on the original<br>
functionality. Option 2<br>
<br>
<br>
Related to (<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
10857" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.<wbr>yoctoproj=
ect.org/show_bug.cgi?<wbr>id=3D10857</a>)<br>
<br>
From aa8cab9660744c8d5277f8e82f10a8<wbr>44884aff78 Mon Sep 17 00:00:00 2001=
<br>
From: Paulo Neves &lt;<a href=3D"mailto:paulo.de_sousa_neves@nokia.com">pau=
lo.de_sousa_neves@nokia.<wbr>com</a>&gt;<br>
Date: Tue, 11 Apr 2017 10:57:47 +0300<br>
Subject: [PATCH] Added test for write ability of sstate-mirror .siginfo</di=
v></blockquote></div><br>Thanks much for your contribution, this seems reas=
onable to me. That said, the subject line needs tweaking to meet our commit=
 message guidelines, i.e.: sstate.bbclass: handle non-writable sstate mirro=
r, or similar. And the yocto bug id should go in the body, not the subject =
line. I realize it probably sounds nitpicky, but maintaining commit message=
 quality makes it much easier to review the logs in the future. This file i=
s also in the oe-core layer, so the patch should ideally go to the openembe=
dded-core mailing list. Thanks again!</div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">See=C2=A0<a href=3D"http://openembedded.org=
/wiki/Commit_Patch_Message_Guidelines">http://openembedded.org/wiki/Commit_=
Patch_Message_Guidelines</a>.<br>-- <br><div class=3D"gmail_signature"><div=
 dir=3D"ltr"><div><div dir=3D"ltr">Christopher Larson<br>kergoth at gmail d=
ot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Senior Software En=
gineer, Mentor Graphics</div></div></div></div>
</div></div>

--001a11494d0e486026054d5e7396--
