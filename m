Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B487E00D7F; Wed, 20 Dec 2017 01:03:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66CDBE00C0F
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 01:03:17 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id b18so11678517pgv.10
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 01:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=fPBiQr5aaeNacMbUE16mGAqz3fyKM+IaRB7V0zDGA20=;
	b=NuMlNn5PGlzgLxDkf+kkl22CCim2MLML3vYUpsUfCkmHuNPUeJ01Fa7inr393ncAfN
	psQSI6bEPgnBFR92MrpKm2mx7dKKCeaRN+4LWU5+OXdB5DOjdPaB7LuNIU5EB1/+Npya
	5aOMuNzwV+2xQZQwlnm2tV2VE1Xk6pTYB4N4JGgicIuEIwxz1PEuqjyBxjhaaM6NizAm
	eOEjinK6H9MtVDq9PSG39PvNRPbFSsxbJ7ouEY1oQDUFqUndScWXehX9vtiPuEFHle8w
	jaSzV2pUSC30bCEJ57HjWdtZ/QDxNn+H9J+4EBOYrtERRvJ/igO/eirwABPEaT+Q+d5m
	P6Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=fPBiQr5aaeNacMbUE16mGAqz3fyKM+IaRB7V0zDGA20=;
	b=mIsZybGAtdI9zMEWIkAfuXYFyxLjjlq2XlMY8j6K7VgH1h1rx/rkIQiOF+InR/64uZ
	5L4fPKvqV62edTlVZ0qcUdNCgh2/VTM8x/K1aEmKbYtXkVsJkELSJanIqkh/rU55Kun3
	8Gs0GC1Oew2uFM247Ch09g3obqVxTxzRU117/6a6TJ1lhYt4lfPrqeB4WkXUPpSAJEt8
	1Tebh7a4UkgNkbbIVKJFTFpBi7b3Geua3jp1jqjGrS8DmsVWwWbcsiFxGGYbMNoPg47F
	7IoaKPwtgDlwEXowg1ZVXQ6w1T1dYRN6mFpZFPMMKdxYCrT/h04zRoHzcLPyZ3QdXFPg
	0ssw==
X-Gm-Message-State: AKGB3mKiQ/cZuogleXkMQuS1pyRJh6Uk1NIySkMk2g1JXtB8Q9J3Q+yW
	/SZ8AeyfLHcKqs/WkSSAnS1ly5Osygl7vJeGvkU=
X-Google-Smtp-Source: ACJfBovqJPcRHIhZfczYrcDKK2viXHAmFCNia7V9Z+fab8x1jsPsoIUWSdw0E5G/mclfp50ZNefUo96eGOiAFZD3Kyo=
X-Received: by 10.99.52.74 with SMTP id b71mr5661198pga.383.1513760596563;
	Wed, 20 Dec 2017 01:03:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Wed, 20 Dec 2017 01:03:16 -0800 (PST)
In-Reply-To: <CAPb0b+OoCGwv_F3qp-hs87QurWk0RrYWADriZ_Vfh_NXiJyxZw@mail.gmail.com>
References: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
	<CAPb0b+ODNZ1k2rH6+CJYbCPzLtXFmHB76NnWK4yVSDEQ68skdA@mail.gmail.com>
	<ab3eb2b5-07af-838f-43be-0c5a7222fbc1@embexus.com>
	<CAPb0b+OoCGwv_F3qp-hs87QurWk0RrYWADriZ_Vfh_NXiJyxZw@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Wed, 20 Dec 2017 10:03:16 +0100
Message-ID: <CAPb0b+NJKoXidhcwuOkCYnqUz4zi7kT2VBJF=Qn0UcYGtK5gCw@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: rfkill cannot open control device
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
X-List-Received-Date: Wed, 20 Dec 2017 09:03:18 -0000
Content-Type: multipart/alternative; boundary="94eb2c0c7758a21b1c0560c1da45"

--94eb2c0c7758a21b1c0560c1da45
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

i have it now installed as a kernel module
but still i get can not open rfkill control device at boot time


On Wed, Dec 20, 2017 at 5:28 AM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> Bluez5 is already added to local.conf. It gets installed, if i instal
> rpi-basic-image
> with no changes to local.conf, if i use core-image-minimal
> Bluez5 gets installed but not rfkill ..
>
> On Tue, Dec 19, 2017 at 7:16 PM, Ayoub Zaki <ayoub.zaki@embexus.com>
> wrote:
>
>>
>>
>> On 19.12.2017 19:03, Sherif Omran wrote:
>>
>>> how can i add rfkill recipe?
>>>
>>> On Tue, Dec 19, 2017 at 4:23 PM, Sherif Omran <sherifomran2000@gmail.co=
m
>>> <mailto:sherifomran2000@gmail.com>> wrote:
>>>
>>>     i used core-image-minimal for a raspberry pi 0w. But i get rfkill
>>>     can not open control device. when i give rfkill , i get the
>>>     syntanx output, this means it exists.
>>>     the wifi driver is installed.
>>>
>>>     What is the rfkill device? is it /dev/rfkill ?
>>>
>>>
>> rfkill is part of Bluez5, you can add it to your image recipe.
>>
>>
>>>
>>>
>>>
>>>
>> --
>> Ayoub Zaki
>> Embedded Systems Consultant
>>
>> Vaihinger Stra=C3=9Fe 2/1
>> D-71634 Ludwigsburg
>>
>> Email    : ayoub.zaki@embexus.com
>> Homepage : https://embexus.com
>> VAT No.  : DE313902634
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--94eb2c0c7758a21b1c0560c1da45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>i have it now installed as a kernel module <br></div>=
but still i get can not open rfkill control device at boot time<br><br></di=
v><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Dec 20,=
 2017 at 5:28 AM, Sherif Omran <span dir=3D"ltr">&lt;<a href=3D"mailto:sher=
ifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>=
Bluez5 is already added to local.conf. It gets installed, if i instal rpi-b=
asic-image<br></div>with no changes to local.conf, if i use core-image-mini=
mal<br></div>Bluez5 gets installed but not rfkill .. <br></div><div class=
=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Tue, Dec 19, 2017 at 7:16 PM, Ayoub Zaki <span dir=3D"ltr">=
&lt;<a href=3D"mailto:ayoub.zaki@embexus.com" target=3D"_blank">ayoub.zaki@=
embexus.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span><=
br>
<br>
On 19.12.2017 19:03, Sherif Omran wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span>
how can i add rfkill recipe?<br>
<br></span><span>
On Tue, Dec 19, 2017 at 4:23 PM, Sherif Omran &lt;<a href=3D"mailto:sherifo=
mran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.com</a> &lt;mai=
lto:<a href=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifom=
ran2000@gmail.<wbr>com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 i used core-image-minimal for a raspberry pi 0w. But i get rf=
kill<br>
=C2=A0 =C2=A0 can not open control device. when i give rfkill , i get the<b=
r>
=C2=A0 =C2=A0 syntanx output, this means it exists.<br>
=C2=A0 =C2=A0 the wifi driver is installed.<br>
<br>
=C2=A0 =C2=A0 What is the rfkill device? is it /dev/rfkill ?<br>
<br>
</span></blockquote>
<br>
rfkill is part of Bluez5, you can add it to your image recipe.<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
<br>
<br><span class=3D"m_-5047853542300147610HOEnZb"><font color=3D"#888888">
</font></span></blockquote><span class=3D"m_-5047853542300147610HOEnZb"><fo=
nt color=3D"#888888">
<br>
-- <br>
Ayoub Zaki<br>
Embedded Systems Consultant<br>
<br>
Vaihinger Stra=C3=9Fe 2/1<br>
D-71634 Ludwigsburg<br>
<br>
Email=C2=A0 =C2=A0 : <a href=3D"mailto:ayoub.zaki@embexus.com" target=3D"_b=
lank">ayoub.zaki@embexus.com</a><br>
Homepage : <a href=3D"https://embexus.com" rel=3D"noreferrer" target=3D"_bl=
ank">https://embexus.com</a><br>
VAT No.=C2=A0 : DE313902634<br>
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--94eb2c0c7758a21b1c0560c1da45--
