Return-Path: <ma@telensa.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43EE7E00AF0; Tue, 11 Apr 2017 01:31:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A408DE00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 01:31:57 -0700 (PDT)
Received: by mail-pf0-f172.google.com with SMTP id s16so45589252pfs.0
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 01:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telensa-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4yk6CPNnA3Dp3QEBgm1LZj5GpcIYsX9PRyFjvLI7UOg=;
	b=f79x6iXl2B/ZOOADUQCD/STP55D5pdtm8cEMTDIm7mZp5aPvZ3piZCndwGM5jDl7dy
	PtkkGXyktDqPMQoB5JArWMJQFpxcMIJrBOVFT85htDWT3toL21JXGlECVFEZ0iidS5tZ
	SXF2izF3qlmxb0YdiBlHXD1gyp/30gZH3WLch9M/YN5KaUfDSWRMlO/4sWIV0lNL/xG5
	ROLl+nJh3oJd3uGKCIkeTPRo3MTMrn5gNBy/sMSJOxXLVHhmePK+FN+UA+wDkFHD+TZE
	p3Y3jjgr4d4wXXXJTgq2XkgDUXrJziy7GPLEOA+xC7fdTfkpvpWBwyWTjXAjWRMaT14c
	5ZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4yk6CPNnA3Dp3QEBgm1LZj5GpcIYsX9PRyFjvLI7UOg=;
	b=Ip1onFH2s3nYfE3Hw4WGQ1y8N+yKEYg0shrci8HUo1NY/6/AATK2BuiuzF/lvnfZ5G
	St1SjBe0RVlqtheaRW7QBH9kK/wkgjwNpUmc+lh6LgTrwaheLvE3jik90X69DKpvy085
	j1e/M7G1dvPGy4s5Sqgmyz48msz21/UE3Vk8VPnHbZfqSWoCrZLlJiUOPbnm0cV+7Onp
	RiDrvFpJ7KLZJG5w7fIkm+kJWfqfwQHJ2XQzuWNl+JBEIGtGMW5K0+6BcRtYQK/9wogu
	P+dGE3IMdDwaxhdpJLSxWaQLM+oxjONHWlViPXBOdmVTKuqKh/OaW5BrfIPFtoFeVw2u
	xlDw==
X-Gm-Message-State: AFeK/H1HWeTvavSgZuP+zUS7f6cAPbQNQkhpItPMM2WDA4IOx3Cw6CE3WUf4wd5lh8izRKnUNkEwUwHw3HXdRwEy
X-Received: by 10.84.218.68 with SMTP id f4mr73646424plm.146.1491899516799;
	Tue, 11 Apr 2017 01:31:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.181.229 with HTTP; Tue, 11 Apr 2017 01:31:56 -0700 (PDT)
In-Reply-To: <7efedc166d4c4ebdbf2a1938d1ff4f7d@FE-MBX1014.de.bosch.com>
References: <83bd670ecdbc4d1885b66d8ba8ed8b0c@FE-MBX1014.de.bosch.com>
	<CY4PR07MB3429F7E461F3DA2C5DD111E696000@CY4PR07MB3429.namprd07.prod.outlook.com>
	<7efedc166d4c4ebdbf2a1938d1ff4f7d@FE-MBX1014.de.bosch.com>
From: Miguel Aveiro <ma@telensa.com>
Date: Tue, 11 Apr 2017 09:31:56 +0100
Message-ID: <CAPZBU9Z2GUP5Vz0z+aYz6FccZvZmT9KM22fy+ZJ4UCz_txn-QQ@mail.gmail.com>
To: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sub-directories from Git in SRC-URI
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
X-List-Received-Date: Tue, 11 Apr 2017 08:31:59 -0000
Content-Type: multipart/alternative; boundary=94eb2c1a4460bd646e054cdfecb6

--94eb2c1a4460bd646e054cdfecb6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

You might want to take a look at bitbake's documentation:

https://www.yoctoproject.org/docs/2.0/bitbake-user-manual/bitbake-user-manu=
al.html#gitsm-fetcher

It actually has a git submodules fetcher (gitsm://). I haven't used it, but
it should be straightforward.

Regards,
Miguel Aveiro

On 11 April 2017 at 09:04, Eswaran Vinothkumar (BEG/PJ-IOT-EL) <
Vinothkumar.Eswaran@de.bosch.com> wrote:

> Hi,
>
>
>
> Thanks for your answer. I had thought about using this solution initially=
.
> In my case I have a common git repo for some 20 different applications an=
d
> planning to write an individual recipe for each application.
>
>
>
> If I plan to use in this way, I have 20 copies in my disk which I don=E2=
=80=99t
> want to have.
>
>
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best regards
>
>
>
>
> *Vinothkumar Eswaran BEG-PT/PJ-IOT1 *
>
> *Von:* Esponde, Joel [mailto:Joel.Esponde@Honeywell.com]
> *Gesendet:* Dienstag, 11. April 2017 09:58
> *An:* Eswaran Vinothkumar (BEG/PJ-IOT-EL) <Vinothkumar.Eswaran@de.bosch.
> com>; yocto@yoctoproject.org
> *Betreff:* RE: Sub-directories from Git in SRC-URI
>
>
>
> Hi,
>
>
>
> Here is one way to manage this use case.
>
> In the SRC_URI variable, you set the git repo access.
>
> Now let=E2=80=99s say that your sub-directory relative path is =E2=80=9Cs=
rc/myapp=E2=80=9D.
>
> Son now you just have to add to your recipe this line:
>
>
>
> S =3D "${WORKDIR}/git/src/myapp"
>
>
>
> It is not optimized from a disk usage point of view (a full copy of the
> repo files is in ${WORKDIR}/git) but it works.
>
>
>
> Regards,
>
>
>
> *Jo=C3=ABl Esponde*
>
> *Honeywell* | Safety and Productivity Solutions
>
>
>
> *De :* yocto-bounces@yoctoproject.org [mailto:yocto-bounces@
> yoctoproject.org <yocto-bounces@yoctoproject.org>] *De la part de*
> Eswaran Vinothkumar (BEG/PJ-IOT-EL)
> *Envoy=C3=A9 :* mardi 11 avril 2017 08:25
> *=C3=80 :* yocto@yoctoproject.org
> *Objet :* [yocto] Sub-directories from Git in SRC-URI
>
>
>
> Hallo,
>
>
>
> May I now is it possible to include a sub-directory from git repo in the
> SRC_URI of bitbake recipe.
>
>
>
> Also in SRC_URI is it possible to include a directory instead of a single
> file?
>
>
>
> I know I could create a tar file of a directory and include it , but I
> would like to know is it possible to include directory as a SRC_URI.
>
>
>
>
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best regards
>
>
> *Vinothkumar Eswaran BEG-PT/PJ-IOT1*
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

--94eb2c1a4460bd646e054cdfecb6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>You might want to take a look at bi=
tbake&#39;s=C2=A0documentation:</div><div><br></div><div><a href=3D"https:/=
/www.yoctoproject.org/docs/2.0/bitbake-user-manual/bitbake-user-manual.html=
#gitsm-fetcher">https://www.yoctoproject.org/docs/2.0/bitbake-user-manual/b=
itbake-user-manual.html#gitsm-fetcher</a><br></div><div><br></div><div>It a=
ctually has a git=C2=A0submodules fetcher (gitsm://). I haven&#39;t used it=
, but it should be straightforward.</div><div><br></div><div>Regards,</div>=
<div>Miguel Aveiro=C2=A0</div></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On 11 April 2017 at 09:04, Eswaran Vinothkumar (BEG/PJ-I=
OT-EL) <span dir=3D"ltr">&lt;<a href=3D"mailto:Vinothkumar.Eswaran@de.bosch=
.com" target=3D"_blank">Vinothkumar.Eswaran@de.bosch.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_3816688268565864653WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hi,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Thanks for your answer. I had thought about using thi=
s solution initially. In my case I have a common git repo for some 20 diffe=
rent applications and planning to write an individual
 recipe for each application.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">If I plan to use in this way, I have 20 copies in my =
disk which I don=E2=80=99t want to have.<u></u><u></u></span></p><span clas=
s=3D"">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">Mit freundlichen Gr=C3=BC=C3=
=9Fen / Best regards
<br>
<br>
<b>Vinothkumar Eswaran<br>
BEG-PT/PJ-IOT1<br>
<br>
</b></span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif"><u></u><u></u></span></p>
</span><div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"DE">Von:</span></b><span lang=3D"DE=
"> Esponde, Joel [mailto:<a href=3D"mailto:Joel.Esponde@Honeywell.com" targ=
et=3D"_blank">Joel.Esponde@<wbr>Honeywell.com</a>]
<br>
<b>Gesendet:</b> Dienstag, 11. April 2017 09:58<br>
<b>An:</b> Eswaran Vinothkumar (BEG/PJ-IOT-EL) &lt;<a href=3D"mailto:Vinoth=
kumar.Eswaran@de.bosch.com" target=3D"_blank">Vinothkumar.Eswaran@de.bosch.=
<wbr>com</a>&gt;; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blan=
k">yocto@yoctoproject.org</a><br>
<b>Betreff:</b> RE: Sub-directories from Git in SRC-URI<u></u><u></u></span=
></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Hi,</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">=C2=A0</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Here is one way to man=
age this use case.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">In the SRC_URI variabl=
e, you set the git repo access.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Now let=E2=80=99s say =
that your sub-directory relative path is =E2=80=9Csrc/myapp=E2=80=9D.</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Son now you just have =
to add to your recipe this line:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">=C2=A0</span><u></u><u=
></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"font-siz=
e:10.0pt;font-family:Consolas">S =3D &quot;${WORKDIR}/git/src/myapp&quot;</=
span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">=C2=A0</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">It is not optimized fr=
om a disk usage point of view (a full copy of the repo files is in
</span><span style=3D"font-size:10.0pt;font-family:Consolas">${WORKDIR}/git=
)</span><span style=3D"color:#400000"> but it works.</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">=C2=A0</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Regards,</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">=C2=A0</span><u></u><u=
></u></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#707070">Jo=C3=ABl Esponde</span></b><u></u><=
u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#707070">Honeywell</span></b><span style=3D"fo=
nt-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#707070"> | Sa=
fety and Productivity Solutions</span><u></u><u></u></p>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"FR">De=C2=A0:</span></b><span lang=
=3D"FR"> <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank=
">
yocto-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">mailto:yocto-bounces@<wbr>yoctoproject.org</a>=
]
<b>De la part de</b> Eswaran Vinothkumar (BEG/PJ-IOT-EL)<br>
<b>Envoy=C3=A9=C2=A0:</b> mardi 11 avril 2017 08:25<br>
<b>=C3=80=C2=A0:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_b=
lank">yocto@yoctoproject.org</a><br>
<b>Objet=C2=A0:</b> [yocto] Sub-directories from Git in SRC-URI</span><u></=
u><u></u></p>
</div>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif">Hallo,</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">May I now is it possible to include a sub-directory f=
rom git repo in the SRC_URI of bitbake recipe.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Also in SRC_URI is it possible to include a directory=
 instead of a single file?</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I know I could create a tar file of a directory and i=
nclude it , but I would like to know is it possible to include directory as=
 a SRC_URI.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"DE" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black=
">Mit freundlichen Gr=C3=BC=C3=9Fen / Best regards
<br>
<br>
<b>Vinothkumar Eswaran<br>
BEG-PT/PJ-IOT1</b><br>
<br>
<br>
</span><u></u><u></u></p>
</div></div></div>
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c1a4460bd646e054cdfecb6--
