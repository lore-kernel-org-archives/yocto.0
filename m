Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3565E014E2
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 00:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=CLo990M3i+HDG//RAQieABsNGZtvq6AhCTgtAWqfB0o=; 
	b=MGJMvkA8vQ1z4ye1mIxhQ8YHnDqMSkiYDC5HN3RjuehJPNkiso1N76wnqtAH7/10dEIWmsbw0dJiUkUYZbZXF6aRNifqX+7LGN/lUY/Pdov9sSCvwwnJeMovoi4cuNI1SUUUIZOSuU3ANhE3QOqaZmz2BSGi/fY0meRqi7VJhyM=;
Received: from [109.224.129.17] (port=61554
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1UpDAh-003vAK-No; Wed, 19 Jun 2013 08:51:16 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <9DB9DD312636E545A4FA710925A046092718E8E1@PGSMSX102.gar.corp.intel.com>
Date: Wed, 19 Jun 2013 08:51:15 +0100
Message-Id: <87B26814-24F2-423D-9ABF-7D15BDF33873@keylevel.com>
References: <9DB9DD312636E545A4FA710925A046092718E8E1@PGSMSX102.gar.corp.intel.com>
To: "Haw, Foo Chien" <foo.chien.haw@intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Danny/Cedartrail psplash not showing
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
X-List-Received-Date: Wed, 19 Jun 2013 07:51:21 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D3428179-B1E0-4053-AF68-45A5E91B7C1E"

--Apple-Mail=_D3428179-B1E0-4053-AF68-45A5E91B7C1E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On 19 Jun 2013, at 03:53, Haw, Foo Chien wrote:

> Hi Chris,
> =20
> Did you manage to get the psplash screen show after adding the kernel =
argument?

Yes, that seems to have fixed it. Though I'm not sure why ;-)

>=20
> Regards,
> FC
> =20
> -----Original Message-----
> Date: Sun, 16 Jun 2013 23:31:53 +0100
> From: Chris Tapp <opensource@keylevel.com>
> To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
> Subject: Re: [yocto] Danny/Cedartrail psplash not showing
> Message-ID: <FDC7C43E-3F3D-43B1-A2FA-D113A2D8D1D5@keylevel.com>
> Content-Type: text/plain; charset=3Dus-ascii
> =20
> =20
> On 16 Jun 2013, at 22:51, Chris Tapp wrote:
> =20
> > I've got a custom Cedartrail image which works great, but I can't =
get the psplash screen to show on boot.
> >
> > I see a message like "cannot mmap framebuffer" scroll up the screen, =
but this isn't in the message log so I don't get the full context.
> >
> > I've tried looking at the code for pspash-fb.c, but there aren't a =
lot of clues (for me!). Is this something to do with the pixel format, =
as hinted at by the comment referring to 'line_length'?
> =20
> Looks like it might be - adding 'video=3D1024x768-32@60' to the kernel =
command line means that the psplash screen shows.
> =20
> Chris Tapp
> =20
> opensource@keylevel.com
> www.keylevel.com
> =20

Chris Tapp

opensource@keylevel.com
www.keylevel.com




--Apple-Mail=_D3428179-B1E0-4053-AF68-45A5E91B7C1E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><base href=3D"x-msg://2189/"></head><body style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space; "><br><div><div>On 19 Jun 2013, at 03:53, Haw, Foo =
Chien wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><span class=3D"Apple-style-span" style=3D"border-collapse: =
separate; font-family: Helvetica; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; line-height: =
normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: =
0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div =
lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div class=3D"WordSection1" =
style=3D"page: WordSection1; "><div style=3D"margin-top: 0in; =
margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; font-size: =
10.5pt; font-family: Consolas; ">Hi Chris,<o:p></o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
"><o:p>&nbsp;</o:p></div><div style=3D"margin-top: 0in; margin-right: =
0in; margin-left: 0in; margin-bottom: 0.0001pt; font-size: 10.5pt; =
font-family: Consolas; ">Did you manage to get the psplash screen show =
after adding the kernel =
argument?</div></div></div></span></blockquote><div><br></div><div>Yes, =
that seems to have fixed it. Though I'm not sure why =
;-)</div><br><blockquote type=3D"cite"><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; font-family: Helvetica; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-align: -webkit-auto; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; =
-webkit-border-vertical-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div =
lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div class=3D"WordSection1" =
style=3D"page: WordSection1; "><div style=3D"margin-top: 0in; =
margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; font-size: =
10.5pt; font-family: Consolas; "><o:p></o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
"><br>Regards,<o:p></o:p></div><div style=3D"margin-top: 0in; =
margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; font-size: =
10.5pt; font-family: Consolas; ">FC<o:p></o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
"><o:p>&nbsp;</o:p></div><div style=3D"margin-top: 0in; margin-right: =
0in; margin-left: 0in; margin-bottom: 0.0001pt; font-size: 10.5pt; =
font-family: Consolas; ">-----Original Message-----<o:p></o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
">Date: Sun, 16 Jun 2013 23:31:53 +0100<o:p></o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
">From: Chris Tapp &lt;<a href=3D"mailto:opensource@keylevel.com" =
style=3D"color: blue; text-decoration: underline; =
">opensource@keylevel.com</a>&gt;<o:p></o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; ">To: =
Yocto Discussion Mailing List &lt;<a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: blue; =
text-decoration: underline; =
">yocto@yoctoproject.org</a>&gt;<o:p></o:p></div><div style=3D"margin-top:=
 0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; =
font-size: 10.5pt; font-family: Consolas; ">Subject: Re: [yocto] =
Danny/Cedartrail psplash not showing<o:p></o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
">Message-ID: &lt;<a =
href=3D"mailto:FDC7C43E-3F3D-43B1-A2FA-D113A2D8D1D5@keylevel.com" =
style=3D"color: blue; text-decoration: underline; =
">FDC7C43E-3F3D-43B1-A2FA-D113A2D8D1D5@keylevel.com</a>&gt;<o:p></o:p></di=
v><div style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
">Content-Type: text/plain; charset=3Dus-ascii<o:p></o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
"><o:p>&nbsp;</o:p></div><div style=3D"margin-top: 0in; margin-right: =
0in; margin-left: 0in; margin-bottom: 0.0001pt; font-size: 10.5pt; =
font-family: Consolas; "><o:p>&nbsp;</o:p></div><div style=3D"margin-top: =
0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; =
font-size: 10.5pt; font-family: Consolas; ">On 16 Jun 2013, at 22:51, =
Chris Tapp wrote:<o:p></o:p></div><div style=3D"margin-top: 0in; =
margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; font-size: =
10.5pt; font-family: Consolas; "><o:p>&nbsp;</o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
">&gt; I've got a custom Cedartrail image which works great, but I can't =
get the psplash screen to show on boot.<o:p></o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
">&gt;<o:p></o:p></div><div style=3D"margin-top: 0in; margin-right: 0in; =
margin-left: 0in; margin-bottom: 0.0001pt; font-size: 10.5pt; =
font-family: Consolas; ">&gt; I see a message like "cannot mmap =
framebuffer" scroll up the screen, but this isn't in the message log so =
I don't get the full context.<o:p></o:p></div><div style=3D"margin-top: =
0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; =
font-size: 10.5pt; font-family: Consolas; ">&gt;<o:p></o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
">&gt; I've tried looking at the code for pspash-fb.c, but there aren't =
a lot of clues (for me!). Is this something to do with the pixel format, =
as hinted at by the comment referring to =
'line_length'?<o:p></o:p></div><div style=3D"margin-top: 0in; =
margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; font-size: =
10.5pt; font-family: Consolas; "><o:p>&nbsp;</o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
">Looks like it might be - adding 'video=3D1024x768-32@60' to the kernel =
command line means that the psplash screen shows.<o:p></o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
"><o:p>&nbsp;</o:p></div><div style=3D"margin-top: 0in; margin-right: =
0in; margin-left: 0in; margin-bottom: 0.0001pt; font-size: 10.5pt; =
font-family: Consolas; ">Chris Tapp<o:p></o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 10.5pt; font-family: Consolas; =
"><o:p>&nbsp;</o:p></div><div style=3D"margin-top: 0in; margin-right: =
0in; margin-left: 0in; margin-bottom: 0.0001pt; font-size: 10.5pt; =
font-family: Consolas; "><a href=3D"mailto:opensource@keylevel.com" =
style=3D"color: blue; text-decoration: underline; =
">opensource@keylevel.com</a><o:p></o:p></div><div style=3D"margin-top: =
0in; margin-right: 0in; margin-left: 0in; margin-bottom: 0.0001pt; =
font-size: 10.5pt; font-family: Consolas; "><a =
href=3D"http://www.keylevel.com" style=3D"color: blue; text-decoration: =
underline; ">www.keylevel.com</a><o:p></o:p></div><div =
style=3D"margin-top: 0in; margin-right: 0in; margin-left: 0in; =
margin-bottom: 0.0001pt; font-size: 11pt; font-family: Calibri, =
sans-serif; =
"><o:p>&nbsp;</o:p></div></div></div></span></blockquote></div><br><div =
apple-content-edited=3D"true">
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: Helvetica; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: =
0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div>Chris =
Tapp</div><div><br></div><div><a =
href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><=
div><a =
href=3D"http://www.keylevel.com">www.keylevel.com</a></div><div><br></div>=
</span><br class=3D"Apple-interchange-newline">
</div>
<br></body></html>=

--Apple-Mail=_D3428179-B1E0-4053-AF68-45A5E91B7C1E--
