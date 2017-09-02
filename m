Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 439A9E00B28; Sat,  2 Sep 2017 04:53:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_20,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM,T_REMOTE_IMAGE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* 1.5 HTML_IMAGE_ONLY_20 BODY: HTML: images with 1600-2000 bytes of
	words
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.66 listed in dnsbl.sorbs.net]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACB66E00970
	for <yocto@yoctoproject.org>; Sat,  2 Sep 2017 04:53:25 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id t124so2008321oih.0
	for <yocto@yoctoproject.org>; Sat, 02 Sep 2017 04:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=vtKgj3qlUgXCKdTQnAekDNpy4V9LJ8dQ1exBDPpYhk4=;
	b=DaM/r6O8aOeApgsSo0Sfv4vZ5nqFGZCrxS9T8TAOMGWjZJnOg0t/4tb4XjzFPZ4yK9
	emfQZWUE8M96c8XHaEnGOvmFOIesZcoGaOQecxQiEyumzHXUSWZp2pmb5GxXiQ7tSEwT
	zYPDFhd76qBQwubPXvyxndr5HB+TGyjt8PYUwydGbkhNRZYXCT6C96fga3IgzvKRj9SV
	XxD3V4Q+ShVGDcxv6h1bRLD/FGTLCXu3aNoYB01vEANM8gp9IRu+LvwHQ5EbaaA0h/8N
	ldI83YsiC8gYwvBBOnwoW6d7K3E8P68LEjgb2Ci6FOxCBgKMuYvyrgxDGqDYVgreQNeT
	PdQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=vtKgj3qlUgXCKdTQnAekDNpy4V9LJ8dQ1exBDPpYhk4=;
	b=W9cNiPy7SrRE4Xdd5avWcjpMT2CdqnKa+9+mgO4k7z8KLImOo1WG71ZqSP3x3lYImh
	B1JCAy6BsN1syfGv+SSmMfOOpVq+dLAkZ16xFQi41c8pt86KZ1hgQedfwcyE4xEgrgVA
	MxhmzyaclIT/0B+mLD+qHDRJOoForete6DH618w7HIJCsd5tqrt0Pv89m44L8drM8Njc
	5iE00a0HeBHi/j8BxBU717KFt1nKakIxGib/JUdC2uUB0IvqEZzTSuVM34HQZxETtmBp
	az1ctMzD+w67+opynkcIqcQ7dlEJmki/r5oUnwgBD8L1rKlBafIOiZzxNlLG6+qRVwDM
	7u1w==
X-Gm-Message-State: AHPjjUiY6AlkpH6fqZNCjG+YIIPGPefU9X0TNrO8Xwe64F/QtKpYxWBo
	QwRZYdqUUme0jvjGSJu1cbyID+2CC+MG
X-Google-Smtp-Source: ADKCNb6ZpqCxoeGJR6RmhgkA22NJSGZmHVKsn5LG8jb+TxOmrDehCwGQfCDlkRksc7b583Zn8uyI2veAefM+7bI4504=
X-Received: by 10.202.0.204 with SMTP id 195mr1013759oia.253.1504353204420;
	Sat, 02 Sep 2017 04:53:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.41.131 with HTTP; Sat, 2 Sep 2017 04:53:24 -0700 (PDT)
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Sat, 2 Sep 2017 13:53:24 +0200
Message-ID: <CABFXn3FOtFOPNK8_d7=QQK7-7YWD6w4XrnDwkfZu1XbqxJCW=w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: initscript with yocto
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
X-List-Received-Date: Sat, 02 Sep 2017 11:53:26 -0000
Content-Type: multipart/alternative; boundary="001a113794285dc5410558338617"

--001a113794285dc5410558338617
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
Can someone provide me with a working example of using both rc.local and
systemd for executing shell commands at startup.

I tried systemd as explained here but it didn't work (
https://stackoverflow.com/questions/40431674/post-install-script-on-yocto-b=
uilt-linux
)

Thanks,

--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>



=E2=80=8C

--001a113794285dc5410558338617
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/cc0b9fd=
9fd034c872172cd0c15699d51ebf40798.png?u=3D1822760"><div>Hi,</div><div>Can s=
omeone provide me with a working example of using both rc.local and systemd=
 for executing shell commands at startup.</div><div><br></div><div>I tried =
systemd as explained here but it didn&#39;t work (<a href=3D"https://stacko=
verflow.com/questions/40431674/post-install-script-on-yocto-built-linux">ht=
tps://stackoverflow.com/questions/40431674/post-install-script-on-yocto-bui=
lt-linux</a>)</div><div><br></div><div>Thanks,</div><div><br>-- <br><div cl=
ass=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=
=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,serif=
,EmojiFont"><span style=3D"font-size:13px">Yahia Farghaly=C2=A0</span></fon=
t><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,EmojiFont;font-size:16px"></span><div><font color=3D"#777777" f=
ace=3D"Tahoma, sans-serif, Arial, serif, EmojiFont"><span style=3D"font-siz=
e:13px">Graduated from Faculty of Engineering - Electronics and Communicati=
ons Department at Cairo University.</span></font><br></div><div style=3D"co=
lor:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFo=
nt;font-size:16px"><div><a href=3D"https://linkedin.com/in/yahiafarghaly" r=
el=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font=
-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:1=
3px">Linkedin</span></font></a><font size=3D"1" color=3D"#777777" style=3D"=
font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-si=
ze:13px">=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/yahiafarg=
haly" rel=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=
=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"fon=
t-size:13px">GitHub</span></font></a></div></div></div></div></div></div>
<br><br><br>=E2=80=8C</div></div>

--001a113794285dc5410558338617--
