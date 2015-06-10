Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0917DE009C2; Wed, 10 Jun 2015 07:46:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3B95E0095D
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 07:46:21 -0700 (PDT)
Received: by iesa3 with SMTP id a3so35920387ies.2
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 07:46:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=iZpo+QUKPjaz5yOO8VNdQUgiXpZucqF1EUSvoAk23ds=;
	b=FITmxcdos+Vw55P+fuK0WoaO6kr3E6C8PfXL9psNlm0lvZropP/JV3YHEnE0BhogXY
	6d8pf6mt5418m9+FMUVwgBzKnN30tEDkpW3CpBCPQP3TkknAxm4Z+NNepYCGg2NWcVos
	OSwegRQk5iNPf7DRecy+RAFPYa/8VQgicYHl5C9lr9FTrOFS5Gf4dhoifUb8qvnqbUBh
	0u5Y/3pyiQMaPCbzuYXzZE8+ZNvE3IKjOTjv/eDuZqkfIQHB+rTmwSbDTJui0Lje3Riu
	VAy6JmlUQ45ywEBKFjtV9vfbWRz8rIF1EBvY0q7NAOap8yhKwjx/l02dfnquLEaDGWA9
	Tq4w==
X-Gm-Message-State: ALoCoQlUy5A98e81TfdiUJOtHdSetVGKRK45voVygepCmyPaPV5YxCcsxrnOGTR8rFaiCe0tPwzM
X-Received: by 10.50.25.162 with SMTP id d2mr6343071igg.11.1433947580561; Wed,
	10 Jun 2015 07:46:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.38.11 with HTTP; Wed, 10 Jun 2015 07:46:00 -0700 (PDT)
In-Reply-To: <1433221637508.32807@inedasystems.com>
References: <D1711C04.5B1A6%belen.barros.pena@intel.com>
	<1431062039464.37764@inedasystems.com>
	<CAJ2CSBvXZwPkzSFMwEYwwmjWaQCFZqpeM-LDKEiEmRtag5aXvw@mail.gmail.com>
	<1431078146099.25248@inedasystems.com>
	<CAJ2CSBvBaoPC-4Rny4a+DbJoEjYKMP5T19Yzp21XxVf35v5qnw@mail.gmail.com>
	<1433221637508.32807@inedasystems.com>
From: "Damian, Alexandru" <alexandru.damian@intel.com>
Date: Wed, 10 Jun 2015 15:46:00 +0100
Message-ID: <CAJ2CSBtr_-Tfj9irE3JgFmN6Sxf6T+fh70eak1=0D7Nz3zSzAQ@mail.gmail.com>
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issue with toaster
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
X-List-Received-Date: Wed, 10 Jun 2015 14:46:25 -0000
Content-Type: multipart/alternative; boundary=e89a8f83ad652ab75c05182af08b

--e89a8f83ad652ab75c05182af08b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Yes, actually we have some problems checking out layers when the build
starts. But I'm not seeing anything that may be related to imported layers.

The problem that I'm seeing in your logs is actually tracked here:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7505

So I'm guessing you're seeing the same symptoms.

Cheers,
Alex

On Tue, Jun 2, 2015 at 6:07 AM, Raghavendra Kakarla <
Raghavendra.Kakarla@inedasystems.com> wrote:

>  Hi Alex,
>
>
>  Do you have any updates on this issue?
>
>
>  Regards,
>
> Raghavendra K.
>  ------------------------------
> *From:* Damian, Alexandru <alexandru.damian@intel.com>
> *Sent:* Friday, May 15, 2015 7:38 PM
>
> *To:* Raghavendra Kakarla
> *Cc:* Barros Pena, Belen; yocto@yoctoproject.org
> *Subject:* Re: [yocto] Issue with toaster
>
>   I'm still investigating these bugs.
>
>  There is something funny going on, but I didn't figure out the root
> cause yet.
>
>  Alex
>
> On Fri, May 8, 2015 at 10:42 AM, Raghavendra Kakarla <
> Raghavendra.Kakarla@inedasystems.com> wrote:
>
>>  Hi Alex,
>>
>>
>>  I attached the Toaster Web logs with this mail.
>>
>>
>>  Please find the attachments.
>>
>>
>>  Thanks and Regards,
>>
>>
>>  Raghavendra K.
>>   ------------------------------
>> *From:* Damian, Alexandru <alexandru.damian@intel.com>
>> *Sent:* Friday, May 8, 2015 2:24 PM
>> *To:* Raghavendra Kakarla
>> *Cc:* Barros Pena, Belen; yocto@yoctoproject.org
>>
>> *Subject:* Re: [yocto] Issue with toaster
>>
>>    Hello,
>>
>>  Is there any error message displayed on screen ?
>>
>>  Can you please paste bin your latest *toaster_web.log* file  and send
>> us the link ?
>> You can find your latest *toaster_web.log* file by looking in
>> */tmp/toaster_** and take most recent one. One way to do this is:
>>
>>  $ find /tmp/toaster_* -printf '%T@ %p\0' | sort -zk 1nr | xargs -0n1 |
>> cut -d " " -f 2 | head -1
>>
>>  Thank you,
>> Alex
>>
>> On Fri, May 8, 2015 at 6:14 AM, Raghavendra Kakarla <
>> Raghavendra.Kakarla@inedasystems.com> wrote:
>>
>>> Hi Belen,
>>>
>>> I am using yocto fido.
>>>
>>> I am entered the my custom layer git repository url(Which is our local
>>> git repository where our product corresponding recipe layers re there),=
a
>>> unique layer name and our git repository revision number.
>>>
>>> We entered these data but the import layer version is not respond.
>>>
>>> Thanks and Regards,
>>>
>>> Raghavendra K.
>>> ________________________________________
>>> From: Barros Pena, Belen <belen.barros.pena@intel.com>
>>> Sent: Thursday, May 7, 2015 6:17 PM
>>> To: Raghavendra Kakarla; yocto@yoctoproject.org
>>> Subject: Re: [yocto] Issue with toaster
>>>
>>> On 07/05/2015 10:18, "Raghavendra Kakarla"
>>> <Raghavendra.Kakarla@inedasystems.com> wrote:
>>>
>>> >Hi,
>>> >
>>> >I have an issue while importing custom layer in toaster. When i gave t=
he
>>> >all layer information for importing the layer and click on the import
>>> >layer button in toaster it    wont respond.
>>> >Could you please help for resolving this issue.
>>>
>>> Hi Raghavendra,
>>>
>>> We would need a bit more information to understand what's happening:
>>>
>>> * Which branch are you using (fido or master). If you are using master,
>>> which commit?
>>> * Which data are you entering in the import layer form? Keep in mind th=
at
>>> you must provide a git url, a unique layer name and a revision. Without
>>> that information, the "import layer" button will remain stubbornly
>>> inactive and nothing will happen when you click on it.
>>>
>>> Cheers
>>>
>>> Bel=C3=A9n
>>>
>>> >
>>> >
>>> >
>>> >Thanks in advance.
>>> >
>>> >
>>> > Regards,
>>> > Raghavendra K.
>>> >
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>>
>>
>>  --
>>  Alex Damian
>> Yocto Project
>>  SSG / OTC
>>
>
>
>
>  --
>  Alex Damian
> Yocto Project
>  SSG / OTC
>



--=20
Alex Damian
Yocto Project
SSG / OTC

--e89a8f83ad652ab75c05182af08b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Hi,</div><div class=3D"gmail_default" style=3D"font-family:tahom=
a,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:t=
ahoma,sans-serif">Yes, actually we have some problems checking out layers w=
hen the build starts. But I&#39;m not seeing anything that may be related t=
o imported layers.</div><div class=3D"gmail_default" style=3D"font-family:t=
ahoma,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:tahoma,sans-serif">The problem that I&#39;m seeing in your logs is actua=
lly tracked here:</div><div class=3D"gmail_default" style=3D"font-family:ta=
homa,sans-serif"><br></div><div class=3D"gmail_default" style><font face=3D=
"tahoma, sans-serif"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D7505">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7505</a>=
</font><br></div><div class=3D"gmail_default" style><font face=3D"tahoma, s=
ans-serif"><br></font></div><div class=3D"gmail_default" style><font face=
=3D"tahoma, sans-serif">So I&#39;m guessing you&#39;re seeing the same symp=
toms.</font></div><div class=3D"gmail_default" style><font face=3D"tahoma, =
sans-serif"><br></font></div><div class=3D"gmail_default" style><font face=
=3D"tahoma, sans-serif">Cheers,</font></div><div class=3D"gmail_default" st=
yle><font face=3D"tahoma, sans-serif">Alex</font></div></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Tue, Jun 2, 2015 at 6:07 AM,=
 Raghavendra Kakarla <span dir=3D"ltr">&lt;<a href=3D"mailto:Raghavendra.Ka=
karla@inedasystems.com" target=3D"_blank">Raghavendra.Kakarla@inedasystems.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#ff=
ffff;font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi Alex,</p>
<p><br>
</p>
<p>Do you have any updates on this issue?</p>
<p><br>
</p>
<p>Regards,</p>
<p>Raghavendra K.<br>
</p>
<div style=3D"color:rgb(33,33,33)">
<hr style=3D"display:inline-block;width:98%">
<div dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif=
" color=3D"#000000"><b>From:</b> Damian, Alexandru &lt;<a href=3D"mailto:al=
exandru.damian@intel.com" target=3D"_blank">alexandru.damian@intel.com</a>&=
gt;<br>
<b>Sent:</b> Friday, May 15, 2015 7:38 PM<div><div class=3D"h5"><br>
<b>To:</b> Raghavendra Kakarla<br>
<b>Cc:</b> Barros Pena, Belen; <a href=3D"mailto:yocto@yoctoproject.org" ta=
rget=3D"_blank">yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Issue with toaster</div></div></font>
<div>=C2=A0</div>
</div><div><div class=3D"h5">
<div>
<div dir=3D"ltr">
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">I&#39;=
m still investigating these bugs.</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">There =
is something funny going on, but I didn&#39;t figure out the root cause yet=
.</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Alex</=
div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Fri, May 8, 2015 at 10:42 AM, Raghavendra Kak=
arla <span dir=3D"ltr">
&lt;<a href=3D"mailto:Raghavendra.Kakarla@inedasystems.com" target=3D"_blan=
k">Raghavendra.Kakarla@inedasystems.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#ff=
ffff;font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi Alex,</p>
<p><br>
</p>
<p>I attached the Toaster Web logs with this mail.</p>
<p><br>
</p>
<p>Please find the attachments.</p>
<span>
<p><br>
</p>
<p>Thanks and Regards,</p>
<p><br>
</p>
<p>Raghavendra K.<br>
</p>
</span>
<div style=3D"color:rgb(33,33,33)">
<hr style=3D"display:inline-block;width:98%">
<div dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif=
" color=3D"#000000"><b>From:</b> Damian, Alexandru &lt;<a href=3D"mailto:al=
exandru.damian@intel.com" target=3D"_blank">alexandru.damian@intel.com</a>&=
gt;<br>
<b>Sent:</b> Friday, May 8, 2015 2:24 PM<br>
<b>To:</b> Raghavendra Kakarla<br>
<b>Cc:</b> Barros Pena, Belen; <a href=3D"mailto:yocto@yoctoproject.org" ta=
rget=3D"_blank">
yocto@yoctoproject.org</a>
<div>
<div><br>
<b>Subject:</b> Re: [yocto] Issue with toaster</div>
</div>
</font>
<div>=C2=A0</div>
</div>
<div>
<div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Hello,=
</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Is the=
re any error message displayed on screen ?=C2=A0</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Can yo=
u please paste bin your latest
<i>toaster_web.log</i> file =C2=A0and send us the link ?</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">You ca=
n find your latest
<i>toaster_web.log</i> file by looking in <i>/tmp/toaster_*</i> and take mo=
st recent one. One way to do this is:</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br>
</div>
<div class=3D"gmail_default"><font face=3D"monospace, monospace" size=3D"1"=
>$ find /tmp/toaster_* -printf &#39;%T@ %p\0&#39; | sort -zk 1nr | xargs -0=
n1 | cut -d &quot; &quot; -f 2 | head -1<br>
</font></div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br>
</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Thank =
you,</div>
<div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Alex</=
div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Fri, May 8, 2015 at 6:14 AM, Raghavendra Kaka=
rla <span dir=3D"ltr">
&lt;<a href=3D"mailto:Raghavendra.Kakarla@inedasystems.com" target=3D"_blan=
k">Raghavendra.Kakarla@inedasystems.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi Belen,<br>
<br>
I am using yocto fido.<br>
<br>
I am entered the my custom layer git repository url(Which is our local git =
repository where our product corresponding recipe layers re there),a unique=
 layer name and our git repository revision number.<br>
<br>
We entered these data but the import layer version is not respond.<br>
<br>
Thanks and Regards,<br>
<br>
Raghavendra K.<br>
________________________________________<br>
From: Barros Pena, Belen &lt;<a href=3D"mailto:belen.barros.pena@intel.com"=
 target=3D"_blank">belen.barros.pena@intel.com</a>&gt;<br>
Sent: Thursday, May 7, 2015 6:17 PM<br>
To: Raghavendra Kakarla; <a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">
yocto@yoctoproject.org</a><br>
Subject: Re: [yocto] Issue with toaster<br>
<div>
<div><br>
On 07/05/2015 10:18, &quot;Raghavendra Kakarla&quot;<br>
&lt;<a href=3D"mailto:Raghavendra.Kakarla@inedasystems.com" target=3D"_blan=
k">Raghavendra.Kakarla@inedasystems.com</a>&gt; wrote:<br>
<br>
&gt;Hi,<br>
&gt;<br>
&gt;I have an issue while importing custom layer in toaster. When i gave th=
e<br>
&gt;all layer information for importing the layer and click on the import<b=
r>
&gt;layer button in toaster it=C2=A0 =C2=A0 wont respond.<br>
&gt;Could you please help for resolving this issue.<br>
<br>
Hi Raghavendra,<br>
<br>
We would need a bit more information to understand what&#39;s happening:<br=
>
<br>
* Which branch are you using (fido or master). If you are using master,<br>
which commit?<br>
* Which data are you entering in the import layer form? Keep in mind that<b=
r>
you must provide a git url, a unique layer name and a revision. Without<br>
that information, the &quot;import layer&quot; button will remain stubbornl=
y<br>
inactive and nothing will happen when you click on it.<br>
<br>
Cheers<br>
<br>
Bel=C3=A9n<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;Thanks in advance.<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt; Raghavendra K.<br>
&gt;<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div>
</div>
</blockquote>
</div>
<br>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div>
<div dir=3D"ltr">Alex Damian
<div>Yocto Project<br>
</div>
<div>SSG / OTC=C2=A0</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<br>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div>
<div dir=3D"ltr">Alex Damian
<div>Yocto Project<br>
</div>
<div>SSG / OTC=C2=A0</div>
</div>
</div>
</div>
</div>
</div></div></div>
</div>

</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature"><div dir=3D"ltr">Alex Damian<div>Yocto Project<br></di=
v><div>SSG / OTC=C2=A0</div></div></div>
</div>

--e89a8f83ad652ab75c05182af08b--
