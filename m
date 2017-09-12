Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F104E00C14; Tue, 12 Sep 2017 13:22:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.181 listed in dnsbl.sorbs.net]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3C29E00B83
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 13:22:00 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id v36so41865003ioi.1
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 13:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=toYCEeT7CKqEBqSmmMZyg4OPiBjorYJL92Zb/2mgCdk=;
	b=Idvv1MliTgnyhxRlGzJwW8SR7OJ86Q3gp/0QqaB906fufTWr3xnp3oEJGJiCfA3qDl
	QGFzWKxn04kDW/R2jmmtBYvjdM7Vg7GnJD5R8+nyAIsJiiZKbhANlGWHXPDo9nmNCX+Y
	Yo7m8rjNhwdRDR5dUpKeH5bXF9YAqGlYqkkKarEl7qbUVRykZMI00ikpMD3SQN8rDlTt
	kpCNMkujcf90soaRklctRj4lsb+jNjibdoAyrUL0tAFrwIlOxRN/BiAmK/JeYoXMDDHK
	ygBNuF3D9d5Y1VIOBZI+Iw+t9q4V6QBqjUMypnjAT6XMAzWOxg7qk/SlTKk8gJcaKx7X
	XLbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=toYCEeT7CKqEBqSmmMZyg4OPiBjorYJL92Zb/2mgCdk=;
	b=IGDtiuVcA2dFQtzYsw9KbGb5q5Aec9Ry+MWFgAGZvtvSaDHL+5LXE0OkvjCsCB/yba
	+k0QVJD0Yzvn+C7OCSQTsQ+cLvzRuRYC1nCofzKDy8lzAX9jkjOvaBWg4Onu1iXYW33n
	g3swxZvcUvB4R2CcgYbLfwMgpg2RPHXAI0P4n3Toy+0tUP32HrTUZTQPQjMbiBOk14eJ
	tJor60Py06pydGVA9mIv5hP73rXEtc+IRUH0FP0H+35OzBybkAl7zAeziao6nHNIuawS
	9gwfHWK3lLM5g55ATCP81zqDCG60ghfI3+ji2OuDgscwcvCkACp3uNBzzZ4BvsfWAykF
	bK8Q==
X-Gm-Message-State: AHPjjUjkze6aX04ysEFvcswZHQUl1iaym3sRMM9ZjQ3Kvmno3e2VynUc
	Bi6S9VYPLRmKCYS8ilwuGLxCrNfAEg==
X-Google-Smtp-Source: AOwi7QD2VWYLsBVU0IgrnVnuXmgHmTIStFq6qxBNSK7Ru1Oyc7HXV5CBW6JfvsgrP3czTPs4kW1xy9WSVWJo0TXVMGk=
X-Received: by 10.202.173.11 with SMTP id w11mr14894919oie.239.1505247719791; 
	Tue, 12 Sep 2017 13:21:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.82.15 with HTTP; Tue, 12 Sep 2017 13:21:59 -0700 (PDT)
In-Reply-To: <CABFXn3EHj=o=FoAdkO9B3F+tSsBg-TmHQVc=T7PiW+dBbmY_8g@mail.gmail.com>
References: <CABFXn3EHj=o=FoAdkO9B3F+tSsBg-TmHQVc=T7PiW+dBbmY_8g@mail.gmail.com>
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Tue, 12 Sep 2017 22:21:59 +0200
Message-ID: <CABFXn3E1ztBinKVjWaoE+HamkSxXK2UUMGHWB+Xq7HWEAhLO-g@mail.gmail.com>
To: yocto@yoctoproject.org, Andrei Gherzan <andrei@gherzan.ro>
Subject: Re: [meta-raspberrypi] enable serial communication pi 3
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
X-List-Received-Date: Tue, 12 Sep 2017 20:22:01 -0000
X-Groupsio-MsgNum: 37801
Content-Type: multipart/related; boundary="h7pBdt9h0tVej6Q9tVQY"

--h7pBdt9h0tVej6Q9tVQY
Content-Type: multipart/alternative; boundary="001a113ce896a320ae055903cb3d"

--001a113ce896a320ae055903cb3d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

:(



=E2=80=8C

On 12 September 2017 at 14:09, yahia farghaly <yahiafarghaly@gmail.com>
wrote:

> I have bitbaked rpi-hwup-image for raspberry pi 3 on sd card and connecte=
d
> the serial ports to *usb to ttl device* . i have set the minicom to
> port: /dev/ttyUSB0
> baud rate: 115200
> the image is booting fine and i can see the prompt on the screen but
> cannot see in my serial console using minicom.
> *is serial enabled by default for this image ? *
> i also tried ENABLE_UART =3D "1" in local.conf but doesn't help.
>
> how to enable it ? and what the serial device name with respect to
> raspberry pi
>
> thanks,
>
> --
> Yahia Farghaly
> Graduated from Faculty of Engineering - Electronics and Communications
> Department at Cairo University.
> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
> <https://github.com/yahiafarghaly>
>
>
>
> =E2=80=8C
>



--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>

--001a113ce896a320ae055903cb3d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"ltr"><img width=3D"0" height=3D"0" cla=
ss=3D"mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtra=
ck.io/trace/mail/0ec1a51e132749b8cd9e7362c093c7a963b302b8.png?u=3D1822760"/=
>:(=C2=A0<br/><br/><br/><br/>=E2=80=8C</div><div class=3D"gmail_extra"><br/=
><div class=3D"gmail_quote">On 12 September 2017 at 14:09, yahia farghaly <=
span dir=3D"ltr">&lt;<a href=3D"mailto:yahiafarghaly@gmail.com" target=3D"_=
blank">yahiafarghaly@gmail.com</a>&gt;</span> wrote:<br/><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"m_61=
31530914211328334mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"cid:=
attach_0_15D95A7CE237235F_15037@groups.io"/>I have bitbaked=C2=A0rpi-hwup-i=
mage for raspberry pi 3 on sd card and connected the serial ports to <i>usb=
 to ttl device</i>=C2=A0. i have set the minicom to=C2=A0<br/>port: /dev/tt=
yUSB0<div>baud rate:=C2=A0115200=C2=A0</div><div>the image is booting fine =
and i can see the prompt on the screen but cannot see in my serial console =
using minicom.=C2=A0</div><div><b>is serial enabled by default for this ima=
ge ?=C2=A0</b><br clear=3D"all"/><div>i also tried ENABLE_UART =3D &#34;1&#=
34; in local.conf but doesn&#39;t help.=C2=A0</div><div><br/></div><div>how=
 to enable it ? and what the serial device name with respect to raspberry p=
i</div><div><br/></div><div>thanks,</div><span class=3D"HOEnZb"><font color=
=
=3D"#888888"><div><br/></div>-- <br/><div class=3D"m_6131530914211328334gm=
ail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=3D"1" colo=
r=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"=
><span style=3D"font-size:13px">Yahia Farghaly=C2=A0</span></font><span sty=
le=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif=
,EmojiFont;font-size:16px"></span><div><font color=3D"#777777" face=3D"Taho=
ma, sans-serif, Arial, serif, EmojiFont"><span style=3D"font-size:13px">Gra=
duated from Faculty of Engineering - Electronics and Communications Departm=
ent at Cairo University.</span></font><br/></div><div style=3D"color:rgb(0,=
0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-si=
ze:16px"><div><a href=3D"https://linkedin.com/in/yahiafarghaly" rel=3D"noop=
ener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font-family:Ta=
homa,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">Linke=
din</span></font></a><font size=3D"1" color=3D"#777777" style=3D"font-famil=
y:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">=
=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/yahiafarghaly" re=
l=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font-=
family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13=
px">GitHub</span></font></a></div></div></div></div></div></div>
<br/><br/><br/>=E2=80=8C</font></span></div></div>
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

--001a113ce896a320ae055903cb3d--

--h7pBdt9h0tVej6Q9tVQY
Content-Id: <attach_0_15D95A7CE237235F_15037@groups.io>
X-Attachment-Id: attach_0_15D95A7CE237235F_15037@groups.io
Content-Type: image/gif; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7

--h7pBdt9h0tVej6Q9tVQY--
