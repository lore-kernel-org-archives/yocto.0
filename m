Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0559E00CE2; Mon, 23 Oct 2017 04:08:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 179D8E00928
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 04:08:18 -0700 (PDT)
Received: by mail-wr0-f176.google.com with SMTP id r79so16930783wrb.13
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 04:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1oxRPgKT/WgygZsNXCCGrDlkY+S/JOMwrGCZ47kNjhA=;
	b=QbM5JR8R7NHyT8H8nVXotCVKBClWZtoLEaMgOM27M4OJy0EFIzOCezUaP/CztMnf6W
	eFqgNf0EymBmBdhrjsN6xGujSfJ1L/fjryTMRygEZE45Om47Mw/iEyiE18Fu1iLtdSZJ
	yLbS3pjzgXXdS/h7jK7ZNdRKM+lyJxn78Hb8iN81x5LlxYDamzXnz/eMUw+8NW5OaYy2
	kTyoSnJvQX9yNOMGxekMZmbaaxAXbo2xZ/yXRYbaRnjodoypFIk4paloqont0upaQZi6
	sM+G/fpuGMP9N9YLz/m5J4pVl5XZ/4esS5OtUlO2vSR13HWzvI/Rc1kZgeOPmU5b1GcR
	zYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1oxRPgKT/WgygZsNXCCGrDlkY+S/JOMwrGCZ47kNjhA=;
	b=Du1JZpfQjavgsrZ9FqZw8xtVsptiVLJkVI03TWr55RKusg0o0oBe9dBQneBkOO/rLn
	esKDjHwIY1HCpG2/YI5jUzRhlqK/6QAbSvD6Ht+H4j4w2ZlD9jHm3KkPXRJ52lW8JX+S
	rpzZ0eXDEt172coMZMGl8W6uA38U1agdmSc158KDiPCqibD9nTQxL3lnKmkD3oy3zH5a
	F6L5pTggc45ISij4RiERBD9rknY6Kn6jmQxfxTr2MLrcTBmAX2S5LuNmgk3Jwh9aO8Tn
	phfG6SEQAitfcR3EamqYVv0dkCd4LD9MwfYSoG9SH+BNMXqTzatKubbzx41w5NIOoTR4
	O9rA==
X-Gm-Message-State: AMCzsaVcQoEU3UAIAPVsMd8phKpnWg0I3lD+QG4xC9DBo04CWteZO5D4
	Ib+LfvszeaXK6kkuqGW3bJbrLexVBKxosyhNOLRGOA==
X-Google-Smtp-Source: ABhQp+SdwmC2C6kreA8V+LQy1qTclZemC1sy6xxcH6jHMjILlSVG8oc03a3z7NH5KLYc1JxbWSvkwpMYyUTv72fwiBs=
X-Received: by 10.223.134.84 with SMTP id 20mr12002400wrw.60.1508756897701;
	Mon, 23 Oct 2017 04:08:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.67.131 with HTTP; Mon, 23 Oct 2017 04:08:16 -0700 (PDT)
In-Reply-To: <HK2PR04MB0995025ABDA5E96119DA33E2E6460@HK2PR04MB0995.apcprd04.prod.outlook.com>
References: <HK2PR04MB0995025ABDA5E96119DA33E2E6460@HK2PR04MB0995.apcprd04.prod.outlook.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 23 Oct 2017 13:08:16 +0200
Message-ID: <CAGAf8LyT5Aw7tuMUjgX=b9GuV+5JX3xnKsv0RsJbRhCc6JGAug@mail.gmail.com>
To: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto (Pyro) build error
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
X-List-Received-Date: Mon, 23 Oct 2017 11:08:20 -0000
Content-Type: multipart/alternative; boundary="001a1149196cf0aa7b055c34d65b"

--001a1149196cf0aa7b055c34d65b
Content-Type: text/plain; charset="UTF-8"

> WARNING: firmware-imx-1,5.4-r0 do-fetch:failed to fetch URL...

I recall, I had the same error. Seems that this particular URL (server) is
down for some reason. Happens for this package frequently.

You should try later, but continue to do the target with bitbake -k switch.

http://wiki.kaeilos.com/index.php/Bitbake_options

Zoran

On Mon, Oct 23, 2017 at 11:17 AM, Umamahesh Yelchuruvenkata <
umamahesh.y@hcl.com> wrote:

> Hi,
>
>
>
> I am trying to build yocto (Pyro version) for wandboard , it frequently
> fails while fetching firmware file (Error and my modified local.conf file
> attached for reference.
>
>
>
> Looking for suggestions.
>
>
>
> Thanks
>
> UmaMahesh
>
>
>
>
>
> ::DISCLAIMER::
> ------------------------------------------------------------
> ------------------------------------------------------------
> ----------------------------
>
> The contents of this e-mail and any attachment(s) are confidential and
> intended for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as
> information could be intercepted, corrupted,
> lost, destroyed, arrive late or incomplete, or may contain viruses in
> transmission. The e mail and its contents
> (with or without referred errors) shall therefore not attach any liability
> on the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of the
> author and may not necessarily reflect the
> views or opinions of HCL or its affiliates. Any form of reproduction,
> dissemination, copying, disclosure, modification,
> distribution and / or publication of this message without the prior
> written consent of authorized representative of
> HCL is strictly prohibited. If you have received this email in error
> please delete it and notify the sender immediately.
> Before opening any email and/or attachments, please check them for viruses
> and other defects.
>
> ------------------------------------------------------------
> ------------------------------------------------------------
> ----------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1149196cf0aa7b055c34d65b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; WARNING: firmware-imx-1,5.4-r0 do-fetch:failed to fet=
ch URL...<div><br></div><div>I recall, I had the same error. Seems that thi=
s particular URL (server) is down for some reason. Happens for this package=
 frequently.</div><div><br></div><div>You should try later, but continue to=
 do the target with bitbake -k switch.</div><div><br></div><div><a href=3D"=
http://wiki.kaeilos.com/index.php/Bitbake_options">http://wiki.kaeilos.com/=
index.php/Bitbake_options</a><br></div><div><br></div><div>Zoran</div></div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Oct 23, =
2017 at 11:17 AM, Umamahesh Yelchuruvenkata <span dir=3D"ltr">&lt;<a href=
=3D"mailto:umamahesh.y@hcl.com" target=3D"_blank">umamahesh.y@hcl.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-IN" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_-3711089352540022350WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Hi,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">I am trying to build yocto (Pyro vers=
ion) for wandboard , it frequently fails while fetching firmware file (Erro=
r and my modified local.conf
 file attached for reference.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Looking for suggestions.<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Thanks<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">UmaMahesh<u></u><u></u></span></p>
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif"><br>
<br>
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><u></u><u></u></span></p>
</div>
</div>
</div>
<span style=3D"FONT-FAMILY:&#39;Arial&#39;,&#39;sans-serif&#39;;COLOR:gray;=
FONT-SIZE:7.5pt">
<p style=3D"MARGIN:0in 0in 0pt" class=3D"MsoNormal"><br><br><font style=3D"=
FONT-FAMILY:&#39;Arial&#39;,&#39;sans-serif&#39;;COLOR:gray;FONT-SIZE:9px">=
::DISCLAIMER::<br>------------------------------<wbr>----------------------=
--------<wbr>------------------------------<wbr>---------------------------=
---<wbr>----------------------------</font></p>
<p style=3D"MARGIN:0in 0in 0pt" class=3D"MsoNormal"><font style=3D"FONT-FAM=
ILY:&#39;Arial&#39;,&#39;sans-serif&#39;;COLOR:gray;FONT-SIZE:11px">The con=
tents of this e-mail and any attachment(s) are confidential and intended fo=
r the named recipient(s) only.<br>E-mail transmission is not guaranteed to =
be secure or error-free as information could be intercepted, corrupted, <br=
>lost, destroyed, arrive late or incomplete, or may contain viruses in tran=
smission. The e mail and its contents <br>(with or without referred errors)=
 shall therefore not attach any liability on the originator or HCL or its a=
ffiliates. <br>Views or opinions, if any, presented in this email are solel=
y those of the author and may not necessarily reflect the <br>views or opin=
ions of HCL or its affiliates. Any form of reproduction, dissemination, cop=
ying, disclosure, modification, <br>distribution and / or publication of th=
is message without the prior written consent of authorized representative o=
f <br>HCL is strictly prohibited. If you have received this email in error =
please delete it and notify the sender immediately. <br>Before opening any =
email and/or attachments, please check them for viruses and other defects.<=
/font></p>
<p style=3D"MARGIN:0in 0in 0pt" class=3D"MsoNormal"><font style=3D"FONT-FAM=
ILY:&#39;Arial&#39;,&#39;sans-serif&#39;;COLOR:gray;FONT-SIZE:11px">-------=
-----------------------<wbr>------------------------------<wbr>------------=
------------------<wbr>------------------------------<wbr>-----------------=
-----------</font></p></span></div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1149196cf0aa7b055c34d65b--
