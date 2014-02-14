Return-Path: <laurene.guelorget@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3679E00798
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 04:51:09 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id w7so9280544lbi.35
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 04:51:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=2LlEpupHW0Ah4HWPXirqy5LyQ7Uu3I5fVas7BdAq4v4=;
	b=RW+yFV2c2Nhl0B63VLMxm0bqQ9CDwAR1sS7gVzpSX2ZQGv5SdXzyMs8kk4lJmguvhK
	9WaLxQ6lFF1xNuC8VKgGedPdiLEGiCphPcu3YrpcW7n/RZG6DSvjjqE432/dUvk6w01W
	eXBcznaw9O1zGvbwwvksAHN72qPt7lwFwkM7hZRN4AejdJ4VpThnYmDByP7OxGamzsfB
	HiEknqUJAx8xIM+gyNuas+P5tEXGUx1LO7ZckDUGMRCOhnez3ORpiJ24L2RJgtUcUYcm
	JlahPlnyfap5MC4VVqi+WRlsBlKBrNsY2AqCy6VeZ0tvi6jf2n8c3hLzzv2gOAi1KCx0
	5gIg==
X-Received: by 10.112.124.71 with SMTP id mg7mr1515590lbb.57.1392382267941;
	Fri, 14 Feb 2014 04:51:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.112.34.106 with HTTP; Fri, 14 Feb 2014 04:50:37 -0800 (PST)
In-Reply-To: <73A048818337FA45835A946BCB303D721BC21E5D@IRSMSX104.ger.corp.intel.com>
References: <73A048818337FA45835A946BCB303D721BC21E5D@IRSMSX104.ger.corp.intel.com>
From: =?ISO-8859-1?Q?Laur=E8ne_Guelorget?= <laurene.guelorget@gmail.com>
Date: Fri, 14 Feb 2014 13:50:37 +0100
Message-ID: <CADYp-eGkWq5pjfQdr9+Dk_4aA_4cN2xA75HDJuuNXzCCHoPGug@mail.gmail.com>
To: "Farquhar, Paul W" <paul.w.farquhar@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with the package manager opkg on Intel
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
X-List-Received-Date: Fri, 14 Feb 2014 12:51:12 -0000
Content-Type: multipart/alternative; boundary=047d7bfd0d8678e6d404f25d4255

--047d7bfd0d8678e6d404f25d4255
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,

Thank you for the answer, but now I have another problem. Since I need to
run java
on the Intel Galileo, I downloaded the Yocto OS "Full_SDK_OpenJDK6" but I
can't
seem to boot on this OS. I connect the Galileo on the computer but the
serial port
is not recognized, even after waiting half an hour. This is strange because
with the
smaller OS (LINUX_IMAGE_FOR_SD_Intel_Galileo), I didn't have this issue.

Sincerely,


2014-02-13 14:02 GMT+01:00 Farquhar, Paul W <paul.w.farquhar@intel.com>:

> Hi Laur=E8ne
>
> for opkg on Galileo have a look here:
> https://communities.intel.com/message/221209
>
> Generally there is a lot of Galileo information to be found here:
> https://communities.intel.com/community/makers
>
>
> You may not be aware that there are currently two BSP updates to 0.7.5,
> the latest is 0.9.0
> https://downloadcenter.intel.com/Detail_Desc.aspx?DwnldID=3D23197
>
> If you don't want to build an image yourself and add Java, here is a link
> where apparently that has already been done:
>
> Yocto Project Linux for Intel Galileo with SDKs, JDK, JVM and Tomcat.
> http://ccc.ntu.edu.tw/index.php/en/news/40
>
> Regards,
>
> Paul
>
> Intel GmbH
> Dornacher Strasse 1
> 85622 Feldkirchen/Muenchen, Deutschland
> Sitz der Gesellschaft: Feldkirchen bei Muenchen
> Geschaeftsfuehrer: Christian Lamprechter, Hannes Schwaderer, Douglas Lusk
> Registergericht: Muenchen HRB 47456
> Ust.-IdNr./VAT Registration No.: DE129385895
> Citibank Frankfurt a.M. (BLZ 502 109 00) 600119052
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20

*Laur=E8ne GuelorgetEl=E8ve ing=E9nieur en 5=E8me ann=E9e =E0 Polytech'Gren=
oble
<http://www.polytech-grenoble.fr>*

*Fili=E8re R=E9seaux Informatiques et Communication Multim=E9diaSp=E9cialit=
=E9 "**R=E9seau
et **Syst=E8me"*
*Rejoignez moi sur LinkedIn.
<http://fr.linkedin.com/pub/laur%C3%A8ne-guelorget/68/9aa/89a>*

--047d7bfd0d8678e6d404f25d4255
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>Thank you for the answer, but now I have ano=
ther problem. Since I need to run java <br>on the Intel Galileo, I download=
ed the Yocto OS &quot;Full_SDK_OpenJDK6&quot; but I can&#39;t <br>seem to b=
oot on this OS. I connect the Galileo on the computer but the serial port <=
br>

is not recognized, even after waiting half an hour. This is strange because=
 with the=A0<div>smaller OS (LINUX_IMAGE_FOR_SD_Intel_Galileo), I didn&#39;=
t have this issue.</div><div><br></div><div>Sincerely,</div></div><div clas=
s=3D"gmail_extra">

<br><br><div class=3D"gmail_quote">2014-02-13 14:02 GMT+01:00 Farquhar, Pau=
l W <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.w.farquhar@intel.com" targ=
et=3D"_blank">paul.w.farquhar@intel.com</a>&gt;</span>:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">

Hi Laur=E8ne<br>
<br>
for opkg on Galileo have a look here: <a href=3D"https://communities.intel.=
com/message/221209" target=3D"_blank">https://communities.intel.com/message=
/221209</a><br>
<br>
Generally there is a lot of Galileo information to be found here: <a href=
=3D"https://communities.intel.com/community/makers" target=3D"_blank">https=
://communities.intel.com/community/makers</a><br>
<br>
<br>
You may not be aware that there are currently two BSP updates to 0.7.5, the=
 latest is 0.9.0<br>
<a href=3D"https://downloadcenter.intel.com/Detail_Desc.aspx?DwnldID=3D2319=
7" target=3D"_blank">https://downloadcenter.intel.com/Detail_Desc.aspx?Dwnl=
dID=3D23197</a><br>
<br>
If you don&#39;t want to build an image yourself and add Java, here is a li=
nk where apparently that has already been done:<br>
<br>
Yocto Project Linux for Intel Galileo with SDKs, JDK, JVM and Tomcat.<br>
<a href=3D"http://ccc.ntu.edu.tw/index.php/en/news/40" target=3D"_blank">ht=
tp://ccc.ntu.edu.tw/index.php/en/news/40</a><br>
<br>
Regards,<br>
<br>
Paul<br>
<br>
Intel GmbH<br>
Dornacher Strasse 1<br>
85622 Feldkirchen/Muenchen, Deutschland<br>
Sitz der Gesellschaft: Feldkirchen bei Muenchen<br>
Geschaeftsfuehrer: Christian Lamprechter, Hannes Schwaderer, Douglas Lusk<b=
r>
Registergericht: Muenchen HRB 47456<br>
Ust.-IdNr./VAT Registration No.: DE129385895<br>
Citibank Frankfurt a.M. (BLZ 502 109 00) 600119052<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr"><i>Laur=E8ne Guelorget<br>El=E8ve ing=E9nieur en 5=E8me ann=E9e =E0=A0=
<a href=3D"http://www.polytech-grenoble.fr" target=3D"_blank">Polytech&#39;=
Grenoble</a></i><div>

<i>Fili=E8re R=E9seaux Informatiques et Communication Multim=E9dia<br>Sp=E9=
cialit=E9 &quot;</i><i>R=E9seau et=A0</i><i>Syst=E8me&quot;</i></div><div><=
i><a href=3D"http://fr.linkedin.com/pub/laur%C3%A8ne-guelorget/68/9aa/89a" =
target=3D"_blank">Rejoignez moi sur LinkedIn.</a></i></div>

</div>
</div>

--047d7bfd0d8678e6d404f25d4255--
