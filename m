Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8C6FE00BC8; Tue,  5 Feb 2019 11:01:08 -0800 (PST)
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
	*      [209.85.208.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0E51E00BAF
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 11:01:07 -0800 (PST)
Received: by mail-ed1-f46.google.com with SMTP id d12so2782068edy.3
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 11:01:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=cZ/aZ7y5L2sEm0J5oF/lShxPfKCuhtSfmF0NJHLonrY=;
	b=eOFTDs4Not4hWq7GXHISsG4cELQxeErobpVBm16PXyF9Bfq6AeljJI2XT6vmJvb+ul
	vGrYElPl2wOZKShoCEYTLViDShKUJXTwnDHLp5WCL/33o47hzWBajgOD4jtBhHBJ+RHc
	FAT5sAv02uTYUBy5u1jeyrntgw3o9ruLmIztaLufhzVjXkrLEfOQS2uGSdJb89EPFHOA
	TUPUXXNBCgkhSsYXzaj7dixyuonuJNvxEZSe7jWWl4khR5yujndujokdw1+tkn1TT268
	kjDPP9g7vpYhafM9Y4ZVNOuZ4sRerGe/t9nVczS/DjANroAeBuRXNfqQ2drokI9BIYDQ
	yaPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=cZ/aZ7y5L2sEm0J5oF/lShxPfKCuhtSfmF0NJHLonrY=;
	b=rfldGpSbgDyxf1nlZ5XnQWrkktdqV2A65MMcS6I3O2zuBkxl3RR08fRP4fxWKI+9Sw
	A5Fh+O7vOJKWBJ6heXSG6GRKmEiLmKmbcIBgWSBGhjalR5l0sjJJKMfU8BB2tSIoiCc3
	E8Pnxa+vfJMxJMGmjGAXMH4GFnyzkcxRXQrdkKbEqdHeAWE5mNaFBfA6zS3TUWU27NpK
	mjlL42C1PxaxiN1dpas+SmPotgLImulxzO+Y26BG0vl/sTpUDc1DT5UhJGouXGUTiKzQ
	tdgvTg4fLcmeBjAY/Va/SfGIaETGycpWPdsxm6UDMHc3MnxvpOBlOzgMqANHLvB83nku
	tPdA==
X-Gm-Message-State: AHQUAubdxGla6JidOwgWSh7lRT4cLiLHgz9c8egZFytCH4xkV8oHwf23
	qfFOru/6GuT0rphk1t8mQ+5Wv1jQwG1Aw8S0g/G/Fw==
X-Google-Smtp-Source: AHgI3IaRU2ttxXZTSCJmwxDuHnTDoBS8PAYR7pGPXodHvjOLab6d0MH5vkH4akfDRPRu4yRE3Yg8nHR6snQOJMLjHHI=
X-Received: by 2002:a50:b36f:: with SMTP id r44mr5140976edd.284.1549393266771; 
	Tue, 05 Feb 2019 11:01:06 -0800 (PST)
MIME-Version: 1.0
References: <052201d4bd70$eea45180$cbecf480$@gmail.com>
	<CAFNP8Otu3jLLi9OKhZbhf+hDcuvwYW-9SUtYgSNiAQwRZMyLSA@mail.gmail.com>
	<c234365c25becb7682a366ab00b250a66acbc168.camel@gmail.com>
In-Reply-To: <c234365c25becb7682a366ab00b250a66acbc168.camel@gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 5 Feb 2019 11:00:54 -0800
Message-ID: <CAFNP8OtVsVi0anvKu3RfMfHjaCmmAOQ4kr0j=dj0vOm8uXAfyA@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
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
X-List-Received-Date: Tue, 05 Feb 2019 19:01:08 -0000
Content-Type: multipart/alternative; boundary="000000000000488d1e05812a3bb1"

--000000000000488d1e05812a3bb1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 5, 2019 at 10:24 AM Joshua Watt <jpewhacker@gmail.com> wrote:

> On Tue, 2019-02-05 at 10:11 -0800, Scott Rifenbark wrote:
>
>
>
> On Tue, Feb 5, 2019 at 8:37 AM <sjolley.yp.pm@gmail.com> wrote:
>
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
>
> Can I get some clarification on this.  Ubuntu 18.04 seems to be an LTS.  =
I
> don't have "LTS" listed in the 2.6 ref-manual (
> https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#detailed-sup=
ported-distros)
> but do have Ubuntu 18.04 listed as a supported distro.  What is meant by
> "... the YP 2.6 manual doesn't have an upgrading to YP 2.6."?  - Thanks
> Scott
>
>
> I think there is a little confusion here. There are actually 2 issues:
>
> 1) The Yocto 2.6 manual doesn't have the "Moving to the Yocto Project 2.6
> Release" section to describe the changes that have been made from 2.5 ->
> 2.6 (
> https://www.yoctoproject.org/docs/2.6/mega-manual/mega-manual.html#moving=
-to-the-yocto-project-2.5-release).
> Oddly, this section *is* present in the "latest" mega manual.
>

I think I know what happened here.  The tip of "thud" has the section on
migrating to YP 2.6.  However, as pointed out, the published 2.6 manual
does not have it.  During a release, docs lag behind software and
everything else that gets locked down.  I wrote that section for the 2.6
release of the manuals.  Likely, some important fix had to be back-ported
to the manuals post-release and I probably was working from a cloned thud
repo that was checked out on the tag "Yocto-2.6", which is earlier than the
commits for that section.  So, when I rebuilt manuals post-release for
various reasons, it was not included.  I can fix that for the 2.6 version
of the manual.  It is already present in the newly released 2.6.1 version
of the manual.  This problem is ongoing with the docs.  I just recently
have come up with a work-around for these types of situations.  I am now
keeping a local area of changed doc source files per-release for released
manuals.  That way, in the future, I can checkout a release by tag, make
any special changes, and then populate the local repo with the previously
changed files.  Rebuilding then produces manuals with all the one-off
changes that have occurred. - Thanks for the clarification Joshua.


> 2) The second (unrelated) issue has to do with reporting 18.04 as a
> supported host distro. I'm not as familiar with this one, so I'll let
> someone else chime in.
>
>
>
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
> --
>
> Joshua Watt <JPEWhacker@gmail.com>
>

--000000000000488d1e05812a3bb1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 5, 2019 at 10:24 AM Joshu=
a Watt &lt;<a href=3D"mailto:jpewhacker@gmail.com">jpewhacker@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 style=3D"text-align:left;direction:ltr"><div>On Tue, 2019-02-05 at 10:11 -=
0800, Scott Rifenbark wrote:</div><blockquote type=3D"cite" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:2px solid rgb(114,159,207);padding-left:1ex"=
><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 5, 2019=
 at 8:37 AM &lt;<a href=3D"mailto:sjolley.yp.pm@gmail.com" target=3D"_blank=
">sjolley.yp.pm@gmail.com</a>&gt; wrote:<br></div><blockquote type=3D"cite"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:2px solid rgb(114,159,207);p=
adding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-451952521693345=
2862gmail-m_-1839387213219743606WordSection1"><p style=3D"margin:0in 0in 0.=
0001pt"><b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:bl=
ack">Yocto Technical Team Minutes for Feb. 5, 2019.</span></b><u></u><u></u=
></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p style=3D"margin:0in =
0in 0.0001pt"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color=
:black">Attendees: Armin, David, Joshua, Randy, Tim, Richard G., Stephen, J=
an-Simon, Manjukum, Tracey, Trevor, Nick, Richard P, Mark, Kate, Michael, <=
/span><u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p s=
tyle=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:&quot;Arial&quo=
t;,sans-serif;color:black">YP 2.6.1 was released on Feb. 4, 2019.</span><u>=
</u><u></u></p><p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">YP 2.7 M2 was built and is in=
 QA and is 79% done.=C2=A0 See: </span><a href=3D"https://wiki.yoctoproject=
.org/wiki/2.7_QA_Status" target=3D"_blank"><span style=3D"font-family:&quot=
;Arial&quot;,sans-serif;color:rgb(17,85,204)">https://wiki.yoctoproject.org=
/wiki/2.7_QA_Status</span></a><u></u><u></u></p><p class=3D"MsoNormal"><u><=
/u>=C2=A0<u></u></p><p style=3D"margin:0in 0in 0.0001pt"><span style=3D"fon=
t-family:&quot;Arial&quot;,sans-serif;color:black">Armin agreed to add Ubun=
tu 18.4 to YP 2.6 series and we will use in for YP 2.7 </span><u></u><u></u=
></p><p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:&quot;=
Arial&quot;,sans-serif;color:black">We discussed that the YP 2.6 manual doe=
sn=E2=80=99t have an upgrading to YP 2.6.=C2=A0 Tracey will look into this.=
</span></p></div></div><br></blockquote><div><br></div><div>Can I get some =
clarification on this.=C2=A0 Ubuntu 18.04 seems to be an LTS.=C2=A0 I don&#=
39;t have &quot;LTS&quot; listed in the 2.6 ref-manual (<a href=3D"https://=
yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#detailed-supported-dis=
tros" target=3D"_blank">https://yoctoproject.org/docs/2.6/ref-manual/ref-ma=
nual.html#detailed-supported-distros</a>) but do have Ubuntu 18.04 listed a=
s a supported distro.=C2=A0 What is meant by &quot;... the YP 2.6 manual do=
esn&#39;t have an upgrading to YP 2.6.&quot;?=C2=A0 - Thanks Scott</div></d=
iv></div></div></blockquote><div><br></div><div>I think there is a little c=
onfusion here. There are actually 2 issues:</div><div><br></div><div> 1) Th=
e Yocto 2.6 manual doesn&#39;t have the &quot;Moving to the Yocto Project 2=
.6 Release&quot; section to describe the changes that have been made from 2=
.5 -&gt; 2.6 (<a href=3D"https://www.yoctoproject.org/docs/2.6/mega-manual/=
mega-manual.html#moving-to-the-yocto-project-2.5-release" target=3D"_blank"=
>https://www.yoctoproject.org/docs/2.6/mega-manual/mega-manual.html#moving-=
to-the-yocto-project-2.5-release</a>). Oddly, this section *is* present in =
the &quot;latest&quot; mega manual.</div></div></blockquote><div><br></div>=
<div>I think I know what happened here.=C2=A0 The tip of &quot;thud&quot; h=
as the section on migrating to YP 2.6.=C2=A0 However, as pointed out, the p=
ublished 2.6 manual does not have it.=C2=A0 During a release, docs lag behi=
nd software and everything else that gets locked down.=C2=A0 I wrote that s=
ection for the 2.6 release of the manuals.=C2=A0 Likely, some important fix=
 had to be back-ported to the manuals post-release and I probably was worki=
ng from a cloned thud repo that was checked out on the tag &quot;Yocto-2.6&=
quot;, which is earlier than the commits for that section.=C2=A0 So, when I=
 rebuilt manuals post-release for various reasons, it was not included.=C2=
=A0 I can fix that for the 2.6 version of the manual.=C2=A0 It is already p=
resent in the newly released 2.6.1 version of the manual.=C2=A0 This proble=
m is ongoing with the docs.=C2=A0 I just recently have come up with a work-=
around for these types of situations.=C2=A0 I am now keeping a local area o=
f changed doc source files per-release for released manuals.=C2=A0 That way=
, in the future, I can checkout a release by tag, make any special changes,=
 and then populate the local repo with the previously changed files.=C2=A0 =
Rebuilding then produces manuals with all the one-off changes that have occ=
urred. - Thanks for the clarification Joshua.</div><div> <br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div style=3D"text-align:left;dir=
ection:ltr"><div><br></div><div> 2) The second (unrelated) issue has to do =
with reporting 18.04 as a supported host distro. I&#39;m not as familiar wi=
th this one, so I&#39;ll let someone else chime in.</div><div><br></div><bl=
ockquote type=3D"cite" style=3D"margin:0px 0px 0px 0.8ex;border-left:2px so=
lid rgb(114,159,207);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv class=3D"gmail_quote"><div> <br></div><blockquote type=3D"cite" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:2px solid rgb(114,159,207);padding-le=
ft:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-4519525216933452862gmail=
-m_-1839387213219743606WordSection1"><p style=3D"margin:0in 0in 0.0001pt"><=
u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p style=3D=
"margin:0in 0in 0.0001pt"><span style=3D"font-family:&quot;Arial&quot;,sans=
-serif;color:black">We discussed the status of YP 2.7 upgrades and we are d=
oing OK there.=C2=A0 We are struggling on new features YP 2.7.=C2=A0 Richar=
d is primarily working to stabilize the autobuilder to produce an automated=
 QA report to allow QA to transition from Intel. </span><u></u><u></u></p><=
p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p style=3D"margin:0in 0in 0.=
0001pt"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black=
">Richard discussed maintainers of OE-Core.=C2=A0 AUH is sending requests b=
ut not getting feedback. </span><u></u><u></u></p><p class=3D"MsoNormal"><u=
></u>=C2=A0<u></u></p><p style=3D"margin:0in 0in 0.0001pt"><span style=3D"f=
ont-family:&quot;Arial&quot;,sans-serif;color:black">Richard discussed that=
 we have issues with some products and need support from the community to f=
ix.</span><u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>=
<p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:&quot;Arial=
&quot;,sans-serif;color:black">Tim discussed ptest issues Richard has ident=
ified.</span><u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u><=
/p><p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Richard asked if there were ideas about h=
ow to better communicate with the community. No specific suggestions.</span=
><u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=
=3D"MsoNormal">Thanks,<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><p class=3D"MsoNormal" style=3D"break-after:avoid"><b><i><spa=
n style=3D"font-size:16pt;font-family:&quot;Times New Roman&quot;,serif;col=
or:purple">Stephen K. Jolley</span></i></b><b><i><span style=3D"font-size:1=
6pt;font-family:&quot;Tahoma&quot;,sans-serif;color:purple"><u></u><u></u><=
/span></i></b></p><p class=3D"MsoNormal"><b><span style=3D"font-size:8pt;fo=
nt-family:&quot;Courier New&quot;;color:blue">Yocto Project Project Manager=
<u></u><u></u></span></b></p><p class=3D"MsoNormal"><span style=3D"font-siz=
e:9pt;font-family:Wingdings;color:black">(</span><span style=3D"font-size:9=
pt;font-family:&quot;MS Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=
=A0 </span><b><span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&=
quot;;color:teal">Cell</span></b><span style=3D"font-size:9pt;font-family:&=
quot;MS Sans Serif&quot;,serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span s=
tyle=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(208) 24=
4-4460</span><span style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&q=
uot;,serif;color:black"><u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an style=3D"font-size:9pt;font-family:Wingdings">* </span><b><span style=3D=
"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color:teal" lang=3D"FR=
">Email</span></b><span style=3D"font-size:9pt;font-family:&quot;MS Sans Se=
rif&quot;,serif;color:teal" lang=3D"FR">:</span><span style=3D"font-size:9p=
t;font-family:&quot;MS Sans Serif&quot;,serif" lang=3D"FR">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<u><sp=
an style=3D"color:blue"><a href=3D"mailto:sjolley.yp.pm@gmail.com" target=
=3D"_blank"><span style=3D"color:rgb(5,99,193)">sjolley.yp.pm@gmail.com</sp=
an></a></span></u></span><span style=3D"font-size:12pt;font-family:&quot;Ar=
ial&quot;,sans-serif" lang=3D"FR"><u></u><u></u></span></p><p class=3D"MsoN=
ormal"><u></u>=C2=A0<u></u></p></div></div>-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div>
</blockquote><div><span><pre>-- <br></pre>Joshua Watt &lt;<a href=3D"mailto=
:JPEWhacker@gmail.com" target=3D"_blank">JPEWhacker@gmail.com</a>&gt;</span=
></div></div>
</blockquote></div></div>

--000000000000488d1e05812a3bb1--
