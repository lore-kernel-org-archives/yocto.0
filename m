Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 024E3E00BC8; Tue,  5 Feb 2019 10:24:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EB22E00BB7
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 10:24:37 -0800 (PST)
Received: by mail-ot1-f50.google.com with SMTP id n8so7391522otl.6
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 10:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:cc:date:in-reply-to:references
	:user-agent:mime-version;
	bh=0+z+A6E0NeDFVwtsAFOq9/wdcWGxNQxuX3kCMq1NOHA=;
	b=BncAMeyEJ4IilK5d9nP3wH/gXfNze55TdLUlzsKlzcnnfzkVGtNYGJ9W0Ew9sCgQrM
	f/upC+jmlCmTxMyQ3wlLShWY+I/6d9HlfFIF7mPPxNz91MtzSjUOYqBkk4ZORsztQ38z
	L4VhscLGtZj6/Rc9k+/klMRyZXUpaxsxEgpBlhaPwUg8zEUSFGz0nTCtSlYzNpVNf2KF
	Y77B4ewJ00KIzM2/TptQK6yTHFOyc16bC9dLKHfX48ynlJLdW1+8okwMe35wrKiLA5Ch
	vQB3Y0usVmU8yiDYvS9gkcbrVh6qnQ92kKNMV3NFFStrSYDjNP1EBpcRBrWyX9K9HCC6
	yIbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:cc:date:in-reply-to
	:references:user-agent:mime-version;
	bh=0+z+A6E0NeDFVwtsAFOq9/wdcWGxNQxuX3kCMq1NOHA=;
	b=EG1vJXTHT+5iigS0N35CPxhpdrBriaOsIPUbQCzmwUJFBep5X0Sg6i8W0Zx5AGKPko
	1IKqa8t6/8mDT/qSKSz0b4tSzbQ5LQs1G3yFzTvU3HObwMPJOiAU8P1Oc+2MO1zG3pj3
	Je/WnGKKSB5tsrhZJ3/ejMtI5WcIUQ7kVG+6nWsPiKW6CqkDJPPPZFtaePzxepEzSjrK
	QKcONx3496iMki1fERlCF15kW6ncUlsokizoRFqkjrrB4V5DBQhIvQIoUlwNoUJBKIz1
	PwZZ6iQR7P8JKugdq4A6jclgaysBnIM6fxIimqZNTbwCPmDCaqQknsJI1aNVX07rCsAi
	PnOg==
X-Gm-Message-State: AHQUAuY5m7465kqOGAlyRwwQsJUK6aY8BLfB8gxy0eG13DbrEYllFU5N
	fenVd5zhiNWsi5m6Wv04PTZ1Av+/Cx0=
X-Google-Smtp-Source: AHgI3IY1PggnMSgb/UWFI8GxbSbYijtlYi2T2t8cmnHlwp0Yvzzvzbjw1XWwdLbr8DCVWJClXnHxPg==
X-Received: by 2002:a9d:3287:: with SMTP id u7mr3517905otb.80.1549391076634;
	Tue, 05 Feb 2019 10:24:36 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	i12sm8548605otc.48.2019.02.05.10.24.35
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 05 Feb 2019 10:24:35 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <c234365c25becb7682a366ab00b250a66acbc168.camel@gmail.com>
To: Scott Rifenbark <srifenbark@gmail.com>, sjolley.yp.pm@gmail.com
Date: Tue, 05 Feb 2019 12:24:34 -0600
In-Reply-To: <CAFNP8Otu3jLLi9OKhZbhf+hDcuvwYW-9SUtYgSNiAQwRZMyLSA@mail.gmail.com>
References: <052201d4bd70$eea45180$cbecf480$@gmail.com>
	<CAFNP8Otu3jLLi9OKhZbhf+hDcuvwYW-9SUtYgSNiAQwRZMyLSA@mail.gmail.com>
User-Agent: Evolution 3.30.3 (3.30.3-1.fc29) 
Mime-Version: 1.0
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
X-List-Received-Date: Tue, 05 Feb 2019 18:24:38 -0000
Content-Type: multipart/alternative; boundary="=-wVkENzZxSNkj9UUjxlE3"

--=-wVkENzZxSNkj9UUjxlE3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2019-02-05 at 10:11 -0800, Scott Rifenbark wrote:
> On Tue, Feb 5, 2019 at 8:37 AM <sjolley.yp.pm@gmail.com> wrote:
> > Yocto Technical Team Minutes for Feb. 5, 2019.
> >  
> > Attendees: Armin, David, Joshua, Randy, Tim, Richard G., Stephen,
> > Jan-Simon, Manjukum, Tracey, Trevor, Nick, Richard P, Mark, Kate,
> > Michael, 
> >  
> > YP 2.6.1 was released on Feb. 4, 2019.
> > YP 2.7 M2 was built and is in QA and is 79% done.  See: 
> > https://wiki.yoctoproject.org/wiki/2.7_QA_Status
> >  
> > Armin agreed to add Ubuntu 18.4 to YP 2.6 series and we will use in
> > for YP 2.7 
> > We discussed that the YP 2.6 manual doesn’t have an upgrading to YP
> > 2.6.  Tracey will look into this.
> 
> Can I get some clarification on this.  Ubuntu 18.04 seems to be an
> LTS.  I don't have "LTS" listed in the 2.6 ref-manual (
> https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#detailed-supported-distros
> ) but do have Ubuntu 18.04 listed as a supported distro.  What is
> meant by "... the YP 2.6 manual doesn't have an upgrading to YP
> 2.6."?  - Thanks Scott

I think there is a little confusion here. There are actually 2 issues:
 1) The Yocto 2.6 manual doesn't have the "Moving to the Yocto Project
2.6 Release" section to describe the changes that have been made from
2.5 -> 2.6 (
https://www.yoctoproject.org/docs/2.6/mega-manual/mega-manual.html#moving-to-the-yocto-project-2.5-release
). Oddly, this section *is* present in the "latest" mega manual.
 2) The second (unrelated) issue has to do with reporting 18.04 as a
supported host distro. I'm not as familiar with this one, so I'll let
someone else chime in.
>  
> >  
> > We discussed the status of YP 2.7 upgrades and we are doing OK
> > there.  We are struggling on new features YP 2.7.  Richard is
> > primarily working to stabilize the autobuilder to produce an
> > automated QA report to allow QA to transition from Intel. 
> >  
> > Richard discussed maintainers of OE-Core.  AUH is sending requests
> > but not getting feedback. 
> >  
> > Richard discussed that we have issues with some products and need
> > support from the community to fix.
> >  
> > Tim discussed ptest issues Richard has identified.
> >  
> > Richard asked if there were ideas about how to better communicate
> > with the community. No specific suggestions.
> >  
> > Thanks,
> >  
> > Stephen K. Jolley
> > Yocto Project Project Manager
> > (    Cell:                (208) 244-4460
> > * Email:              sjolley.yp.pm@gmail.com
> >  -- 
> > 
> > _______________________________________________
> > 
> > yocto mailing list
> > 
> > yocto@yoctoproject.org
> > 
> > https://lists.yoctoproject.org/listinfo/yocto
> > 
-- 
Joshua Watt <JPEWhacker@gmail.com>

--=-wVkENzZxSNkj9UUjxlE3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head></head><body style=3D"text-align:left; direction:lt=
r;"><div>On Tue, 2019-02-05 at 10:11 -0800, Scott Rifenbark wrote:</div><bl=
ockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf =
solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Tue, Feb 5, 2019 at 8:37 AM &lt;<a href=3D"mailto:sjolley.yp.pm@gmai=
l.com">sjolley.yp.pm@gmail.com</a>&gt; wrote:<br></div><blockquote type=3D"=
cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-lef=
t:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-1839387213219743606WordSe=
ction1"><p style=3D"margin:0in 0in 0.0001pt"><b><span style=3D"font-family:=
&quot;Arial&quot;,sans-serif;color:black">Yocto Technical Team Minutes for =
Feb. 5, 2019.</span></b><u></u><u></u></p><p class=3D"MsoNormal"><u></u>&nb=
sp;<u></u></p><p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-fami=
ly:&quot;Arial&quot;,sans-serif;color:black">Attendees: Armin, David, Joshu=
a, Randy, Tim, Richard G., Stephen, Jan-Simon, Manjukum, Tracey, Trevor, Ni=
ck, Richard P, Mark, Kate, Michael, </span><u></u><u></u></p><p class=3D"Ms=
oNormal"><u></u>&nbsp;<u></u></p><p style=3D"margin:0in 0in 0.0001pt"><span=
 style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">YP 2.6.1 wa=
s released on Feb. 4, 2019.</span><u></u><u></u></p><p style=3D"margin:0in =
0in 0.0001pt"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color=
:black">YP 2.7 M2 was built and is in QA and is 79% done.&nbsp; See: </span=
><a href=3D"https://wiki.yoctoproject.org/wiki/2.7_QA_Status" target=3D"_bl=
ank"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:rgb(17,8=
5,204)">https://wiki.yoctoproject.org/wiki/2.7_QA_Status</span></a><u></u><=
u></u></p><p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p><p style=3D"margin=
:0in 0in 0.0001pt"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;=
color:black">Armin agreed to add Ubuntu 18.4 to YP 2.6 series and we will u=
se in for YP 2.7 </span><u></u><u></u></p><p style=3D"margin:0in 0in 0.0001=
pt"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">We=
 discussed that the YP 2.6 manual doesn=E2=80=99t have an upgrading to YP 2=
.6.&nbsp; Tracey will look into this.</span></p></div></div><br></blockquot=
e><div><br></div><div>Can I get some clarification on this.&nbsp; Ubuntu 18=
.04 seems to be an LTS.&nbsp; I don't have "LTS" listed in the 2.6 ref-manu=
al (<a href=3D"https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html=
#detailed-supported-distros">https://yoctoproject.org/docs/2.6/ref-manual/r=
ef-manual.html#detailed-supported-distros</a>) but do have Ubuntu 18.04 lis=
ted as a supported distro.&nbsp; What is meant by "... the YP 2.6 manual do=
esn't have an upgrading to YP 2.6."?&nbsp; - Thanks Scott</div></div></div>=
</div></blockquote><div><br></div><div>I think there is a little confusion =
here. There are actually 2 issues:</div><div><br></div><div> 1) The Yocto 2=
.6 manual doesn't have the "Moving to the Yocto Project 2.6 Release" sectio=
n to describe the changes that have been made from 2.5 -&gt; 2.6 (<a href=
=3D"https://www.yoctoproject.org/docs/2.6/mega-manual/mega-manual.html#movi=
ng-to-the-yocto-project-2.5-release">https://www.yoctoproject.org/docs/2.6/=
mega-manual/mega-manual.html#moving-to-the-yocto-project-2.5-release</a>). =
Oddly, this section *is* present in the "latest" mega manual.</div><div><br=
></div><div> 2) The second (unrelated) issue has to do with reporting 18.04=
 as a supported host distro. I'm not as familiar with this one, so I'll let=
 someone else chime in.</div><div><br></div><blockquote type=3D"cite" style=
=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_quote"><div> <br></div><b=
lockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf=
 solid;padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-1839387=
213219743606WordSection1"><p style=3D"margin:0in 0in 0.0001pt"><u></u><u></=
u></p><p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p><p style=3D"margin:0in=
 0in 0.0001pt"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;colo=
r:black">We discussed the status of YP 2.7 upgrades and we are doing OK the=
re.&nbsp; We are struggling on new features YP 2.7.&nbsp; Richard is primar=
ily working to stabilize the autobuilder to produce an automated QA report =
to allow QA to transition from Intel. </span><u></u><u></u></p><p class=3D"=
MsoNormal"><u></u>&nbsp;<u></u></p><p style=3D"margin:0in 0in 0.0001pt"><sp=
an style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Richard d=
iscussed maintainers of OE-Core.&nbsp; AUH is sending requests but not gett=
ing feedback. </span><u></u><u></u></p><p class=3D"MsoNormal"><u></u>&nbsp;=
<u></u></p><p style=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:=
&quot;Arial&quot;,sans-serif;color:black">Richard discussed that we have is=
sues with some products and need support from the community to fix.</span><=
u></u><u></u></p><p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p><p style=3D=
"margin:0in 0in 0.0001pt"><span style=3D"font-family:&quot;Arial&quot;,sans=
-serif;color:black">Tim discussed ptest issues Richard has identified.</spa=
n><u></u><u></u></p><p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p><p style=
=3D"margin:0in 0in 0.0001pt"><span style=3D"font-family:&quot;Arial&quot;,s=
ans-serif;color:black">Richard asked if there were ideas about how to bette=
r communicate with the community. No specific suggestions.</span><u></u><u>=
</u></p><p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p><p class=3D"MsoNorma=
l">Thanks,<u></u><u></u></p><p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>=
<p class=3D"MsoNormal" style=3D"break-after:avoid"><b><i><span style=3D"fon=
t-size:16pt;font-family:&quot;Times New Roman&quot;,serif;color:purple">Ste=
phen K. Jolley</span></i></b><b><i><span style=3D"font-size:16pt;font-famil=
y:&quot;Tahoma&quot;,sans-serif;color:purple"><u></u><u></u></span></i></b>=
</p><p class=3D"MsoNormal"><b><span style=3D"font-size:8pt;font-family:&quo=
t;Courier New&quot;;color:blue">Yocto Project Project Manager<u></u><u></u>=
</span></b></p><p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-fam=
ily:Wingdings;color:black">(</span><span style=3D"font-size:9pt;font-family=
:&quot;MS Sans Serif&quot;,serif;color:teal">&nbsp;&nbsp;&nbsp; </span><b><=
span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color:tea=
l">Cell</span></b><span style=3D"font-size:9pt;font-family:&quot;MS Sans Se=
rif&quot;,serif;color:teal">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=3D"font-siz=
e:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(208) 244-4460</span><sp=
an style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;color=
:black"><u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font=
-size:9pt;font-family:Wingdings">* </span><b><span style=3D"font-size:8pt;f=
ont-family:&quot;Comic Sans MS&quot;;color:teal" lang=3D"FR">Email</span></=
b><span style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;=
color:teal" lang=3D"FR">:</span><span style=3D"font-size:9pt;font-family:&q=
uot;MS Sans Serif&quot;,serif" lang=3D"FR">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u><span style=3D"color=
:blue"><a href=3D"mailto:sjolley.yp.pm@gmail.com" target=3D"_blank"><span s=
tyle=3D"color:rgb(5,99,193)">sjolley.yp.pm@gmail.com</span></a></span></u><=
/span><span style=3D"font-size:12pt;font-family:&quot;Arial&quot;,sans-seri=
f" lang=3D"FR"><u></u><u></u></span></p><p class=3D"MsoNormal"><u></u>&nbsp=
;<u></u></p></div></div>-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div>
</blockquote><div><span><pre>-- <br></pre>Joshua Watt &lt;<a href=3D"mailto=
:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a>&gt;</span></div></body></ht=
ml>

--=-wVkENzZxSNkj9UUjxlE3--
