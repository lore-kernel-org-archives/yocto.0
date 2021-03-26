Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.10766.1616754930998553777
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 03:35:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=AlKnXRjt;
 spf=permerror, err=parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 198.145.29.25, mailfrom: mshah@mvista.com)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D0BA138C06B9
	for <yocto@yoctoproject.org>; Fri, 26 Mar 2021 10:35:29 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id l4so7621265ejc.10
        for <yocto@yoctoproject.org>; Fri, 26 Mar 2021 03:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ki/NH6k+i5ZjmX6SvKr2Qz/7l1BBTkWP8OfI+eDPPss=;
        b=AlKnXRjtP5dKsj8mNz0NVifiymuc+ywNcOuQxzmh47IriIKZZeJZy3DyvitkzMO8yy
         HvxYipe+tvPAgKa5SMJZ7l3zaYcPSs/UP2htYvpmSV+dkpxjR1VM+Ibp5L/PZU0ybJQ5
         byWEKPNUnjlZBG2hnOgCS96gTtxxjEfa02PgAIYh03qNJZyVL47U8LFehpKNa3gxpsNd
         BEj6ni8hNTQ0lTpIrNyKygjGcO5edAyQJuC4HKwUqUawUe4uwZQxaw2GFCkiHC982/Nc
         Oqa7xkDKVeMPdhU1CJCJ44QUbj7Ph4m7YIov3yFt1Fzt14InM1vuYnJDse1wI66wr6y/
         p8fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ki/NH6k+i5ZjmX6SvKr2Qz/7l1BBTkWP8OfI+eDPPss=;
        b=ubsjhxN5Z/cWFxWcXHTYiJb1+YZCmo8Y6wOFUijQ67A3UY/gz+j3pgeUo7+oLtQCKu
         6pfqnEFa1WCAztHEf1mW3xHST0Llkmv2AAFGGiWlrPxtdv/ytwEA52zaAIHpY88gRCG0
         WNb/1il3CGFNyp8FHeAmLBk3WfV4y79vPXM5qwrZ9LDliYZ6QOBjZiJiVy1pmb5I3qc6
         yvzk9wgbvTOsSSCzqDQcNYzp4PBMW7ibHLmEXpVyGiQ2geMk9ksjBUG7aswOlP4E/tOp
         2f+KVM96kolxDm5g3BB4yB5eXG1dFHlGTr8gHC+wY17bN9t67ehK98DsuGpKvTfNuvXD
         qF9Q==
X-Gm-Message-State: AOAM533j/jV3rJgoOQlOI4WnXK05nQwYNb0JOtdE7fB7VzQWqn5D/pGn
	pRgz8VXlQZ4RcAGc9Qstt2k6Ocv/kusIJSA/zw31G6JNbP/cm10p
X-Google-Smtp-Source: ABdhPJygS230uoxyIgH9hUPln4Q2QoPH6AJogm11SQE6J344IbTHLhWvyQmIvrGqmKNXhLCqlL5y/CpT+qmZf9QTMTc=
X-Received: by 2002:a17:906:81c9:: with SMTP id e9mr14307788ejx.456.1616754927957;
 Fri, 26 Mar 2021 03:35:27 -0700 (PDT)
MIME-Version: 1.0
References: <1609940317-21943-1-git-send-email-mshah@mvista.com>
 <CA+=qD9M-rk13kgw0fVvn3ChzCVrO6VQk-uxWspE7PKUG_Y99Aw@mail.gmail.com>
 <CA+=qD9O1A-Cp=3z336qpeKgMCvdgbK=NATA8uqLuAPcbF=EPUw@mail.gmail.com>
 <CA+=qD9N2mxJ55Aaz1ahNrrivgam0wBqMx5vk1duqM+Fd_ENZBQ@mail.gmail.com> <CA+=qD9O1gf9quyPuQ9JBbR79=hL=aQ0gMCtke92Kp0uHt-w2hg@mail.gmail.com>
In-Reply-To: <CA+=qD9O1gf9quyPuQ9JBbR79=hL=aQ0gMCtke92Kp0uHt-w2hg@mail.gmail.com>
From: "Milan Shah" <mshah@mvista.com>
Date: Fri, 26 Mar 2021 16:04:51 +0530
Message-ID: <CA+=qD9NoNqBWv+ATf_tw-cc+Vz0xaDO6biCMFmx_M2Xq0LpA2A@mail.gmail.com>
Subject: Re: [error-report-web][PATCH] report-error.bbclass: Add layer and bitbake version info to error report
To: yocto@yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Paul Barker <pbarker@konsulko.com>, 
	Armin Kuster <akuster@mvista.com>
Content-Type: multipart/alternative; boundary="0000000000002b8a0d05be6e1726"

--0000000000002b8a0d05be6e1726
Content-Type: text/plain; charset="UTF-8"

Hi Richard,

It seems like patches sent for *error-report-web* are not much important to
the community as this patch has *not been reviewed/commented on* by
anyone *since
6th January 2021* (*more than 2.5 months*).

Still, I'm sending a reminder one last time for [*YOCTO #9700*].
https://lists.yoctoproject.org/g/yocto/message/51891

Please review/comment on it so that things can move further.

Thanks & Regards,
Milan Shah

<https://www.mvista.com/>
*Milan Shah* * | Software Engineer*
*a: * MontaVista Software, LLC | Bangalore, India
*e:* info@mvista.com | *w:* www.mvista.com/
*p:* +91-80-4939-5000


On Mon, Mar 15, 2021 at 4:36 PM Milan Shah <mshah@mvista.com> wrote:

> Hi,
>
> Review reminder for [YOCTO #9700].
>
> https://lists.yoctoproject.org/g/yocto/message/51891
>
> Thanks & Regards,
> Milan Shah
>
> <https://www.mvista.com/>
> *Milan Shah* * | Software Engineer*
> *a: * MontaVista Software, LLC | Bangalore, India
> *e:* info@mvista.com | *w:* www.mvista.com/
> *p:* +91-80-4939-5000
>
>
> On Tue, Feb 23, 2021 at 3:21 PM Milan Shah <mshah@mvista.com> wrote:
>
>> Hi All,
>>
>> This has not been reviewed yet and it is given since January 6th.
>> Please review it and provide review comments if any as soon as possible
>> to resolve this issue.
>>
>> Thanks & Regards,
>> Milan Shah
>>
>> <https://www.mvista.com/>
>> *Milan Shah* * | Software Engineer*
>> *a: * MontaVista Software, LLC | Bangalore, India
>> *e:* info@mvista.com | *w:* www.mvista.com/
>> *p:* +91-80-4939-5000
>>
>>
>> On Mon, Feb 1, 2021 at 10:06 AM Milan Shah <mshah@mvista.com> wrote:
>>
>>> Hi All,
>>>
>>> A gentle reminder to review this patch.
>>>
>>> -----------------------
>>> Thanks & Regards,
>>> *Milan Shah*
>>> MontaVista Software, Bangalore, India
>>>
>>>
>>> On Mon, Jan 11, 2021 at 6:45 PM Milan Shah <mshah@mvista.com> wrote:
>>>
>>>> Hi All,
>>>>
>>>> This is a Gentle Reminder to review this Patch.
>>>>
>>>> -----------------------
>>>> Thanks & Regards,
>>>> *Milan Shah*
>>>> MontaVista Software, Bangalore, India
>>>>
>>>>
>>>> On Wed, Jan 6, 2021 at 7:09 PM Milan Shah <mshah@mvista.com> wrote:
>>>>
>>>>> Instead of just providing local.conf info, add layer names and their
>>>>> revisions with bitbake version information into error report
>>>>> makes it easier to understand and reproduce failed build.
>>>>>
>>>>> [YOCTO #9700]
>>>>>
>>>>> Signed-off-by: Milan Shah <mshah@mvista.com>
>>>>> ---
>>>>>  meta/classes/report-error.bbclass | 4 ++++
>>>>>  1 file changed, 4 insertions(+)
>>>>>
>>>>> diff --git a/meta/classes/report-error.bbclass
>>>>> b/meta/classes/report-error.bbclass
>>>>> index 1a12db1..9cb6b0b 100644
>>>>> --- a/meta/classes/report-error.bbclass
>>>>> +++ b/meta/classes/report-error.bbclass
>>>>> @@ -6,6 +6,8 @@
>>>>>  #
>>>>>  # Licensed under the MIT license, see COPYING.MIT for details
>>>>>
>>>>> +inherit base
>>>>> +
>>>>>  ERR_REPORT_DIR ?= "${LOG_DIR}/error-report"
>>>>>
>>>>>  def errorreport_getdata(e):
>>>>> @@ -64,6 +66,8 @@ python errorreport_handler () {
>>>>>              data['failures'] = []
>>>>>              data['component'] = " ".join(e.getPkgs())
>>>>>              data['branch_commit'] = str(base_detect_branch(e.data)) +
>>>>> ": " + str(base_detect_revision(e.data))
>>>>> +            data['bitbake_version'] = e.data.getVar("BB_VERSION")
>>>>> +            data['layer_version'] = get_layers_branch_rev(e.data)
>>>>>              data['local_conf'] = get_conf_data(e, 'local.conf')
>>>>>              data['auto_conf'] = get_conf_data(e, 'auto.conf')
>>>>>              lock = bb.utils.lockfile(datafile + '.lock')
>>>>> --
>>>>> 2.7.4
>>>>>
>>>>>

--0000000000002b8a0d05be6e1726
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Hi Richard,</div><div class=3D"gmail_default" style=3D"font-fami=
ly:tahoma,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-=
family:tahoma,sans-serif">It seems like patches sent for <b>error-report-we=
b</b> are not much important to the community as this patch has <b>not been=
 reviewed/commented on</b> by anyone <b>since 6th January 2021</b> (<b>more=
 than 2.5 months</b>).</div><div class=3D"gmail_default" style=3D"font-fami=
ly:tahoma,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-=
family:tahoma,sans-serif">Still, I&#39;m sending a reminder one last time f=
or [<b>YOCTO #9700</b>].<div class=3D"gmail_default" style=3D"font-family:t=
ahoma,sans-serif"><a href=3D"https://lists.yoctoproject.org/g/yocto/message=
/51891" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/message/51=
891</a></div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-=
serif"><br></div><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Please review/comment on it so that things can move further.<br>=
</div></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><br></div><div><span style=3D"fo=
nt-family:tahoma,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,=
0)">Thanks &amp; Regards,</span></font></span></div><div><span style=3D"fon=
t-family:Arial,sans-serif;font-size:11pt;color:#1793d2"><span style=3D"font=
-family:tahoma,sans-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0)=
">Milan Shah</span></font></span><br></span></div><div><br></div><div>
<table style=3D"width:525px;font-size:11pt;font-family:Arial,sans-serif" ce=
llspacing=3D"0" cellpadding=3D"0">
<tbody>
 <tr>
  <td style=3D"font-size:10pt;font-family:Arial,sans-serif;border-right:1px=
 solid;border-right-color:#fb6303;width:125px;padding-right:10px;vertical-a=
lign:top" rowspan=3D"6" width=3D"125" valign=3D"top">
		<a href=3D"https://www.mvista.com/" target=3D"_blank"><img src=3D"https:/=
/docs.google.com/uc?export=3Ddownload&amp;id=3D1Qm7yQfvCvd_kh_U4m6GVByOdaJD=
PquiJ&amp;revid=3D0B4U1D7fiiJwsSjRjMWRWSnByanRKcyszUkE3TzNKcHVZTFlNPQ"></a>
		  =20
  </td>
   =20
 <td style=3D"padding-left:10px">
  <table cellspacing=3D"0" cellpadding=3D"0">
  <tbody>
    <tr>
      <td style=3D"font-size:10pt;color:#0079ac;font-family:Arial,sans-seri=
f;width:400px;padding-bottom:5px;padding-left:10px;vertical-align:top" vali=
gn=3D"top">
       <b><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:=
#fb6303">Milan Shah</span></b>
       <b style=3D"font-family:Arial,sans-serif;font-size:11pt;color:#00000=
0"><span> | </span>Software Engineer</b>
      </td>
    </tr>=20
    <tr>
      <td style=3D"font-size:10pt;color:#444444;font-family:Arial,sans-seri=
f;padding-bottom:5px;padding-top:5px;padding-left:10px;vertical-align:top;l=
ine-height:17px" valign=3D"top">
	 =20
		<span>
			<span style=3D"color:#fb6303"><b>a: </b></span>
		</span>
		<span>
			<span style=3D"font-family:Arial,sans-serif;font-size:10pt;color:#000000=
">MontaVista Software, LLC</span>  =20
		</span>
		<span>
			<span style=3D"font-size:10pt;font-family:Arial,sans-serif;color:#000000=
"><span> | </span>Bangalore, India</span>
		=09
		</span>
	=09
		<span><br></span>
		<span><span style=3D"color:#fb6303"><b>e:</b></span><span style=3D"font-s=
ize:10pt;font-family:Arial,sans-serif;color:#000000"> <a href=3D"mailto:inf=
o@mvista.com" target=3D"_blank">info@mvista.com</a></span></span>
		<span><span> | </span><span style=3D"color:#fb6303"><b>w:</b></span><a hr=
ef=3D"http://www.mvista.com/" rel=3D"noopener" style=3D"text-decoration:non=
e" target=3D"_blank"><span style=3D"font-size:10pt;font-family:Arial,sans-s=
erif;color:#000000"> www.mvista.com/</span></a></span>
       =20
		<span><br></span>
	=09
        <span><span style=3D"color:#fb6303"><b>p:</b></span><span style=3D"=
font-size:10pt;font-family:Arial,sans-serif;color:#000000"> +91-80-4939-500=
0</span></span>
       =20
      </td>
    </tr>
   =20
   =20
  </tbody>
  </table>
 </td></tr>=20
</tbody>
</table>
</div></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Mar 15, 2021 at 4:36 PM Milan Shah &l=
t;<a href=3D"mailto:mshah@mvista.com">mshah@mvista.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
 class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Hi,</div><=
div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br></d=
iv><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Rev=
iew reminder for [YOCTO #9700].</div><div class=3D"gmail_default" style=3D"=
font-family:tahoma,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:tahoma,sans-serif"><a href=3D"https://lists.yoctoproject.or=
g/g/yocto/message/51891" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/message/51891</a></div><div><div dir=3D"ltr"><div dir=3D"ltr"><div><=
br></div><div><span style=3D"font-family:tahoma,sans-serif"><font size=3D"2=
"><span style=3D"color:rgb(0,0,0)">Thanks &amp; Regards,</span></font></spa=
n></div><div><span style=3D"font-family:Arial,sans-serif;font-size:11pt;col=
or:rgb(23,147,210)"><span style=3D"font-family:tahoma,sans-serif"><font siz=
e=3D"2"><span style=3D"color:rgb(0,0,0)">Milan Shah</span></font></span><br=
></span></div><div><br></div><div>
<table style=3D"width:525px;font-size:11pt;font-family:Arial,sans-serif" ce=
llspacing=3D"0" cellpadding=3D"0">
<tbody>
 <tr>
  <td style=3D"font-size:10pt;font-family:Arial,sans-serif;border-right:1px=
 solid rgb(251,99,3);width:125px;padding-right:10px;vertical-align:top" row=
span=3D"6" width=3D"125" valign=3D"top">
		<a href=3D"https://www.mvista.com/" target=3D"_blank"><img src=3D"https:/=
/docs.google.com/uc?export=3Ddownload&amp;id=3D1Qm7yQfvCvd_kh_U4m6GVByOdaJD=
PquiJ&amp;revid=3D0B4U1D7fiiJwsSjRjMWRWSnByanRKcyszUkE3TzNKcHVZTFlNPQ"></a>
		  =20
  </td>
   =20
 <td style=3D"padding-left:10px">
  <table cellspacing=3D"0" cellpadding=3D"0">
  <tbody>
    <tr>
      <td style=3D"font-size:10pt;color:rgb(0,121,172);font-family:Arial,sa=
ns-serif;width:400px;padding-bottom:5px;padding-left:10px;vertical-align:to=
p" valign=3D"top">
       <b><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:=
rgb(251,99,3)">Milan Shah</span></b>
       <b style=3D"font-family:Arial,sans-serif;font-size:11pt;color:rgb(0,=
0,0)"><span> | </span>Software Engineer</b>
      </td>
    </tr>=20
    <tr>
      <td style=3D"font-size:10pt;color:rgb(68,68,68);font-family:Arial,san=
s-serif;padding-bottom:5px;padding-top:5px;padding-left:10px;vertical-align=
:top;line-height:17px" valign=3D"top">
	 =20
		<span>
			<span style=3D"color:rgb(251,99,3)"><b>a: </b></span>
		</span>
		<span>
			<span style=3D"font-family:Arial,sans-serif;font-size:10pt;color:rgb(0,0=
,0)">MontaVista Software, LLC</span>  =20
		</span>
		<span>
			<span style=3D"font-size:10pt;font-family:Arial,sans-serif;color:rgb(0,0=
,0)"><span> | </span>Bangalore, India</span>
		=09
		</span>
	=09
		<span><br></span>
		<span><span style=3D"color:rgb(251,99,3)"><b>e:</b></span><span style=3D"=
font-size:10pt;font-family:Arial,sans-serif;color:rgb(0,0,0)"> <a href=3D"m=
ailto:info@mvista.com" target=3D"_blank">info@mvista.com</a></span></span>
		<span><span> | </span><span style=3D"color:rgb(251,99,3)"><b>w:</b></span=
><a href=3D"http://www.mvista.com/" rel=3D"noopener" style=3D"text-decorati=
on:none" target=3D"_blank"><span style=3D"font-size:10pt;font-family:Arial,=
sans-serif;color:rgb(0,0,0)"> www.mvista.com/</span></a></span>
       =20
		<span><br></span>
	=09
        <span><span style=3D"color:rgb(251,99,3)"><b>p:</b></span><span sty=
le=3D"font-size:10pt;font-family:Arial,sans-serif;color:rgb(0,0,0)"> +91-80=
-4939-5000</span></span>
       =20
      </td>
    </tr>
   =20
   =20
  </tbody>
  </table>
 </td></tr>=20
</tbody>
</table>
</div></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Feb 23, 2021 at 3:21 PM Milan Shah &l=
t;<a href=3D"mailto:mshah@mvista.com" target=3D"_blank">mshah@mvista.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,sans=
-serif">Hi All,</div><div class=3D"gmail_default" style=3D"font-family:taho=
ma,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:=
tahoma,sans-serif">This has not been reviewed=C2=A0yet and it is given sinc=
e January 6th. <br></div><div class=3D"gmail_default" style=3D"font-family:=
tahoma,sans-serif">Please review it and provide review comments if any as s=
oon as possible to resolve this issue.<br></div><div><div dir=3D"ltr"><div =
dir=3D"ltr"><div><br></div><div><span style=3D"font-family:tahoma,sans-seri=
f"><font size=3D"2"><span style=3D"color:rgb(0,0,0)">Thanks &amp; Regards,<=
/span></font></span></div><div><span style=3D"font-family:Arial,sans-serif;=
font-size:11pt;color:rgb(23,147,210)"><span style=3D"font-family:tahoma,san=
s-serif"><font size=3D"2"><span style=3D"color:rgb(0,0,0)">Milan Shah</span=
></font></span><br></span></div><div><br></div><div>
<table style=3D"width:525px;font-size:11pt;font-family:Arial,sans-serif" ce=
llspacing=3D"0" cellpadding=3D"0">
<tbody>
 <tr>
  <td style=3D"font-size:10pt;font-family:Arial,sans-serif;border-right:1px=
 solid rgb(251,99,3);width:125px;padding-right:10px;vertical-align:top" row=
span=3D"6" width=3D"125" valign=3D"top">
		<a href=3D"https://www.mvista.com/" target=3D"_blank"><img src=3D"https:/=
/docs.google.com/uc?export=3Ddownload&amp;id=3D1Qm7yQfvCvd_kh_U4m6GVByOdaJD=
PquiJ&amp;revid=3D0B4U1D7fiiJwsSjRjMWRWSnByanRKcyszUkE3TzNKcHVZTFlNPQ"></a>
		  =20
  </td>
   =20
 <td style=3D"padding-left:10px">
  <table cellspacing=3D"0" cellpadding=3D"0">
  <tbody>
    <tr>
      <td style=3D"font-size:10pt;color:rgb(0,121,172);font-family:Arial,sa=
ns-serif;width:400px;padding-bottom:5px;padding-left:10px;vertical-align:to=
p" valign=3D"top">
       <b><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:=
rgb(251,99,3)">Milan Shah</span></b>
       <b style=3D"font-family:Arial,sans-serif;font-size:11pt;color:rgb(0,=
0,0)"><span> | </span>Software Engineer</b>
      </td>
    </tr>=20
    <tr>
      <td style=3D"font-size:10pt;color:rgb(68,68,68);font-family:Arial,san=
s-serif;padding-bottom:5px;padding-top:5px;padding-left:10px;vertical-align=
:top;line-height:17px" valign=3D"top">
	 =20
		<span>
			<span style=3D"color:rgb(251,99,3)"><b>a: </b></span>
		</span>
		<span>
			<span style=3D"font-family:Arial,sans-serif;font-size:10pt;color:rgb(0,0=
,0)">MontaVista Software, LLC</span>  =20
		</span>
		<span>
			<span style=3D"font-size:10pt;font-family:Arial,sans-serif;color:rgb(0,0=
,0)"><span> | </span>Bangalore, India</span>
		=09
		</span>
	=09
		<span><br></span>
		<span><span style=3D"color:rgb(251,99,3)"><b>e:</b></span><span style=3D"=
font-size:10pt;font-family:Arial,sans-serif;color:rgb(0,0,0)"> <a href=3D"m=
ailto:info@mvista.com" target=3D"_blank">info@mvista.com</a></span></span>
		<span><span> | </span><span style=3D"color:rgb(251,99,3)"><b>w:</b></span=
><a href=3D"http://www.mvista.com/" rel=3D"noopener" style=3D"text-decorati=
on:none" target=3D"_blank"><span style=3D"font-size:10pt;font-family:Arial,=
sans-serif;color:rgb(0,0,0)"> www.mvista.com/</span></a></span>
       =20
		<span><br></span>
	=09
        <span><span style=3D"color:rgb(251,99,3)"><b>p:</b></span><span sty=
le=3D"font-size:10pt;font-family:Arial,sans-serif;color:rgb(0,0,0)"> +91-80=
-4939-5000</span></span>
       =20
      </td>
    </tr>
   =20
   =20
  </tbody>
  </table>
 </td></tr>=20
</tbody>
</table>
</div></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Feb 1, 2021 at 10:06 AM Milan Shah &l=
t;<a href=3D"mailto:mshah@mvista.com" target=3D"_blank">mshah@mvista.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div>Hi All,</div><div><br></div><div>A gentle reminder to re=
view this patch.</div><div><div><div dir=3D"ltr"><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><font face=3D"times new roman, serif"><br></font></div><div di=
r=3D"ltr"><font face=3D"times new roman, serif">-----------------------<br>=
</font></div><div dir=3D"ltr"><font face=3D"times new roman, serif">Thanks =
&amp; Regards,</font><div><font face=3D"times new roman, serif"><b>Milan Sh=
ah</b></font></div><div><span style=3D"background-color:rgb(255,255,255)"><=
font color=3D"#ff0000"><font face=3D"times new roman, serif">MontaVista Sof=
tware, </font></font></span><span style=3D"background-color:rgb(255,255,255=
)"><font color=3D"#ff0000"><font face=3D"times new roman, serif"><span styl=
e=3D"font-family:&quot;times new roman&quot;,serif">Bangalore</span></font>=
<span style=3D"font-family:&quot;times new roman&quot;,serif">, India</span=
></font></span><br></div></div></div></div></div></div><br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Ja=
n 11, 2021 at 6:45 PM Milan Shah &lt;<a href=3D"mailto:mshah@mvista.com" ta=
rget=3D"_blank">mshah@mvista.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi All,</div><div><b=
r></div><div>This is a Gentle Reminder to review this Patch.<br></div><div>=
<div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D"=
times new roman, serif"><br></font></div><div dir=3D"ltr"><font face=3D"tim=
es new roman, serif">-----------------------<br></font></div><div dir=3D"lt=
r"><font face=3D"times new roman, serif">Thanks &amp; Regards,</font><div><=
font face=3D"times new roman, serif"><b>Milan Shah</b></font></div><div><sp=
an style=3D"background-color:rgb(255,255,255)"><font color=3D"#ff0000"><fon=
t face=3D"times new roman, serif">MontaVista Software, </font></font></span=
><span style=3D"background-color:rgb(255,255,255)"><font color=3D"#ff0000">=
<font face=3D"times new roman, serif"><span style=3D"font-family:&quot;time=
s new roman&quot;,serif">Bangalore</span></font><span style=3D"font-family:=
&quot;times new roman&quot;,serif">, India</span></font></span><br></div></=
div></div></div></div></div><br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 6, 2021 at 7:09 PM Milan =
Shah &lt;<a href=3D"mailto:mshah@mvista.com" target=3D"_blank">mshah@mvista=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">Instead of just providing local.conf info, add layer names and their<br=
>
revisions with bitbake version information into error report<br>
makes it easier to understand and reproduce failed build.<br>
<br>
[YOCTO #9700]<br>
<br>
Signed-off-by: Milan Shah &lt;<a href=3D"mailto:mshah@mvista.com" target=3D=
"_blank">mshah@mvista.com</a>&gt;<br>
---<br>
=C2=A0meta/classes/report-error.bbclass | 4 ++++<br>
=C2=A01 file changed, 4 insertions(+)<br>
<br>
diff --git a/meta/classes/report-error.bbclass b/meta/classes/report-error.=
bbclass<br>
index 1a12db1..9cb6b0b 100644<br>
--- a/meta/classes/report-error.bbclass<br>
+++ b/meta/classes/report-error.bbclass<br>
@@ -6,6 +6,8 @@<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
<br>
+inherit base<br>
+<br>
=C2=A0ERR_REPORT_DIR ?=3D &quot;${LOG_DIR}/error-report&quot;<br>
<br>
=C2=A0def errorreport_getdata(e):<br>
@@ -64,6 +66,8 @@ python errorreport_handler () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0data[&#39;failures&#39;] =
=3D []<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0data[&#39;component&#39;] =
=3D &quot; &quot;.join(e.getPkgs())<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0data[&#39;branch_commit&#39=
;] =3D str(base_detect_branch(e.data)) + &quot;: &quot; + str(base_detect_r=
evision(e.data))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 data[&#39;bitbake_version&#39;] =
=3D e.data.getVar(&quot;BB_VERSION&quot;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 data[&#39;layer_version&#39;] =
=3D get_layers_branch_rev(e.data)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0data[&#39;local_conf&#39;] =
=3D get_conf_data(e, &#39;local.conf&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0data[&#39;auto_conf&#39;] =
=3D get_conf_data(e, &#39;auto.conf&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lock =3D bb.utils.lockfile(=
datafile + &#39;.lock&#39;)<br>
-- <br>
2.7.4<br>
<br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000002b8a0d05be6e1726--
