Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3F3AE00B31; Tue, 16 Jul 2019 23:13:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
	[209.85.167.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E334E00B31
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 23:13:27 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id p197so15496349lfa.2
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 23:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=FLiImldBw6d94f6EvpFYN7YH/SLXFXlpKp0CDdrCe4o=;
	b=Tes/Mcwv41cEU1PSQqigb4HRw16wYn9Rc0X3EZKY9je0/RBJBNtWzix30Nj1ua/8k5
	ZPmsdpQrvo5E9Yh2OMGKSTKjhgautWc+DfQux8B+AzX+IxwcWZ71+G5b984U+/r02AYj
	su6N38lYxpmrXh5qb4qEaxvWygJ/NN0SOrHibsZAzGgGMGSv0MTTPZn/OArif/jKInT3
	Bgstgb1wcMtOpWcuzHnLdgZrPzGZtiJK00HkijlgKspuFbuBmPZqyOGmKuThgOyzWeDt
	dhAHpWdYKXDvnOTNG0yTRN7al5b1Ure8sGYdVyWNvQVdnpCzaQtCjrTSwD2CyEzU8yns
	POmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=FLiImldBw6d94f6EvpFYN7YH/SLXFXlpKp0CDdrCe4o=;
	b=fAi90LsNawU4o1IEaYBSDmYcejVl+yg8HYMwO/M45qnu0do5C8Uzu6NdYpAgbj0kdx
	tyWUxMvQU0pyZSQrZ812Abu89NIzjtQ4d1brKE1wP+WhPUL32Jsj8nfbyAlfdRvJ9su+
	2Thl0dIJAlAs7jHyvaw5XABXh9X8sZSrlHIYRTikDksPAvs8bMibHzaeIX7y9BYCG3L6
	QTsOT5enMTKp2P/0CwLUfTUh6AQA930go1urlUWX4nvK0DlDHPttHwosWKlmqR0SxtSS
	fW80ALpwLe7X0c/L4d3IR1H7Wj2o7vVUyURYFYDsIEx9A95JugogTClkCGE4t+pHQGey
	+FwA==
X-Gm-Message-State: APjAAAVpP4Jn4NjPxGRcRDU2hfLKjYvz3NR62eU9W1cwhiZ2vYLPxw5n
	bsPaR89sRAhDFgfycmnzoheQX9hdK7BSrMBvspw=
X-Google-Smtp-Source: APXvYqxS8V4sQmW48OF31iDIqDPZ4gk5xU5vYyBLoFxkD9xeVPxkiO5z9JOEgFYkY6sjD1N2etkK9SHBoGkUE7hweW8=
X-Received: by 2002:a19:6904:: with SMTP id e4mr17161899lfc.156.1563344006329; 
	Tue, 16 Jul 2019 23:13:26 -0700 (PDT)
MIME-Version: 1.0
References: <DB7PR07MB386841A804D548629B676B8F89CE0@DB7PR07MB3868.eurprd07.prod.outlook.com>
In-Reply-To: <DB7PR07MB386841A804D548629B676B8F89CE0@DB7PR07MB3868.eurprd07.prod.outlook.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Wed, 17 Jul 2019 08:13:15 +0200
Message-ID: <CAAx3WaAwvbbMsbs5iybpLyE04xnyFQ9=HiWuXY+timBUrbhsRA@mail.gmail.com>
To: "Siegel, Jeffrey (Nokia - US/Murray Hill)" <jeffrey.siegel@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Patching a file in $WORKDIR
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
X-List-Received-Date: Wed, 17 Jul 2019 06:13:28 -0000
Content-Type: multipart/alternative; boundary="00000000000028ba52058dda64e5"

--00000000000028ba52058dda64e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeffrey,

the extension "ptch" is not treated as patchfile by Yocto (only *.diff and
*.patch). You have two options:

   - Rename your patch in inputrc.patch
   - Adding the apply switch:
   SRC_URI_append =3D" file://inputrc.ptch;apply=3Dyes"
   In this way you are telling yocto that 'inputrc.ptch' is a patch file

In both cases you can remove your append.
This should be enough.

Best regards,
Gabriele

Il giorno mar 16 lug 2019 alle ore 18:44 Siegel, Jeffrey (Nokia - US/Murray
Hill) <jeffrey.siegel@nokia.com> ha scritto:

> Hi,
>
> I am trying to use a bbappend file to patch a file in $WORKDIR. To my
> understanding, the native Yocto patching process only works for patching
> files in $S.
>
> I have come up with a solution:
>
>
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>
> SRC_URI_append =3D" file://inputrc.ptch"
>
> do_patch_append () {
>
>     cmd=3D"patch <inputrc.ptch"
>
>     (exitstatus, output) =3D oe.utils.getstatusoutput(cmd)
>
>     if exitstatus !=3D 0:
>
>        raise bb.process.CmdError(cmd, output)
>
>     return output
>
> }
>
>
>
> It does work. But I think this is line is not very elegant: cmd=3D"patch
> <inputrc.ptch". Using devshell, I have confirmed that the =E2=80=9Cpatch=
=E2=80=9D program
> being executed is the one from the Yocto environment
> ($BUILDDIR/tmp-glibc/hosttools), not the build host. But I still suspect
> there is a better way. Any suggestions?
>
>
>
> Regards,
>
> Jeff
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000028ba52058dda64e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Jeffrey,</div><div><br></div><div=
>the extension &quot;ptch&quot; is not treated as patchfile by Yocto (only =
*.diff and *.patch). You have two options:</div><div><ul><li>Rename your pa=
tch in inputrc.patch</li><li>Adding the apply switch: <br><div style=3D"mar=
gin-left:40px">SRC_URI_append =3D&quot; file://inputrc.ptch;apply=3Dyes&quo=
t;<br></div>In this way you are telling yocto that &#39;inputrc.ptch&#39; i=
s a patch file</li></ul><div>In both cases you can remove your append.<br><=
/div><div>This should be enough.</div><div><br></div><div>Best regards, <br=
></div><div>Gabriele<br></div></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">Il giorno mar 16 lug 2019 alle ore 18:4=
4 Siegel, Jeffrey (Nokia - US/Murray Hill) &lt;<a href=3D"mailto:jeffrey.si=
egel@nokia.com" target=3D"_blank">jeffrey.siegel@nokia.com</a>&gt; ha scrit=
to:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"m_-872239336649793674gmail-m_224586808310862460gmail-m_-85976=
71648545286874WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal">I am trying to use a bbappend file to patch a file i=
n $WORKDIR. To my understanding, the native Yocto patching process only wor=
ks for patching files in $S.
<u></u><u></u></p>
<p class=3D"MsoNormal">I have come up with a solution:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:=
&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">SRC_URI_append =3D&quot; file://inputrc.ptch&quot;<u=
></u><u></u></p>
<p class=3D"MsoNormal">do_patch_append () {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 cmd=3D&quot;patch &lt;inputrc.ptc=
h&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 (exitstatus, output) =3D oe.utils=
.getstatusoutput(cmd)<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 if exitstatus !=3D 0:<u></u><u></=
u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise bb.proces=
s.CmdError(cmd, output)<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 return output<u></u><u></u></p>
<p class=3D"MsoNormal">}<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">It does work. But I think this is line is not very e=
legant: cmd=3D&quot;patch &lt;inputrc.ptch&quot;. Using devshell, I have co=
nfirmed that the =E2=80=9Cpatch=E2=80=9D program being executed is the one =
from the Yocto environment ($BUILDDIR/tmp-glibc/hosttools), not the
 build host. But I still suspect there is a better way. Any suggestions?<u>=
</u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Jeff<u></u><u></u></p>
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
</div>

--00000000000028ba52058dda64e5--
