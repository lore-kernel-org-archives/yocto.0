Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66CD7E009ED; Fri, 15 May 2015 07:09:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A2ADE00960
	for <yocto@yoctoproject.org>; Fri, 15 May 2015 07:09:15 -0700 (PDT)
Received: by iebgx4 with SMTP id gx4so112989725ieb.0
	for <yocto@yoctoproject.org>; Fri, 15 May 2015 07:09:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ZdtXjVbXqdNtp+sxdYCAFH5bRDzU4EEEBMIwGRZBseM=;
	b=Xll85dwPlXZD8R9EQySZwaOI2XMVMkYQKl+Z74lsmyoPzxiXZ9P0cuIr2ooNr7kyiJ
	1zV2NF6BGCnd+XyrEOxSGtURmdEjjWLxxpC8KT9RcOcAA5Pc5gVtZUum5R3UfpFej9n5
	KTVIGyCuGGNt6/CcU5aN9SA1HcBElGxtMELhLlEA5N0pjf2mxNEgWm0YQJs11rCfIdDz
	Wv5UAC7lwL0pTqj4YW9KodHsa6gQraIVIeWcv+goBzC9053mTj6cw2XRk9f45lkcB569
	jTlyc46N4K5URiPWLRZVIDICMWEsf1q0Wd+9fKY7EsDQ0tWDQCg5HLOW6yDMfc9trowl
	XlbQ==
X-Gm-Message-State: ALoCoQk0380W6WrHOf5H07ZL6qFOlSKybJo3nhww4Ks6TIrFczTGd5Lp4HdOpgFuL9oAfTGY1rBg
X-Received: by 10.107.129.163 with SMTP id l35mr12448586ioi.32.1431698955312; 
	Fri, 15 May 2015 07:09:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.10.67 with HTTP; Fri, 15 May 2015 07:08:54 -0700 (PDT)
In-Reply-To: <1431078146099.25248@inedasystems.com>
References: <D1711C04.5B1A6%belen.barros.pena@intel.com>
	<1431062039464.37764@inedasystems.com>
	<CAJ2CSBvXZwPkzSFMwEYwwmjWaQCFZqpeM-LDKEiEmRtag5aXvw@mail.gmail.com>
	<1431078146099.25248@inedasystems.com>
From: "Damian, Alexandru" <alexandru.damian@intel.com>
Date: Fri, 15 May 2015 15:08:54 +0100
Message-ID: <CAJ2CSBvBaoPC-4Rny4a+DbJoEjYKMP5T19Yzp21XxVf35v5qnw@mail.gmail.com>
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
X-List-Received-Date: Fri, 15 May 2015 14:09:18 -0000
Content-Type: multipart/alternative; boundary=001a113ebd7ea82f3b05161f63e2

--001a113ebd7ea82f3b05161f63e2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I'm still investigating these bugs.

There is something funny going on, but I didn't figure out the root cause
yet.

Alex

On Fri, May 8, 2015 at 10:42 AM, Raghavendra Kakarla <
Raghavendra.Kakarla@inedasystems.com> wrote:

>  Hi Alex,
>
>
>  I attached the Toaster Web logs with this mail.
>
>
>  Please find the attachments.
>
>
>  Thanks and Regards,
>
>
>  Raghavendra K.
>  ------------------------------
> *From:* Damian, Alexandru <alexandru.damian@intel.com>
> *Sent:* Friday, May 8, 2015 2:24 PM
> *To:* Raghavendra Kakarla
> *Cc:* Barros Pena, Belen; yocto@yoctoproject.org
>
> *Subject:* Re: [yocto] Issue with toaster
>
>   Hello,
>
>  Is there any error message displayed on screen ?
>
>  Can you please paste bin your latest *toaster_web.log* file  and send us
> the link ?
> You can find your latest *toaster_web.log* file by looking in
> */tmp/toaster_** and take most recent one. One way to do this is:
>
>  $ find /tmp/toaster_* -printf '%T@ %p\0' | sort -zk 1nr | xargs -0n1 |
> cut -d " " -f 2 | head -1
>
>  Thank you,
> Alex
>
> On Fri, May 8, 2015 at 6:14 AM, Raghavendra Kakarla <
> Raghavendra.Kakarla@inedasystems.com> wrote:
>
>> Hi Belen,
>>
>> I am using yocto fido.
>>
>> I am entered the my custom layer git repository url(Which is our local
>> git repository where our product corresponding recipe layers re there),a
>> unique layer name and our git repository revision number.
>>
>> We entered these data but the import layer version is not respond.
>>
>> Thanks and Regards,
>>
>> Raghavendra K.
>> ________________________________________
>> From: Barros Pena, Belen <belen.barros.pena@intel.com>
>> Sent: Thursday, May 7, 2015 6:17 PM
>> To: Raghavendra Kakarla; yocto@yoctoproject.org
>> Subject: Re: [yocto] Issue with toaster
>>
>> On 07/05/2015 10:18, "Raghavendra Kakarla"
>> <Raghavendra.Kakarla@inedasystems.com> wrote:
>>
>> >Hi,
>> >
>> >I have an issue while importing custom layer in toaster. When i gave th=
e
>> >all layer information for importing the layer and click on the import
>> >layer button in toaster it    wont respond.
>> >Could you please help for resolving this issue.
>>
>> Hi Raghavendra,
>>
>> We would need a bit more information to understand what's happening:
>>
>> * Which branch are you using (fido or master). If you are using master,
>> which commit?
>> * Which data are you entering in the import layer form? Keep in mind tha=
t
>> you must provide a git url, a unique layer name and a revision. Without
>> that information, the "import layer" button will remain stubbornly
>> inactive and nothing will happen when you click on it.
>>
>> Cheers
>>
>> Bel=C3=A9n
>>
>> >
>> >
>> >
>> >Thanks in advance.
>> >
>> >
>> > Regards,
>> > Raghavendra K.
>> >
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
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

--001a113ebd7ea82f3b05161f63e2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">I&#39;m still investigating these bugs.</div><div class=3D"gmail=
_default" style=3D"font-family:tahoma,sans-serif"><br></div><div class=3D"g=
mail_default" style=3D"font-family:tahoma,sans-serif">There is something fu=
nny going on, but I didn&#39;t figure out the root cause yet.</div><div cla=
ss=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br></div><div=
 class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Alex</div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, May=
 8, 2015 at 10:42 AM, Raghavendra Kakarla <span dir=3D"ltr">&lt;<a href=3D"=
mailto:Raghavendra.Kakarla@inedasystems.com" target=3D"_blank">Raghavendra.=
Kakarla@inedasystems.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#ff=
ffff;font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi Alex,</p>
<p><br>
</p>
<p>I attached the Toaster Web logs with this mail.</p>
<p><br>
</p>
<p>Please find the attachments.</p><span class=3D"">
<p><br>
</p>
<p>Thanks and Regards,</p>
<p><br>
</p>
<p>Raghavendra K.<br>
</p>
</span><div style=3D"color:rgb(33,33,33)">
<hr style=3D"display:inline-block;width:98%">
<div dir=3D"ltr"><font style=3D"font-size:11pt" color=3D"#000000" face=3D"C=
alibri, sans-serif"><b>From:</b> Damian, Alexandru &lt;<a href=3D"mailto:al=
exandru.damian@intel.com" target=3D"_blank">alexandru.damian@intel.com</a>&=
gt;<br>
<b>Sent:</b> Friday, May 8, 2015 2:24 PM<br>
<b>To:</b> Raghavendra Kakarla<br>
<b>Cc:</b> Barros Pena, Belen; <a href=3D"mailto:yocto@yoctoproject.org" ta=
rget=3D"_blank">yocto@yoctoproject.org</a><div><div class=3D"h5"><br>
<b>Subject:</b> Re: [yocto] Issue with toaster</div></div></font>
<div>=C2=A0</div>
</div><div><div class=3D"h5">
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
<div class=3D"gmail_default"><font size=3D"1" face=3D"monospace, monospace"=
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
=3D"_blank">yocto@yoctoproject.org</a><br>
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
</div></div></div>
</div>

</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature"><div dir=3D"ltr">Alex Damian<div>Yocto Project<br></di=
v><div>SSG / OTC=C2=A0</div></div></div>
</div>

--001a113ebd7ea82f3b05161f63e2--
