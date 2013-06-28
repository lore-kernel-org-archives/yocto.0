Return-Path: <peachj@lexmark.com>
Received: from exprod8og109.obsmtp.com (exprod8og109.obsmtp.com [64.18.3.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BECA9E01409
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 09:04:00 -0700 (PDT)
Received: from mail-ob0-f173.google.com ([209.85.214.173]) (using TLSv1) by
	exprod8ob109.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUc2z7wzzLRaKTl0bMXnYeML5T8JyUeHn@postini.com;
	Fri, 28 Jun 2013 09:04:01 PDT
Received: by mail-ob0-f173.google.com with SMTP id wc20so2099125obb.4
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 09:03:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=gMnJ6FkGlUWxjBlSHrhSO+RkjXtXDpWbnxOhW7sP4co=;
	b=AVxna6tQ6mV/lWqd0qAbIZ7BZl5RBUX4OtNQQj8HPGOXfj8hFx/M+uw1kGmMeMjwdH
	SxgXBjYNcdl5HSZhqdu/hBS996ijDfA6eIbW5W8c6uplRl5wvnFxk4wPeQQyJShzf2B6
	g3NmYakWKGYGUolUWirQAPqAolpV+0s+L/RfglJEHgH51iQpkICqK1HGh1CYGifDLb35
	JuDgJJzyJy4JLriqJElAJg+kFmtPFKHOpTkgv/GIW5LxsoGfInOGyQ9A7Y6OZdLfm4Jo
	1fNH4C6ufEp9nPMcPMLnmTNvE1Vto2n+JQiRnD8YPrxHFOW7l/F104IE3RwW3Nzz9o0P
	k5WQ==
X-Received: by 10.60.133.44 with SMTP id oz12mr5408234oeb.62.1372435439343;
	Fri, 28 Jun 2013 09:03:59 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.60.133.44 with SMTP id oz12mr5408231oeb.62.1372435439222;
	Fri, 28 Jun 2013 09:03:59 -0700 (PDT)
Received: by 10.76.163.70 with HTTP; Fri, 28 Jun 2013 09:03:59 -0700 (PDT)
In-Reply-To: <CA+QkY1DcvuDrPQw58i0aQA8T=Gcp-5OQRVV2oRhFjQcmpm5yvw@mail.gmail.com>
References: <CADWvZ3Fm1qdCSmrC4OKH49EJT5_4T-OfsSSwhfZ6J70jYCg-sA@mail.gmail.com>
	<CA+QkY1DcvuDrPQw58i0aQA8T=Gcp-5OQRVV2oRhFjQcmpm5yvw@mail.gmail.com>
Date: Fri, 28 Jun 2013 12:03:59 -0400
Message-ID: <CA+QkY1A+fD8Uoq5qiA5or=yNW0SxoAp8732YQef_USoHVVuDTA@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: Ramkumar Sankar Singh <ramsingh@lexmark.com>
X-Gm-Message-State: ALoCoQn63TMLNqH1HFO5KCGQvvl1Ig9MIOD8MqB9RdugOH86iIJGZiKTGlmL+8Fq2jw3RAhvZZ+0iuuw+Pay2D1Mt8aCWztAT8xD+xmaFTO+cnpTm5mhTLK+bODHC8Rqy2aqodFYZGzmALQs130WgYU22uc14Ev5hN0BmIwQm8gOhJ/O+zDXmcc=
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Yocto failed to build
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
X-List-Received-Date: Fri, 28 Jun 2013 16:04:02 -0000
Content-Type: multipart/alternative; boundary=047d7b4728b4d512e204e0390612

--047d7b4728b4d512e204e0390612
Content-Type: text/plain; charset=ISO-8859-1

Aha.  And apparently there was a typo in the README that lead you down the
wrong path.  Looks like it just got fixed.

(Btw I meant to leave the response on-list last time, so I'm bringing this
back on-list.)


On Fri, Jun 28, 2013 at 11:42 AM, Jerrod Peach <peachj@lexmark.com> wrote:

> Ram,
>
> Looks like the fatal error is this:
>
> *DISTRO 'mf43' not found. Please set a valid DISTRO in your local.conf*
>
> That makes sense, because you probably meant to configure-workspace sim-mf
> *p*43 and not sim-mf43.  Try re-running configure-workspace with the
> correct distro and see if that gets you farther.
>
> Kind regards,
>
> Jerrod
>
>
> On Fri, Jun 28, 2013 at 11:18 AM, Ramkumar Sankar Singh <
> ramsingh@lexmark.com> wrote:
>
>> Hi,
>>     I am trying to follow the README instruction provided in build-bundle
>> and I have encountered the following error in the process, can anyone
>> please let me know what I am doing wrong.
>>
>> *step followed:*
>>
>>
>>    - git clone ssh://git@git.lpdev.prtdev.lexmark.com/build-bundle
>>    - [git pull --rebase]
>>    - git submodule update --init
>>    - source init-build-env
>>    - configure-workspace sim-mf43
>>    - bitbake core-image-highlevel
>>
>>
>> Pseudo is not present but is required, building this first before the
>> main build
>> ERROR:  OE-core's config sanity checker detected a potential
>> misconfiguration.
>>     Either fix the cause of this error or at your own risk disable the
>> checker (see sanity.conf).
>>     Following is the list of potential problems / advisories:
>>
>>     Your version of bblayers.conf was generated from an older/newer
>> version of bblayers.conf.sample and there have been updates made to this
>> file. Please compare the two files and merge any changes before continuing.
>> Matching the version numbers will remove this message.
>> "meld conf/bblayers.conf
>> /bonus/scratch/ramsingh/yocto/build-bundle/poky/meta*/conf/bblayers.conf.sample"
>> is a good way to visualise the changes.
>> DISTRO 'mf43' not found. Please set a valid DISTRO in your local.conf
>>
>> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
>>
>>
>> workspace at:
>> chief::/bonus/scratch/ramsingh/yocto/build-bundle/
>>
>> Thanks
>> Ramkumar Singh
>> *-*
>>
>> _______________________________________________
>> Yocto mailing list
>> Yocto@lpdev.prtdev.lexmark.com
>> http://mail.lpdev.prtdev.lexmark.com/mailman/listinfo/yocto
>>
>>
>

--047d7b4728b4d512e204e0390612
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Aha. =A0And apparently there was a typo in the README that=
 lead you down the wrong path. =A0Looks like it just got fixed.<div><br></d=
iv><div>(Btw I meant to leave the response on-list last time, so I&#39;m br=
inging this back on-list.)</div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Jun 2=
8, 2013 at 11:42 AM, Jerrod Peach <span dir=3D"ltr">&lt;<a href=3D"mailto:p=
eachj@lexmark.com" target=3D"_blank">peachj@lexmark.com</a>&gt;</span> wrot=
e:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Ram,</div><div><br></d=
iv>Looks like the fatal error is this:<div class=3D"im"><div><br></div><div=
><span style=3D"font-family:verdana,sans-serif;font-size:13px"><i>DISTRO &#=
39;mf43&#39; not found. Please set a valid DISTRO in your local.conf</i></s=
pan><br>

</div><div><br></div></div><div><font face=3D"verdana, sans-serif">That mak=
es sense, because you probably meant to configure-workspace sim-mf<b>p</b>4=
3 and not sim-mf43. =A0Try re-running configure-workspace with the correct =
distro and see if that gets you farther.</font></div>

<div><font face=3D"verdana, sans-serif"><br></font></div><div><font face=3D=
"verdana, sans-serif">Kind regards,</font></div><div><font face=3D"verdana,=
 sans-serif"><br></font></div><div><font face=3D"verdana, sans-serif">Jerro=
d</font></div>

</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote"><div><d=
iv class=3D"h5">On Fri, Jun 28, 2013 at 11:18 AM, Ramkumar Sankar Singh <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:ramsingh@lexmark.com" target=3D"_blank=
">ramsingh@lexmark.com</a>&gt;</span> wrote:<br>

</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><div dir=
=3D"ltr"><div style=3D"font-family:verdana,sans-serif;font-size:small">Hi,=
=A0</div>
<div style=3D"font-family:verdana,sans-serif;font-size:small">
=A0 =A0 I am trying to follow the README instruction provided in build-bund=
le and I have encountered the following error in the process, can anyone pl=
ease let me know what I am doing wrong.</div>
<div style=3D"font-family:verdana,sans-serif;font-size:small"><br></div><di=
v style=3D"font-family:verdana,sans-serif;font-size:small"><b>step followed=
:</b></div><div style=3D"font-family:verdana,sans-serif;font-size:small">

<br></div><div><ul style=3D"margin-top:0px"><li style=3D"line-height:20.468=
75px;font-size:14px;background-color:transparent;font-family:arial,verdana,=
sans-serif">git clone ssh://<a href=3D"http://git@git.lpdev.prtdev.lexmark.=
com/build-bundle" target=3D"_blank">git@git.lpdev.prtdev.lexmark.com/build-=
bundle</a></li>


<li style=3D"line-height:20.46875px;font-size:14px;background-color:transpa=
rent;font-family:arial,verdana,sans-serif">[git pull --rebase]</li><li styl=
e=3D"line-height:20.46875px;font-size:14px;background-color:transparent;fon=
t-family:arial,verdana,sans-serif">


git submodule update --init</li><li style=3D"line-height:20.46875px;font-si=
ze:14px;background-color:transparent;font-family:arial,verdana,sans-serif">=
source init-build-env</li><li style=3D"background-color:transparent">
<font color=3D"#000000" face=3D"arial, verdana, sans-serif"><span style=3D"=
font-size:14px;line-height:20.46875px">configure-workspace sim-mf43</span><=
/font><br></li><li style=3D"line-height:20.46875px;font-size:14px;backgroun=
d-color:transparent;font-family:arial,verdana,sans-serif">


bitbake=A0core-image-highlevel</li></ul></div><div style=3D"font-family:ver=
dana,sans-serif;font-size:small"><br></div><div><div><font face=3D"verdana,=
 sans-serif">Pseudo is not present but is required, building this first bef=
ore the main build</font></div>


<div><font face=3D"verdana, sans-serif">ERROR: =A0OE-core&#39;s config sani=
ty checker detected a potential misconfiguration.</font></div><div><font fa=
ce=3D"verdana, sans-serif">=A0 =A0 Either fix the cause of this error or at=
 your own risk disable the checker (see sanity.conf).</font></div>


<div><font face=3D"verdana, sans-serif">=A0 =A0 Following is the list of po=
tential problems / advisories:</font></div><div><font face=3D"verdana, sans=
-serif"><br></font></div><div>

<font face=3D"verdana, sans-serif">=A0 =A0 Your version of bblayers.conf wa=
s generated from an older/newer version of bblayers.conf.sample and there h=
ave been updates made to this file. Please compare the two files and merge =
any changes before continuing.</font></div>


<div><font face=3D"verdana, sans-serif">Matching the version numbers will r=
emove this message.</font></div><div><font face=3D"verdana, sans-serif">&qu=
ot;meld conf/bblayers.conf /bonus/scratch/ramsingh/yocto/build-bundle/poky/=
meta*/conf/bblayers.conf.sample&quot; is a good way to visualise the change=
s.</font></div>


<div><font face=3D"verdana, sans-serif">DISTRO &#39;mf43&#39; not found. Pl=
ease set a valid DISTRO in your local.conf</font></div><div><font face=3D"v=
erdana, sans-serif"><br></font></div>

<div><font face=3D"verdana, sans-serif">ERROR: Execution of event handler &=
#39;check_sanity_eventhandler&#39; failed</font></div><div><font face=3D"ve=
rdana, sans-serif"><br></font></div>

<div><font face=3D"verdana, sans-serif"><br></font></div><div><font face=3D=
"verdana, sans-serif">workspace at:=A0</font></div><div><font face=3D"verda=
na, sans-serif">chief::/bonus/scratch/ramsingh/yocto/build-bundle/</font></=
div>


<div><font face=3D"verdana, sans-serif"><br></font></div><div style=3D"font=
-family:verdana,sans-serif;font-size:small">Thanks</div></div><div><span st=
yle=3D"font-family:verdana,sans-serif"><font color=3D"#333333"><div>

Ramkumar Singh</div></font></span><div><span style=3D"font-family:verdana,s=
ans-serif"><b><font color=3D"#333333">-</font></b></span></div></div>
</div>
<br></div></div>_______________________________________________<br>
Yocto mailing list<br>
<a href=3D"mailto:Yocto@lpdev.prtdev.lexmark.com" target=3D"_blank">Yocto@l=
pdev.prtdev.lexmark.com</a><br>
<a href=3D"http://mail.lpdev.prtdev.lexmark.com/mailman/listinfo/yocto" tar=
get=3D"_blank">http://mail.lpdev.prtdev.lexmark.com/mailman/listinfo/yocto<=
/a><br>
<br></blockquote></div><br></div>
</blockquote></div><br></div></div>

--047d7b4728b4d512e204e0390612--
