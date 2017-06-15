Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D244E00B9E; Wed, 14 Jun 2017 23:13:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04BBCE00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 23:13:31 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id w1so6944872qtg.2
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 23:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=krlYKsuO1i9ksC/1N0xijeoQgzJZu5W9SBaRroF+ipY=;
	b=VuxptTvuhkL3lLl1Omj2N/yy0D1Wn8YxTNV3QdLDxTor0XyQ0kxP0rtdWDaXTYzMLK
	PA/uKVyxeU/JQC4nyx01wvRFrxKUJyYUkiRKnkX2dczu9SKXHaH3TeA63y6rtT9KzsvJ
	p+La1EGpOuqDlJ/Cylexs5wmKfvY+A9s9kpDsm4e5aHRF/vaoLt2FFKzmnnbc5GukPjA
	4gX4Ap/r/bBP1+HexcRSK/r4x7aoKA1eaxjw3Fv4uDyTXrNUttgz3zev9VbSVY4O2l+z
	X22Ry5er8CzH1HeNMyvyjjYu3HlerxyzuCzVrZ2GM+EZH4IZo9C6WFwY0VZdDSpfdoAH
	SLtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=krlYKsuO1i9ksC/1N0xijeoQgzJZu5W9SBaRroF+ipY=;
	b=lwJH7qNGu2BqlwbBwEX71TOr9EqTj7TS+OXPn2HhzrGUKALQuOMu5wBZLCnGqqSpbX
	JLeoEFPgj5ME+0/G1PFSan7QCsOc8XXTAoE6pMNWcQNN6EvSw1RKaysJe0iWbON8TnVX
	IWDNd60/ODCU7AYbMuXtzbC5T+2wzNZQVLCBwMc0qQrucz31HIp6RcsFJrabzOmDe9p6
	joenarRKBSOR23n7CzbqeEGNpKxWydp+GKNPlb4rkkFWNME32f8OMkLgnK1OfRVBt11W
	0X69UXBznOb4FAIWcVImhFFtBWOG5nN/4aoxkKO+Sfw4gtRUtJIgF2bcClvHwqQpbnkj
	2A/g==
X-Gm-Message-State: AKS2vOyrdYNmxLh2R+J1Ih10xCdJq5fuj6gUPGsD9+sUilIL9GKSSlzz
	ma2OUlug7A0zEq538ys02ot+/dg2sA==
X-Received: by 10.237.49.41 with SMTP id 38mr4571208qtg.161.1497507210474;
	Wed, 14 Jun 2017 23:13:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.209.28 with HTTP; Wed, 14 Jun 2017 23:13:29 -0700 (PDT)
In-Reply-To: <674A5206CFD34D99AF67A279C9F5E3C1@PAULD>
References: <674A5206CFD34D99AF67A279C9F5E3C1@PAULD>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 15 Jun 2017 08:13:29 +0200
Message-ID: <CADkTA4PAG8co3P=4KkJD8f+xwi77bnz4Puq3gqk9srf5nW2nFA@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Is linux-yocto-rt kernel compatible with x32 tune?
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
X-List-Received-Date: Thu, 15 Jun 2017 06:13:34 -0000
Content-Type: multipart/alternative; boundary="94eb2c0c955c54395a0551f991a2"

--94eb2c0c955c54395a0551f991a2
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 15, 2017 at 4:11 AM, Paul D. DeRocco <pderocco@ix.netcom.com>
wrote:

> I've been fighting with this off and on for a week. If I build
> core-image-minimal for a generic86-64 machine, I can get it to use the x32
> ABI, or I can switch to the linux-yocto-rt 4.8 kernel, but I can't do
> both.
>
> If I do both, it builds with no complaint other than a lot of bit size
> errors in grub-efi do_package_qa (which don't seem to matter with the
> standard kernel). Most binaries, including loadable kernel modules, are
> properly built as ELF architecture i386:x64-32, but the kernel itself is
> built as i386:x86-64. The result is an immediate kernel panic trying to
> run init, because the kernel doesn't know how to load it.
>
> I understand that not all packages have been updated to work with x32, but
> the RT kernel? Is this a combination that is known not to work? If it is
> expected to work, am I the first person to try to boot it on actual
> hardware? I'd like to know either that this simply won't work, so I can
> stop wasting time on it, or get some help diagnosing the problem and
> fixing it. I'm stumped.
>

I can't think of a reason off the top of my head that would prevent this
from working at the kernel level.

But can you confirm that a non-rt build for the same board works with
x32 ? It could just be a kernel configuration issue if it does work with
non-rt, since the -rt variant may not have a BSP entry point defined.

Bruce


>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--94eb2c0c955c54395a0551f991a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Jun 15, 2017 at 4:11 AM, Paul D. DeRocco <span dir=3D"ltr">&lt;=
<a href=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pderocco@ix.net=
com.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I&#39;ve be=
en fighting with this off and on for a week. If I build<br>
core-image-minimal for a generic86-64 machine, I can get it to use the x32<=
br>
ABI, or I can switch to the linux-yocto-rt 4.8 kernel, but I can&#39;t do<b=
r>
both.<br>
<br>
If I do both, it builds with no complaint other than a lot of bit size<br>
errors in grub-efi do_package_qa (which don&#39;t seem to matter with the<b=
r>
standard kernel). Most binaries, including loadable kernel modules, are<br>
properly built as ELF architecture i386:x64-32, but the kernel itself is<br=
>
built as i386:x86-64. The result is an immediate kernel panic trying to<br>
run init, because the kernel doesn&#39;t know how to load it.<br>
<br>
I understand that not all packages have been updated to work with x32, but<=
br>
the RT kernel? Is this a combination that is known not to work? If it is<br=
>
expected to work, am I the first person to try to boot it on actual<br>
hardware? I&#39;d like to know either that this simply won&#39;t work, so I=
 can<br>
stop wasting time on it, or get some help diagnosing the problem and<br>
fixing it. I&#39;m stumped.<br></blockquote><div><br></div><div>I can&#39;t=
 think of a reason off the top of my head that would prevent this</div><div=
>from working at the kernel level.</div><div><br></div><div>But can you con=
firm that a non-rt build for the same board works with</div><div>x32 ? It c=
ould just be a kernel configuration issue if it does work with</div><div>no=
n-rt, since the -rt variant may not have a BSP entry point defined.</div><d=
iv><br></div><div>Bruce</div><div>=C2=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Ciao,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Paul D. DeRocco=
<br>
Paul=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mailto:<a href=
=3D"mailto:pderocco@ix.netcom.com">pderocco@ix.netcom.com</a><br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;T=
hou shalt not follow the NULL pointer, for chaos and madness await thee at =
its end&quot;</div>
</div></div>

--94eb2c0c955c54395a0551f991a2--
