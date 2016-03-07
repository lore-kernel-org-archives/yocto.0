Return-Path: <ka6sox@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47A18E00C18; Sun,  6 Mar 2016 19:46:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ka6sox[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B248BE00BE8
	for <yocto@yoctoproject.org>; Sun,  6 Mar 2016 19:46:37 -0800 (PST)
Received: by mail-vk0-f49.google.com with SMTP id e185so104901796vkb.1
	for <yocto@yoctoproject.org>; Sun, 06 Mar 2016 19:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=Gu/9kOT/hR506G73noQWgmO+iII1hTpo9zccyL2iHsQ=;
	b=jYpFFdqyOKIACswSDoRptRNTAHGs8AQiQ0/4KMKa0xciiviG19W06LtNUV4q8A+nJW
	FRcKqMc2GK3eoqePfD4y6fsmEt1nqfuOBTUu2lytCQ/o7FtMt1rPYCDc9INdeRP6WZIR
	NXtnQcuhBaREPpHsRkDyD4jzCxfmKR/oS1yhWGfuj5Jy8cM75UhuBo6PL314WcbC+c37
	XIUB9YVvR7eqHE8WiJ4K3CekS9ysvwazDm1177P1lmAOuXScjrQT4Z9f1Nj2pt57bwEg
	Y0bK1tBptdrgPXVdoJ+LZCwKwDdSsZ4tF8wZWZbXB92Psoas7SMIUr95//o7iT94gPaV
	f17A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=Gu/9kOT/hR506G73noQWgmO+iII1hTpo9zccyL2iHsQ=;
	b=U7thPzG54aLWQbYnSzVzq5kmtmdLSPfGgrf7+5ceA6JQiIsR45sCIlh1s1bQMhHMsD
	qA7/XJ141uUSxhJnRUHqwPrFmaNkcX6HTfgIIMMLnT+rxIUDVhiIqonRnx/PBkU2t/R6
	w/i75QhtTX9sV7Wwd8L5ZE9wyVzdoSal7Y+5RETyDZZKnOxLtrCLfTL3NInypF21wF+B
	7ZqA4jNKTwqpKlcAv+iuXdDuau3y+PZmUhdGznD2kwZa2Zxj/Ks/G1YLHpLBU5I++jbf
	y4p/9nsn7mXT2lphnlK8qbMXAI9Vua1IV0b4KJruF38EB4cKXE3lEOcpQqd4o15q++vs
	3o0w==
X-Gm-Message-State: AD7BkJLSa1s5r1jbQJO9DGpXnAqDX13SL4TiFl4x01MRkXzCARtQISGbTD5aBGxVGWkytBHGaNzoH6E5u6U0jA==
MIME-Version: 1.0
X-Received: by 10.31.148.215 with SMTP id w206mr16126605vkd.65.1457322397206; 
	Sun, 06 Mar 2016 19:46:37 -0800 (PST)
Received: by 10.103.13.6 with HTTP; Sun, 6 Mar 2016 19:46:37 -0800 (PST)
In-Reply-To: <BAY181-W939D634F09A025A9C4492FAEB10@phx.gbl>
References: <BAY181-W538F4FDB696298C602C191AEB00@phx.gbl>
	<31886292-F1E6-477C-B24E-BFB9F7493942@keylevel.com>
	<BAY181-W91A65C1B02CFC15DBB4178AEB10@phx.gbl>
	<CAHQecY4-7jSjntuu-NZKfHj9F8Mfa6F_k++qntGSmPuCEAgH5w@mail.gmail.com>
	<BAY181-W939D634F09A025A9C4492FAEB10@phx.gbl>
Date: Sun, 6 Mar 2016 19:46:37 -0800
Message-ID: <CAHQecY6Org-pjFxXTqfVbODdj5TS_T+ScEcMtJ=HWmet0kQoLw@mail.gmail.com>
From: Tom King <ka6sox@gmail.com>
To: Mark Brown <mkbrown32@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Controlling Bitbake Memory usage under Windows/Virtualbox/Ubuntu platform
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
X-List-Received-Date: Mon, 07 Mar 2016 03:46:41 -0000
Content-Type: multipart/alternative; boundary=001a11425b64cf1116052d6d4f42

--001a11425b64cf1116052d6d4f42
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

multiple Ctrl-C will get bitbake to quit..

then rerun the previous bitbake command you used to start it.

On Sun, Mar 6, 2016 at 7:29 PM, Mark Brown <mkbrown32@hotmail.com> wrote:

> So what is the appropriate method (keystrokes within Term) to terminate
> Bitbake and
> then reinvoke it to achieve safely this restart functionality ?
>
>
>
> ------------------------------
> Date: Sun, 6 Mar 2016 19:21:43 -0800
> Subject: Re: [yocto] Controlling Bitbake Memory usage under
> Windows/Virtualbox/Ubuntu platform
> From: ka6sox@gmail.com
> To: mkbrown32@hotmail.com
> CC: opensource@keylevel.com; yocto@yoctoproject.org
>
>
> it starts from the beginning
>
> Parses the recipies (again)
>
> and picks up where it left off..
>
> On Sun, Mar 6, 2016 at 5:01 PM, Mark Brown <mkbrown32@hotmail.com> wrote:
>
> Again, how is the Bitbake module terminated and then re-run,
> picking up its place in the sequence of tasks where it left off ?
>
>
>
> ------------------------------
> Subject: Re: [yocto] Controlling Bitbake Memory usage under
> Windows/Virtualbox/Ubuntu platform
> From: opensource@keylevel.com
> Date: Sun, 6 Mar 2016 22:38:41 +0000
> CC: yocto@yoctoproject.org
> To: mkbrown32@hotmail.com
>
>
> On 6 Mar 2016, at 22:08, Mark Brown <mkbrown32@hotmail.com> wrote:
>
>
> I do not see anything in the Bitbake manual for controlling how much memo=
ry
> Bitbake should consider itself entitled to consume in the
> development platform within which it runs.
>
> Running it on //Windows 7 64//i7-2620M//Virtualbox//Ubuntu 14 32-bit//,
> I told Virtualbox to allow Ubuntu to use 1.5 GBytes, but Windows Task
> Manager
> indicates the whole Virtualbox/Ubuntu thread is using only 160 MBytes
> -- and is generating approximately 1,000 page faults per second.
>
>
> What memory usage does the Ubuntu VM report?
>
>  Perhaps as a result, this Gumstix Overo build has completed only 760 out
> of 3792
> total tasks in 21 hours -- at this rate it will complete in 5-6 days.
>
>
> Not used a VM to build in ages, but I used to build an image from scratch
> in about 10 hours running on a dual core Macbook Pro. The same build take=
s
> about 1 hour on an 8 thread i7 with 16GB RAM and SSDs for the build work
> area, peaking at about 10GB RAM usage with local.conf set to use 16 threa=
ds
> and 16 parallel makes (BB_NUMBER_THREADS and PARALLEL_MAKE both at 16) -
> later Yocto versions set these for you based on the number of cores
> available to the build host.
>
> Another thing to consider - if this is the first build, then you=E2=80=99=
ll be
> downloading a load of stuff from the internet. How fast is your connectio=
n?
> Subsequent builds will be much quicker as the files required will then be
> stored locally.
>
>  How does the user terminate Bitbake at its current stage, increase the
> memory it is using,
> and then restart in order to speed up this process ?
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
> ----
> You can tell you're getting older when your car insurance gets real cheap=
!
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--001a11425b64cf1116052d6d4f42
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">multiple Ctrl-C will get bitbake to quit..<div><br></div><=
div>then rerun the previous bitbake command you used to start it.</div></di=
v><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sun, Mar 6, =
2016 at 7:29 PM, Mark Brown <span dir=3D"ltr">&lt;<a href=3D"mailto:mkbrown=
32@hotmail.com" target=3D"_blank">mkbrown32@hotmail.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">


<div><div dir=3D"ltr">So what is the appropriate method (keystrokes within =
Term) to terminate Bitbake and<br>then reinvoke it to achieve safely=C2=A0t=
his restart functionality ?<br>=C2=A0<br><br>=C2=A0<br><div><hr>Date: Sun, =
6 Mar 2016 19:21:43 -0800<span class=3D""><br>Subject: Re: [yocto] Controll=
ing Bitbake Memory usage under Windows/Virtualbox/Ubuntu platform<br></span=
>From: <a href=3D"mailto:ka6sox@gmail.com" target=3D"_blank">ka6sox@gmail.c=
om</a><br>To: <a href=3D"mailto:mkbrown32@hotmail.com" target=3D"_blank">mk=
brown32@hotmail.com</a><br>CC: <a href=3D"mailto:opensource@keylevel.com" t=
arget=3D"_blank">opensource@keylevel.com</a>; <a href=3D"mailto:yocto@yocto=
project.org" target=3D"_blank">yocto@yoctoproject.org</a><div><div class=3D=
"h5"><br><br><div dir=3D"ltr">it starts from the beginning<div><br></div><d=
iv>Parses the recipies (again)</div><div><br></div><div>and picks up where =
it left off..</div></div><div><br><div>On Sun, Mar 6, 2016 at 5:01 PM, Mark=
 Brown <span dir=3D"ltr">&lt;<a href=3D"mailto:mkbrown32@hotmail.com" targe=
t=3D"_blank">mkbrown32@hotmail.com</a>&gt;</span> wrote:<br><blockquote sty=
le=3D"border-left:1px #ccc solid;padding-left:1ex">


<div><div dir=3D"ltr">Again, how is the Bitbake module terminated and then =
re-run,<br>picking up its place in=C2=A0the=C2=A0sequence of tasks where it=
 left off ?<br><div>=C2=A0<br><br>=C2=A0<br></div><div><div><hr>Subject: Re=
: [yocto] Controlling Bitbake Memory usage under Windows/Virtualbox/Ubuntu =
platform<br>From: <a href=3D"mailto:opensource@keylevel.com" target=3D"_bla=
nk">opensource@keylevel.com</a><br>Date: Sun, 6 Mar 2016 22:38:41 +0000<br>=
CC: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yocto=
project.org</a><br>To: <a href=3D"mailto:mkbrown32@hotmail.com" target=3D"_=
blank">mkbrown32@hotmail.com</a></div><div><div><br><br>On 6 Mar 2016, at 2=
2:08, Mark Brown &lt;<a href=3D"mailto:mkbrown32@hotmail.com" target=3D"_bl=
ank">mkbrown32@hotmail.com</a>&gt; wrote:<br><div><blockquote><br><div><div=
 dir=3D"ltr" style=3D"font-family:Calibri;font-size:16px;font-style:normal;=
font-variant:normal;font-weight:normal;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px"=
>I do not see anything in the Bitbake manual for controlling how much memor=
y<br>Bitbake should consider itself entitled to consume in the<span>=C2=A0<=
/span><br>development platform within which it runs.<br>=C2=A0<br>Running i=
t on //Windows 7 64//i7-2620M//Virtualbox//Ubuntu 14 32-bit//,<br>I told Vi=
rtualbox to allow Ubuntu to use 1.5 GBytes, but Windows Task Manager<br>ind=
icates the whole Virtualbox/Ubuntu thread is using only 160 MBytes<span>=C2=
=A0</span><br>--=C2=A0and is generating approximately 1,000 page faults per=
 second.<br></div></div></blockquote><div><br></div><div>What memory usage =
does the Ubuntu VM report?</div><br><blockquote><div><div dir=3D"ltr" style=
=3D"font-family:Calibri;font-size:16px;font-style:normal;font-variant:norma=
l;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px">=C2=A0Perhaps as =
a result, this Gumstix Overo build has completed only 760 out of 3792<br>to=
tal tasks in 21 hours -- at this rate it will complete in 5-6 days.<br></di=
v></div></blockquote><div><br></div><div>Not used a VM to build in ages, bu=
t I used to build an image from scratch in about 10 hours running on a dual=
 core Macbook Pro. The same build takes about 1 hour on an 8 thread i7 with=
 16GB RAM and SSDs for the build work area, peaking at about 10GB RAM usage=
 with local.conf set to use 16 threads and 16 parallel makes (BB_NUMBER_THR=
EADS and PARALLEL_MAKE both at 16) - later Yocto versions set these for you=
 based on the number of cores available to the build host.</div><div><br></=
div><div>Another thing to consider - if this is the first build, then you=
=E2=80=99ll be downloading a load of stuff from the internet. How fast is y=
our connection? Subsequent builds will be much quicker as the files require=
d will then be stored locally.</div><br><blockquote><div><div dir=3D"ltr" s=
tyle=3D"font-family:Calibri;font-size:16px;font-style:normal;font-variant:n=
ormal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px">=C2=A0How doe=
s the user terminate Bitbake at its current stage, increase the memory it i=
s using,<br>and then restart in order to speed up this process ?<br>=C2=A0<=
br></div><span style=3D"font-family:Calibri;font-size:16px;font-style:norma=
l;font-variant:normal;font-weight:normal;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;display:inline!important">--<span>=C2=A0</span></span><br style=3D"font-f=
amily:Calibri;font-size:16px;font-style:normal;font-variant:normal;font-wei=
ght:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px"><span style=3D"font-family:=
Calibri;font-size:16px;font-style:normal;font-variant:normal;font-weight:no=
rmal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;display:inline!important">________=
_______________________________________</span><br style=3D"font-family:Cali=
bri;font-size:16px;font-style:normal;font-variant:normal;font-weight:normal=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px"><span style=3D"font-family:Calibri;fo=
nt-size:16px;font-style:normal;font-variant:normal;font-weight:normal;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;display:inline!important">yocto mailing list=
</span><br style=3D"font-family:Calibri;font-size:16px;font-style:normal;fo=
nt-variant:normal;font-weight:normal;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px"><=
a href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family:Calibri;font-=
size:16px;font-style:normal;font-variant:normal;font-weight:normal;letter-s=
pacing:normal;text-align:start;text-indent:0px;text-transform:none;white-sp=
ace:normal;word-spacing:0px" target=3D"_blank">yocto@yoctoproject.org</a><b=
r style=3D"font-family:Calibri;font-size:16px;font-style:normal;font-varian=
t:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px"><a href=3D=
"https://lists.yoctoproject.org/listinfo/yocto" style=3D"font-family:Calibr=
i;font-size:16px;font-style:normal;font-variant:normal;font-weight:normal;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px" target=3D"_blank">https://lists.yoctopr=
oject.org/listinfo/yocto</a></div></blockquote></div><br><div>
<div style=3D"color:rgb(0,0,0);letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;word-wra=
p:break-word"><div style=3D"color:rgb(0,0,0);letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;word-wrap:break-word"><div style=3D"color:rgb(0,0,0);letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;word-wrap:break-word"><div style=3D"color:rgb(0,0,0);le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;word-wrap:break-word"><span style=3D"bord=
er-collapse:separate;line-height:normal;border-spacing:0px"><div style=3D"w=
ord-wrap:break-word"><div>--</div><div><br></div><div>Chris Tapp</div><div>=
<a href=3D"mailto:opensource@keylevel.com" target=3D"_blank">opensource@key=
level.com</a></div><div><a href=3D"http://www.keylevel.com" target=3D"_blan=
k">www.keylevel.com</a></div><div><br></div><div>----</div><div>You can tel=
l you&#39;re getting older when your car insurance gets real cheap!</div></=
div></span></div></div></div></div>
</div>
<br></div></div></div> 		 	   		  </div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div></div></div> 		 	   		  </div></div>
</blockquote></div><br></div>

--001a11425b64cf1116052d6d4f42--
