Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEFD2E0052B; Fri, 17 Mar 2017 05:10:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.49 listed in dnsbl.sorbs.net]
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
	*      [209.85.214.49 listed in list.dnswl.org]
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E715E003C1
	for <yocto@yoctoproject.org>; Fri, 17 Mar 2017 05:10:22 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id m27so20424229iti.0
	for <yocto@yoctoproject.org>; Fri, 17 Mar 2017 05:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WN2FT3UJjC2EhheDRh0TP3CkjDHHcbKc/mwYKlNbqYs=;
	b=GPMUj9qjj/Epd/5YUMR+cToohokb3ZYSZsHUIjDxE8fnoekgB9lFoDgoI3AYlr/IGJ
	AqRVs1abJkV4XrlGldacXJjfm9MLFdlsLQ65zmAVD9s9pZWh/NDBkIA3AY71m5i/LtWV
	hvDsgImDaWo4qVGS6Fz/fw7+66LH5oGJzIS3A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WN2FT3UJjC2EhheDRh0TP3CkjDHHcbKc/mwYKlNbqYs=;
	b=hWdl9Y3+71Zl40dqqBIrB0klKgOGX3N5wuGTkoVAWLsxLfRm/rdLO0IrjjglzNZion
	Kl3ZAPAqCxHvWjhh0YFJl17WAaZ4v0C4pJEEiohz+gtAQvb4049w7kJXTz/gw7DqTMHs
	1d5lxnb71421k3d9JGC15godtSM1RoRaJNsjWWVE8SaYx/IpY+xqoukyGWcKsZIpBuZi
	TLz5cT6VCUs4Yiribmx485dfslHfMD1tw6yMh9H+8AXxAf1SraxLAbKcNr6hjjyy6P8k
	hjOp90wcHRbROFc6QECPatmY6A11aNJHhSAjkic6/Jx7Dtb/n38DZAQZWMaiz9URo8/b
	pMPQ==
X-Gm-Message-State: AFeK/H22tzBZEIOqqSiauiEcDJG08cyfEQbqbuVOj2TYpfhUoDAr8BiuzttZT1F517MfhbNDF4sCdxlwauADlw==
X-Received: by 10.36.37.145 with SMTP id g139mr2254507itg.26.1489752622057;
	Fri, 17 Mar 2017 05:10:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.121.197 with HTTP; Fri, 17 Mar 2017 05:10:21 -0700 (PDT)
In-Reply-To: <b117f9cc-2e4b-9f3c-74ff-87f9afdf1609@rsi-elektrotechnik.de>
References: <CALDHXtf7=HeQV56Yg-9WPL2nu_-OvaF0qNBVcAsks5SAaBhAiA@mail.gmail.com>
	<b117f9cc-2e4b-9f3c-74ff-87f9afdf1609@rsi-elektrotechnik.de>
From: ravikiran j <ravikiran.j@mistralsolutions.com>
Date: Fri, 17 Mar 2017 17:40:21 +0530
Message-ID: <CALDHXtdjqTqtYixJ1a3xn1rOF+_ZcJ_ExiT1r1bA1Qw=6xg_Hg@mail.gmail.com>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Missing or unbuildable dependency chain
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
X-List-Received-Date: Fri, 17 Mar 2017 12:10:25 -0000
Content-Type: multipart/alternative; boundary=001a11433beed771fc054aec0f79

--001a11433beed771fc054aec0f79
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Thank you for your reply,
Now i am able to build the packagegroup-core-extended based image.

But if add the *packagegroup-core-multimedia* in image recipe file,
I am getting similar error as above mentioned.

*ERROR: Nothing PROVIDES 'ffmpeg'* (but
/home/kamama-yocto/yocto/poky/meta-openembedded/meta-multimedia/recipes-mul=
timedia/musicpd/
mpd_0.19.15.bb DEPENDS on or otherwise requires it)
ERROR: ffmpeg was skipped: because it has a restricted license not
whitelisted in LICENSE_FLAGS_WHITELIST
NOTE: Runtime target 'mpd' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['mpd', 'ffmpeg']
NOTE: Runtime target 'xfmpc-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['xfmpc-dev', 'mpd', 'ffmpeg']
NOTE: Runtime target 'xfmpc' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['xfmpc', 'mpd', 'ffmpeg']
NOTE: Runtime target 'packagegroup-xfce-multimedia' is unbuildable,
removing...
Missing or unbuildable dependency chain was:
['packagegroup-xfce-multimedia', 'xfmpc', 'mpd', 'ffmpeg']
ERROR: Required build target 'core-image-minimal-xfce' has no buildable
providers.
Missing or unbuildable dependency chain was: ['core-image-minimal-xfce',
'packagegroup-xfce-multimedia', 'xfmpc', 'mpd', 'ffmpeg']

for this error  which layer i needs to be added ?

Thanks and Regards,
Ravikiran


On Fri, Mar 17, 2017 at 1:00 PM, Josef Holzmayr <
holzmayr@rsi-elektrotechnik.de> wrote:

> Hi,
>
> On 17.03.2017 06:22, ravikiran j wrote:
>
>> ERROR: Nothing RPROVIDES 'dnsmasq'
>>
>
> meta-networking does, as to be found through:https://layers.openemb
> edded.org/layerindex/recipe/4473/
>
> Greetz
> --
> Josef Holzmayr
> Software Developer Embedded Systems
>
> Tel: +49 8444 9204-48
> Fax: +49 8444 9204-50
>
> R-S-I Elektrotechnik GmbH & Co. KG
> Woelkestrasse 11
> D-85301 Schweitenkirchen
> www.rsi-elektrotechnik.de
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 17039=
3
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> Ust-IdNr: DE 128592548
>
> _____________________________________________________________
> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> USt-IdNr.: DE 128592548
>
>

--001a11433beed771fc054aec0f79
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi,<br><br></div>Thank you f=
or your reply,<br></div>Now i am able to build the packagegroup-core-extend=
ed based image.<br><br></div>But if add the <b>packagegroup-core-multimedia=
</b> in image recipe file,<br>I am getting similar error as above mentioned=
.<br><br><b>ERROR: Nothing PROVIDES &#39;ffmpeg&#39;</b> (but /home/kamama-=
yocto/yocto/poky/meta-openembedded/meta-multimedia/recipes-multimedia/music=
pd/<a href=3D"http://mpd_0.19.15.bb">mpd_0.19.15.bb</a> DEPENDS on or other=
wise requires it)<br>ERROR: ffmpeg was skipped: because it has a restricted=
 license not whitelisted in LICENSE_FLAGS_WHITELIST<br>NOTE: Runtime target=
 &#39;mpd&#39; is unbuildable, removing...<br>Missing or unbuildable depend=
ency chain was: [&#39;mpd&#39;, &#39;ffmpeg&#39;]<br>NOTE: Runtime target &=
#39;xfmpc-dev&#39; is unbuildable, removing...<br>Missing or unbuildable de=
pendency chain was: [&#39;xfmpc-dev&#39;, &#39;mpd&#39;, &#39;ffmpeg&#39;]<=
br>NOTE: Runtime target &#39;xfmpc&#39; is unbuildable, removing...<br>Miss=
ing or unbuildable dependency chain was: [&#39;xfmpc&#39;, &#39;mpd&#39;, &=
#39;ffmpeg&#39;]<br>NOTE: Runtime target &#39;packagegroup-xfce-multimedia&=
#39; is unbuildable, removing...<br>Missing or unbuildable dependency chain=
 was: [&#39;packagegroup-xfce-multimedia&#39;, &#39;xfmpc&#39;, &#39;mpd&#3=
9;, &#39;ffmpeg&#39;]<br>ERROR: Required build target &#39;core-image-minim=
al-xfce&#39; has no buildable providers.<br>Missing or unbuildable dependen=
cy chain was: [&#39;core-image-minimal-xfce&#39;, &#39;packagegroup-xfce-mu=
ltimedia&#39;, &#39;xfmpc&#39;, &#39;mpd&#39;, &#39;ffmpeg&#39;]<br><br></d=
iv>for this error=C2=A0 which layer i needs to be added ?<br><br></div>Than=
ks and Regards,<br></div>Ravikiran<br><div><div><div><br></div></div></div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Mar=
 17, 2017 at 1:00 PM, Josef Holzmayr <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:holzmayr@rsi-elektrotechnik.de" target=3D"_blank">holzmayr@rsi-elektrotec=
hnik.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<br>
On 17.03.2017 06:22, ravikiran j wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
ERROR: Nothing RPROVIDES &#39;dnsmasq&#39;<br>
</blockquote>
<br>
meta-networking does, as to be found through:<a href=3D"https://layers.open=
embedded.org/layerindex/recipe/4473/" rel=3D"noreferrer" target=3D"_blank">=
https://layers.openemb<wbr>edded.org/layerindex/recipe/<wbr>4473/</a><br>
<br>
Greetz<br>
-- <br>
Josef Holzmayr<br>
Software Developer Embedded Systems<br>
<br>
Tel: +49 8444 9204-48<br>
Fax: +49 8444 9204-50<br>
<br>
R-S-I Elektrotechnik GmbH &amp; Co. KG<br>
Woelkestrasse 11<br>
D-85301 Schweitenkirchen<br>
<a href=3D"http://www.rsi-elektrotechnik.de" rel=3D"noreferrer" target=3D"_=
blank">www.rsi-elektrotechnik.de</a><br>
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<br>
Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 170393<=
br>
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br>
Ust-IdNr: DE 128592548<br>
<br>
______________________________<wbr>______________________________<wbr>_<br>
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363<br>
Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br>
USt-IdNr.: DE 128592548<br>
<br>
</blockquote></div><br></div>

--001a11433beed771fc054aec0f79--
