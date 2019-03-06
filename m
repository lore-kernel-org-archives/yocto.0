Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A4A7E00BCC; Wed,  6 Mar 2019 07:37:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.210.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 563D3E00BCC
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 07:37:02 -0800 (PST)
Received: by mail-ot1-f68.google.com with SMTP id t7so11084245otk.8
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 07:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=i05mbn02Zx6Af9+yFk/EJ3DnrXjKptcbv8kpKSM+6Zk=;
	b=DRVrQGzpXb1XHYtsOSS7n50IvWi+QXqgIg97RXIu9suGUINO/hlU35qymksw+PEMuM
	Mugm70W5lgyl1lNdHWAEHVfTe8PvgnAo+YsgS2i6/7fa0ap/iVcyObQTgfx6AAQpTkWP
	PlwliCpG1LxNjn3oboDPBPs75SUGugfL39GSbSe8Z+wGxcJj1il+HUjbkAoAVvRTqL/C
	1ps2zZyY7kEjasEGn3KqazswiLcuGt/GfRImFjVeS/SVeySPnI7nwQpp3+KZ0dk+D6sH
	cMrPv/uDuDyfGVcCGV1mbeKYT6S4AHsQBygk8kqIE2ZgAZD07Mju84Pi79pkvEPg4nmI
	ncUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=i05mbn02Zx6Af9+yFk/EJ3DnrXjKptcbv8kpKSM+6Zk=;
	b=Vg5hArxJqPjeQASmhZYs0Vaqgh1sx3ZEZckGt2hTMMSqnzO1Cxn7xeDvvnC2A729w8
	1CRvmw9m9ISyh6VSeAzBq+dIXsw0QPbS0jopR995YoP0oaGhor/TeQTM9irdrkP8xrfo
	6NvKVkKftWR3wmAE9AOuPXPTn6xXlMNasoPeB/E3FHYJHu5IkSxqK/dIz2MRXcnrOPGt
	QeaJLBoTwdVfl9Z/6qAvygOXGke2cMx5uMqJUewqBrD347POhjdLWLVJrkC+gSJ2FgI/
	MdxH8ft1knDSWRBrEH/hvHMGy5wIs7x0syJTKNT+dJVyFiEKeDz5RWfabrLtYfduBgIl
	BReg==
X-Gm-Message-State: APjAAAXZ6hJd8sNBb/73S0RlGERR2gc1tKZNiW32A96b54jRFFkIIDWH
	GjAldjmlNpcEjHQ/2u1RlZ4I/4bcArERdtOd4Uw=
X-Google-Smtp-Source: APXvYqxjHoeojef/5DsMZw5gb1bvBxJU7OPoqcGGZU0Ix+6JIjDlRzRe1qRR1GqQKAFV5z1h1IF0xJfp+OYglfJXcfI=
X-Received: by 2002:a9d:7544:: with SMTP id b4mr4901913otl.326.1551886621575; 
	Wed, 06 Mar 2019 07:37:01 -0800 (PST)
MIME-Version: 1.0
References: <5f8b2ea081cd4eb6afa6d8cc69cb4569@ifm.com>
In-Reply-To: <5f8b2ea081cd4eb6afa6d8cc69cb4569@ifm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 6 Mar 2019 16:36:49 +0100
Message-ID: <CANNYZj9GV7Q2kqH4_JXc5pbEmBDHE2uC83ELwA_zQXpPSYeQJw@mail.gmail.com>
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using git am to apply git patch in the workdir of any package+
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
X-List-Received-Date: Wed, 06 Mar 2019 15:37:03 -0000
X-Groupsio-MsgNum: 44327
Content-Type: multipart/related; boundary="000000000000cffed405836ec2d5"

--000000000000cffed405836ec2d5
Content-Type: multipart/alternative; boundary="000000000000cffed205836ec2d4"

--000000000000cffed205836ec2d4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The supported recommended workflow for this things is with devtool.

Please try especially 'devtool modify' and 'devtool upgrade'. The latter
will rebase patches for you, regardless of how they were made.

Alex

On Wed, 6 Mar 2019 at 15:18, Pandey, Kamal <Kamal.Pandey@ifm.com> wrote:

> Hello,
>
> I am trying to modify the src code of a package named say x,
>
> For this I type the command $bitbake x =E2=80=93c devshell.
>
> This leads me to the git repo of the x package(if it is a git repo).
>
> Now I do my changes, commit the changes, and create a patch out of it
> using git format-patch.
>
> Now I want this git patch to be applied via git am  whenever I run bitbak=
e
> x.
>
> In some packages the patch is applied via git am for example
> linux-yocto-%.bb, but in some cases the patch is not being applied via gi=
t
> am for example u-boot%.bb
>
> Is there any setting in bitbake to apply git patches via git am so that i=
t
> is easy to modify the older patches via rebase commands, or we have to
> create new patch every time for a small change and the later patches will
> have dependency on older patches.
>
>
>
>
>
> Best Regards
>
> Kamal Pandey
>
> Junior Software Engineer
>
> [image: ifm_logo_sqrs]ifm engineering pvt. ltd.
>
> Survey No. 1/10/16, 3rd floor, Above SBI, Bavdhan Branch, N.D.A. Road,
> Bavdhan, Pune, India - 411021 | Web: www.ifm.com | Phone: +91-20-22951910
> Extn:215 | CIN: U29213PN2010FTC13676
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000cffed205836ec2d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The supported recommended workflow for this things is=
 with devtool.</div><div><br></div><div>Please try especially &#39;devtool =
modify&#39; and &#39;devtool upgrade&#39;. The latter will rebase patches f=
or you, regardless of how they were made.</div><div><br></div><div>Alex<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, 6 Mar 2019 at 15:18, Pandey, Kamal &lt;<a href=3D"mailto:Kama=
l.Pandey@ifm.com">Kamal.Pandey@ifm.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-IN">
<div class=3D"gmail-m_-1862421604250656787WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal">I am trying to modify the src code of a package name=
d say x,
<u></u><u></u></p>
<p class=3D"MsoNormal">For this I type the command $bitbake x =E2=80=93c de=
vshell.<u></u><u></u></p>
<p class=3D"MsoNormal">This leads me to the git repo of the x package(if it=
 is a git repo).<u></u><u></u></p>
<p class=3D"MsoNormal">Now I do my changes, commit the changes, and create =
a patch out of it using git format-patch.<u></u><u></u></p>
<p class=3D"MsoNormal">Now I want this git patch to be applied via git am=
=C2=A0 whenever I run bitbake x.<u></u><u></u></p>
<p class=3D"MsoNormal">In some packages the patch is applied via git am for=
 example linux-yocto-%.bb, but in some cases the patch is not being applied=
 via git am for example u-boot%.bb<u></u><u></u></p>
<p class=3D"MsoNormal">Is there any setting in bitbake to apply git patches=
 via git am so that it is easy to modify the older patches via rebase comma=
nds, or we have to create new patch every time for a small change and the l=
ater patches will have dependency
 on older patches.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:36pt"><span style=3D"font-size:=
10pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;color:black" lang=3D"E=
N-US">Best Regards
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36pt"><span style=3D"font-size:=
10pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;color:black" lang=3D"E=
N-US">Kamal Pandey<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36pt"><span style=3D"font-size:=
10pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;color:black" lang=3D"E=
N-US">Junior Software Engineer</span><span style=3D"color:black" lang=3D"EN=
-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36pt"><span style=3D"color:blac=
k"><img style=3D"width: 0.3333in; height: 0.3333in;" id=3D"gmail-m_-1862421=
604250656787Picture_x0020_1" src=3D"cid:16953a5a5a04cff311" alt=3D"ifm_logo=
_sqrs" width=3D"32" height=3D"32"></span><span style=3D"font-size:10pt;font=
-family:&quot;Trebuchet MS&quot;,sans-serif;color:black" lang=3D"EN-US">ifm
 engineering pvt. ltd.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8pt;font-family:&quot;Trebu=
chet MS&quot;,sans-serif;color:black" lang=3D"EN-US">Survey No. 1/10/16, 3r=
d floor, Above SBI, Bavdhan Branch, N.D.A. Road, Bavdhan, Pune, India - 411=
021 | Web:
</span><span lang=3D"EN-US"><a href=3D"http://www.ifm.com/" target=3D"_blan=
k"><span style=3D"font-size:8pt;font-family:&quot;Trebuchet MS&quot;,sans-s=
erif;color:black">www.ifm.com</span></a></span><span style=3D"font-size:8pt=
;font-family:&quot;Trebuchet MS&quot;,sans-serif;color:black" lang=3D"EN-US=
">
 | Phone: +91-20-22951910 Extn:215 | CIN: U29213PN2010FTC13676</span><span>=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000cffed205836ec2d4--

--000000000000cffed405836ec2d5
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <16953a5a5a04cff311>
X-Attachment-Id: 16953a5a5a04cff311

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
RK5CYII=

--000000000000cffed405836ec2d5--
