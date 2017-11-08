Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAF08E00D64; Wed,  8 Nov 2017 08:33:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B614E00D55
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:33:45 -0800 (PST)
Received: by mail-it0-f48.google.com with SMTP id l196so7170473itl.4
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=scYfWMb7/BhP3C7+BIz1fyQcMg3a56bf3nI46nv80bI=;
	b=FAlhflLaGpepUKoypscsPwdc/obSXQCl4r1FSW+oLcYyrSM+Mb4sKS6zou96tRftcZ
	043etWXbKtp/VJVykp4MWCDXXw3wd2pn3kY179zbWumpsEn/S7CMveh2VaBFDdyXTTqE
	9E7k/O97EswsL080av9o2a+RKocZmBYdKb+4RS4Rs2A5kMVadSLSGAC1/p3TxIAyy1VY
	UDXgaFyHVozwWEFhQ/iA1ueIalpUn/Wx5pfLIFPy6YqKEV2h631iC55pSvacNluJkBMj
	7Z60bIYTcl02SxBoCuqNU6xu6gq3Vm0dkvSZHmRYyiHb7Y3Lg5d7cqVtpdG6/ZMdrhGr
	wG7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=scYfWMb7/BhP3C7+BIz1fyQcMg3a56bf3nI46nv80bI=;
	b=G0WxyHpIaEh8Y+u4pHLZVFjx8pczTyVtYGaY4/IUGG6q4Tv4H0xtSe8ON74THwJ0Yg
	ZWNfzGMdCzUc4NOd4jymRG8mHBBp/Bi7wzO+72n9EXzDoAZfqavKuT3FRAFlst9WAB2r
	aD+Z5bJjsx/2c0YwHwX16l3VBuN5amxUn15538JG+LoVXBy/lEFd2Tp8rgCpPXxuSxFN
	cPEF3P2bGbNcpsTWR3QMwIK9lrumEk6yd4Y6ge73KoZ1JGWllp84Go2ZlSCD5yg9HmuP
	pbL3PqilzMIDFhNKsR69BL68vgZ1S/5Ak4gdMj+yh6NhZ5pqz00ZMI5DPWG00tQKN5la
	zphw==
X-Gm-Message-State: AJaThX7w+Oy1Z1IAF/UhggR80ubmiFEgoUr8wPGu6A+e5RjWT5+t1PI0
	EgPDSgyqHeBI2FtHWjNy1QXu1rBsN+gQ9+7Gm12YrQ==
X-Google-Smtp-Source: ABhQp+R6FLdZQEBDinh6VNM2Z7UcTTmmxL/8Ikib4Z8P3m1KokcgNHKrS4m0mWeitCgV5eCkWTZxkksMmw2dBrJrYi8=
X-Received: by 10.36.87.2 with SMTP id u2mr1487617ita.151.1510158825129; Wed,
	08 Nov 2017 08:33:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Wed, 8 Nov 2017 08:33:24 -0800 (PST)
In-Reply-To: <CAE0QtjMF=wfkypu8Fy=3Mq-Jd8RXvH2i6wmbmATpOBobzfssvg@mail.gmail.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<7b91c698b1dd25c12d10792fa298e48c@sw-optimization.com>
	<CAE0QtjMWEr78VDNzPCd=sC2Uze9FwK=r23yNUt3ZsVEDTRvrfw@mail.gmail.com>
	<CAJTo0LaapSRMFq79XrQL1RJUgG1ZJtp909y+MOoUbuUBPHN37g@mail.gmail.com>
	<CAE0QtjMF=wfkypu8Fy=3Mq-Jd8RXvH2i6wmbmATpOBobzfssvg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Nov 2017 16:33:24 +0000
Message-ID: <CAJTo0LZYLhQWPKvwwsx_r-icVC-78QnOH-idvD8ag9NrTcxwQg@mail.gmail.com>
To: Jerry Lian <jerry.lian@gmail.com>
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
X-List-Received-Date: Wed, 08 Nov 2017 16:33:46 -0000
Content-Type: multipart/alternative; boundary="001a1143e854539e71055d7b4029"

--001a1143e854539e71055d7b4029
Content-Type: text/plain; charset="UTF-8"

Well next time it happens feel free to reply to this thread. Otherwise
you're asking us "fix my problem" without saying what the problem is.

Ross

On 8 November 2017 at 16:31, Jerry Lian <jerry.lian@gmail.com> wrote:

> So that is further tricky part:
> * it may fail when finishing 20%, 40% 60%, 80%
> * And the failure last time may not appear next time.
> * So it just pop-up randomly
>
> (By the way, I just build brand new PC with 16 threads CPU, 32G memory,
> and install Ubuntu 16.4.3 with ESXI-6.5)
> (so really confused)
>
>
>
> On Wed, Nov 8, 2017 at 11:24 AM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> The autobuilder does about 50 builds a night using pure poky and we don't
>> see this, so again: what recipe and what errors?
>>
>> Ross
>>
>> On 8 November 2017 at 16:22, Jerry Lian <jerry.lian@gmail.com> wrote:
>>
>>> I am not talking about my own layer or recipe.
>>> It happens even when I run the demo QEMU/beaglebone builds.
>>> (I just download poky, and make NO modifications)
>>>
>>>
>>>
>>>
>>> On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz <eas@sw-optimization.com>
>>> wrote:
>>>
>>>> Most likely a dependency problem of the package which fails w/ exit
>>>> code 1.
>>>> Check the dependencies in the recipe and w/ Yocto's bitbake it self.
>>>>
>>>> Cheers
>>>> Eric
>>>>
>>>>
>>>> Am 08.11.2017 16:49, schrieb Jerry Lian:
>>>>
>>>> I am not sure whether it is a bug or an error: * Quite often, bitbake
>>>>> will fail before finishing, with message like: ... task failed with exit
>>>>> code 1... * But if you rerun bitbake, it will continue to build. * So
>>>>> sometimes I have to rerun many times for finish one build ---- annoying!
>>>>> (by the way, my CPU can run 16 threads)
>>>>>
>>>>> Any idea to clear this annoying bug? thanks.
>>>>>
>>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>

--001a1143e854539e71055d7b4029
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Well next time it happens feel free to reply to this threa=
d. Otherwise you&#39;re asking us &quot;fix my problem&quot; without saying=
 what the problem is.<div><br></div><div>Ross</div></div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">On 8 November 2017 at 16:31, Jerry =
Lian <span dir=3D"ltr">&lt;<a href=3D"mailto:jerry.lian@gmail.com" target=
=3D"_blank">jerry.lian@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><span class=3D""><div><div><div><div>So that=
 is further tricky part:<br></div>* it may fail when finishing 20%, 40% 60%=
, 80%<br></div><div>* And the failure last time may not appear next time.<b=
r></div>* So it just pop-up randomly<br><br></div>(By the way, I just build=
 brand new PC with 16 threads CPU, 32G memory, and install Ubuntu 16.4.3 wi=
th ESXI-6.5)<br></div>(so really confused)</span><div class=3D"m_-918016854=
0301135828gmail-yj6qo m_-9180168540301135828gmail-ajU"><div id=3D"m_-918016=
8540301135828gmail-:ov" class=3D"m_-9180168540301135828gmail-ajR"><img clas=
s=3D"m_-9180168540301135828gmail-ajT" src=3D"https://ssl.gstatic.com/ui/v1/=
icons/mail/images/cleardot.gif"><br><br></div></div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote"><span class=3D"">On Wed, Nov 8, 20=
17 at 11:24 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.b=
urton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wro=
te:<br></span><div><div class=3D"h5"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div di=
r=3D"ltr">The autobuilder does about 50 builds a night using pure poky and =
we don&#39;t see this, so again: what recipe and what errors?<span class=3D=
"m_-9180168540301135828HOEnZb"><font color=3D"#888888"><div><br></div><div>=
Ross</div></font></span></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote"><div><div class=3D"m_-9180168540301135828h5">On 8 November 201=
7 at 16:22, Jerry Lian <span dir=3D"ltr">&lt;<a href=3D"mailto:jerry.lian@g=
mail.com" target=3D"_blank">jerry.lian@gmail.com</a>&gt;</span> wrote:<br><=
/div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"m_-91801685403=
01135828h5"><span class=3D"m_-9180168540301135828m_5644338540134727684im m_=
-9180168540301135828m_5644338540134727684HOEnZb"><div dir=3D"ltr"><div>I am=
 not talking about my own layer or recipe.<br></div>It happens even when I =
run the demo QEMU/beaglebone builds.<br>(I just download poky, and make NO =
modifications)<br><br><br><br></div></span><div class=3D"m_-918016854030113=
5828m_5644338540134727684HOEnZb"><div class=3D"m_-9180168540301135828m_5644=
338540134727684h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:eas@sw-optimization.com" target=3D"_blank">eas@sw-optimization=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Most likely a =
dependency problem of the package which fails w/ exit code 1.<br>
Check the dependencies in the recipe and w/ Yocto&#39;s bitbake it self.<br=
>
<br>
Cheers<span class=3D"m_-9180168540301135828m_5644338540134727684m_-54610883=
50158078915HOEnZb"><font color=3D"#888888"><br>
Eric</font></span><div class=3D"m_-9180168540301135828m_5644338540134727684=
m_-5461088350158078915HOEnZb"><div class=3D"m_-9180168540301135828m_5644338=
540134727684m_-5461088350158078915h5"><br>
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

--001a1143e854539e71055d7b4029--
