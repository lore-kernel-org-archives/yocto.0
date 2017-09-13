Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EFE1E00C62; Wed, 13 Sep 2017 04:17:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
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
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C82A7E00BE8
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 04:17:37 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id z73so40745227oia.2
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 04:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WqzFcoySEFigT41ij+ny/q+ItLKc9J6LyjXzldV9PH8=;
	b=Ik/ProzjhyHHJYlorSgW60EIAJZlyqNnC7lRcuz8Aj62K2yDM+hUE+gCYa1E4o5KlQ
	9/CyEEmlDFr/e8RZHkm/nAoat5dMGb1o3EmkfaPQTCxw6k5mIJLVkOvf5DTqrklpSwnJ
	AfX9xvJ3avDTFA0070MAxHGi8wVHu99/D97eyRPhDahTMWq/70urpw48m7BnDTlztaN9
	hfGug2ErMXvWpUXOWcPVd92JtckEcqMHfDEE7cRhcvaIxWCo1+2AYl0Gh/9zLAW3rIss
	ZC8u8t4YxPXzyXqxJM4465M7WU9UYQS6sELFBWEmbOWEhuiQWdgd6XIFXJblGxmLZKqp
	OO1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WqzFcoySEFigT41ij+ny/q+ItLKc9J6LyjXzldV9PH8=;
	b=doCSBac3U5Fbe9KAl+MWrHrcxhp6yxvBu6lsasCkhMn83kUJ8dmtbvUgOnoThJjsYi
	HWi93e46mDy9zcVAdDXKZsHDSTTpJVQ9bwv07IDa9fZOvg3aB18LCixRwJPzQp2nNnAb
	mQ6hYz3m3t+lsmHD6Ih8K/q64kP0HCStkt0j210c0jYryOHrMQ/VwIH65smprYw0Igct
	uRBFMaWg4HWAXzc0sVGnuaCQu5cDFgoQ8af2irWe7RJGqD9TXMZUr0hmldpiW39dC7hR
	DlYQi51eBemUHf44Qd7c8Ec4MAStDkamb08ogHoSgFV6ZePUOOJRzqnRj4z6JoXatJLi
	7lwA==
X-Gm-Message-State: AHPjjUhMBAXwmXAYdFve1cUCDpupyUz/uV52H8rEgnxkWffRWK6EQGiq
	+FeNqi2BeUA3qKpB+ATaOpkDz6pcJQ5GtxHhTEE=
X-Google-Smtp-Source: AOwi7QBjDKa8c8Wwp54yullSFRNVOeN2E6wZAm7FYDowT8L5o4BmALpuQ3gJ7d2aom09tmMoSitQ3F9eXmFp40Av/BE=
X-Received: by 10.202.76.9 with SMTP id z9mr18875353oia.253.1505301456875;
	Wed, 13 Sep 2017 04:17:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.196 with HTTP; Wed, 13 Sep 2017 04:17:36 -0700 (PDT)
In-Reply-To: <CACMwXoXzB7ucvzFo1Ai4nNypb_+XMfVk0R+cB4oxSuHsV8jBOQ@mail.gmail.com>
References: <CABFXn3Gk6wMmARf5UMgdJpsCRDbhWOEfwZvhw96b3=-oa21C0g@mail.gmail.com>
	<CACMwXoXzB7ucvzFo1Ai4nNypb_+XMfVk0R+cB4oxSuHsV8jBOQ@mail.gmail.com>
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Wed, 13 Sep 2017 13:17:36 +0200
Message-ID: <CABFXn3FX6Jx=svzTv_91Hrq7E50j1+5sQYojr_6iuuT=0z4-Mg@mail.gmail.com>
To: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: how to execute bitbake menuconfig from ssh server
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
X-List-Received-Date: Wed, 13 Sep 2017 11:17:38 -0000
X-Groupsio-MsgNum: 37836
Content-Type: multipart/related; boundary="VtZX6DrIYHyaYUeFGFAT"

--VtZX6DrIYHyaYUeFGFAT
Content-Type: multipart/alternative; boundary="001a113df0fa9df5a50559104ee7"

--001a113df0fa9df5a50559104ee7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

can you give some steps on how to do this ?


=E2=80=8C

On 13 September 2017 at 10:54, Yusuke Mitsuki <mickey.happygolucky@gmail.co=
m
> wrote:

> Hello
>
> You can use screen.
> If your host is ubuntu,you can get via apt as follows.
>
> sudo apt install screen.
>
> If necessary , you can set auto or screen to OE_TERMINAL environment.
>
> 2017/09/13 16:09 "yahia farghaly" <yahiafarghaly@gmail.com>:
>
>> Hi,
>>
>> I am working with yocto from a remote server using ssh. i want to execut=
e *bitbake
>> -c menuconfig virtual/kernel*  . It fails to open since it tries to open
>> another shell.
>> how can i redirect output of menuconfig to my current ssh session ?
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


--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>

--001a113df0fa9df5a50559104ee7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"ltr"><img width=3D"0" height=3D"0" cla=
ss=3D"mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtra=
ck.io/trace/mail/0f18fd3d39cc8ab3c2e8847050fcd8cc3eaf8672.png?u=3D1822760"/=
><br/>can you give some steps on how to do this ?<br/><br/><br/>=E2=80=8C</=
div><div class=3D"gmail_extra"><br/><div class=3D"gmail_quote">On 13 Septem=
ber 2017 at 10:54, Yusuke Mitsuki <span dir=3D"ltr">&lt;<a href=3D"mailto:m=
ickey.happygolucky@gmail.com" target=3D"_blank">mickey.happygolucky@gmail.c=
om</a>&gt;</span> wrote:<br/><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"aut=
o">Hello<div dir=3D"auto"><br/></div><div dir=3D"auto">You can use screen.<=
/div><div dir=3D"auto">If your host is ubuntu,you can get via apt as follow=
s.</div><div dir=3D"auto"><br/></div><div dir=3D"auto">sudo apt install scr=
een.</div><div dir=3D"auto"><br/></div><div dir=3D"auto">If necessary , you=
 can set auto or screen to OE_TERMINAL environment.=C2=A0</div></div><div c=
lass=3D"gmail_extra"><br/><div class=3D"gmail_quote">2017/09/13 16:09 &#34;=
yahia farghaly&#34; &lt;<a href=3D"mailto:yahiafarghaly@gmail.com" target=
=3D"_blank">yahiafarghaly@gmail.com</a>&gt;:<br type=3D"attribution"/><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div><div class=3D"h5"><div dir=3D"ltr"><img wid=
th=3D"0" height=3D"0" class=3D"m_-8225368252987829729m_5784155018240313917m=
ailtrack-img" alt=3D"" style=3D"display:flex" src=3D"cid:attach_0_15D95A7D8=
E411979_27608@groups.io"/><div><div>Hi,</div><div><br/></div><div>I am work=
ing with yocto from a remote server using ssh. i want to execute <i>bitbake=
 -c menuconfig virtual/kernel</i>=C2=A0 . It fails to open since it tries t=
o open another shell.=C2=A0</div><div>how can i redirect output of menuconf=
ig to my current ssh session ?=C2=A0</div><div><br/></div>-- <br/><div clas=
s=3D"m_-8225368252987829729m_5784155018240313917gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=
=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,seri=
f,EmojiFont"><span style=3D"font-size:13px">Yahia Farghaly=C2=A0</span></fo=
nt><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans=
-serif,serif,EmojiFont;font-size:16px"></span><div><font color=3D"#777777" =
face=3D"Tahoma, sans-serif, Arial, serif, EmojiFont"><span style=3D"font-si=
ze:13px">Graduated from Faculty of Engineering - Electronics and Communicat=
ions Department at Cairo University.</span></font><br/></div><div style=3D"=
color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,Emoji=
Font;font-size:16px"><div><a href=3D"https://linkedin.com/in/yahiafarghaly"=
 rel=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"fo=
nt-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size=
:13px">Linkedin</span></font></a><font size=3D"1" color=3D"#777777" style=
=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"fo=
nt-size:13px">=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/yahi=
afarghaly" rel=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" s=
tyle=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D=
"font-size:13px">GitHub</span></font></a></div></div></div></div></div></di=
v>
<br/><br/><br/></div>=E2=80=8C</div>
<br/></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br/>
______________________________<wbr/>_________________<br/>
yocto mailing list<br/>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctopro=
ject.org</a><br/>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferre=
r" target=3D"_blank">https://lists.yoctoproject.org<wbr/>/listinfo/yocto</a=
><br/>
<br/></font></span></blockquote></div></div>
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

--001a113df0fa9df5a50559104ee7--

--VtZX6DrIYHyaYUeFGFAT
Content-Id: <attach_0_15D95A7D8E411979_27608@groups.io>
X-Attachment-Id: attach_0_15D95A7D8E411979_27608@groups.io
Content-Type: image/gif; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7

--VtZX6DrIYHyaYUeFGFAT--
