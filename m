Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0861FE0077F; Sat, 10 Jun 2017 21:25:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_00,DEAR_SOMETHING,
	DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	HTML_IMAGE_RATIO_06, 
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  2.0 DEAR_SOMETHING BODY: Contains 'Dear (something)'
	* 0.0 HTML_IMAGE_RATIO_06 BODY: HTML has a low ratio of text to image
	area * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.170 listed in list.dnswl.org]
Received: from mail-wr0-f170.google.com (mail-wr0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52A8FE00524
	for <yocto@yoctoproject.org>; Sat, 10 Jun 2017 21:25:03 -0700 (PDT)
Received: by mail-wr0-f170.google.com with SMTP id v104so65463253wrb.0
	for <yocto@yoctoproject.org>; Sat, 10 Jun 2017 21:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AJrEYvXtq3UDyRFaYyX9C2IEdfuer479gw86XSRp/zU=;
	b=QgnjrCPuV2qmbDJPCBZOlQGY1vSElt7nQ0gBmhWitCRzv633hUsYRcCLJ75vGVy+yw
	OD3xXM9tlz7CXEOq5NUBvTg6fcr14czyJxm0j4B2o3O/gyBo4cSipKM3Ty0+fmHn1CG1
	mjSC6pKpROd6f48eO8WDGr9hLw0L584M+3hH27cF+vDSid6pq/UTwnUjlf7WxE9BFXdH
	sNfjLMJiDmdRXS3BDy7Tnnt+hdaWa/GJErM3Nacx93Tj8B4qhHb3h0zhUEe3rQoMhzlo
	Nsnl+4gW8USFqJcQ6bkkoB/vnLD5L96HC8aRldBwZaHLeIh0INcYe2SlvHhvh/jYQSu2
	XoAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AJrEYvXtq3UDyRFaYyX9C2IEdfuer479gw86XSRp/zU=;
	b=mvalQNpW0wZmwUsApiz7Apdb/1V73MP6GeTBCs42Xmu+5UWV0NZQOZ8e0bKGNoOXuo
	+4gKCMOHyw1PSm/phs6S9dfDYLR6FgZdB2lfpLmHJ1JQAnPsOc58afBU6g1tJLJLJFTz
	vPaBVCcy2xuFw93EOYY6So0RfI+OHKMUpX+XEAkyHGwio2bo3ThRwb10XNujoZFklEZy
	2NlSbXdGBikGlXyxvACjyJ9ywoJiblZwULE+de5enrzF+HemmAxc9n7YNufJy4VWZZhv
	+xlGGoMRMTgWnnBzLRN5PaZCZCnF7WsaTmcRSsaOdMpJ94Imy717lUZMgA9lRaES1kJf
	1Rrw==
X-Gm-Message-State: AKS2vOxp+TQHYhQxCLbMXOghSViCldYOjQhp/Gu6/WE3ffg/kkOFqWSY
	ZhTUVFfVT461bQ3GeR3NbIPsVXZd0A==
X-Received: by 10.80.154.129 with SMTP id p1mr1098849edb.131.1497155102580;
	Sat, 10 Jun 2017 21:25:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Sat, 10 Jun 2017 21:24:31 -0700 (PDT)
In-Reply-To: <000901d2e022$7d2ff310$778fd930$@chn.srmtech.com>
References: <000901d2e022$7d2ff310$778fd930$@chn.srmtech.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 10 Jun 2017 21:24:31 -0700
Message-ID: <CAMKF1sqGcNEYAnJqokHU58yAx6VhiYx0WRRLWF+yaC-_p98BLQ@mail.gmail.com>
To: maheswarir <maheswarir@chn.srmtech.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gmp-5.1.1.bb virtual native error
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
X-List-Received-Date: Sun, 11 Jun 2017 04:25:10 -0000
X-Groupsio-MsgNum: 36480
Content-Type: multipart/related; boundary="f403045c277410ecc90551a79686"

--f403045c277410ecc90551a79686
Content-Type: multipart/alternative; boundary="f403045c277410ecc70551a79685"

--f403045c277410ecc70551a79685
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 7, 2017 at 11:43 PM, maheswarir <maheswarir@chn.srmtech.com>
wrote:

> Dear sir,
>
>    I was tried with yocto image syntax bitbake core-image-weston for Rene=
sas R car H2 and I got following error. Kindly provide idea for resolving  =
this error.
>
> =E2=80=8Bthe real error is not printed in the picture. Its better to uplo=
ad the
log.do_compile file somewhere and send a link to this ml so someone can
have a look=E2=80=8B


>
>
> Thanks and Regards,
>
> [image: Description:
> cid:C696E808117B354E72F9AA93A2188CA41AA02AD6@srmtchn.co.in]
> <http://www.embedded360.com/>
>
> R.Maheswari | Senior programmer =E2=80=8B =E2=80=8B
> SRM Technologies Private Limited.
>
> 2nd Floor , Lords Block-II, Northern Extension Area,
>
> Thiru.Vi.Ka. Industrial Estate, Ekkatuthangal,
>
> Guindy, Chennai, Tamil Nadu 600032
>
> 8939162048
>
> Product Engineering | Enterprise Applications| Enteprise Infrastructure |
> High End Consulting=E2=80=8B
>
> *website* <http://www.srmtech.com/>*|**map
> <https://www.google.com/maps/place/SRM+Technologies+Private+Limited/@13.0=
225864,80.2050809,17z/data=3D!3m1!4b1!4m2!3m1!1s0x3a52673d2a5c6bab:0xc010ce=
2a5d7e46ab>*
> *|**email <hrd@srmtech.com>**|**video
> <https://www.youtube.com/channel/UChSsxz0V4XUuf-HFmklAgfw>*
>
>
>
>
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

--f403045c277410ecc70551a79685
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace"><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Wed, Jun 7, 2017 at 11:43 PM, maheswarir <span dir=3D"ltr">&lt;<a =
href=3D"mailto:maheswarir@chn.srmtech.com" target=3D"_blank">maheswarir@chn=
.srmtech.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div l=
ang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div class=3D"m_-6868551654836=
694808WordSection1"><p class=3D"MsoNormal">Dear sir,<u></u><u></u></p><pre>=
=C2=A0=C2=A0 I was tried with yocto image syntax bitbake core-image-weston =
for Renesas R car H2 and I got following error. Kindly provide idea for res=
olving =C2=A0this error.</pre></div></div></blockquote><div><div class=3D"g=
mail_default" style=3D"font-family:monospace,monospace;display:inline">=E2=
=80=8Bthe real error is not printed in the picture. Its better to upload th=
e log.do_compile file somewhere and send a link to this ml so someone can h=
ave a look=E2=80=8B</div>=C2=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div la=
ng=3D"EN-US" link=3D"blue" vlink=3D"purple"><div class=3D"m_-68685516548366=
94808WordSection1"><pre><u></u><u></u></pre><p class=3D"MsoNormal"><img wid=
th=3D"472" height=3D"316" id=3D"m_-6868551654836694808Picture_x0020_2" src=
=3D"cid:image002.jpg@01D2E050.9675E540"><u></u><u></u></p><p class=3D"MsoNo=
rmal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Thanks and Regards,<u>=
</u><u></u></p><table class=3D"m_-6868551654836694808MsoNormalTable" border=
=3D"0" cellpadding=3D"0" width=3D"709" style=3D"width:531.9pt;margin-left:5=
.4pt;background:white"><tbody><tr style=3D"height:116.15pt"><td style=3D"pa=
dding:.75pt .75pt .75pt .75pt;height:116.15pt"><p class=3D"MsoNormal"><a hr=
ef=3D"http://www.embedded360.com/" target=3D"_blank"><span style=3D"font-si=
ze:10.0pt;color:blue;text-decoration:none"><img border=3D"0" width=3D"87" h=
eight=3D"87" id=3D"m_-6868551654836694808Picture_x0020_1" src=3D"cid:image0=
01.jpg@01D2E050.59E8F310" alt=3D"Description: cid:C696E808117B354E72F9AA93A=
2188CA41AA02AD6@srmtchn.co.in"></span></a><span style=3D"font-size:12.0pt">=
<u></u><u></u></span></p></td><td style=3D"padding:.75pt .75pt .75pt .75pt;=
height:116.15pt"><p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#e8218b">R.Mahesw=
ari |=C2=A0</span><span style=3D"font-size:10.0pt;font-family:&quot;Verdana=
&quot;,&quot;sans-serif&quot;;color:#0474b8">Senior programmer=C2=A0</span>=
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-se=
rif&quot;;color:#e8218b">=E2=80=8B</span><span style=3D"font-size:10.0pt;fo=
nt-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#0474b8">=C2=A0<=
/span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:#0474b8">=E2=80=8B</span><span style=3D"font-size:10.=
0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#0474b8"><=
br></span><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,&=
quot;sans-serif&quot;;color:black">SRM Technologies Private Limited.</span>=
<u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#222222;background=
:white">2nd Floor , Lords Block-II, Northern Extension Area, <u></u><u></u>=
</span></p><p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-fami=
ly:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#222222;background:white"=
>Thiru.Vi.Ka. Industrial Estate, Ekkatuthangal, <u></u><u></u></span></p><p=
 class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:#222222;background:white">Guindy, Chen=
nai, Tamil Nadu 600032</span><u></u><u></u></p><p class=3D"MsoNormal">89391=
62048<u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:9.0p=
t;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;color:#00b050">Pro=
duct Engineering | Enterprise Applications| Enteprise Infrastructure | High=
 End Consulting</span><span style=3D"font-size:8.0pt;color:black">=E2=80=8B=
</span><u></u><u></u></p><table class=3D"m_-6868551654836694808MsoNormalTab=
le" border=3D"0" cellpadding=3D"0" width=3D"191" style=3D"width:143.6pt"><t=
body><tr style=3D"height:.2in"><td style=3D"padding:.75pt .75pt .75pt .75pt=
;height:.2in"><p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;color:=
red"><a href=3D"http://www.srmtech.com/" target=3D"_blank"><b><span style=
=3D"color:#2b67ac">website</span></b></a></span><b><span style=3D"font-size=
:10.0pt;color:#2b67ac">|</span></b><b><u><span style=3D"color:#2b67ac"><a h=
ref=3D"https://www.google.com/maps/place/SRM+Technologies+Private+Limited/@=
13.0225864,80.2050809,17z/data=3D!3m1!4b1!4m2!3m1!1s0x3a52673d2a5c6bab:0xc0=
10ce2a5d7e46ab" target=3D"_blank"><span style=3D"font-size:10.0pt;color:#2b=
67ac">map</span></a></span></u></b><b><span style=3D"font-size:10.0pt;color=
:#2b67ac">|</span></b><u><span style=3D"color:#2b67ac"><a href=3D"mailto:hr=
d@srmtech.com" target=3D"_blank"><b><span style=3D"font-size:10.0pt;color:#=
2b67ac">email</span></b></a></span></u><b><span style=3D"font-size:10.0pt;c=
olor:#2b67ac">|</span></b><b><u><span style=3D"color:#2b67ac"><a href=3D"ht=
tps://www.youtube.com/channel/UChSsxz0V4XUuf-HFmklAgfw" target=3D"_blank"><=
span style=3D"font-size:10.0pt;color:#2b67ac">video</span></a></span></u></=
b><b><span style=3D"font-size:10.0pt;color:#1f497d">=C2=A0</span></b><b><sp=
an style=3D"font-size:10.0pt;color:black"> </span></b><b><span style=3D"fon=
t-size:10.0pt;color:#2b67ac">=C2=A0=C2=A0</span></b><span style=3D"font-siz=
e:12.0pt"><u></u><u></u></span></p></td><td style=3D"padding:.75pt .75pt .7=
5pt .75pt;height:.2in"></td></tr></tbody></table><p class=3D"MsoNormal"><sp=
an style=3D"color:#212121">=C2=A0</span><span style=3D"font-size:12.0pt"><u=
></u><u></u></span></p></td></tr></tbody></table><p class=3D"MsoNormal"><u>=
</u>=C2=A0<u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><=
/div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--f403045c277410ecc70551a79685--

--f403045c277410ecc90551a79686
Content-Type: image/jpeg; name="image002.jpg"
Content-Disposition: inline; filename="image002.jpg"
Content-Transfer-Encoding: base64
Content-ID: <image002.jpg@01D2E050.9675E540>
X-Attachment-Id: f48f8703a8b4e462_0.0.2

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

--f403045c277410ecc90551a79686
Content-Type: image/jpeg; name="image001.jpg"
Content-Disposition: inline; filename="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <image001.jpg@01D2E050.59E8F310>
X-Attachment-Id: f48f8703a8b4e462_0.0.1

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a
HBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIy
MjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABXAFcDASIA
AhEBAxEB/8QAGwABAAMAAwEAAAAAAAAAAAAAAAUGBwECBAP/xAA8EAABAwMCAwUFBQUJAAAAAAAB
AgMEAAURBiEHEjETIkFRYRQyQnGBFSNSkaEIFibB0RczNnKCpLGy4f/EABoBAAIDAQEAAAAAAAAA
AAAAAAACAQMEBgX/xAAqEQACAQMCBAYCAwAAAAAAAAAAAQIDBBESITFRYXEFExQkMkFigaGx8P/a
AAwDAQACEQMRAD8A36s94ka9e0gzDh21hEi6TSQ0leSEpyN8Dc5zgVoVZhxU0XdL6u33ux4XcIGR
2ROCtOQoFPqCOlNTxq3IlnGxXhfOM6gFC1J33AMdG361P6OuXEuTqNtvUdvabtpQouLLaU8pHTGD
uagU6q4wpSAdPJUcdTE3/wC1T+guJE+8313Tuo4SYd1QCpspSUBeOqSk9CKsknpeEitPfizw6guv
FdrUM5u1W1pVvSvEdSWkqCk+ByT1qLN94zNJLi7WFJSMkCOgn8s1OXrjZbbReZlt+yJb/srhaLoU
kBSh12PhUcvj/AKFBuxSu0AynndSBmmSlj4oltcyz8Otf/vnFkxpjKY10iEdqhOcLSdgoA9Nxgg9
Krb/ABdk2niPcLXd2Wk2Vp8x0uNpPM1j4yfEHxHhXHB6y3N+8XbVtwYMdueT2CMY5+Y8xOPLpg1A
wdNwNU8YNW2ueCG1B5aHEnCml8ycKFGiGqXYNTwbjKu9uiWhdzfltIghvtO3Ku6U46jzrMtK8VJ2
qOJDdtYjtt2d5Cw2lafve6CQonwz5eVVaPw21rLno0nNkPI0/Gd7USM5aIztyDqTj4T0O9e6xWmH
Yv2gmbZBa7OPHYIQM5JyzuSfMmlUIb/YOUsm90pSqSw4qga+1Dq+xyIaNOWMT2HEqLrpQV8itsDA
6eNX+vDJQ+qXELbriWwshwJIwRynGfripWzyQ9zHv3+4p4/wn/tV/wBa9OgtLakuOuXdZanj+yOc
p7NpSeVSlEY6eCQPPetNSufyXIguF1CiGQU7YwMY8/Gjrk8RGDD5nCQvmL4wr3dunjmmc1wSFwZv
o7Slyj8V9RTrlasW93nLTrqApC+ZQIxnxxVw1foG1ars6onYMxJKO8xIabAKF+uOqalH3LoidHLY
UphSG0rHKNlE95X5bV9GHpyrwoHtOyClcySnuBHwlJ8SahzbeSVFIo/C5rWFpfnWC/xHDAhpHs8p
ZyM591J+JON/SvPpPTt3h8aNQ3STBdagOhwtSFDur5lAjB8elX5ciY5bY6sSG3OblfUhHfGx6D54
rq4/cUphlTbpJQCpLYxleRkK8hjJoy85DSidPSsmRp67/wBv6rwYDv2b2ORJI7h+75cZ88+FaFMc
mhiX2faDDyA2Up35O7zY/Wu5XJTdI4HaLYW33gBgA/iJ/TFEXpJayStKUpSRSlKAOvjXRa0tpKlE
BI3JNfQ9Kh78HFQByAlIUCsDyrPc1XSpymlnCHhHVJI+pvdvTt2+f8oNdVX+ANudZ+SKrhVG3KQT
t+fpXAXH7wU3gE7Y8q5h+O3PT+TcrWn1LAdQROXZLh/011Oo43RLTpz0wKgwYpIyhfyzVU1RfPZm
JESCv74tq5nE/Bt0HrV1rf39zVUKbTz04dyi4Vvbw1VHj/cCzq4gPTJb0awaem3gx1FD7zLiW2UK
/CFq94/KpbT2qo98lOwXYcq33SOkKdhSwAtKT8SSNlJztkVE8JZUCRw4taYBQS0kokAHcO5JUVep
O/1rrfpEZXFfS0eMoG4NtyVP8p3SwUdFfNWMfKunjFpJN5fMy5zukX6lcUpgOaUpQArqQCCCAQfO
u1KAPCq2wlnKo7efPlrobPAI/uE/SpCoW93lNuZ7NvCpCx3R+H1NYa9K2pwc5xWOw3mTX2RN9Nvg
oMeOyPaVjrzHuDzqku2OCtLmUuZUCc8/XNSi1qcWpxxRUtRyomvXbra/c3+RsYbHvrPRP/teDCvP
z/brTnlt/RjrR9S0pb9zDLVFl22Y4q03GdCWokLXHfKMjPjWh8MYgb1s04px199bTi3X3llS3DjG
5NVxxhMaRIZR8DigSfHerfwxRzauCvwxlK/4FdjTg1DMuODqKHhnprGdSo8za/SXTqbZSlKqPBFK
UoAUpSgD5PKKGVrAyUpJArM333JT7jzqiVqUeb+laeRkYNQz2mre/JLykqGTlSQcA15l/aVLhJQf
AScW+BVrVan7o7tlDIPfc/kKvMWIzCjBlhASgDwr6MsNx2kttICEJ2CRX1PQ1ZZ2ULePORMI4MAb
bKdU3FCUoPK6716+/jb1/lVg4aI/i6co8mUtK9zp7w6enlUJLRy6xuzIAAU84DlIVgc2c4NT/Ctv
+IbmobhLITnGPi8unhXrv4HX3cvaN/ijXaUpWc5IUpSgBSlKAFKUoAVwelKUAZrqTRN1VfnrpZww
4JA+9ZdXy4O24P0zU3ojSz+n48h+ctC5klYU5yHKU+g+pNKU+p4Nc7yrKj5bexcKUpSGQ//Z

--f403045c277410ecc90551a79686--
