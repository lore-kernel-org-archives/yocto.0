Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55131E00C62; Wed, 13 Sep 2017 05:00:39 -0700 (PDT)
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
	*      [209.85.218.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2846E00BE8
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 05:00:38 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id i6so4768798oih.5
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 05:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=P7qENTfXCw3ENarCr1clzU+nPunGqLDPSVNkGIoDWNg=;
	b=pYZL8h2JblfXNQ0xWZqOTV6NiTiE9pN0aoQMbemZjWd2WrhoI0TGQte8UqGnerBZvl
	CE1JWljtbVu9qPy6Hhex4G5+nYdG3wsXJwmWAFzQafO1hUzzWlUBFR1FDfNlrMqjTWAf
	CF/9dG7Cf3J43zu1cPjl70dYDI5K8Cb35CMg6OoDPZjEaGnPiMgqNozd6Q6QmNMrGK9A
	rHRja7L+hQUAzWC/ZdstWRkp19QA5vFijyBeyWfhEU9WKrUMEshJyO/avmVpWAZetd3o
	FrK1dcNuYFy+xvG1wVXa7khqB3r9qmL5QvGeVRExsKE/au4cgH4a70LfQzFOFdSkFfhG
	xIBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=P7qENTfXCw3ENarCr1clzU+nPunGqLDPSVNkGIoDWNg=;
	b=oYah3FOKqRTPq0p0Z6Rbx3wu9styE5KmmbvGRCsNRsIn7GfTI6DOSFkq9AZ4HqeNoO
	FXvMC9Dh6Mx8b5V96OzXP/CS2+n0j2KAg7xhKjrrtrORAdshuIbHmmFT2epKbErHCk1Z
	ked46MRie8NU9G3vq8Hw/DPi4Z+6Z3PixrtsdwKrQKdQaaK8aG4Ni6pdY8ASGaxhAwny
	0hgZ3TZhlLycBoefLaSaiolCuzsiYtJND34oMSw3RNTplTywg8kRpqJtSNS6Yi4LrL3C
	V7ymkFC2LQJQMpOCQ5s6pYsxOSLNRpIcFfdGfb5DQ3HC0c2XWtIhQYqep1bUStT3CdKy
	A4pw==
X-Gm-Message-State: AHPjjUi2bZNWzAdtTV6Nquj3V28AmEA9l/zXKgchrmUDEgTKhkJ3FZWt
	KzXzG2c5oWpwft4XSZNWyuhISNi9LqFFzVwfMv8=
X-Google-Smtp-Source: AOwi7QBC11HlI1s8Fg1UEigJpjzts8k5DBnxxhaQGMLVCeZKrg7Q8suPbytJudT0Ni/5HWJTXNNrzzJrWaUnod6qGbw=
X-Received: by 10.202.184.4 with SMTP id i4mr9881130oif.269.1505304035810;
	Wed, 13 Sep 2017 05:00:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.196 with HTTP; Wed, 13 Sep 2017 05:00:35 -0700 (PDT)
In-Reply-To: <949f4667-0869-6a30-3fff-92cffb410c71@dynamicdevices.co.uk>
References: <CABFXn3Gk6wMmARf5UMgdJpsCRDbhWOEfwZvhw96b3=-oa21C0g@mail.gmail.com>
	<CACMwXoXzB7ucvzFo1Ai4nNypb_+XMfVk0R+cB4oxSuHsV8jBOQ@mail.gmail.com>
	<CABFXn3FX6Jx=svzTv_91Hrq7E50j1+5sQYojr_6iuuT=0z4-Mg@mail.gmail.com>
	<CAP3gWc_i72Nnb7FWUdaRYufOn-uMVvpUcVEF686ObH1ZSH7dQg@mail.gmail.com>
	<949f4667-0869-6a30-3fff-92cffb410c71@dynamicdevices.co.uk>
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Wed, 13 Sep 2017 14:00:35 +0200
Message-ID: <CABFXn3ERDVR_eo0UXWwXhakPB5qEXLq0A1RiwyyNFzkLGprKHw@mail.gmail.com>
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
X-List-Received-Date: Wed, 13 Sep 2017 12:00:39 -0000
Content-Type: multipart/alternative; boundary="001a113cea24556370055910e852"

--001a113cea24556370055910e852
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nice Aaron, it worked as charm.  Thank you !

Alex, i will try your way. but you can test qemu without vnc by
specifying *serial
nographic* of runqemu options
=E2=80=8C

On 13 September 2017 at 13:51, Alex Lennon <ajlennon@dynamicdevices.co.uk>
wrote:

> Hi Yahia,
>
> On 13/09/2017 12:24, Aaron Schwartz wrote:
>
>> Tmux [0] also works well for this, and I've never tried it with Screen (=
a
>> similar utility) so here's instructions using Tmux:
>>
>> You need to install Tmux on the server you are using SSH to connect to,
>> then as soon as you SSH into the server run `$ tmux`.  Then when you run=
 `$
>> bitbake -c menuconfig ...` it will automatically open a second pane on t=
he
>> bottom half of your screen where you can edit your kernel config.  That
>> pane will close automatically when you exit the menuconfig application.
>>
>> I hope that helps!
>> Aaron
>>
>>
>>
>>
> I mostly remote into my server via SSH too. And I use the screen method t=
o
> run menuconfig and devshell and so forth. Works well.
>
> As Yusuke says you can install screen on the server (if it is Ubuntu or
> similar) if you need to with
>
> $ sudo apt install screen
>
> You might need to tell the bitbake tooling to use the screen utility whic=
h
> you can do with something like
>
> $ export  OE_TERMINAL=3Dscreen
>
> I see there are some notes here
>
> https://books.google.co.uk/books?id=3DyNi6BwAAQBAJ&pg=3DPA35&lpg
> =3DPA35&dq=3Dyocto+OE_TERMINAL+screen&source=3Dbl&ots=3DHYab5gQgCg&
> sig=3D-qLFfrNLtglXCKwagcbU2Uqg1WM&hl=3Den&sa=3DX&ved=3D0ahUKEwie667d
> iqLWAhUkLcAKHfXDBZwQ6AEIQzAD#v=3Donepage&q=3Dyocto%20OE_
> TERMINAL%20screen&f=3Dfalse
>
> ...
>
> I hadn't heard of tmux. Thanks Aaron - I will have a look into that...
>
> ...
>
> Sometimes I need a graphical environment. For example when I want to run
> up a Yocto Poky build for testing on a QEmu emulated machine easily.
>
> For this I have VNC Server installed on the build box. I then run this up
> and it creates a new desktop. Your default desktop is usually :0 and in m=
y
> case VNC then creates a :1 desktop
>
> This usually ends up on build box local port 5901 as I recall (if not it
> will be a similar number, you can check with netstat -anp)
>
> You can then port forward the VNC TCP port 5901 over SSH and use a VNC
> client on your client local port.
>
> I often use Windows as a client so use Putty for the port forwarding and
> TightVNC for the VNC client.
>
> This could well sound quite fiddly but it's fine when you get it setup.
>
> There are some notes here which might be useful
>
> https://www.theurbanpenguin.com/creating-an-ssh-tunnel-with-
> putty-to-secure-vnc/
>
> Cheers,
>
> Alex
>
>


--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>

--001a113cea24556370055910e852
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/d198f6d=
be4b03fb187f74d3779d0626a1ec4edeb.png?u=3D1822760">Nice Aaron, it worked as=
 charm.=C2=A0 Thank you !<div><br></div><div>Alex, i will try your way. but=
 you can test qemu without vnc by specifying <i>serial nographic</i> of run=
qemu options=C2=A0<br><div>=E2=80=8C</div></div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On 13 September 2017 at 13:51, Alex Le=
nnon <span dir=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk"=
 target=3D"_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">Hi Yahia,<span class=3D""><br>
<br>
On 13/09/2017 12:24, Aaron Schwartz wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Tmux [0] also works well for this, and I&#39;ve never tried it with Screen =
(a similar utility) so here&#39;s instructions using Tmux:<br>
<br>
You need to install Tmux on the server you are using SSH to connect to, the=
n as soon as you SSH into the server run `$ tmux`.=C2=A0 Then when you run =
`$ bitbake -c menuconfig ...` it will automatically open a second pane on t=
he bottom half of your screen where you can edit your kernel config.=C2=A0 =
That pane will close automatically when you exit the menuconfig application=
.<br>
<br>
I hope that helps!<br>
Aaron<br>
<br>
<br>
<br>
</blockquote>
<br></span>
I mostly remote into my server via SSH too. And I use the screen method to =
run menuconfig and devshell and so forth. Works well.<br>
<br>
As Yusuke says you can install screen on the server (if it is Ubuntu or sim=
ilar) if you need to with<br>
<br>
$ sudo apt install screen<br>
<br>
You might need to tell the bitbake tooling to use the screen utility which =
you can do with something like<br>
<br>
$ export=C2=A0 OE_TERMINAL=3Dscreen<br>
<br>
I see there are some notes here<br>
<br>
<a href=3D"https://books.google.co.uk/books?id=3DyNi6BwAAQBAJ&amp;pg=3DPA35=
&amp;lpg=3DPA35&amp;dq=3Dyocto+OE_TERMINAL+screen&amp;source=3Dbl&amp;ots=
=3DHYab5gQgCg&amp;sig=3D-qLFfrNLtglXCKwagcbU2Uqg1WM&amp;hl=3Den&amp;sa=3DX&=
amp;ved=3D0ahUKEwie667diqLWAhUkLcAKHfXDBZwQ6AEIQzAD#v=3Donepage&amp;q=3Dyoc=
to%20OE_TERMINAL%20screen&amp;f=3Dfalse" rel=3D"noreferrer" target=3D"_blan=
k">https://books.google.co.uk/boo<wbr>ks?id=3DyNi6BwAAQBAJ&amp;pg=3DPA35&am=
p;lpg<wbr>=3DPA35&amp;dq=3Dyocto+OE_TERMINAL+scr<wbr>een&amp;source=3Dbl&am=
p;ots=3DHYab5gQgCg&amp;<wbr>sig=3D-qLFfrNLtglXCKwagcbU2Uqg1W<wbr>M&amp;hl=
=3Den&amp;sa=3DX&amp;ved=3D0ahUKEwie667d<wbr>iqLWAhUkLcAKHfXDBZwQ6AEIQzAD#<=
wbr>v=3Donepage&amp;q=3Dyocto%20OE_<wbr>TERMINAL%20screen&amp;f=3Dfalse</a>=
<br>
<br>
...<br>
<br>
I hadn&#39;t heard of tmux. Thanks Aaron - I will have a look into that...<=
br>
<br>
...<br>
<br>
Sometimes I need a graphical environment. For example when I want to run up=
 a Yocto Poky build for testing on a QEmu emulated machine easily.<br>
<br>
For this I have VNC Server installed on the build box. I then run this up a=
nd it creates a new desktop. Your default desktop is usually :0 and in my c=
ase VNC then creates a :1 desktop<br>
<br>
This usually ends up on build box local port 5901 as I recall (if not it wi=
ll be a similar number, you can check with netstat -anp)<br>
<br>
You can then port forward the VNC TCP port 5901 over SSH and use a VNC clie=
nt on your client local port.<br>
<br>
I often use Windows as a client so use Putty for the port forwarding and Ti=
ghtVNC for the VNC client.<br>
<br>
This could well sound quite fiddly but it&#39;s fine when you get it setup.=
<br>
<br>
There are some notes here which might be useful<br>
<br>
<a href=3D"https://www.theurbanpenguin.com/creating-an-ssh-tunnel-with-putt=
y-to-secure-vnc/" rel=3D"noreferrer" target=3D"_blank">https://www.theurban=
penguin.co<wbr>m/creating-an-ssh-tunnel-with-<wbr>putty-to-secure-vnc/</a><=
br>
<br>
Cheers,<br>
<br>
Alex<br>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr"><font size=3D"1" color=3D"#777777" style=3D"font-family=
:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">Ya=
hia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,0);font-family=
:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"></span>=
<div><font color=3D"#777777" face=3D"Tahoma, sans-serif, Arial, serif, Emoj=
iFont"><span style=3D"font-size:13px">Graduated from Faculty of Engineering=
 - Electronics and Communications Department at Cairo University.</span></f=
ont><br></div><div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helv=
etica,sans-serif,serif,EmojiFont;font-size:16px"><div><a href=3D"https://li=
nkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"_blank">=
<font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFo=
nt"><span style=3D"font-size:13px">Linkedin</span></font></a><font size=3D"=
1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,serif,Emo=
jiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0</span></font><a href=
=3D"https://github.com/yahiafarghaly" rel=3D"noopener noreferrer" target=3D=
"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,seri=
f,EmojiFont"><span style=3D"font-size:13px">GitHub</span></font></a></div><=
/div></div></div></div></div>
</div>

--001a113cea24556370055910e852--
