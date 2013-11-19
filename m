Return-Path: <008dilip@gmail.com>
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B58FE004DD
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 10:08:19 -0800 (PST)
Received: by mail-ob0-f181.google.com with SMTP id uy5so946121obc.40
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 10:08:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XAQbRMznAXM6svW2qi86iCf7V+312RKpLAYJp1uIXBs=;
	b=t34QIejTJpskY9JHvAsy87Rm68sF6JAjG43UfcjAOoqoJ3TUYdg5Q6CZ6Nky4f2OpK
	iU/HVBdSCA3xCD7mfuaIdjQsuIUDDxXei/JicEgonIxwUtgIN3iC588KCPSe19sF4T7W
	JwK4DFrcUyqK06CoeoLCtrSgwi46s+LeBZ+eBuMCDBe4gopkuex1BIjWc7z8ZM+HMkxV
	jbfZ4eFAchE0z73vNNFvSu3wrnlw4cUsGpdE0lDHI9lQwWfQ0nODVfx/R62zejD9rXJZ
	QWY2lN0YA3rrPgsXWmhkOoG3XLPFFrodOnhx+93hNPR433+7M2KXn1WhPJDt9fBiAs/P
	IEWA==
MIME-Version: 1.0
X-Received: by 10.182.92.231 with SMTP id cp7mr634855obb.82.1384884498905;
	Tue, 19 Nov 2013 10:08:18 -0800 (PST)
Received: by 10.76.177.34 with HTTP; Tue, 19 Nov 2013 10:08:18 -0800 (PST)
Received: by 10.76.177.34 with HTTP; Tue, 19 Nov 2013 10:08:18 -0800 (PST)
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E9619F95667@IRSMSX104.ger.corp.intel.com>
References: <CABmxB3MGuNu-AppvDGujjgQFU9X5NAu9J2W269DGEK36B8wAeg@mail.gmail.com>
	<1FFB62CE8AEB0D4298B51122D8903E9619F95667@IRSMSX104.ger.corp.intel.com>
Date: Tue, 19 Nov 2013 23:38:18 +0530
Message-ID: <CABmxB3OHHvD7rf3WNDBLKrEO3OOBu1PNC8bRT1F2FhH_QgxpFA@mail.gmail.com>
From: Dilip Kumar <008dilip@gmail.com>
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: QA Tests in Yocto development environment block diagram
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
X-List-Received-Date: Tue, 19 Nov 2013 18:08:25 -0000
Content-Type: multipart/alternative; boundary=001a11c302cc9cbde804eb8b8c54

--001a11c302cc9cbde804eb8b8c54
Content-Type: text/plain; charset=ISO-8859-1

Dear Alex,

Thank you for your response.

And I need to know one more thing whether these QA tests are done manually
or it's automated during the build or its done separately by Yocto for
particular distribution?

Is there any QA tests done during the build procedure locally?

regards
dilip kumar b
On 14-Nov-2013 12:15 am, "Georgescu, Alexandru C" <
alexandru.c.georgescu@intel.com> wrote:

>  Hi,
>
> Our overall testing plan is available here:
> https://wiki.yoctoproject.org/wiki/Yocto_1.6_Overall_Test_Plan. Since we
> are in the last phase of planning for 1.6, this is not the final version
> yet.
>
>
>
> Regarding the test cases, all you have to do is to have an account in our
> bug tracking website https://bugzilla.yoctoproject.org/ and follow the
> instructions in the Testopia wiki, our test case platform management
> system: https://wiki.yoctoproject.org/wiki/Testopia. There you can find
> the tests performed against the Yocto Project components.
>
>
>
> Regards,
>
> *--*
>
> *Alexandru Georgescu*
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Dilip Kumar
> *Sent:* Wednesday, November 13, 2013 06:27
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] QA Tests in Yocto development environment block diagram
>
>
>
> Dear all,
>
> I need know what is QA tests and what all the tests it will do and need to
> know more information about QA please help me out in this.
>
> regards
> dilip kumar b
>

--001a11c302cc9cbde804eb8b8c54
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Dear Alex,</p>
<p dir=3D"ltr">Thank you for your response.</p>
<p dir=3D"ltr">And I need to know one more thing whether these QA tests are=
 done manually or it&#39;s automated during the build or its done separatel=
y by Yocto for particular distribution?</p>
<p dir=3D"ltr">Is there any QA tests done during the build procedure locall=
y?<br></p>
<p dir=3D"ltr">regards <br>
dilip kumar b</p>
<div class=3D"gmail_quote">On 14-Nov-2013 12:15 am, &quot;Georgescu, Alexan=
dru C&quot; &lt;<a href=3D"mailto:alexandru.c.georgescu@intel.com">alexandr=
u.c.georgescu@intel.com</a>&gt; wrote:<br type=3D"attribution"><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">






<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi,<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Our overall testing plan =
is available here:
<a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.6_Overall_Test_Plan" =
target=3D"_blank">https://wiki.yoctoproject.org/wiki/Yocto_1.6_Overall_Test=
_Plan</a>. Since we are in the last phase of planning for 1.6, this is not =
the final version yet.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Regarding the test cases,=
 all you have to do is to have an account in our bug tracking website
<a href=3D"https://bugzilla.yoctoproject.org/" target=3D"_blank">https://bu=
gzilla.yoctoproject.org/</a> and follow the instructions in the Testopia wi=
ki, our test case platform management system:
<a href=3D"https://wiki.yoctoproject.org/wiki/Testopia" target=3D"_blank">h=
ttps://wiki.yoctoproject.org/wiki/Testopia</a>. There you can find the test=
s performed against the Yocto Project components.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Regards,<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:#7f7f7f">--<u></u><u></u></span>=
</b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:#7f7f7f">Alexandru Georgescu<u><=
/u><u></u></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Dilip Kumar<br>
<b>Sent:</b> Wednesday, November 13, 2013 06:27<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] QA Tests in Yocto development environment block dia=
gram<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p>Dear all,<u></u><u></u></p>
<p>I need know what is QA tests and what all the tests it will do and need =
to know more information about QA please help me out in this.<u></u><u></u>=
</p>
<p>regards <br>
dilip kumar b<u></u><u></u></p>
</div>
</div>

</blockquote></div>

--001a11c302cc9cbde804eb8b8c54--
