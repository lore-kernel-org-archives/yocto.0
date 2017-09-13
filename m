Return-Path: <aaron.schwartz@logicsupply.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EF55E00C2B; Wed, 13 Sep 2017 04:24:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1F25E00BE8
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 04:24:43 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id z73so40833511oia.2
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 04:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=logicsupply.com; s=google-lscom;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qHvXAZ/GxXzJa7ZDYiIcMocX0mzmyCNRISuWZlbGNfU=;
	b=IHIfJilNOXD5lYf3W3XJSxugNuRrhnfFDeRIRBX6n2KWGwdqg2SGs3tazheZOZo/cM
	iSbGGDmlv50jjBMSvQLEfm13NKckR47vxqQSbYYGELjEY1V2a2tRjydErzWvK1BaDNWR
	KQeXV69uwmWCTmlZN9ODsmLfb1BudHywT2eCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qHvXAZ/GxXzJa7ZDYiIcMocX0mzmyCNRISuWZlbGNfU=;
	b=QgnRfpkbM8jmWRo61d36MJLBRJxJN4V/oYmJwJjojq424doSGTvzaodYVRjk4DeKRf
	sIRb8M0b0U05CBGcoDPk1RLG60NwoCeOmh2xaz8C6KEsLqqnNn8ZKzFJFGCYcLywpUpS
	UiPSzXO1TG524aQeVBOt4cHbBUQ/YskGWZ8sPnh5E4V6WDEQb35JBuen8De9hnodMz5R
	ipEGmgPD1k5GLe9F0vdHjmxhYAEDT86mrXBD+v2I5j5VK9gBFE5UiTLfWIsqvdH2iaP/
	EpcWZ/tLni22sWJCyiQN0+QVobA3w+kO9Q0prQe98MO8UPEjD1ml51CmdQH7J63Aegrx
	zX4w==
X-Gm-Message-State: AHPjjUiXKbaM/TypnRGa/g5//UxI+ptA5aSflsqBYPuCgjzRp1xDfaue
	XVQ7yJOCbuEArUVYDLyMQcm7Wq+5PCaizIicn3ZKtw==
X-Google-Smtp-Source: AOwi7QCk81fKCMzuwNOydxGS3SS2QgyYB9HHu+Tj7xLup0Dz+5/FEKFz3g+Fau/C35LVz9JICjv/a7BJl6X+NphVVIY=
X-Received: by 10.202.78.207 with SMTP id c198mr18963383oib.2.1505301882816;
	Wed, 13 Sep 2017 04:24:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.177.137 with HTTP; Wed, 13 Sep 2017 04:24:42 -0700 (PDT)
In-Reply-To: <CABFXn3FX6Jx=svzTv_91Hrq7E50j1+5sQYojr_6iuuT=0z4-Mg@mail.gmail.com>
References: <CABFXn3Gk6wMmARf5UMgdJpsCRDbhWOEfwZvhw96b3=-oa21C0g@mail.gmail.com>
	<CACMwXoXzB7ucvzFo1Ai4nNypb_+XMfVk0R+cB4oxSuHsV8jBOQ@mail.gmail.com>
	<CABFXn3FX6Jx=svzTv_91Hrq7E50j1+5sQYojr_6iuuT=0z4-Mg@mail.gmail.com>
From: Aaron Schwartz <aaron.schwartz@logicsupply.com>
Date: Wed, 13 Sep 2017 07:24:42 -0400
Message-ID: <CAP3gWc_i72Nnb7FWUdaRYufOn-uMVvpUcVEF686ObH1ZSH7dQg@mail.gmail.com>
To: yahia farghaly <yahiafarghaly@gmail.com>
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
X-List-Received-Date: Wed, 13 Sep 2017 11:24:45 -0000
Content-Type: multipart/alternative; boundary="001a11c16f18016bbd05591068fd"

--001a11c16f18016bbd05591068fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Tmux [0] also works well for this, and I've never tried it with Screen (a
similar utility) so here's instructions using Tmux:

You need to install Tmux on the server you are using SSH to connect to,
then as soon as you SSH into the server run `$ tmux`.  Then when you run `$
bitbake -c menuconfig ...` it will automatically open a second pane on the
bottom half of your screen where you can edit your kernel config.  That
pane will close automatically when you exit the menuconfig application.

I hope that helps!
Aaron


0)  https://github.com/tmux/tmux/wiki

On Wed, Sep 13, 2017 at 7:17 AM, yahia farghaly <yahiafarghaly@gmail.com>
wrote:

>
> can you give some steps on how to do this ?
>
>
> =E2=80=8C
>
> On 13 September 2017 at 10:54, Yusuke Mitsuki <
> mickey.happygolucky@gmail.com> wrote:
>
>> Hello
>>
>> You can use screen.
>> If your host is ubuntu,you can get via apt as follows.
>>
>> sudo apt install screen.
>>
>> If necessary , you can set auto or screen to OE_TERMINAL environment.
>>
>> 2017/09/13 16:09 "yahia farghaly" <yahiafarghaly@gmail.com>:
>>
>>> Hi,
>>>
>>> I am working with yocto from a remote server using ssh. i want to
>>> execute *bitbake -c menuconfig virtual/kernel*  . It fails to open
>>> since it tries to open another shell.
>>> how can i redirect output of menuconfig to my current ssh session ?
>>>
>>> --
>>> Yahia Farghaly
>>> Graduated from Faculty of Engineering - Electronics and Communications
>>> Department at Cairo University.
>>> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
>>> <https://github.com/yahiafarghaly>
>>>
>>>
>>>
>>> =E2=80=8C
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>
>
> --
> Yahia Farghaly
> Graduated from Faculty of Engineering - Electronics and Communications
> Department at Cairo University.
> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
> <https://github.com/yahiafarghaly>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20

Aaron Schwartz
Production
Logic Supply
Direct: +1 802 861 2300 Ext. 530
Main: +1 802 861 2300
www.logicsupply.com

Google+ <https://plus.google.com/+Logicsupply/posts> | Twitter
<https://twitter.com/logicsupply> | LinkedIn
<https://www.linkedin.com/company/logic-supply> | YouTube
<https://www.youtube.com/user/logicsupply>

--001a11c16f18016bbd05591068fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Tmux [0] also works well for this, and I&#39;ve never trie=
d it with Screen (a similar utility) so here&#39;s instructions using Tmux:=
<div><br></div><div>You need to install Tmux on the server you are using SS=
H to connect to, then as soon as you SSH into the server run `$ tmux`.=C2=
=A0 Then when you run `$ bitbake -c menuconfig ...` it will automatically o=
pen a second pane on the bottom half of your screen where you can edit your=
 kernel config.=C2=A0 That pane will close automatically when you exit the =
menuconfig application.</div><div><br></div><div>I hope that helps!</div><d=
iv>Aaron</div><div><br></div><div><br></div><div>0) =C2=A0<a href=3D"https:=
//github.com/tmux/tmux/wiki">https://github.com/tmux/tmux/wiki</a></div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Sep 13=
, 2017 at 7:17 AM, yahia farghaly <span dir=3D"ltr">&lt;<a href=3D"mailto:y=
ahiafarghaly@gmail.com" target=3D"_blank">yahiafarghaly@gmail.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><img width=
=3D"0" height=3D"0" class=3D"m_1069744531378264667mailtrack-img" alt=3D"" s=
tyle=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/0f18fd3d39cc8a=
b3c2e8847050fcd8cc3eaf8672.png?u=3D1822760"><br>can you give some steps on =
how to do this ?<br><br><br>=E2=80=8C</div><div class=3D"HOEnZb"><div class=
=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 13 Sep=
tember 2017 at 10:54, Yusuke Mitsuki <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:mickey.happygolucky@gmail.com" target=3D"_blank">mickey.happygolucky@gmai=
l.com</a><wbr>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"auto">Hello<div dir=3D"auto"><br></div><div dir=3D"auto">You can use sc=
reen.</div><div dir=3D"auto">If your host is ubuntu,you can get via apt as =
follows.</div><div dir=3D"auto"><br></div><div dir=3D"auto">sudo apt instal=
l screen.</div><div dir=3D"auto"><br></div><div dir=3D"auto">If necessary ,=
 you can set auto or screen to OE_TERMINAL environment.=C2=A0</div></div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017/09/13 16:09 &q=
uot;yahia farghaly&quot; &lt;<a href=3D"mailto:yahiafarghaly@gmail.com" tar=
get=3D"_blank">yahiafarghaly@gmail.com</a>&gt;:<br type=3D"attribution"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div><div class=3D"m_1069744531378264667h5"><di=
v dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"m_1069744531378264667m=
_-8225368252987829729m_5784155018240313917mailtrack-img" alt=3D"" style=3D"=
display:flex"><div><div>Hi,</div><div><br></div><div>I am working with yoct=
o from a remote server using ssh. i want to execute <i>bitbake -c menuconfi=
g virtual/kernel</i>=C2=A0 . It fails to open since it tries to open anothe=
r shell.=C2=A0</div><div>how can i redirect output of menuconfig to my curr=
ent ssh session ?=C2=A0</div><div><br></div>-- <br><div class=3D"m_10697445=
31378264667m_-8225368252987829729m_5784155018240313917gmail_signature" data=
-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font=
 size=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,=
serif,EmojiFont"><span style=3D"font-size:13px">Yahia Farghaly=C2=A0</span>=
</font><span style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,=
sans-serif,serif,EmojiFont;font-size:16px"></span><div><font color=3D"#7777=
77" face=3D"Tahoma, sans-serif, Arial, serif, EmojiFont"><span style=3D"fon=
t-size:13px">Graduated from Faculty of Engineering - Electronics and Commun=
ications Department at Cairo University.</span></font><br></div><div style=
=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,E=
mojiFont;font-size:16px"><div><a href=3D"https://linkedin.com/in/yahiafargh=
aly" rel=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=
=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"fon=
t-size:13px">Linkedin</span></font></a><font size=3D"1" color=3D"#777777" s=
tyle=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D=
"font-size:13px">=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/y=
ahiafarghaly" rel=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1=
" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=
=3D"font-size:13px">GitHub</span></font></a></div></div></div></div></div><=
/div>
<br><br><br></div>=E2=80=8C</div>
<br></div></div><span class=3D"m_1069744531378264667HOEnZb"><font color=3D"=
#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"m_1069744531378264667gmail_signature" data-smartmail=3D"gmail_signature=
"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=3D"1" color=3D"#777777"=
 style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=
=3D"font-size:13px">Yahia Farghaly=C2=A0</span></font><span style=3D"color:=
rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;f=
ont-size:16px"></span><div><font color=3D"#777777" face=3D"Tahoma, sans-ser=
if, Arial, serif, EmojiFont"><span style=3D"font-size:13px">Graduated from =
Faculty of Engineering - Electronics and Communications Department at Cairo=
 University.</span></font><br></div><div style=3D"color:rgb(0,0,0);font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><div=
><a href=3D"https://linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferr=
er" target=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-ser=
if,Arial,serif,EmojiFont"><span style=3D"font-size:13px">Linkedin</span></f=
ont></a><font size=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans=
-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0<=
/span></font><a href=3D"https://github.com/yahiafarghaly" rel=3D"noopener n=
oreferrer" target=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,s=
ans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">GitHub</spa=
n></font></a></div></div></div></div></div></div>
</div>
</div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><p style=3D"color=
:#4c4c4c;font-family:Arial;font-size:13px">Aaron Schwartz<br> Production<br=
> Logic Supply<br>Direct: +1 802 861 2300 Ext. 530 <br> Main:=C2=A0+1 802 8=
61 2300<br> <a href=3D"http://www.logicsupply.com" target=3D"_blank">www.lo=
gicsupply.com</a></p><p style=3D"color:#4c4c4c;font-family:Arial;font-size:=
12px"><a href=3D"https://plus.google.com/+Logicsupply/posts" target=3D"_bla=
nk">Google+</a> | <a href=3D"https://twitter.com/logicsupply" target=3D"_bl=
ank">Twitter</a> | <a href=3D"https://www.linkedin.com/company/logic-supply=
" target=3D"_blank">LinkedIn</a> | <a href=3D"https://www.youtube.com/user/=
logicsupply" target=3D"_blank">YouTube</a></p></div>
</div>

--001a11c16f18016bbd05591068fd--
