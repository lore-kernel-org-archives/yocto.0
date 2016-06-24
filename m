Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09727E00D09; Fri, 24 Jun 2016 05:26:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD8DDE00CE9
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 05:26:10 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id f6so12837386ith.0
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 05:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+SL1wuFhWXGaMJMEpLJV/9vWhDGdoQPd4sIaPWABirY=;
	b=mIsBJurb/tf0rxZKnCIK7gojX6P92YhKaksfeDv52agD/3c5zwHo/HYOcAznxEjUqX
	5UoOzyTtAAKW+/P34LSpSSLx5kS7JZKHK5FETodglGtY1EsXcZV8QrU60WH01OLBRxYp
	H5Y1TInsZmJLw8D9pw2OE4iICFIAFXjEa3lOamEIn9BBG4WJhJh+AL4YZFxce5XXRFQK
	8szhWXUGGvTMslA2BFRWTCXmYTUj5koXbLocQ19fmXn7q6oA0ykk2jKTAfm/QYfNQ0bD
	LLaDAjoDCwxHQzxau/WttjELzFhu0k3/VkA2ZBF3YGQ8EKJTy0emG6x2y6lCqwmtb5aV
	B3yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+SL1wuFhWXGaMJMEpLJV/9vWhDGdoQPd4sIaPWABirY=;
	b=IoetbMbYm4i8nKi9Tu7Q8BrlNhKFoetLKZhjqNqw/t0/NrnteY3cM+LwPSYP1EcarN
	DXIGTzwMxWb+Esd68d9ZzspL9krJgmv40TvOt7ys3vNC+BXMGmXBmGUvyU/ToHlGKHaX
	OvPxDAXDlcvk7u5WvKQoZZiLfcLpxxbBeXWNi6YOs9Q7k6vQi6zYn8lIPd4lLkwUtBQH
	TiyQD9zEi+PLp3ej2iTqUqXUE1GkmJ1uW0dljLTGZ0pAv+lRNg4b2jPEWoA7/asKsOBl
	8TglO0KeRBwf6L+ll/+5o9QVQkS1pOJlQchpHD2WCxuSOwufPQIVy2/AGez1bNJD+CuT
	hl8Q==
X-Gm-Message-State: ALyK8tIrp7DqJWFf8byk/tzyEl+2Nsccbib4/JQFpaxy2G3ub8r9g2nQh6nvKF4MqqNNNxcxXWhwmvblL8zkvTMd
X-Received: by 10.36.48.80 with SMTP id q77mr5481563itq.83.1466771170500; Fri,
	24 Jun 2016 05:26:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 24 Jun 2016 05:25:51 -0700 (PDT)
In-Reply-To: <b57493dfacad490388b9bd3600179e65@HIBDWSMB02.ad.harman.com>
References: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
	<CAJTo0LYiA-mxZUuK8bOx64tFMvPmvRBBzExcQNfxsc5q6JvxMw@mail.gmail.com>
	<b57493dfacad490388b9bd3600179e65@HIBDWSMB02.ad.harman.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 Jun 2016 13:25:51 +0100
Message-ID: <CAJTo0Lbu3O3Qqo2be_t4=pXr-B=q=J-diKNm-ZuJsbW0C=0wpQ@mail.gmail.com>
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setcap using recipe
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
X-List-Received-Date: Fri, 24 Jun 2016 12:26:13 -0000
Content-Type: multipart/alternative; boundary=001a11c007d895b7820536054686

--001a11c007d895b7820536054686
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

What version of OE/Yocto are you using?  Old versions of pseudo didn't
support xattrs at all.

Ross

On 24 June 2016 at 13:23, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrote:

> Thanks Ross for your quick turn around , I am getting below error
>
>
>
> =E2=80=9CUnable le to set CAP_SETFCAP effective capability: Operation not
> permitted.=E2=80=9D
>
>
>
> But when I use    # *sudo* setcap cap_net_raw+ep  helloworld        on
> command line I am able to set the cap.
>
>
>
> To achieve the sudo realization  in recipe , I tried  as below , but no
> luck=E2=80=A6=E2=80=A6 Can you suggest something here  ?
>
>
>
> fakeroot do_install() {
>
>                     install -d ${D}${bindir}
>
>                     install -m 0755 helloworld ${D}${bindir}
>
>                     install -d ${D}/lib/systemd/system
>
>                     install -m 0755 hello.service ${D}/lib/systemd/system=
/
>
>              setcap cap_net_raw+ep  ${D}${bindir}/helloworld
>
>
>
> }
>
>
>
> Thanks and Regards
>
> Shrawan
>
>
>
> *From:* Burton, Ross [mailto:ross.burton@intel.com]
> *Sent:* Friday, June 24, 2016 5:09 PM
> *To:* Kumar, Shrawan
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] setcap using recipe
>
>
>
> Hi,
>
>
>
> On 24 June 2016 at 11:41, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrote=
:
>
> Is there a way to  add a capability to a binary (cap_net_raw+ep),into a
> recipe?
>
>
>
> Example :
>
> do_install() {
>
>            install -d ${D}${bindir}
>
>            install -m 0755 helloworld ${D}${bindir}
>
>            install -d ${D}/lib/systemd/system
>
>            install -m 0755 hello.service ${D}/lib/systemd/system/
>
>            setcap cap_net_raw+ep  ${D}${bindir}/helloworld
>
> }
>
>
>
> If yes is this correct approach to achieve the same from  package recipe
> itself ?
>
>
> capabilities on files are just extended attributes, so assuming that you
> have a fairly recent Yocto and your host and target filesystems support
> extended attributes, yes this should work.
>
>
>
> Ross
>

--001a11c007d895b7820536054686
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What version of OE/Yocto are you using?=C2=A0 Old versions=
 of pseudo didn&#39;t support xattrs at all.<div><br></div><div>Ross</div><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 24 June 2=
016 at 13:23, Kumar, Shrawan <span dir=3D"ltr">&lt;<a href=3D"mailto:Shrawa=
n.Kumar@harman.com" target=3D"_blank">Shrawan.Kumar@harman.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks Ross for your quic=
k turn around , I am getting below error
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=E2=80=9CUnable le to set=
 CAP_SETFCAP effective capability: Operation not permitted.=E2=80=9D<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">But when I use=C2=A0=C2=
=A0=C2=A0 #
<b>sudo</b> setcap cap_net_raw+ep =C2=A0helloworld =C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0on command line I am able to set the cap.<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">To achieve the sudo reali=
zation =C2=A0in recipe , I tried =C2=A0as below , but no luck=E2=80=A6=E2=
=80=A6 Can you suggest something here=C2=A0 ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">fakeroot do_install() {<u=
></u><u></u></span></p><span class=3D"">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0=C2=A0 install -d ${D}${bindir}<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0=C2=A0 install -m 0755 helloworld ${D}${bindir}<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0=C2=A0 install -d ${D}/lib/systemd/system<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0=C2=A0 install -m 0755 hello.service ${D}/lib/systemd/system/<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 setcap cap_net_raw+ep=C2=
=A0 ${D}${bindir}/helloworld<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">}<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
</span><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks and Regards=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Shrawan<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Burton, =
Ross [mailto:<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ros=
s.burton@intel.com</a>]
<br>
<b>Sent:</b> Friday, June 24, 2016 5:09 PM<br>
<b>To:</b> Kumar, Shrawan<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] setcap using recipe<u></u><u></u></span></p>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On 24 June 2016 at 11:41, Kumar, Shrawan &lt;<a href=
=3D"mailto:Shrawan.Kumar@harman.com" target=3D"_blank">Shrawan.Kumar@harman=
.com</a>&gt; wrote:<u></u><u></u></p>
<p>Is there a way to =C2=A0add a capability to a binary (cap_net_raw+ep),in=
to a recipe?
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p>Example :<u></u><u></u></p>
<p>do_install() {<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}$=
{bindir}<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 install -m 0755 =
helloworld ${D}${bindir}<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}/=
lib/systemd/system<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 install -m 0755 =
hello.service ${D}/lib/systemd/system/<u></u><u></u></p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0setcap cap_=
net_raw+ep=C2=A0 ${D}${bindir}/helloworld=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <u></u><u></u></p>
<p>}<u></u><u></u></p>
<p>=C2=A0<u></u><u></u></p>
<p>If yes is this correct approach to achieve the same from=C2=A0 package r=
ecipe itself ?<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><br>
capabilities on files are just extended attributes, so assuming that you ha=
ve a fairly recent Yocto and your host and target filesystems support exten=
ded attributes, yes this should work.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Ross<u></u><u></u></p>
</div>
</div>
</div></div></div>
</div>

</blockquote></div><br></div>

--001a11c007d895b7820536054686--
