Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63E26E007EB; Wed, 25 Jan 2017 10:05:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.195 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F13E2E004E5
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 10:05:11 -0800 (PST)
Received: by mail-qt0-f195.google.com with SMTP id a29so32627363qtb.1
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 10:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=44A3hU6W945O1H+V+/LRpx37Lrs/i44tzeOrrMX6u8c=;
	b=Hl/bj4Q1G/FRng+tbWWz4wvQbNxZRwIdkIXPQy727GX7sbU2CKkZmYKvuQjVIaDJNr
	o1PC3bVcqYfzpNA56Rnr0N8jpiK8UI7wHgOdUGvzvRYInS2ptaqB1pgD2tTXB92dSD3L
	fnNZ//JlWxGd9X1us+fW0jSEx/mc0UPGdeho+cH+X1M+QfuFW9BPeFxGZKYm83nKfesb
	1TSDIiR2ovxVTN2Jcr15PNxQxJV9rYJSRF41cxXQQ6J3uNkx2zYNcXG6QAPVuX9w/5Q7
	Yav2q/+WVWPABx3rE4J26EnUm7vWHNJTiW9WG+Fmne5jTXrTYijm196uoaVoWuKPGu/+
	Zb4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=44A3hU6W945O1H+V+/LRpx37Lrs/i44tzeOrrMX6u8c=;
	b=QuzlA3mJSIXU1/Zl47v87w8pu+NLfYJlIdShHmvReV7x5KJMnsl9IkyKdry5C8Tk0x
	KAQgbK/+Sb1oS0JSSNOXiCe0vCh5sP8m0K7SstQ35PCPvCivq7QJvkyID4YIfZ+q1Wwx
	c0v8tD8RxCTDanlOcOgvDFrJ+lHHIDIMrONoxO9peZ5kmT8WWS1ZOSQT/I1DFttr9+d6
	R+gOK9GeCGxVE2e6pXUsiMXQFuFLKvI53VD8niAkVKfRDW9juzTWNb/zmyOsK3wqsfbS
	+a/XQB61DUyn8g+BXcVv11o3SCYKZKL4dadoLNL91l/j6l+KaHzQm9bbanxZ70vT01IQ
	arhA==
X-Gm-Message-State: AIkVDXJL7kJvM17nFkThh+z5hRdkb8rtPpwoRhM3eOX/qCpVYz602m8dpRFN7dtT8BqdZvr4lxPWLF1mA1eRtw==
X-Received: by 10.237.38.65 with SMTP id z59mr34898274qtc.5.1485367510750;
	Wed, 25 Jan 2017 10:05:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.135.153 with HTTP; Wed, 25 Jan 2017 10:05:09 -0800 (PST)
In-Reply-To: <20170125103759.15880-1-freesilicon@gmail.com>
References: <20170125103759.15880-1-freesilicon@gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 25 Jan 2017 13:05:09 -0500
Message-ID: <CADkTA4N8iMJD1pt=E9qSsjGKAOfvMnHAwS=3h1AntxTxDXOUGQ@mail.gmail.com>
To: David Vincent <freesilicon@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [yocto-kernel-tools][PATCH 0/1] Rework merge of feature branches
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
X-List-Received-Date: Wed, 25 Jan 2017 18:05:13 -0000
Content-Type: multipart/alternative; boundary=94eb2c122e58d701b80546ef1220

--94eb2c122e58d701b80546ef1220
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 25, 2017 at 5:37 AM, David Vincent <freesilicon@gmail.com>
wrote:

> I've recently noticed that, on Morty, feature branches of a Yocto kernel
> are not
> merged anymore. This is due to the fact that the meta-series file does not
> process the git merge commands anymore.
>

Indeed. I dropped that functionality on purpose when I did the
simplification
and streamlining of the processing .. since I wanted to see if anyone was
using it.

I now have my answer :D

I need to have a closer look at the patch and run it through some tests
here, but  on my glance, you've done it correctly.


> This commit creates a new merge command to be executed when processing the
> kernel metadata. To solve the issue, there is also a patch to send to
> oe-core
> for kernel-yocto.bbclass, but I wait for this patch to be included since
> there
> is no point without it.
>

Send that patch to me, or I'll just do the patch myself .. since yes, we do
need
to add merge to the list of valid comments when processing the meta data.

I'll submit all the changes in my next consolidated pull request for the
kernels + tools.

Bruce


>
> David Vincent (1):
>   scc: Move merge command
>
>  tools/kgit-meta          | 14 ++++++++++++++
>  tools/scc                | 13 -------------
>  tools/scc-cmds/merge.cmd | 10 ++++++++++
>  3 files changed, 24 insertions(+), 13 deletions(-)
>  create mode 100644 tools/scc-cmds/merge.cmd
>
> --
> 2.11.0
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

--94eb2c122e58d701b80546ef1220
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Jan 25, 2017 at 5:37 AM, David Vincent <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:freesilicon@gmail.com" target=3D"_blank">freesilicon@gmail.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I&#39;ve recent=
ly noticed that, on Morty, feature branches of a Yocto kernel are not<br>
merged anymore. This is due to the fact that the meta-series file does not<=
br>
process the git merge commands anymore.<br></blockquote><div><br></div><div=
>Indeed. I dropped that functionality on purpose when I did the simplificat=
ion<br></div><div>and streamlining of the processing .. since I wanted to s=
ee if anyone was<br></div><div>using it.<br><br></div><div>I now have my an=
swer :D<br></div><div>=C2=A0<br></div><div>I need to have a closer look at =
the patch and run it through some tests<br></div><div>here, but=C2=A0 on my=
 glance, you&#39;ve done it correctly.<br></div><div><br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">
<br>
This commit creates a new merge command to be executed when processing the<=
br>
kernel metadata. To solve the issue, there is also a patch to send to oe-co=
re<br>
for kernel-yocto.bbclass, but I wait for this patch to be included since th=
ere<br>
is no point without it.<br></blockquote><div><br></div><div>Send that patch=
 to me, or I&#39;ll just do the patch myself .. since yes, we do need<br></=
div><div>to add merge to the list of valid comments when processing the met=
a data.<br><br></div><div>I&#39;ll submit all the changes in my next consol=
idated pull request for the<br></div><div>kernels + tools.<br><br></div><di=
v>Bruce<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
David Vincent (1):<br>
=C2=A0 scc: Move merge command<br>
<br>
=C2=A0tools/kgit-meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 14 ++++++++++++++=
<br>
=C2=A0tools/scc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 13=
 -------------<br>
=C2=A0tools/scc-cmds/merge.cmd | 10 ++++++++++<br>
=C2=A03 files changed, 24 insertions(+), 13 deletions(-)<br>
=C2=A0create mode 100644 tools/scc-cmds/merge.cmd<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
2.11.0<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt n=
ot follow the NULL pointer, for chaos and madness await thee at its end&quo=
t;</div>
</div></div>

--94eb2c122e58d701b80546ef1220--
