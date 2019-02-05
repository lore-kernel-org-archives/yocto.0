Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0BBFE00BAF; Tue,  5 Feb 2019 10:12:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F1B8E00B81
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 10:12:02 -0800 (PST)
Received: by mail-ed1-f49.google.com with SMTP id x30so3714321edx.2
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 10:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OKJ2GLD0rPaVSj8c/hsZZTwWya0lrWj12cNe32NnOZI=;
	b=LXjHz28DptQLF43x+tHQVva6lH2UYo0qbVESRqRlycy3VhOhyQDY/EgqOwR3an3s8E
	asIFLdXoxyQC9tFDXD+krKVhqOP2AIzbUhOfXRg4vmO4EvvuIzFtzJKH/3m7/SXi/Xzq
	u+VUn8+hnwkfuT75hCXI3j/ifYeMlPucz7KWdWBVro98XMmAm4k8JRRzG89jBJHHJMUX
	MkvbnvlRN8vzFuUxF+wDqkf5JDHw1bYAE8RJAABFr8XapMEA6Rbj/RvMyjsZB/6NJwlw
	aDhxYTheQj4zMtb+sY/zpQKDKdPKQdtqq/pzYm1QZTbFdvvVvv5eSMOFwbPV+vx7EFn8
	XABw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OKJ2GLD0rPaVSj8c/hsZZTwWya0lrWj12cNe32NnOZI=;
	b=pExuzHDQ4J3qkdWLs969ZQvL6d4JOM5oxZeSd4LzR1g6QMoqr8XOmgRjhNQ1ZxN4XJ
	zeMleMAVLK8hY+8KD2e2BohGLjIVMH3VSt4PRrTQCJOTXEbEXcOZiAbmgKoDVI5/MUAc
	DERCUZsngWXXm68ZX8ZsxiImRvI8g2QvTivyaJBDZ3f4lDUTUStLCeN2Jj3mecrmIikX
	cBnU7oguVYwd2+s2cqBz2ug/rYKW8Q9MvARHHfQ3+rRDJYvJqUiPmDp+MdttbHYpsq8C
	gBguyY1cWQWlD3dupCVZstimyPiCdYbvnav7XKzEfK4GBPqU5nufuyqdA5p132dz3a/C
	HXbw==
X-Gm-Message-State: AHQUAubaxnriXRzEiKaDd0PPz8oKrgEQaT+Vc3VFt1Ke+cdB43dzTFgj
	6Y6kd+ESiXkRqe8qrR4Wx2M37HEXHIfDq8HQNbQ=
X-Google-Smtp-Source: AHgI3Iasq0CZ6ZIAlf8aytCOaadVmn/CkrXvctqsSJznAbCn1R5WhGOkdGqPQPcsKAObfxrqIIulXdPY67Nx7xtD8e8=
X-Received: by 2002:a17:906:452:: with SMTP id
	e18mr4434754eja.142.1549390321222; 
	Tue, 05 Feb 2019 10:12:01 -0800 (PST)
MIME-Version: 1.0
References: <052201d4bd70$eea45180$cbecf480$@gmail.com>
In-Reply-To: <052201d4bd70$eea45180$cbecf480$@gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 5 Feb 2019 10:11:50 -0800
Message-ID: <CAFNP8Otu3jLLi9OKhZbhf+hDcuvwYW-9SUtYgSNiAQwRZMyLSA@mail.gmail.com>
To: sjolley.yp.pm@gmail.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: YPTM minutes
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
X-List-Received-Date: Tue, 05 Feb 2019 18:12:03 -0000
Content-Type: multipart/alternative; boundary="000000000000b7079d0581298b6f"

--000000000000b7079d0581298b6f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 5, 2019 at 8:37 AM <sjolley.yp.pm@gmail.com> wrote:

> *Yocto Technical Team Minutes for Feb. 5, 2019.*
>
>
>
> Attendees: Armin, David, Joshua, Randy, Tim, Richard G., Stephen,
> Jan-Simon, Manjukum, Tracey, Trevor, Nick, Richard P, Mark, Kate, Michael=
,
>
>
>
> YP 2.6.1 was released on Feb. 4, 2019.
>
> YP 2.7 M2 was built and is in QA and is 79% done.  See:
> https://wiki.yoctoproject.org/wiki/2.7_QA_Status
>
>
>
> Armin agreed to add Ubuntu 18.4 to YP 2.6 series and we will use in for Y=
P
> 2.7
>
> We discussed that the YP 2.6 manual doesn=E2=80=99t have an upgrading to =
YP 2.6.
> Tracey will look into this.
>

Can I get some clarification on this.  Ubuntu 18.04 seems to be an LTS.  I
don't have "LTS" listed in the 2.6 ref-manual (
https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#detailed-suppo=
rted-distros)
but do have Ubuntu 18.04 listed as a supported distro.  What is meant by
"... the YP 2.6 manual doesn't have an upgrading to YP 2.6."?  - Thanks
Scott


>
> We discussed the status of YP 2.7 upgrades and we are doing OK there.  We
> are struggling on new features YP 2.7.  Richard is primarily working to
> stabilize the autobuilder to produce an automated QA report to allow QA t=
o
> transition from Intel.
>
>
>
> Richard discussed maintainers of OE-Core.  AUH is sending requests but no=
t
> getting feedback.
>
>
>
> Richard discussed that we have issues with some products and need support
> from the community to fix.
>
>
>
> Tim discussed ptest issues Richard has identified.
>
>
>
> Richard asked if there were ideas about how to better communicate with th=
e
> community. No specific suggestions.
>
>
>
> Thanks,
>
>
>
> *Stephen K. Jolley*
>
> *Yocto Project Project Manager*
>
> (    *Cell*:                (208) 244-4460
>
> * *Email*:              *sjolley.yp.pm@gmail.com
> <sjolley.yp.pm@gmail.com>*
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000b7079d0581298b6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 5, 2019 =
at 8:37 AM &lt;<a href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-1839387213219743606WordSec=
tion1"><p style=3D"margin:0in 0in 0.0001pt"><b><span style=3D"font-family:&=
quot;Arial&quot;,sans-serif;color:black">Yocto Technical Team Minutes for F=
eb. 5, 2019.</span></b><u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-fami=
ly:&quot;Arial&quot;,sans-serif;color:black">Attendees: Armin, David, Joshu=
a, Randy, Tim, Richard G., Stephen, Jan-Simon, Manjukum, Tracey, Trevor, Ni=
ck, Richard P, Mark, Kate, Michael, </span><u></u><u></u></p><p class=3D"Ms=
oNormal"><u></u>=C2=A0<u></u></p><p style=3D"margin:0in 0in 0.0001pt"><span=
 style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">YP 2.6.1 wa=
s released on Feb. 4, 2019.</span><u></u><u></u></p><p style=3D"margin:0in =
0in 0.0001pt"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color=
:black">YP 2.7 M2 was built and is in QA and is 79% done.=C2=A0 See: </span=
><a href=3D"https://wiki.yoctoproject.org/wiki/2.7_QA_Status" target=3D"_bl=
ank"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:rgb(17,8=
5,204)">https://wiki.yoctoproject.org/wiki/2.7_QA_Status</span></a><u></u><=
u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p style=3D"margin=
:0in 0in 0.0001pt"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;=
color:black">Armin agreed to add Ubuntu 18.4 to YP 2.6 series and we will u=
se in for YP 2.7 </span><u></u><u></u></p><p style=3D"margin:0in 0in 0.0001=
pt"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">We=
 discussed that the YP 2.6 manual doesn=E2=80=99t have an upgrading to YP 2=
.6.=C2=A0 Tracey will look into this.</span></p></div></div></blockquote><d=
iv><br></div><div>Can I get some clarification on this.=C2=A0 Ubuntu 18.04 =
seems to be an LTS.=C2=A0 I don&#39;t have &quot;LTS&quot; listed in the 2.=
6 ref-manual (<a href=3D"https://yoctoproject.org/docs/2.6/ref-manual/ref-m=
anual.html#detailed-supported-distros">https://yoctoproject.org/docs/2.6/re=
f-manual/ref-manual.html#detailed-supported-distros</a>) but do have Ubuntu=
 18.04 listed as a supported distro.=C2=A0 What is meant by &quot;... the Y=
P 2.6 manual doesn&#39;t have an upgrading to YP 2.6.&quot;?=C2=A0 - Thanks=
 Scott</div><div> <br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div lang=3D"EN-US"><div class=3D"gmail-m_-1839387213219743606WordSectio=
n1"><p style=3D"margin:0in 0in 0.0001pt"><u></u><u></u></p><p class=3D"MsoN=
ormal"><u></u>=C2=A0<u></u></p><p style=3D"margin:0in 0in 0.0001pt"><span s=
tyle=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">We discussed =
the status of YP 2.7 upgrades and we are doing OK there.=C2=A0 We are strug=
gling on new features YP 2.7.=C2=A0 Richard is primarily working to stabili=
ze the autobuilder to produce an automated QA report to allow QA to transit=
ion from Intel. </span><u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-fami=
ly:&quot;Arial&quot;,sans-serif;color:black">Richard discussed maintainers =
of OE-Core.=C2=A0 AUH is sending requests but not getting feedback. </span>=
<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p style=
=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:&quot;Arial&quot;,s=
ans-serif;color:black">Richard discussed that we have issues with some prod=
ucts and need support from the community to fix.</span><u></u><u></u></p><p=
 class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p style=3D"margin:0in 0in 0.0=
001pt"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"=
>Tim discussed ptest issues Richard has identified.</span><u></u><u></u></p=
><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p style=3D"margin:0in 0in =
0.0001pt"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:bla=
ck">Richard asked if there were ideas about how to better communicate with =
the community. No specific suggestions.</span><u></u><u></u></p><p class=3D=
"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Thanks,<u></u><u=
></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNorm=
al" style=3D"break-after:avoid"><b><i><span style=3D"font-size:16pt;font-fa=
mily:&quot;Times New Roman&quot;,serif;color:purple">Stephen K. Jolley</spa=
n></i></b><b><i><span style=3D"font-size:16pt;font-family:&quot;Tahoma&quot=
;,sans-serif;color:purple"><u></u><u></u></span></i></b></p><p class=3D"Mso=
Normal"><b><span style=3D"font-size:8pt;font-family:&quot;Courier New&quot;=
;color:blue">Yocto Project Project Manager<u></u><u></u></span></b></p><p c=
lass=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Wingdings;color=
:black">(</span><span style=3D"font-size:9pt;font-family:&quot;MS Sans Seri=
f&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0 </span><b><span style=3D"font-=
size:8pt;font-family:&quot;Comic Sans MS&quot;;color:teal">Cell</span></b><=
span style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;col=
or:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font-size:9pt;font-family=
:&quot;MS Sans Serif&quot;,serif">(208) 244-4460</span><span style=3D"font-=
size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;color:black"><u></u><u=
></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-fa=
mily:Wingdings">* </span><b><span style=3D"font-size:8pt;font-family:&quot;=
Comic Sans MS&quot;;color:teal" lang=3D"FR">Email</span></b><span style=3D"=
font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;color:teal" lang=
=3D"FR">:</span><span style=3D"font-size:9pt;font-family:&quot;MS Sans Seri=
f&quot;,serif" lang=3D"FR">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<u><span style=3D"color:blue"><a href=
=3D"mailto:sjolley.yp.pm@gmail.com" target=3D"_blank"><span style=3D"color:=
rgb(5,99,193)">sjolley.yp.pm@gmail.com</span></a></span></u></span><span st=
yle=3D"font-size:12pt;font-family:&quot;Arial&quot;,sans-serif" lang=3D"FR"=
><u></u><u></u></span></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></=
div></div>-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div>

--000000000000b7079d0581298b6f--
