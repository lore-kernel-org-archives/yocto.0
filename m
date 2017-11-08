Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BACAE00D4D; Wed,  8 Nov 2017 08:31:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.51 listed in dnsbl.sorbs.net]
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
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03A3EE00D42
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:31:47 -0800 (PST)
Received: by mail-oi0-f51.google.com with SMTP id c77so2355067oig.0
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+237xYM8F/WozNpzq94EYfSkp/W/V/Hr8UlMgDQC7Zk=;
	b=g+r5UhnaO28DhDUXlWgzQWOq6lOr3QqXHnDyiKdC/5MfCmFeqdjoQx0LMLq9wc2Oki
	vXIO25X6mrihyNKcMWyUVUeymg3aXPrVSQA2XCbhh3sCb/wbaTvl5ZN9DluDgjJXvXuw
	yVx1BEc1KtgjBvG2nqlmpGdTuCiOuAYCCO8IiUjNCYQX+zkd4ORK82TNKWBqc0yEGTR3
	fQptD4dHlgSpoOUiAz97zuQSWEHeLd2vLGeCCRtQr4zek4f51TXoxGYAJPXL0tzheekb
	/vdh7yqWWq5Ywm6KXKp8sADAchwq7PZdrDu2l1yFRwlPFis3RJcN+tcDbSy40UI4Mdlh
	SS7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+237xYM8F/WozNpzq94EYfSkp/W/V/Hr8UlMgDQC7Zk=;
	b=gUSihu12+A8hw+MRP7gddmR8V9syw2edkdUlaYcUPNpZE7cq7Vqc9MPSBBqyF7e1xP
	CCThZO9cs7hREhvgIb9c/wvcDa8hCNyQEyUSGWRnaL09kO7nM78MIQwA3a+F3fQchy3i
	C3VfkhXRwL14JxVRi6IkHifa9xJaqwOUS+P4JLiNkZ1ARseFJM2nyvhVa4BWg2yDv38Z
	FgT3WqTlo1u5oeM2ra4YpD2y0hxw7fcENWAUlWcDaT9kuZkZjV35vAnEYEQEiZyItooF
	ISZT40FbygAHoYgk3AcGSKoPBSImCRCkUZF/pFCHIExq3Rx3xTWa0vtgDqvYQQfstkQj
	so5w==
X-Gm-Message-State: AJaThX7XJxNd86/eWc78PKeiNPaC95ypDgHK5SbcxdSzkCz6RLVCG1H+
	oG8FWfd41T997tTH9x+eDVAmHMhuslUhlIQ89mc=
X-Google-Smtp-Source: ABhQp+SKcNi1WTHM3F3ZrlDUZoMzHfdcsJZvdJerffbei+uzGbjZF79go5FX+NZjIBU2f3Rionw9oUAy8Dl5pqjFCKM=
X-Received: by 10.202.171.216 with SMTP id u207mr610163oie.430.1510158707195; 
	Wed, 08 Nov 2017 08:31:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 8 Nov 2017 08:31:46 -0800 (PST)
In-Reply-To: <CAJTo0LaapSRMFq79XrQL1RJUgG1ZJtp909y+MOoUbuUBPHN37g@mail.gmail.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<7b91c698b1dd25c12d10792fa298e48c@sw-optimization.com>
	<CAE0QtjMWEr78VDNzPCd=sC2Uze9FwK=r23yNUt3ZsVEDTRvrfw@mail.gmail.com>
	<CAJTo0LaapSRMFq79XrQL1RJUgG1ZJtp909y+MOoUbuUBPHN37g@mail.gmail.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 8 Nov 2017 11:31:46 -0500
Message-ID: <CAE0QtjMF=wfkypu8Fy=3Mq-Jd8RXvH2i6wmbmATpOBobzfssvg@mail.gmail.com>
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
X-List-Received-Date: Wed, 08 Nov 2017 16:31:48 -0000
Content-Type: multipart/alternative; boundary="001a113cecb84c04ce055d7b3981"

--001a113cecb84c04ce055d7b3981
Content-Type: text/plain; charset="UTF-8"

So that is further tricky part:
* it may fail when finishing 20%, 40% 60%, 80%
* And the failure last time may not appear next time.
* So it just pop-up randomly

(By the way, I just build brand new PC with 16 threads CPU, 32G memory, and
install Ubuntu 16.4.3 with ESXI-6.5)
(so really confused)



On Wed, Nov 8, 2017 at 11:24 AM, Burton, Ross <ross.burton@intel.com> wrote:

> The autobuilder does about 50 builds a night using pure poky and we don't
> see this, so again: what recipe and what errors?
>
> Ross
>
> On 8 November 2017 at 16:22, Jerry Lian <jerry.lian@gmail.com> wrote:
>
>> I am not talking about my own layer or recipe.
>> It happens even when I run the demo QEMU/beaglebone builds.
>> (I just download poky, and make NO modifications)
>>
>>
>>
>>
>> On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz <eas@sw-optimization.com>
>> wrote:
>>
>>> Most likely a dependency problem of the package which fails w/ exit code
>>> 1.
>>> Check the dependencies in the recipe and w/ Yocto's bitbake it self.
>>>
>>> Cheers
>>> Eric
>>>
>>>
>>> Am 08.11.2017 16:49, schrieb Jerry Lian:
>>>
>>> I am not sure whether it is a bug or an error: * Quite often, bitbake
>>>> will fail before finishing, with message like: ... task failed with exit
>>>> code 1... * But if you rerun bitbake, it will continue to build. * So
>>>> sometimes I have to rerun many times for finish one build ---- annoying!
>>>> (by the way, my CPU can run 16 threads)
>>>>
>>>> Any idea to clear this annoying bug? thanks.
>>>>
>>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--001a113cecb84c04ce055d7b3981
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>So that is further tricky part:<br></d=
iv>* it may fail when finishing 20%, 40% 60%, 80%<br></div><div>* And the f=
ailure last time may not appear next time.<br></div>* So it just pop-up ran=
domly<br><br></div>(By the way, I just build brand new PC with 16 threads C=
PU, 32G memory, and install Ubuntu 16.4.3 with ESXI-6.5)<br></div>(so reall=
y confused)<div class=3D"gmail-yj6qo gmail-ajU"><div id=3D"gmail-:ov" class=
=3D"gmail-ajR" tabindex=3D"0"><img class=3D"gmail-ajT" src=3D"https://ssl.g=
static.com/ui/v1/icons/mail/images/cleardot.gif"><br><br></div></div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Nov 8, 20=
17 at 11:24 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.b=
urton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">The autobuilder does=
 about 50 builds a night using pure poky and we don&#39;t see this, so agai=
n: what recipe and what errors?<span class=3D"HOEnZb"><font color=3D"#88888=
8"><div><br></div><div>Ross</div></font></span></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote"><div><div class=3D"h5">On 8 November 20=
17 at 16:22, Jerry Lian <span dir=3D"ltr">&lt;<a href=3D"mailto:jerry.lian@=
gmail.com" target=3D"_blank">jerry.lian@gmail.com</a>&gt;</span> wrote:<br>=
</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><span cla=
ss=3D"m_5644338540134727684im m_5644338540134727684HOEnZb"><div dir=3D"ltr"=
><div>I am not talking about my own layer or recipe.<br></div>It happens ev=
en when I run the demo QEMU/beaglebone builds.<br>(I just download poky, an=
d make NO modifications)<br><br><br><br></div></span><div class=3D"m_564433=
8540134727684HOEnZb"><div class=3D"m_5644338540134727684h5"><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Wed, Nov 8, 2017 at 10:56 AM,=
 Eric Schwarz <span dir=3D"ltr">&lt;<a href=3D"mailto:eas@sw-optimization.c=
om" target=3D"_blank">eas@sw-optimization.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">Most likely a dependency problem of the package =
which fails w/ exit code 1.<br>
Check the dependencies in the recipe and w/ Yocto&#39;s bitbake it self.<br=
>
<br>
Cheers<span class=3D"m_5644338540134727684m_-5461088350158078915HOEnZb"><fo=
nt color=3D"#888888"><br>
Eric</font></span><div class=3D"m_5644338540134727684m_-5461088350158078915=
HOEnZb"><div class=3D"m_5644338540134727684m_-5461088350158078915h5"><br>
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
</div></div><br></div></div><span class=3D"">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></span></blockquote></div><br></div>
</blockquote></div><br></div>

--001a113cecb84c04ce055d7b3981--
