Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE86AE00C2B; Wed, 13 Sep 2017 05:55:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.52 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27241E00BE8
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 05:55:36 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id r20so855368oie.0
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 05:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=J3bVWLjCX1bMspwEn4XughS3+F35uBBYCwICZCLzZ0Q=;
	b=jN7FTGXit8LXEOxBUVgXFBSjlsheG8ZyKH1oMz6IvyKYt+3h+7yAhsY5mqkO9dtV2V
	YazS0kEalAI4L8N/lNdYSi/cMtjwGWgj5mCKydybuvZynxynAlJu1+pTInA1CwWW5NPM
	jOOBX5y54KBd1HizlW8SqLbr0sypKWGQkkOoeEiJkytJ01aHUuV5l+xNjwn/bKFfmLje
	nAsVJQ5Cv9YGN147PgGXk8vVN89kq9hukjZQ43PoE8/an1Kha37mRFz2hA/flIJ+Ju6c
	vrx5MtY151xL7kBbMAoOqzaB2NElWi1tphjvCNAb3JVxTm92m96kDAgtd75qxOEHvdox
	puRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=J3bVWLjCX1bMspwEn4XughS3+F35uBBYCwICZCLzZ0Q=;
	b=q+hogP7rv+uQrBy/ZLm5uZ2xfQ2khY5ZM2uSnJ6nn+YKP4lOmzufy32eOaBLs3qHys
	YpIqBzlXNhL7B/VxsiZ++rqVcceVp4xrtaqhgWY7G8mWfmrHtJdG6T7cIY+jbJcpntzO
	8HB3jg4T2et6RmkfudhmM0Nf+q0VbpZspxn5ldAQQlyNT7UT/th2FXY+rVzsEpNgdl+s
	TQJ69tuC15SoV9nlSMHY6hvMViSJQfMCCzAg9tvFOK5MA2JdeWB6JIu1Z47HG/CFP+kl
	0iBWwg//9BlFgEeTn0bSTR8bfvwJuUF0fJzSJGH8F5pL7tmVY/SyxmlC+q04GlY3UuFi
	nRgQ==
X-Gm-Message-State: AHPjjUiGVOvfvzI57k/+q5I/x2NlF5RRI2L6NEZ3nJN8Wr1XBJ+d+4p+
	7deXxvWscXCXNGqFzeWUe+ZV5OTZhn/dko5i784=
X-Google-Smtp-Source: AOwi7QCWPmv2zJ+3w97XB9bg9VhJLqwE8uBYOI8PHhX1Ar+9LE3mkNwjt2090XYsDX7h6vSW2SHUG090c+fQXL4fGow=
X-Received: by 10.202.175.137 with SMTP id y131mr17397151oie.114.1505307336102;
	Wed, 13 Sep 2017 05:55:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.196 with HTTP; Wed, 13 Sep 2017 05:55:35 -0700 (PDT)
In-Reply-To: <a75df718-c3d2-61de-26bb-cd05bece4122@dynamicdevices.co.uk>
References: <CABFXn3Gk6wMmARf5UMgdJpsCRDbhWOEfwZvhw96b3=-oa21C0g@mail.gmail.com>
	<CACMwXoXzB7ucvzFo1Ai4nNypb_+XMfVk0R+cB4oxSuHsV8jBOQ@mail.gmail.com>
	<CABFXn3FX6Jx=svzTv_91Hrq7E50j1+5sQYojr_6iuuT=0z4-Mg@mail.gmail.com>
	<CAP3gWc_i72Nnb7FWUdaRYufOn-uMVvpUcVEF686ObH1ZSH7dQg@mail.gmail.com>
	<949f4667-0869-6a30-3fff-92cffb410c71@dynamicdevices.co.uk>
	<CABFXn3ERDVR_eo0UXWwXhakPB5qEXLq0A1RiwyyNFzkLGprKHw@mail.gmail.com>
	<a75df718-c3d2-61de-26bb-cd05bece4122@dynamicdevices.co.uk>
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Wed, 13 Sep 2017 14:55:35 +0200
Message-ID: <CABFXn3E4Ypnco1txQuPqpxCV4xJh31r8GOs2BKodxT-xV6Pt1w@mail.gmail.com>
To: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 13 Sep 2017 12:55:37 -0000
X-Groupsio-MsgNum: 37844
Content-Type: multipart/related; boundary="LwgDwAwW2qpqCdpHAsix"

--LwgDwAwW2qpqCdpHAsix
Content-Type: multipart/alternative; boundary="001a113cf64c0bdac3055911ad95"

--001a113cf64c0bdac3055911ad95
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For technical knowledge, why is it failing from the first place ?

from my observation, It seems to try to execute gnome-terminal by default,
so i installed it but it failed to open it. even when i tried with ssh -X ,
it opened gnome-terminal but print the same failure messages within it.


=E2=80=8C

On 13 September 2017 at 14:05, Alex Lennon <ajlennon@dynamicdevices.co.uk>
wrote:

>
>
> On 13/09/2017 13:00, yahia farghaly wrote:
>
> Nice Aaron, it worked as charm.  Thank you !
>
> Alex, i will try your way. but you can test qemu without vnc by specifyin=
g *serial
> nographic* of runqemu options
> =E2=80=8C
>
>
> Yes. I generally have a need for graphical output for testing though :)
>
> You can actually use the in-built qemu VNC server if you change the
> options too...
>
> ref: https://wiki.archlinux.org/index.php/QEMU#vnc
>
> Cheers!
>
> Alex
>



--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>

--001a113cf64c0bdac3055911ad95
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"ltr"><img width=3D"0" height=3D"0" cla=
ss=3D"mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtra=
ck.io/trace/mail/6e3157e357ec40ad826ea86c37193c44ef939506.png?u=3D1822760"/=
>For technical knowledge, why is it failing from the first place ?<div><br/=
>from my observation, It seems to try to execute gnome-terminal by default,=
 so i installed it but it failed to open it. even when i tried with ssh -X =
, it opened gnome-terminal but print the same failure messages within it.<b=
r/><br/><br/>=E2=80=8C</div></div><div class=3D"gmail_extra"><br/><div clas=
s=3D"gmail_quote">On 13 September 2017 at 14:05, Alex Lennon <span dir=3D"l=
tr">&lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">=
ajlennon@dynamicdevices.co.uk</a>&gt;</span> wrote:<br/><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
  
    
  
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><span class=3D"">
    <p><br/>
    </p>
    <br/>
    <div class=3D"m_8449784026129795812moz-cite-prefix">On 13/09/2017 13:0=
0, yahia farghaly
      wrote:<br/>
    </div>
    </span><span class=3D""><blockquote type=3D"cite">
      <div dir=3D"ltr"><img class=3D"m_8449784026129795812mailtrack-img" a=
lt=3D"" style=3D"display:flex" src=3D"cid:attach_0_15D95A7DB6DE9E8C_14359@g=
roups.io" height=3D"0" width=3D"0"/>Nice Aaron, it
        worked as charm.=C2=A0 Thank you !
        <div><br/>
        </div>
        <div>Alex, i will try your way. but you can test qemu without
          vnc by specifying <i>serial nographic</i> of runqemu options=C2=
=A0<br/>
          <div>=E2=80=8C<br/>
          </div>
        </div>
      </div>
    </blockquote>
    <br/></span>
    Yes. I generally have a need for graphical output for testing though
    :)<span class=3D""><br/>
    <br/>
    You can actually use the in-built qemu VNC server if you change the
    options too...<br/>
    <br/>
    ref: <a class=3D"m_8449784026129795812moz-txt-link-freetext" href=3D"h=
ttps://wiki.archlinux.org/index.php/QEMU#vnc" target=3D"_blank">https://wik=
i.archlinux.org/<wbr/>index.php/QEMU#vnc</a><br/>
    <br/>
    Cheers!<br/>
    <br/>
    Alex<br/>
  </span></div>

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

--001a113cf64c0bdac3055911ad95--

--LwgDwAwW2qpqCdpHAsix
Content-Id: <attach_0_15D95A7DB6DE9E8C_14359@groups.io>
X-Attachment-Id: attach_0_15D95A7DB6DE9E8C_14359@groups.io
Content-Type: image/gif; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7

--LwgDwAwW2qpqCdpHAsix--
