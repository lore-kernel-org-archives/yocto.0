Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B23EFE00CAE; Wed, 13 Sep 2017 08:06:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yahiafarghaly[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E5C4E00C88
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 08:06:22 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id z73so3224808oia.2
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 08:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ew90rBHtpSH4A/3Ys98GJykSio7KJq6LK5RUXB33Xx4=;
	b=jF5CMEFU8rdYlKjJ4vz8hKiCYEA8JT6zagPBk+Pv7vQnbokBVkSgnaeBBkqlHk9ztJ
	cie9ZlndxckJQSUk6RSx2Aj0u6oC7PQc+GI2ITtCaLxB7RGBQXEJmEZol8uoYMm8stfb
	B04kKW3tvmpLszvwl+4LTdP71vEr0CBUkosGJsxLAyska/bTxOnuneo3gh69dY7DW+QS
	eV6dYHGgqBI0MDaD94O12f+rvRBkYIj//aQN+rPRMMruoISNrCDMap1a3FZtUVUMnBN9
	aIdnK6kSptqQv5T2PPAryOi25UtJMEIiDmaPp47jGEGDoWBlg1jwxn9oVaVIvLidIp9/
	rNAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ew90rBHtpSH4A/3Ys98GJykSio7KJq6LK5RUXB33Xx4=;
	b=E4RihIZoh7hRGqF1Ix48oP42tDwsiFt5zoPw+GB5DFUeGgdh2KcKcwlkOZ1tei08vi
	iXaDbXCaRydoK5KjE2tBjTru5W7ZuzKk3eujY0Aa7hXBNPGXdQFj/KnAzpgKfxfhpMaq
	sor4fC0Tp2Tw8SYz1gxNZUdx6RtnWOpd/m7q/oTJEjba32ZRq24cwW0L6ReJGsBugUHa
	jwa098AQ3sAvyV5jItna53Hq2zfztAfAkXCo7xLwp4hkQPZ3ZsGJqIrsjsizQf+REPCG
	IDLQhQHAsEEc6elaaO0RGRa+MbNckHJOw3ivPdxzNkZS7ITAP9pJc7F3+bJNQ7On3uM1
	azAQ==
X-Gm-Message-State: AHPjjUgIJYW8Y48KiWcYy2Y75OeCrUcKB2D/1A5S1Bk3koiOV/n3aK7N
	6Hi4Vn+yc24vDfOl8tcStIM3FY1ByORjceuvzSg=
X-Google-Smtp-Source: AOwi7QBRO3tGbHQK38lcnf1HFWp2SLP+zV438Hq1HTWZdgIZscSOCR/lW63cd61cbA0X5XqMP8GBacKA2hTrFdbOPdA=
X-Received: by 10.202.173.11 with SMTP id w11mr17427143oie.239.1505315182169; 
	Wed, 13 Sep 2017 08:06:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.196 with HTTP; Wed, 13 Sep 2017 08:06:21 -0700 (PDT)
In-Reply-To: <CA+chaQeBk6HCZJ7ui=xsZYz9tfrXBuBbtvSV+=m6ACB0=3NppA@mail.gmail.com>
References: <CABFXn3FSKuaZSZDxGaeyYfHXwSbHJOOgiw3nuCuxD_bvUe9O1Q@mail.gmail.com>
	<CA+chaQeBk6HCZJ7ui=xsZYz9tfrXBuBbtvSV+=m6ACB0=3NppA@mail.gmail.com>
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Wed, 13 Sep 2017 17:06:21 +0200
Message-ID: <CABFXn3FAbmOSJRUzLHTSyR0K3f97xE5u996E4eV0JTUWfBnAGQ@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] ERROR: No recipes available for gstreamer
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
X-List-Received-Date: Wed, 13 Sep 2017 15:06:23 -0000
X-Groupsio-MsgNum: 37848
Content-Type: multipart/related; boundary="DoJmwoPgOIrbKd2cK8QU"

--DoJmwoPgOIrbKd2cK8QU
Content-Type: multipart/alternative; boundary="001a113ce896b5554d05591380d2"

--001a113ce896b5554d05591380d2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

thanks for the note.

=E2=80=8C

On 13 September 2017 at 16:53, Martin Jansa <martin.jansa@gmail.com> wrote:

> You're missing incompatible branches, use the same branch for all 3 and i=
t
> will work.
>
> On Wed, Sep 13, 2017 at 4:48 PM, yahia farghaly <yahiafarghaly@gmail.com>
> wrote:
>
>> Minutes ago, i pulled the recent commits for poky,meta-oe, meta-raspberr=
y
>> pi
>> and when i build this comes. there are actually another errors but as i
>> started taking one by one error. this was the first.
>>
>> *ERROR: No recipes available for:*
>> *
>> /yocto/poky/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-o=
mx_1.12%.bbappend*
>>
>>
>> --
>> Yahia Farghaly
>> Graduated from Faculty of Engineering - Electronics and Communications
>> Department at Cairo University.
>> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
>> <https://github.com/yahiafarghaly>
>>
>>
>>
>> =E2=80=8C
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>


--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>

--001a113ce896b5554d05591380d2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"ltr"><img width=3D"0" height=3D"0" cla=
ss=3D"mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtra=
ck.io/trace/mail/9c1d96d4681f2e74105cfa21b2796d618927346a.png?u=3D1822760"/=
><div><br/></div><div>thanks for the note.<br/><br/>=E2=80=8C</div></div><d=
iv class=3D"gmail_extra"><br/><div class=3D"gmail_quote">On 13 September 20=
17 at 16:53, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.ja=
nsa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wrot=
e:<br/><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">You&#39;re missing i=
ncompatible branches, use the same branch for all 3 and it will work.</div>=
<div class=3D"gmail_extra"><br/><div class=3D"gmail_quote"><div><div class=
=3D"h5">On Wed, Sep 13, 2017 at 4:48 PM, yahia farghaly <span dir=3D"ltr">=
&lt;<a href=3D"mailto:yahiafarghaly@gmail.com" target=3D"_blank">yahiafargh=
aly@gmail.com</a>&gt;</span> wrote:<br/></div></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div><div class=3D"h5"><div dir=3D"ltr"><img width=3D"0" height=3D"=
0" class=3D"m_5233437128126705567m_-2312350866648395097mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"cid:attach_0_15D95A7DCC494FE4_27608@gr=
oups.io"/><div>Minutes ago, i pulled the recent commits for poky,meta-oe, m=
eta-raspberry pi=C2=A0</div><div>and when i build this comes. there are act=
ually another errors but as i started taking one by one error. this was the=
 first.=C2=A0</div><div><br/></div><div><b>ERROR: No recipes available for:=
</b></div><div><b>=C2=A0 /yocto/poky/meta-raspberrypi/r<wbr/>ecipes-multime=
dia/gstreamer/gs<wbr/>treamer1.0-omx_1.12%.bbappend</b></div><span class=3D=
"m_5233437128126705567HOEnZb"><font color=3D"#888888"><div><br/></div><div>=
<br/></div>-- <br/><div class=3D"m_5233437128126705567m_-231235086664839509=
7gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=3D"1" c=
olor=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFo=
nt"><span style=3D"font-size:13px">Yahia Farghaly=C2=A0</span></font><span =
style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,se=
rif,EmojiFont;font-size:16px"></span><div><font color=3D"#777777" face=3D"T=
ahoma, sans-serif, Arial, serif, EmojiFont"><span style=3D"font-size:13px">=
Graduated from Faculty of Engineering - Electronics and Communications Depa=
rtment at Cairo University.</span></font><br/></div><div style=3D"color:rgb=
(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font=
-size:16px"><div><a href=3D"https://linkedin.com/in/yahiafarghaly" rel=3D"n=
oopener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font-family=
:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">Li=
nkedin</span></font></a><font size=3D"1" color=3D"#777777" style=3D"font-fa=
mily:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px=
">=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/yahiafarghaly" r=
el=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font=
-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:1=
3px">GitHub</span></font></a></div></div></div></div></div></div>
<br/><br/><br/>=E2=80=8C</font></span></div>
<br/></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br/>
______________________________<wbr/>_________________<br/>
yocto mailing list<br/>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctopro=
ject.org</a><br/>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferre=
r" target=3D"_blank">https://lists.yoctoproject.org<wbr/>/listinfo/yocto</a=
><br/>
<br/></font></span></blockquote></div><br/></div>
</blockquote></div><br/><br clear=3D"all"/><div><br/></div>-- <br/><div cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><div><div dir=3D"ltr"><font size=3D"1" color=3D"#777777" style=3D"font-fam=
ily:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px"=
>Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,0);font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"></sp=
an><div><font color=3D"#777777" face=3D"Tahoma, sans-serif, Arial, serif, E=
mojiFont"><span style=3D"font-size:13px">Graduated from Faculty of Engineer=
ing - Electronics and Communications Department at Cairo University.</span>=
</font><br/></div><div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,=
Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><div><a href=3D"https:=
//linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"_bla=
nk"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif,Emo=
jiFont"><span style=3D"font-size:13px">Linkedin</span></font></a><font size=
=
=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,seri=
f,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0</span></font><a h=
ref=3D"https://github.com/yahiafarghaly" rel=3D"noopener noreferrer" target=
=
=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,=
serif,EmojiFont"><span style=3D"font-size:13px">GitHub</span></font></a></d=
iv></div></div></div></div></div>
</div>
</body></html>

--001a113ce896b5554d05591380d2--

--DoJmwoPgOIrbKd2cK8QU
Content-Id: <attach_0_15D95A7DCC494FE4_27608@groups.io>
X-Attachment-Id: attach_0_15D95A7DCC494FE4_27608@groups.io
Content-Type: image/gif; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7

--DoJmwoPgOIrbKd2cK8QU--
