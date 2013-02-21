Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f173.google.com (mail-ea0-f173.google.com
	[209.85.215.173]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 8F676E0047F
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 10:45:01 -0800 (PST)
Received: by mail-ea0-f173.google.com with SMTP id i1so3928077eaa.4
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2013 10:44:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=JinZtJvBYNh3lcosRVDDWG6deZ24GkV/eYqKwwox0OA=;
	b=Mqu7nRxuw+OiZ+dYUtGut0sGCZhztI9ulN5p4rysNDUb3hHGQw9H/jCR1G49Ouy7xo
	ZApXys5VryawspKk0NV6aBMxy1E96BO5MBNs0cQihh+pObH9rJtBdjlVnyiVXiq/xq3S
	CSwa2/aeD2BUHcaXKnAtK89izTa4aARWCnorQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=JinZtJvBYNh3lcosRVDDWG6deZ24GkV/eYqKwwox0OA=;
	b=b6W2MsiH75AvyKK0zzOE5YUPG5xx0FCuBES+WTVQCEsX1MxYGa3O4aucWgkgBqQp8O
	8gqdNfs/F78QDHAPMRkcEL/n5FYECreEK9rlrYFwXjJ1Qi0l/zwlPlTDkBoANy45oWZi
	YaEEpoTTpRfMtLaxH62nehHKGztqqGTL/QIQFo+3bHdCTFTFbb5ktdgojRz3C1I8dAPV
	/bSPWcPLJnR5AYyw2KYVg2HVdT/S2QNIZU48DUXeJ8oZwz7VChvkebXcCGa49knuRii7
	k0tFS0K0tRDYEG5ov3Jt+5GjXEW2IgnBgpgVn/MGBQeh6ybY51DPw3W2txJTeijp8nDQ
	ZoPw==
MIME-Version: 1.0
X-Received: by 10.14.3.70 with SMTP id 46mr83966027eeg.2.1361472299515; Thu,
	21 Feb 2013 10:44:59 -0800 (PST)
Received: by 10.223.127.70 with HTTP; Thu, 21 Feb 2013 10:44:59 -0800 (PST)
In-Reply-To: <91388EAC-6853-45D6-82E8-9FBC88995E53@vitalograph.ie>
References: <91388EAC-6853-45D6-82E8-9FBC88995E53@vitalograph.ie>
Date: Thu, 21 Feb 2013 10:44:59 -0800
Message-ID: <CA+gsK-q-1z6RqRtDDPi2XMg=z-LkK08iCSOz7Hq-+bigOTHQvw@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Micheal Donohue <Micheal.Donohue@vitalograph.ie>
X-Gm-Message-State: ALoCoQkG0tNfL6YMMMeaQxppBMtvB/dRsr/ysMnv1pBC6tGxQTESkG6hSNAy64E1hZP7I8cqxFHP
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issue with Quick Start Guide and Bitbake
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Feb 2013 18:45:02 -0000
Content-Type: multipart/alternative; boundary=047d7b66f619c8bfb104d64078f5

--047d7b66f619c8bfb104d64078f5
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Michael,

You have most likely forgotten to source your build environment:

source <pokydir>/oe-init-build-env <buildenv>

Poky includes BitBake but from the error message it look as if you are
calling a BitBake that is installed on your system in /usr/bin.

Rudi


On Thu, Feb 21, 2013 at 4:29 AM, Micheal Donohue <
Micheal.Donohue@vitalograph.ie> wrote:

>   Hi Guys,****
>
> ** **
>
> I=92m trying to get to grips with Yocto and have been working my way thro=
ugh
> the quick start guide to get an image to run in the QEMU emulator. When I
> get to the run the bitbake command($ bitbake =96k core-image-sato ) I get=
 a
> Python error, I=92ve included a link to a pastebin of the error ****
>
> ** **
>
> *http://pastebin.com/kf3nQ2z6*
>
> ** **
>
> I=92ve tried Goggling around and  can=92t find any similar errors. Any he=
lp
> would be much appreciated.****
>
> ** **
>
> Thanks****
>
> Micheal****
>
> ** **
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
--=20
*Rudolf J. Streif*
Director of Embedded Solutions
The Linux Foundation

rudolf.streif@linux.com
Phone: +1.619.631.5383
Skype: rudolfstreif
PGP: RSA 2048/2048 D6E7D28B

Linux Foundation Events Schedule:  events.linuxfoundation.org
Linux Foundation Training Schedule: training.linuxfoundation.org

--047d7b66f619c8bfb104d64078f5
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Michael,<div><br></div><div style>You have most likely =
forgotten to source your build environment:</div><div style><br></div><div =
style>source &lt;pokydir&gt;/oe-init-build-env &lt;buildenv&gt;</div><div s=
tyle>
<br></div><div style>Poky includes BitBake but from the error message it lo=
ok as if you are calling a BitBake that is installed on your system in /usr=
/bin.</div><div style><br></div><div style>Rudi</div></div><div class=3D"gm=
ail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Feb 21, 2013 at 4:29 AM, Micheal=
 Donohue <span dir=3D"ltr">&lt;<a href=3D"mailto:Micheal.Donohue@vitalograp=
h.ie" target=3D"_blank">Micheal.Donohue@vitalograph.ie</a>&gt;</span> wrote=
:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">



<div dir=3D"auto">
<div><span></span></div>
<div>


<div>
<p class=3D"MsoNormal">Hi Guys,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">I=92m trying to get to grips with Yocto and have bee=
n working my way through the quick start guide to get an image to run in th=
e QEMU emulator. When I get to the run the bitbake command($ bitbake =96k c=
ore-image-sato ) I get a Python error,
 I=92ve included a link to a pastebin of the error <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal"><b><a href=3D"http://pastebin.com/kf3nQ2z6" target=
=3D"_blank">http://pastebin.com/kf3nQ2z6</a><u></u><u></u></b></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">I=92ve tried Goggling around and=A0 can=92t find any=
 similar errors. Any help would be much appreciated.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Thanks<span class=3D"HOEnZb"><font color=3D"#888888"=
><u></u><u></u></font></span></p><span class=3D"HOEnZb"><font color=3D"#888=
888">
<p class=3D"MsoNormal">Micheal<span><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</font></span></div>
</div>
</div>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>--=A0<br=
><font face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b></font>=
<div><font face=3D"arial, helvetica, sans-serif">Director of Embedded Solut=
ions</font></div>
<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>
<div><font face=3D"arial, helvetica, sans-serif">Phone: +1.619.631.5383</fo=
nt></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolfstre=
if</font></div><div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 20=
48/2048 D6E7D28B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>
Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>
</span></font></div>
</div>

--047d7b66f619c8bfb104d64078f5--
