Return-Path: <vivek.berodhia@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11DDBE00D46; Thu, 19 Oct 2017 22:57:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vivek.berodhia[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.178 listed in dnsbl.sorbs.net]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B61F5E00D41
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 22:57:11 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id 134so12202078ioo.0
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 22:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UsDvW0asOVQyG7Gpf+GT3Ygy4Lj3wWFTGevrCh22dM0=;
	b=V2vZl1K5+O3rWAze8ZvTD8+/JS9Pm6ylHf4qip559mWy+Tc+o34l3+DG61ce7SJHRo
	nBXZ/U0l5XJdsdcCC86TMet4OjBK8mm6mmI7T8fzgcmcbMURwUlMJXG80L3TWm6YBLQg
	h7mUwMyR4MxF+dtcvrjbiddQMNPnnhHrPBI8P/LPps8ny2s+JvwtJ6JPEL3h19i64LLy
	GiGmGoFG5vWrNPpD5edp4QVVRAdsYg6g5XPS8R9bIxoRJsWfjGm+SKzvHKwdoBhRddcm
	LHsQV/SSnRcYvfwSjVvom5d8YUg4k8Zl07ZB/iYY5bBePHOZx263o3Ka8v8nqg6QdvwY
	N6LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UsDvW0asOVQyG7Gpf+GT3Ygy4Lj3wWFTGevrCh22dM0=;
	b=QDZfgOcl3bGT4MjvyjyNRUJHHW0u7gHE/4ChJ4+kGFt56b2uYFX02XpQLtAZ0yYJYU
	D2tWWDJyN9HbbDZfOuMjKdPf5c6g6nJvq1kKWpdK7r4Uo6dhrgDJKcyXYOsoHGJPR7iE
	fu/2lWwMKj6d/4faVhRHTu+YfTDLdox6c6f53QO0nD9UdykAfPpE+TexU9w0b6iAk4k7
	MVFp3HZBZYGQpR1WIY4mUufGwbO9v4gKzsl9YozjW7zGvbK212Kmec2Wn1Udv9FFm2oQ
	dtutB4T/V9vvAxiUo+WtQ9Gy8fSQwOpCux94GsuxCfqju1lLsiHbD4le3VLCVVMHJGE/
	iulA==
X-Gm-Message-State: AMCzsaXcHky8Q7sb5ceskXK7I93m5+jZi01uUDwjSVTvuuHT3n7qKz6T
	BKRDE4QtVMsexiIQ57yYlis/9Um7BjWJu1OPI3I=
X-Google-Smtp-Source: ABhQp+RdhYalTAEzvQ1HQEQMFIAiWz4QUGugvWf197u3W6TvwQc6pwz1nNMySl5eAMnxSUB7shvtKquHnTcuPDXBJUQ=
X-Received: by 10.107.81.20 with SMTP id f20mr5087872iob.274.1508479030823;
	Thu, 19 Oct 2017 22:57:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.159.211 with HTTP; Thu, 19 Oct 2017 22:57:10 -0700 (PDT)
In-Reply-To: <CAGxhq2b6KSnAsnZpvCvoQmuf69dQr5PRZzRBH3yebFYkQTCtaQ@mail.gmail.com>
References: <CAEqFnOVa2ST948grkg2kOQOCh3T8g6-Y70heZriZHdN7KOynYQ@mail.gmail.com>
	<CAGxhq2b6KSnAsnZpvCvoQmuf69dQr5PRZzRBH3yebFYkQTCtaQ@mail.gmail.com>
From: Vivek Berodhia <vivek.berodhia@gmail.com>
Date: Fri, 20 Oct 2017 11:27:10 +0530
Message-ID: <CAEqFnOXLfqQWU1Rphmg-r8GfEsGcteqQNr5HBNowvorUwf7Kyg@mail.gmail.com>
To: Alex Kiernan <alex.kiernan@hivehome.com>
Cc: yocto@yoctoproject.org
Subject: Re: conflicts between attempted installs of base-files-3.0.14-r89.prsg_x86_base and procps-3.3.12-r0.corei7_64
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
X-List-Received-Date: Fri, 20 Oct 2017 05:57:13 -0000
Content-Type: multipart/alternative; boundary="089e0825e998c89141055bf42400"

--089e0825e998c89141055bf42400
Content-Type: text/plain; charset="UTF-8"

Thanks Alex,

both "base-files" and "procps" are providing sysctl.conf. I looked at the
sysctl.conf provided by "procps" packages, I did not feel its very
important.


I think we can ask yocto to skip this. We can do this by modifying
procps_*.bb file


After removing below two lines from procps_*.bb, i have not seen that issue.



*"**CONFFILES_${PN} = "${sysconfdir}/sysctl.conf"*

*"install -m 0644 ${WORKDIR}/sysctl.conf ${D}${sysconfdir}/sysctl.conf"*


Thanks and Regards,
Vivek Kumar
On Thu, Oct 19, 2017 at 1:21 PM, Alex Kiernan <alex.kiernan@hivehome.com>
wrote:

> On 19 October 2017 at 08:19, Vivek Berodhia <vivek.berodhia@gmail.com>
> wrote:
>
>> Hi All,
>>
>> I am new to Yocto Project development, I am building core-image-minimal
>> with meta-secure-core for x86 platform. But facing issue in do_rootfs.
>> Issue may be simple but i have not found any solution after google a lot.
>> Please suggest where should i make changes, so that it will accept both
>> extension or generate all the files with same extension.
>>
>> Main Error snippet:
>>
>> Error: Transaction check error:
>>   file /etc/sysctl.conf conflicts between attempted installs of
>> base-files-3.0.14-r89.prsg_x86_base and procps-3.3.12-r0.corei7_64
>>
>>
> Something's creating /etc/sysctl.conf as part of base-files - check your
> base-files appends to see where it's coming from as I can't see it in that
> recipe upstream (though I'm looking at master not pyro).
>
> --
> Alex Kiernan
>
> hivehome.com <http://www.hivehome.com>
>
>
>
> Hive | London | Cambridge | Houston | Toronto
> The information contained in or attached to this email is confidential and
> intended only for the use of the individual(s) to which it is addressed. It
> may contain information which is confidential and/or covered by legal
> professional or other privilege. The views expressed in this email are not
> necessarily the views of Centrica plc, and the company, its directors,
> officers or employees make no representation or accept any liability for
> their accuracy or completeness unless expressly stated to the contrary.
> Centrica Connected Home Limited (company no: 5782908), registered in
> England and Wales with its registered office at Millstream, Maidenhead
> Road, Windsor, Berkshire SL4 5GD.
>



-- 
Vivek Kr. Berodhia
Contact No. 09468486085

--089e0825e998c89141055bf42400
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Alex,<br><br>

<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:rgb(34,34,34)">both &quot;base-files&quot; and &quot;procps&quot; are pr=
oviding
sysctl.conf. I looked at the sysctl.conf provided by &quot;procps&quot;
packages, I did not feel its very important.=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:rgb(34,34,34)"></span></p>

<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:rgb(34,34,34)"><br></span></p><p class=3D"MsoNormal" style=3D"background=
:white none repeat scroll 0% 0%"><span style=3D"font-size:9.5pt;font-family=
:&quot;Arial&quot;,sans-serif;color:rgb(34,34,34)">I think we can ask yocto=
 to skip this. We can do this by
modifying procps_*.bb file <br></span></p><p class=3D"MsoNormal" style=3D"b=
ackground:white none repeat scroll 0% 0%"><br><span style=3D"font-size:9.5p=
t;font-family:&quot;Arial&quot;,sans-serif;color:rgb(34,34,34)">

</span></p><p class=3D"MsoNormal" style=3D"background:white none repeat scr=
oll 0% 0%"><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,san=
s-serif;color:rgb(34,34,34)">After removing below two lines from procps_*.b=
b, i have not seen that issue.<br></span></p><span style=3D"font-size:9.5pt=
;font-family:&quot;Arial&quot;,sans-serif;color:rgb(34,34,34)"></span>

<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:rgb(34,34,34)">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<strong><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:rgb(34,34,34)">&quot;</span><span style=3D"white-space:pre-wrap"=
></span></strong><strong><span style=3D"font-size:9.5pt;font-family:&quot;A=
rial&quot;,sans-serif;color:black">CONFFILES_${PN} =3D
&quot;${sysconfdir}/sysctl.conf&quot;</span></strong><span style=3D"font-si=
ze:9.5pt;font-family:&quot;Arial&quot;,sans-serif;color:rgb(34,34,34)"></sp=
an></p>

<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<strong><span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-s=
erif;color:black"><span style=3D"white-space:pre-wrap">&quot;</span><span s=
tyle=3D"white-space:pre-wrap">install -m 0644 ${WORKDIR}/sysctl.conf ${D}${=
sysconfdir}/sysctl.conf</span><span style=3D"white-space:pre-wrap">&quot;</=
span></span></strong><span style=3D"font-size:9.5pt;font-family:&quot;Arial=
&quot;,sans-serif;color:rgb(34,34,34)"></span></p>



<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:9.5pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:black"><br></span></p><div class=3D"gmail_extra">Thanks and Regards,</di=
v><div class=3D"gmail_extra">Vivek Kumar<br></div><div class=3D"gmail_extra=
"><div class=3D"gmail_quote">On Thu, Oct 19, 2017 at 1:21 PM, Alex Kiernan =
<span dir=3D"ltr">&lt;<a href=3D"mailto:alex.kiernan@hivehome.com" target=
=3D"_blank">alex.kiernan@hivehome.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_=
extra"><span class=3D"gmail-"><div><div class=3D"gmail-m_118532712347186439=
9m_2298572193448294863m_4489968623081558702gmail_signature"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div><div dir=3D"ltr">On 19 October 2017 at 08:19, =
Vivek Berodhia <span dir=3D"ltr">&lt;<a href=3D"mailto:vivek.berodhia@gmail=
.com" target=3D"_blank">vivek.berodhia@gmail.com</a>&gt;</span> wrote:<br><=
/div></div></div></div></div></div></div></span><div class=3D"gmail_quote">=
<span class=3D"gmail-"><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div>Hi All,<br><br></div>I am new to Yocto Project developm=
ent, I am building core-image-minimal with meta-secure-core for x86 platfor=
m. But facing issue in do_rootfs. Issue may be simple but i have not found =
any solution after google a lot. Please suggest where should i make changes=
, so that it will accept both extension or generate all the files with same=
 extension.<br clear=3D"all"><div><div><br></div><div>Main Error snippet:</=
div><div><br></div><div>Error: Transaction check error:<br>=C2=A0 file /etc=
/sysctl.conf conflicts between attempted installs of base-files-3.0.14-r89.=
prsg_x86<wbr>_base and procps-3.3.12-r0.corei7_64<br><br></div></div></div>=
</blockquote><div><br></div></span><div>Something&#39;s creating /etc/sysct=
l.conf as part of base-files - check your base-files appends to see where i=
t&#39;s coming from as I can&#39;t see it in that recipe upstream (though I=
&#39;m looking at master not pyro).</div><span class=3D"gmail-HOEnZb"><font=
 color=3D"#888888"><div dir=3D"ltr"><span style=3D"font-size:12.8px;font-fa=
mily:arial,helvetica,sans-serif"><br class=3D"gmail-m_1185327123471864399m_=
2298572193448294863m_4489968623081558702gmail-Apple-interchange-newline">--=
=C2=A0</span></div><div dir=3D"ltr"><span style=3D"font-size:12.8px;font-fa=
mily:arial,helvetica,sans-serif">Alex Kiernan</span></div></font></span></d=
iv></div></div><span class=3D"gmail-HOEnZb"><font color=3D"#888888">

<br>
<a href=3D"http://www.hivehome.com" target=3D"_blank">hivehome.com</a><div>=
<div><br></div><div><img src=3D"https://s3-eu-west-1.amazonaws.com/81023081=
2/HiveSig.png"></div><div><br></div><div><br></div><div><div style=3D"font-=
size:12px;background-color:rgb(255,255,255);margin:0cm 0cm 0.0001pt;font-fa=
mily:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b7">Hive | London | C=
ambridge | Houston | Toronto<u></u><u></u></font></div><div style=3D"font-s=
ize:12px;background-color:rgb(255,255,255);margin:0cm 0cm 0.0001pt;font-fam=
ily:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b7">The information co=
ntained in or attached to this email is confidential and intended only for =
the use of the individual(s) to which it is addressed. It may contain infor=
mation which is confidential and/or covered by legal professional or other =
privilege. The views expressed in this email are not necessarily the views =
of Centrica plc, and the company, its directors, officers or employees make=
 no representation or accept any liability for their accuracy or completene=
ss unless expressly stated to the contrary.=C2=A0<u></u><u></u></font></div=
><div style=3D"font-size:12px;background-color:rgb(255,255,255);margin:0cm =
0cm 0.0001pt;font-family:Arial,sans-serif"><font size=3D"1" color=3D"#b7b7b=
7">Centrica Connected Home Limited (company no: 5782908), registered in Eng=
land and Wales with its registered office at Millstream, Maidenhead Road, W=
indsor, Berkshire SL4 5GD.</font></div></div></div></font></span></blockquo=
te></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div>Vivek Kr. Berodhia<br>Contact No.=
 09468486085<br></div></div></div></div></div>
</div></div>

--089e0825e998c89141055bf42400--
