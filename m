Return-Path: <adam.yh.lee@gmail.com>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24F7FE00726
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 08:14:34 -0700 (PDT)
Received: by mail-vc0-f174.google.com with SMTP id ld13so1229129vcb.5
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 08:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=dx4iFfSGwF80W8BPCDnCIj6eR0YMBV6NQjbp4zxEMkk=;
	b=tWm2vCMTgsAL++KWIpSAF4VPCAuz0wwaIAiFl2ZU95a3E196h9a+l/cluFjl1tpKv0
	vfpx3rTKZjaqy1YErX9FCq0mTVp9OJG9KGy9InlqT2/98BH/vbtxeTw+KVEa1ubSEMZT
	fFRUHKPnwNV+Z74Rfg6dBmcWwXcZSzOtVUxP86jD8GqVSi0GHQD13UbGW/gzUn7ykLFh
	v2rVN0fRjbBWAygL2ySTLbct/YbejgQwNuqISbGzKKiR3hyaBiKh+kyTmUiUQT253Jwu
	OMSnZK5Vnk5WoitbrTXOZICNLQ40jAIhcZ9qaQusxJEQ0v8F6V5PWTBJVrrLDgdmiRp+
	6vVg==
MIME-Version: 1.0
X-Received: by 10.220.131.210 with SMTP id y18mr1995364vcs.12.1394723673573;
	Thu, 13 Mar 2014 08:14:33 -0700 (PDT)
Received: by 10.52.169.99 with HTTP; Thu, 13 Mar 2014 08:14:33 -0700 (PDT)
In-Reply-To: <5D833673AB94D9489A7F7F73E9E611C814A9B525@chn-hclt-mbs04.HCLT.CORP.HCL.IN>
References: <5D833673AB94D9489A7F7F73E9E611C814A9B525@chn-hclt-mbs04.HCLT.CORP.HCL.IN>
Date: Thu, 13 Mar 2014 08:14:33 -0700
Message-ID: <CAFeBWL58tiRay+tU+cMn+BK-c1OuqHQvoi_WeM_nwLMADJi=NQ@mail.gmail.com>
From: Adam Lee <adam.yh.lee@gmail.com>
To: "Sathish Kumar Balasubramaniam -ERS, HCL Tech" <b-sathishkumar@hcl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Porting a BSP from Dylan to Dora
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
X-List-Received-Date: Thu, 13 Mar 2014 15:14:35 -0000
Content-Type: multipart/alternative; boundary=001a113488841f901104f47e6939

--001a113488841f901104f47e6939
Content-Type: text/plain; charset=ISO-8859-1

I believe there is a migration guide in the Yocto Project Reference Manual

Adam


On Thu, Mar 13, 2014 at 8:10 AM, Sathish Kumar Balasubramaniam -ERS, HCL
Tech <b-sathishkumar@hcl.com> wrote:

>  Hello,
>
>
>
> We have a BSP which is based on Dylan version.
>
> To port this BSP to Dora version what will be the steps needed ?
>
> Please can someone detail on this.
>
>
>
>
>
> Thanks,
>
> B.Sathish Kumar
>
>
>
> ::DISCLAIMER::
>
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>
> The contents of this e-mail and any attachment(s) are confidential and
> intended for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as
> information could be intercepted, corrupted,
> lost, destroyed, arrive late or incomplete, or may contain viruses in
> transmission. The e mail and its contents
> (with or without referred errors) shall therefore not attach any liability
> on the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of the
> author and may not necessarily reflect the
> views or opinions of HCL or its affiliates. Any form of reproduction,
> dissemination, copying, disclosure, modification,
> distribution and / or publication of this message without the prior
> written consent of authorized representative of
> HCL is strictly prohibited. If you have received this email in error
> please delete it and notify the sender immediately.
> Before opening any email and/or attachments, please check them for viruses
> and other defects.
>
>
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113488841f901104f47e6939
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I believe there is a migration guide in the Yocto Project =
Reference Manual<div><br></div><div>Adam</div></div><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote">On Thu, Mar 13, 2014 at 8:10 AM, Sat=
hish Kumar Balasubramaniam -ERS, HCL Tech <span dir=3D"ltr">&lt;<a href=3D"=
mailto:b-sathishkumar@hcl.com" target=3D"_blank">b-sathishkumar@hcl.com</a>=
&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">We have a BSP which is based on Dylan version.<u></u=
><u></u></p>
<p class=3D"MsoNormal">To port this BSP to Dora version what will be the st=
eps needed ?<u></u><u></u></p>
<p class=3D"MsoNormal">Please can someone detail on this.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">B.Sathish Kumar<u></u><u></u></p>
</div>
<span style=3D"FONT-FAMILY:&#39;Arial&#39;,&#39;sans-serif&#39;;COLOR:gray;=
FONT-SIZE:7.5pt">
<p style=3D"MARGIN:0in 0in 0pt" class=3D"MsoNormal"><br><br><font style=3D"=
FONT-FAMILY:&#39;Arial&#39;,&#39;sans-serif&#39;;COLOR:gray;FONT-SIZE:9px">=
::DISCLAIMER::<br>---------------------------------------------------------=
---------------------------------------------------------------------------=
----------------</font></p>

<p style=3D"MARGIN:0in 0in 0pt" class=3D"MsoNormal"><font style=3D"FONT-FAM=
ILY:&#39;Arial&#39;,&#39;sans-serif&#39;;COLOR:gray;FONT-SIZE:11px">The con=
tents of this e-mail and any attachment(s) are confidential and intended fo=
r the named recipient(s) only.<br>
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted, <br>lost, destroyed, arrive late or i=
ncomplete, or may contain viruses in transmission. The e mail and its conte=
nts <br>
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates. <br>Views or opinions, if any, =
presented in this email are solely those of the author and may not necessar=
ily reflect the <br>
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification, <br>distribution and / or publ=
ication of this message without the prior written consent of authorized rep=
resentative of <br>
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately. <br>Before opening any email =
and/or attachments, please check them for viruses and other defects.</font>=
</p>

<p style=3D"MARGIN:0in 0in 0pt" class=3D"MsoNormal"><font style=3D"FONT-FAM=
ILY:&#39;Arial&#39;,&#39;sans-serif&#39;;COLOR:gray;FONT-SIZE:11px">-------=
---------------------------------------------------------------------------=
------------------------------------------------------------------</font></=
p>
</span></div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a113488841f901104f47e6939--
