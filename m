Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F30C8E00D11; Wed, 13 Mar 2019 08:50:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1304E00D08
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2019 08:50:11 -0700 (PDT)
Received: by mail-ed1-f48.google.com with SMTP id d6so1394565eds.2
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2019 08:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=FgraU1OU+L4WtpJHCrVizsmDP20GDiL6ibAMDoCNeRo=;
	b=mPTF4umfGTIM/Y6Z2qovI3CvYmotf5zxZi9pFmMuXUMzzSJvZikJrb1LAD9245JODW
	Tgz60bKeAlXvobCnCHDIv8zZrXZNg3tNYGVT3mQkPCqm9L2QO9X1fx0rChlTxwJx07SW
	h9HEmmjJUfv+oIMa4o8dMpK2oNfC8PhtJ9O8/IbkWI1HuV0NTSus+lB4kiozoxddB5Y1
	ueIjWAPLmO8D3DPbsTDNoDESbW6njGA4Zv9H8QeYKvv21o/MMTOzyNc2WgXjh5rfB3zI
	vqA29JRZKsVuj6NR4dfQffBxZWT9QSR4ijnAuErwwPn/Z2+CDmu5f3VplEBdjoRwwflR
	yDWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=FgraU1OU+L4WtpJHCrVizsmDP20GDiL6ibAMDoCNeRo=;
	b=tA9+votrYt2DWdMy7szoFI2innGXyB4xUGMuVIPIUU+lhJfualAj4BCsHASE2JCH4M
	nEDjmrCIuDrMPQ7WkT6ZP6XI5NN09GODTvxXv08Av4OwhzUatEKe3fN19K7uFA7rXab3
	7eP7Ez73irnr97h3xlUmwpxZBjWtAFoUYfeWdgWBvQtJpyxDhaGmLAM/6uLNnXGLDCCZ
	jN5JY3PYzHaADlYcfrPK3xf7F0sFHubr9H25Y7JWWY++eyWTP/CAf4Jkd4hO35aH58IT
	ie/CllBemMtFWoFEa9+1fgzPtEarqJavx+l+gVeJU/ZKx/uT1yT98QtfETnWO23ICeyY
	GmtA==
X-Gm-Message-State: APjAAAUO2gWD9iVTKb2bkZUHkRSDAKt8Tc057NiZZkM9KnuoPsjQHfQE
	EE4Set918qeAnvNNRrE5oC+pHOTbQtiChIzzysESfA==
X-Google-Smtp-Source: APXvYqz4xrv8tjo2FpMYxLD2S5idMzRwuour4YG53dw922gCG3tg8V3EHYDBLD0SXJXbsHip9MGzhyLTyO5PFux7fs4=
X-Received: by 2002:a17:906:5f91:: with SMTP id
	a17mr30006079eju.48.1552492210919; 
	Wed, 13 Mar 2019 08:50:10 -0700 (PDT)
MIME-Version: 1.0
References: <003d01d4d9b0$30bb26b0$92317410$@san.rr.com>
	<CAFNP8OsRB6Upapfkc_fPG5YKTG4Jozkn47QP-h4PM2dx-nbF9g@mail.gmail.com>
	<004e01d4d9b4$21383760$63a8a620$@san.rr.com>
In-Reply-To: <004e01d4d9b4$21383760$63a8a620$@san.rr.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 13 Mar 2019 09:49:59 -0600
Message-ID: <CAFNP8Os0gRW3200+YCLvNRh7-etqTq_n9q-AyrnQ3ZxW7-sMSg@mail.gmail.com>
To: sscott@san.rr.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: packaging documentation
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
X-List-Received-Date: Wed, 13 Mar 2019 15:50:13 -0000
Content-Type: multipart/alternative; boundary="000000000000bf9d3e0583fbc2db"

--000000000000bf9d3e0583fbc2db
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Steve,

Ok - I will file this later today so you don't need to worry about it.  I
will use "Need better explanation of how recipes create packages" as the
topic.  I will add you to the CC list so you can track it.

Thanks for helping with finding issues with the docs.

Scott

On Wed, Mar 13, 2019 at 9:47 AM Steve Scott <sscott@san.rr.com> wrote:

> Hi Scott:
>
>
>
> Yes, I=E2=80=99ve been searching in the mega manual, and I=E2=80=99ve rea=
d the section in
> the overview manual. The old OE Manual explanation was more what I was
> looking for. It seems that has been lost somewhere along the way. Filing =
a
> bug against the docs sounds like a good idea =E2=80=93 I=E2=80=99m not su=
re how to do that.
>
>
>
> Thanks.
>
>
>
> -steve
>
>
>
> *From:* Scott Rifenbark [mailto:srifenbark@gmail.com]
> *Sent:* Wednesday, March 13, 2019 8:42 AM
> *To:* sscott@san.rr.com
> *Cc:* Yocto discussion list <yocto@yoctoproject.org>
> *Subject:* Re: [yocto] packaging documentation
>
>
>
> Hi Steve,
>
>
>
> Have you found the YP Overview and Concepts Manual?  There is a fairly
> large section here -
> https://yoctoproject.org/docs/2.6.1/overview-manual/overview-manual.html#=
openembedded-build-system-build-concepts
> that covers build concepts in some detail.  This might help you.
>
>
>
> Another idea for finding topics in the YP manual set is to use the YP
> Mega-Manual (
> https://yoctoproject.org/docs/current/mega-manual/mega-manual.html),
> which is a compilation of the set of YP manuals.  You can search the enti=
re
> set for terms (e.g. "packag").  It occurs a lot in the set but it is a wa=
y
> to find all the occurrences.
>
>
>
> If you still cannot find satisfactory explanation on how packages are
> generated, we can file a bug against the docs and get a good explanation =
in
> there.
>
>
>
> Hope this helps,
>
> Scott
>
>
>
> On Wed, Mar 13, 2019 at 9:21 AM Steve Scott <sscott@san.rr.com> wrote:
>
> Hi:
>
>
>
> I=E2=80=99ve been trying to get a better understanding of how packages ar=
e
> generated by recipes. I found a fairly good explanation in an old
> OpenEmbedded User=E2=80=99s Manual (
> https://dominion.thruhere.net/koen/OE/OE-usermanual.html#recipes_packages=
).
> The manual is hard to find, and doesn=E2=80=99t appear to be archive on t=
he
> openembedded site (https://www.openembedded.org/wiki/Documentation).
>
>
>
> Can somebody point me to an equivalent discussion in the current Yocto
> project documentation?
>
>
>
> Thanks.
>
>
>
> -steve
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--000000000000bf9d3e0583fbc2db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Steve, <br></div><div><br></div><div>Ok - I will =
file this later today so you don&#39;t need to worry about it.=C2=A0 I will=
 use &quot;Need better explanation of how recipes create packages&quot; as =
the topic.=C2=A0 I will add you to the CC list so you can track it.</div><d=
iv><br></div><div>Thanks for helping with finding issues with the docs.=C2=
=A0 <br></div><div><br></div><div>Scott<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 13, 2019 at 9:=
47 AM Steve Scott &lt;<a href=3D"mailto:sscott@san.rr.com">sscott@san.rr.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div lang=3D"EN-US"><div class=3D"gmail-m_-1611090695009701636WordSection1=
"><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:rgb(31,73,125)">Hi Scott:<u></u><u></u></span>=
</p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:rgb(31,73,125)">Yes, I=E2=80=99ve been search=
ing in the mega manual, and I=E2=80=99ve read the section in the overview m=
anual. The old OE Manual explanation was more what I was looking for. It se=
ems that has been lost somewhere along the way. Filing a bug against the do=
cs sounds like a good idea =E2=80=93 I=E2=80=99m not sure how to do that.<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=
=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11p=
t;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)">Thanks.<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11p=
t;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=
=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11p=
t;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)">-steve<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=
=C2=A0<u></u></span></p><div style=3D"border-color:currentcolor currentcolo=
r currentcolor blue;border-style:none none none solid;border-width:medium m=
edium medium 1.5pt;padding:0in 0in 0in 4pt"><div><div style=3D"border-color=
:rgb(225,225,225) currentcolor currentcolor;border-style:solid none none;bo=
rder-width:1pt medium medium;padding:3pt 0in 0in"><p class=3D"MsoNormal"><b=
><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif">=
From:</span></b><span style=3D"font-size:11pt;font-family:&quot;Calibri&quo=
t;,sans-serif"> Scott Rifenbark [mailto:<a href=3D"mailto:srifenbark@gmail.=
com" target=3D"_blank">srifenbark@gmail.com</a>] <br><b>Sent:</b> Wednesday=
, March 13, 2019 8:42 AM<br><b>To:</b> <a href=3D"mailto:sscott@san.rr.com"=
 target=3D"_blank">sscott@san.rr.com</a><br><b>Cc:</b> Yocto discussion lis=
t &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoc=
toproject.org</a>&gt;<br><b>Subject:</b> Re: [yocto] packaging documentatio=
n<u></u><u></u></span></p></div></div><p class=3D"MsoNormal"><u></u>=C2=A0<=
u></u></p><div><div><div><p class=3D"MsoNormal">Hi Steve, <u></u><u></u></p=
></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p cl=
ass=3D"MsoNormal">Have you found the YP Overview and Concepts Manual?=C2=A0=
 There is a fairly large section here - <a href=3D"https://yoctoproject.org=
/docs/2.6.1/overview-manual/overview-manual.html#openembedded-build-system-=
build-concepts" target=3D"_blank">https://yoctoproject.org/docs/2.6.1/overv=
iew-manual/overview-manual.html#openembedded-build-system-build-concepts</a=
> that covers build concepts in some detail.=C2=A0 This might help you.=C2=
=A0 <u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u=
></p></div><div><p class=3D"MsoNormal">Another idea for finding topics in t=
he YP manual set is to use the YP Mega-Manual (<a href=3D"https://yoctoproj=
ect.org/docs/current/mega-manual/mega-manual.html" target=3D"_blank">https:=
//yoctoproject.org/docs/current/mega-manual/mega-manual.html</a>), which is=
 a compilation of the set of YP manuals.=C2=A0 You can search the entire se=
t for terms (e.g. &quot;packag&quot;).=C2=A0 It occurs a lot in the set but=
 it is a way to find all the occurrences. <u></u><u></u></p></div><div><p c=
lass=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal=
">If you still cannot find satisfactory explanation on how packages are gen=
erated, we can file a bug against the docs and get a good explanation in th=
ere.<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u=
></p></div><div><p class=3D"MsoNormal">Hope this helps, <u></u><u></u></p><=
/div><div><p class=3D"MsoNormal">Scott<u></u><u></u></p></div></div></div><=
p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNorm=
al">On Wed, Mar 13, 2019 at 9:21 AM Steve Scott &lt;<a href=3D"mailto:sscot=
t@san.rr.com" target=3D"_blank">sscott@san.rr.com</a>&gt; wrote:<u></u><u><=
/u></p></div><blockquote style=3D"border-color:currentcolor currentcolor cu=
rrentcolor rgb(204,204,204);border-style:none none none solid;border-width:=
medium medium medium 1pt;padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-r=
ight:0in"><div><div><p class=3D"MsoNormal">Hi:<u></u><u></u></p><p class=3D=
"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal">I=E2=80=99ve bee=
n trying to get a better understanding of how packages are generated by rec=
ipes. I found a fairly good explanation in an old OpenEmbedded User=E2=80=
=99s Manual (<a href=3D"https://dominion.thruhere.net/koen/OE/OE-usermanual=
.html#recipes_packages" target=3D"_blank">https://dominion.thruhere.net/koe=
n/OE/OE-usermanual.html#recipes_packages</a>). The manual is hard to find, =
and doesn=E2=80=99t appear to be archive on the openembedded site (<a href=
=3D"https://www.openembedded.org/wiki/Documentation" target=3D"_blank">http=
s://www.openembedded.org/wiki/Documentation</a>).<u></u><u></u></p><p class=
=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"MsoNormal">Can somebody =
point me to an equivalent discussion in the current Yocto project documenta=
tion?<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p cl=
ass=3D"MsoNormal">Thanks.<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u>=
</u><u></u></p><p class=3D"MsoNormal">-steve<u></u><u></u></p><p class=3D"M=
soNormal">=C2=A0<u></u><u></u></p></div></div><p class=3D"MsoNormal">-- <br=
>_______________________________________________<br>yocto mailing list<br><=
a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproje=
ct.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" tar=
get=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><u></u><u><=
/u></p></blockquote></div></div></div></div></blockquote></div>

--000000000000bf9d3e0583fbc2db--
