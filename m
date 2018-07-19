Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DC24E00EEE; Thu, 19 Jul 2018 11:38:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E85D9E009CF
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 11:38:10 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id f21-v6so7172150wmc.5
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 11:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=HbEOueJ4Toh1I05HRNsMKhnM/ZLW/HSTDxNw99jYYZg=;
	b=b5woe1HopCliS/B3HCvYiYwdP8yivhabL/2LsnS0Q7mpuQ5PNu7QaOw9clNI9dR/Yz
	s0FmxscALsi1tLdwDR2FXawrggpOGYUpD0sSBBCQSQLiTmF8V9nHqbFGCPHdjV23yH59
	phtg9e4K6P9EEtiglslD9ybJl+sgE5XxX1hrEAY0Gw5g2b7ikh6zQkorKfzofYGT4FZ3
	zGprl5s83ZK1BjO+JfaLERZDvoHiVqKXxEXn232H6ZYaXLfAIot73tLLzORMp5RxTcnT
	ve1yiyLnx+hV2wwrBI8tsiSTVUFN+APp+IK+OAl1o10T4JT08aSjOEdS+HkJhq/y2gfn
	4EtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=HbEOueJ4Toh1I05HRNsMKhnM/ZLW/HSTDxNw99jYYZg=;
	b=DTkrd7CRv3+6Fl7VmiDPaMMedoGAp7SEeIhWVkEItvFLlFe2XxMFEykFY8RVMwtJ3b
	bgaSNsS97hu+cbLYpuBXYecZ/cyHqMGoqzYKwc0pN9VwAtQoPQvZMP8reUK33l+Er/m4
	WWmLSoS2R3F1RwybkDBgB/VJsWKrXGHF5kezaoMJhNfDSgAOlKdNXVbRua64ctiYR8+p
	FAzWhilc67KX31IC4jwwGEyeaqLsl00bQDwGX0zzTLg8rBaYYJZ/j+lBwfhI2VgKlrHE
	hKhfha/Gu25U1FLMRMm5PMt+++eLAOU3pTQDXGiIa4KgAdkuYmiJ8ypTWqRsdE6i/sE9
	kkKg==
X-Gm-Message-State: AOUpUlFqQDB59DDiOoy+cAIVMnY687LvAVwB+6lDsL0/DkiXgZms5wbd
	T2zIoUeNKhB3pFMr1jkwCyzxRD96Y6br8Mp2aHM=
X-Google-Smtp-Source: AAOMgpf1jT83TsdHdydqAie+qpwlMLSFTRAUAROzaOJXhHlo5MjVD4zKY4Xdm78ZnQLyJhc2TmZmDiliPX5bhlLlayo=
X-Received: by 2002:a1c:b484:: with SMTP id
	d126-v6mr4998515wmf.17.1532025490126; 
	Thu, 19 Jul 2018 11:38:10 -0700 (PDT)
MIME-Version: 1.0
References: <DE98B1892D46BB468E30D103AE07E7BC253E765F@ORSMSX102.amr.corp.intel.com>
In-Reply-To: <DE98B1892D46BB468E30D103AE07E7BC253E765F@ORSMSX102.amr.corp.intel.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 19 Jul 2018 20:37:58 +0200
Message-ID: <CA+chaQduoRG0cbuxLracsNdeJvAZX2CwgrhYe2Wmr0BMKaBATQ@mail.gmail.com>
To: Amanda Brindle <amanda.r.brindle@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Error Report Tool Purge
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
X-List-Received-Date: Thu, 19 Jul 2018 18:38:12 -0000
Content-Type: multipart/alternative; boundary="000000000000203ca305715e7bc7"

--000000000000203ca305715e7bc7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm just curious, how are you tracking which reports were viewed or linked
to (and linked from where)? I often use a link to
http://errors.yoctoproject.org in the mailing list or the recipes/commit
message instead of copy pasting whole build error, because it already
shortens the build paths and shows useful additional information about the
error.

The links to whole builds on http://errors.yoctoproject.org were also often
linked from "bitbake world status" e-mails and wiki like:
https://www.openembedded.org/wiki/Bitbake_World_Status_Rocko
and on many of them nobody clicked yet - should I expect that these will
mostly get broken?

Regards



On Thu, Jul 19, 2018 at 8:30 PM Brindle, Amanda R <
amanda.r.brindle@intel.com> wrote:

> Hello,
>
>
>
> The Error Reporting Tool=E2=80=99s database (
> http://errors.yoctoproject.org/Errors/Latest/Autobuilder/)  has grown to
> a huge size, and this is affecting the performance of the application. We
> are planning to run a purge to get rid of reports that we don=E2=80=99t n=
eed. We
> will keep reports from the last thirty days, as well as reports that have
> been viewed or linked to. If you have a specific report that you don=E2=
=80=99t want
> purged, please let me know by the end of the month.
>
>
>
> Amanda Brindle, Software Engineer
>
> 503-264-3970
>
> amanda.r.brindle@intel.com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000203ca305715e7bc7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m just curious, how are you tracking which reports w=
ere viewed or linked to (and linked from where)? I often use a link to <a h=
ref=3D"http://errors.yoctoproject.org">http://errors.yoctoproject.org</a> i=
n the mailing list or the recipes/commit message instead of copy pasting wh=
ole build error, because it already shortens the build paths and shows usef=
ul additional information about the error.<div><br></div><div>The links to =
whole builds on=C2=A0<span style=3D"font-size:small;text-decoration-style:i=
nitial;text-decoration-color:initial;float:none;display:inline"><a href=3D"=
http://errors.yoctoproject.org">http://errors.yoctoproject.org</a><span>=C2=
=A0were also often linked from &quot;bitbake world status&quot; e-mails and=
 wiki like:</span></span><div><a href=3D"https://www.openembedded.org/wiki/=
Bitbake_World_Status_Rocko">https://www.openembedded.org/wiki/Bitbake_World=
_Status_Rocko</a></div><div>and on many of them nobody clicked yet - should=
 I expect that these will mostly get broken?</div><div><br></div><div>Regar=
ds</div><div><br><div><span style=3D"font-size:small;text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline"><span><br>=
</span></span></div></div></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr">On Thu, Jul 19, 2018 at 8:30 PM Brindle, Amanda R &lt;<a href=3D=
"mailto:amanda.r.brindle@intel.com">amanda.r.brindle@intel.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_8456782788349023426WordSection1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The Error Reporting Tool=E2=80=99s database (<a href=
=3D"http://errors.yoctoproject.org/Errors/Latest/Autobuilder/" target=3D"_b=
lank">http://errors.yoctoproject.org/Errors/Latest/Autobuilder/</a>) =C2=A0=
has grown to a huge size, and this is affecting the performance of
 the application. We are planning to run a purge to get rid of reports that=
 we don=E2=80=99t need. We will keep reports from the last thirty days, as =
well as reports that have been viewed or linked to. If you have a specific =
report that you don=E2=80=99t want purged, please
 let me know by the end of the month.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt">Amanda Brindle, Sof=
tware Engineer<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt">503-264-3970 <u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:14.0pt"><a href=3D"mailto:a=
manda.r.brindle@intel.com" target=3D"_blank">amanda.r.brindle@intel.com</a>=
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

--000000000000203ca305715e7bc7--
