Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0745DE00D42; Wed,  8 Nov 2017 08:38:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.169 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jerry.lian[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f169.google.com (mail-ot0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1E7DE00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:38:32 -0800 (PST)
Received: by mail-ot0-f169.google.com with SMTP id s88so2809225ota.4
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FdRcB0/pbWJbo0r4dVL8sMyajXfYbYyzcOd24JZ4si4=;
	b=VlkaL5h1E/sAKPiUWQv/YD4UABBllbB5ksTJEPU0tTSqFc6VBDCuZqIrcniutWahOK
	2Ya3liXlrOfKtOCharszqxm9x0+iCOGtxM/BSbwP2xCR8NkvwoU+K/L9YBjQ0IDXzjDb
	Lk21excV90Xw2mDASSURoTIM5mpza6ZkWAQORQ62+JZzCA3sTsIrhF4Qsrwh2rqqvvog
	agoPwE4OJIHskpF93kPcm33cSSPeTgkgi0n1Umy8wepXbKeDbhghJYe3IFDslY6N4LML
	Zuu5nvlXkwbWD6z9f0Nt9hwpPqRMU5DdqARY4dXaXvW01A5IduYTkG/vxNAHNK/kYXIt
	GSUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FdRcB0/pbWJbo0r4dVL8sMyajXfYbYyzcOd24JZ4si4=;
	b=UozVNAHMcZg2CxhbkCTrXdoNradjN8fYwwXG9SYlix71vhFQ7jjjpT/60VdH4rGk2v
	iyyYvPXPJyjnNH0S94QiyQJXaAwiboA/HKsdsUs8w5RHUscf4oXnsT4UtabFNkNbteNj
	t5vu78OsBS9mXrX4b7Cn9TSayFcENfZuQIZXgmy3Z//atCj/1BxiUo9AWAT7/I5W10p0
	0SYTOgKUNFzd5KPYl5iVwuVYtCCwNcSqlMJfPZ/BqvpNSVu7ITJCZgUeh4x+XrOUahgT
	CA+4s8odUz8CGD0zliYPkykLUTwtTU3ydvsr7+2Pt+JqqD7ahxjzS5UMbyf6BGQuoOAu
	+zuQ==
X-Gm-Message-State: AJaThX60kqQEnvaFzbbOdhZh18AqFIJ2mvdbApYcWm3OsCAGAJuoDsbF
	IpxutlXvOdvnx88ICbokp1c88SnhXkGM3G7ArDE=
X-Google-Smtp-Source: AGs4zMYr4w3W5tokW/0UF9PTgCLhmzQtjJJh/N69d9HOGXbfSnSmryuIcoBrdkLgqrNO2qmF3o4IeYGrxIiizRtcl48=
X-Received: by 10.157.68.232 with SMTP id p40mr744607otg.199.1510159112336;
	Wed, 08 Nov 2017 08:38:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 8 Nov 2017 08:38:31 -0800 (PST)
In-Reply-To: <CAJTo0LZYLhQWPKvwwsx_r-icVC-78QnOH-idvD8ag9NrTcxwQg@mail.gmail.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<7b91c698b1dd25c12d10792fa298e48c@sw-optimization.com>
	<CAE0QtjMWEr78VDNzPCd=sC2Uze9FwK=r23yNUt3ZsVEDTRvrfw@mail.gmail.com>
	<CAJTo0LaapSRMFq79XrQL1RJUgG1ZJtp909y+MOoUbuUBPHN37g@mail.gmail.com>
	<CAE0QtjMF=wfkypu8Fy=3Mq-Jd8RXvH2i6wmbmATpOBobzfssvg@mail.gmail.com>
	<CAJTo0LZYLhQWPKvwwsx_r-icVC-78QnOH-idvD8ag9NrTcxwQg@mail.gmail.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 8 Nov 2017 11:38:31 -0500
Message-ID: <CAE0QtjO__n4qCFySZ=r4vEJ_6VO=hGrRqxgwVdrzUYC0Am9QmA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Annoying "rerun to fix" bug for bitbake: task failed, but rerun can fix it.
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
X-List-Received-Date: Wed, 08 Nov 2017 16:38:34 -0000
Content-Type: multipart/alternative; boundary="f403043c4d1c71fd98055d7b5199"

--f403043c4d1c71fd98055d7b5199
Content-Type: text/plain; charset="UTF-8"

Isn't my problem clear: the failure pop-up randomly!
Do you mean the random failure also help you for debugging?




On Wed, Nov 8, 2017 at 11:33 AM, Burton, Ross <ross.burton@intel.com> wrote:

> Well next time it happens feel free to reply to this thread. Otherwise
> you're asking us "fix my problem" without saying what the problem is.
>
> Ross
>
> On 8 November 2017 at 16:31, Jerry Lian <jerry.lian@gmail.com> wrote:
>
>> So that is further tricky part:
>> * it may fail when finishing 20%, 40% 60%, 80%
>> * And the failure last time may not appear next time.
>> * So it just pop-up randomly
>>
>> (By the way, I just build brand new PC with 16 threads CPU, 32G memory,
>> and install Ubuntu 16.4.3 with ESXI-6.5)
>> (so really confused)
>>
>>
>>
>> On Wed, Nov 8, 2017 at 11:24 AM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>>
>>> The autobuilder does about 50 builds a night using pure poky and we
>>> don't see this, so again: what recipe and what errors?
>>>
>>> Ross
>>>
>>> On 8 November 2017 at 16:22, Jerry Lian <jerry.lian@gmail.com> wrote:
>>>
>>>> I am not talking about my own layer or recipe.
>>>> It happens even when I run the demo QEMU/beaglebone builds.
>>>> (I just download poky, and make NO modifications)
>>>>
>>>>
>>>>
>>>>
>>>> On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz <eas@sw-optimization.com>
>>>> wrote:
>>>>
>>>>> Most likely a dependency problem of the package which fails w/ exit
>>>>> code 1.
>>>>> Check the dependencies in the recipe and w/ Yocto's bitbake it self.
>>>>>
>>>>> Cheers
>>>>> Eric
>>>>>
>>>>>
>>>>> Am 08.11.2017 16:49, schrieb Jerry Lian:
>>>>>
>>>>> I am not sure whether it is a bug or an error: * Quite often, bitbake
>>>>>> will fail before finishing, with message like: ... task failed with exit
>>>>>> code 1... * But if you rerun bitbake, it will continue to build. * So
>>>>>> sometimes I have to rerun many times for finish one build ---- annoying!
>>>>>> (by the way, my CPU can run 16 threads)
>>>>>>
>>>>>> Any idea to clear this annoying bug? thanks.
>>>>>>
>>>>>
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>
>>
>

--f403043c4d1c71fd98055d7b5199
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Isn&#39;t my problem clear: the failure pop-up random=
ly!<br></div>Do you mean the random failure also help you for debugging?<br=
><br><br><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Wed, Nov 8, 2017 at 11:33 AM, Burton, Ross <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">W=
ell next time it happens feel free to reply to this thread. Otherwise you&#=
39;re asking us &quot;fix my problem&quot; without saying what the problem =
is.<span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross<=
/div></font></span></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On 8 November 2017 at 16:31=
, Jerry Lian <span dir=3D"ltr">&lt;<a href=3D"mailto:jerry.lian@gmail.com" =
target=3D"_blank">jerry.lian@gmail.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div dir=3D"ltr"><span><div><div><div><div>So that is f=
urther tricky part:<br></div>* it may fail when finishing 20%, 40% 60%, 80%=
<br></div><div>* And the failure last time may not appear next time.<br></d=
iv>* So it just pop-up randomly<br><br></div>(By the way, I just build bran=
d new PC with 16 threads CPU, 32G memory, and install Ubuntu 16.4.3 with ES=
XI-6.5)<br></div>(so really confused)</span><div class=3D"m_699336027650349=
3409m_-9180168540301135828gmail-yj6qo m_6993360276503493409m_-9180168540301=
135828gmail-ajU"><div id=3D"m_6993360276503493409m_-9180168540301135828gmai=
l-:ov" class=3D"m_6993360276503493409m_-9180168540301135828gmail-ajR"><img =
class=3D"m_6993360276503493409m_-9180168540301135828gmail-ajT" src=3D"https=
://ssl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif"><br><br></div></di=
v></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><span>On =
Wed, Nov 8, 2017 at 11:24 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D=
"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&=
gt;</span> wrote:<br></span><div><div class=3D"m_6993360276503493409h5"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div dir=3D"ltr">The autobuilder does about 50 =
builds a night using pure poky and we don&#39;t see this, so again: what re=
cipe and what errors?<span class=3D"m_6993360276503493409m_-918016854030113=
5828HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross</div></font></=
span></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><=
div class=3D"m_6993360276503493409m_-9180168540301135828h5">On 8 November 2=
017 at 16:22, Jerry Lian <span dir=3D"ltr">&lt;<a href=3D"mailto:jerry.lian=
@gmail.com" target=3D"_blank">jerry.lian@gmail.com</a>&gt;</span> wrote:<br=
></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"m_6993360276=
503493409m_-9180168540301135828h5"><span class=3D"m_6993360276503493409m_-9=
180168540301135828m_5644338540134727684im m_6993360276503493409m_-918016854=
0301135828m_5644338540134727684HOEnZb"><div dir=3D"ltr"><div>I am not talki=
ng about my own layer or recipe.<br></div>It happens even when I run the de=
mo QEMU/beaglebone builds.<br>(I just download poky, and make NO modificati=
ons)<br><br><br><br></div></span><div class=3D"m_6993360276503493409m_-9180=
168540301135828m_5644338540134727684HOEnZb"><div class=3D"m_699336027650349=
3409m_-9180168540301135828m_5644338540134727684h5"><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On Wed, Nov 8, 2017 at 10:56 AM, Eric Sch=
warz <span dir=3D"ltr">&lt;<a href=3D"mailto:eas@sw-optimization.com" targe=
t=3D"_blank">eas@sw-optimization.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">Most likely a dependency problem of the package which fai=
ls w/ exit code 1.<br>
Check the dependencies in the recipe and w/ Yocto&#39;s bitbake it self.<br=
>
<br>
Cheers<span class=3D"m_6993360276503493409m_-9180168540301135828m_564433854=
0134727684m_-5461088350158078915HOEnZb"><font color=3D"#888888"><br>
Eric</font></span><div class=3D"m_6993360276503493409m_-9180168540301135828=
m_5644338540134727684m_-5461088350158078915HOEnZb"><div class=3D"m_69933602=
76503493409m_-9180168540301135828m_5644338540134727684m_-546108835015807891=
5h5"><br>
<br>
Am 08.11.2017 16:49, schrieb Jerry Lian:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I am not sure whether it is a bug or an error: * Quite often, bitbake will =
fail before finishing, with message like: ... task failed with exit code 1.=
.. * But if you rerun bitbake, it will continue to build. * So sometimes I =
have to rerun many times for finish one build ---- annoying! (by the way, m=
y CPU can run 16 threads)<br>
<br>
Any idea to clear this annoying bug? thanks.<br>
</blockquote>
</div></div></blockquote></div><br></div>
</div></div><br></div></div><span>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></span></blockquote></div><br></div>
</blockquote></div></div></div><br></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--f403043c4d1c71fd98055d7b5199--
