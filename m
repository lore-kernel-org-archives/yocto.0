Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B437E014EA
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 10:54:17 -0700 (PDT)
Received: by mail-lb0-f169.google.com with SMTP id z5so4630216lbh.28
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 10:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=UW880JV1vJb5tSSRtTN1Wva7ACXEAl9QLzG7h7bI5Zg=;
	b=Qn/GQsPHCIf7+4NgmxGFdzdyKgk8kk6eGxRq4XwBeUGjtKL0msRtHbHxiflJaH6pkJ
	JqrS5L+zO3NlhQrP/8hA5UHAOcxXQvDdToCFs8YjBkeYBfk5La4bk2C3gqyBS8tMk5+G
	1onZfqZbaR+OTczOSrk1wrTWfNuin/Jxru96ohQDrsHfCgxdMgd3HFG8zO5BT63McDVW
	780cCnUdsZQgKQX97yqi43+8Z/mZtJsRb6Eh9gjfrJJFuPTyBuAWGDVE4PpfdO3+UoLx
	hlVFmis4c78JS8FPXaXt1n3NHlRSPfMYu6TA82aKRoIS6XrM0QUegzm5ZXfSbHJo+h1F
	8aZA==
X-Received: by 10.152.2.74 with SMTP id 10mr2406014las.36.1379354055797; Mon,
	16 Sep 2013 10:54:15 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.53.197 with HTTP; Mon, 16 Sep 2013 10:53:55 -0700 (PDT)
In-Reply-To: <A8F6DAF6C594463B96E491611B8DF873@PAULD>
References: <A8F6DAF6C594463B96E491611B8DF873@PAULD>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 16 Sep 2013 10:53:55 -0700
X-Google-Sender-Auth: vtXJIsnAisZPT0lvAGAie-KjkSk
Message-ID: <CABcZAN=hjjwAG=J-a+9N9cVyG1h_wLaN=baEd0c1fpPwt1Y+Nw@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How to find the source of a variable value?
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
X-List-Received-Date: Mon, 16 Sep 2013 17:54:18 -0000
Content-Type: multipart/alternative; boundary=089e01228e5a83ef9704e683e4b4

--089e01228e5a83ef9704e683e4b4
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 16, 2013 at 10:02 AM, Paul D. DeRocco <pderocco@ix.netcom.com>wrote:

> This image recipe has some Python that complains because "x11" is in
> DISTRO_FEATURES. How do I find out where that "x11" is coming from? This
> is a Gumstix build, so I suspect it's indirectly related to my selecting
> "overo" as the MACHINE, because otherwise building this image would never
> have worked with the plain Yocto meta-data. So how do I track this down?
>

Assuming you're using recent metadata, bitbake -e somerecipe will show you
this.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e01228e5a83ef9704e683e4b4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Sep 16, 2013 at 10:02 AM, Paul D. DeRocco <span dir=3D"ltr">&lt;<a =
href=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pderocco@ix.netcom=
.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":c5" style=3D"overflow:hidden">Th=
is image recipe has some Python that complains because &quot;x11&quot; is i=
n<br>


DISTRO_FEATURES. How do I find out where that &quot;x11&quot; is coming fro=
m? This<br>
is a Gumstix build, so I suspect it&#39;s indirectly related to my selectin=
g<br>
&quot;overo&quot; as the MACHINE, because otherwise building this image wou=
ld never<br>
have worked with the plain Yocto meta-data. So how do I track this down?<br=
></div></blockquote><div>=C2=A0</div></div>Assuming you&#39;re using recent=
 metadata, bitbake -e somerecipe will show you this.<br>-- <br>Christopher =
Larson<br>

clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<b=
r>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</div></div>

--089e01228e5a83ef9704e683e4b4--
