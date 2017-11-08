Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73527E00D4D; Wed,  8 Nov 2017 08:40:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.175 listed in dnsbl.sorbs.net]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 579DEE00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:40:36 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id d66so6601138ioe.5
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:40:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TL8xnpaq5KDw+EaFjty2AkIntSkir6MqrVF2c/RphmI=;
	b=zsk8bTvNR8SCp2T/29UrfmGpZE2Mz2siYTY1hrKmSDu7YlTXG6A6ugbgy7jpALXmlD
	9ZoaMlNgWiEda5itQ5u51/nw+s36S+4d2/sl5jvHqM/NxaOrZcJhulKKcOF5hD9demCU
	pgTFLCxo0ft3K1dX8EZYMjqMs8uQXTH2FEQDfECmOqGaY0RcNNpDq/tv17Bv8sX4BEZ6
	8GmapqccnV9eO8X2seRw7fNxhoZpVr66OtBQZ7uvQtyCf6P3NoZl9pc1i+XkDbwNPqQJ
	jWz640LBtzqbNDeQ00cL9vuLfbT2KmuFcynOMq32jJPtUFubiuvHCsccC9pwxcJvCtJJ
	8hpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TL8xnpaq5KDw+EaFjty2AkIntSkir6MqrVF2c/RphmI=;
	b=ObK1B8j6nhomzdwtFdGEgf7aOFj/k/ALMlLaj0mXWqMZtOH9xHeXQ3jidVAR4kUWwl
	HI7rHMBCVY4DrmcXqo2x+rmH26Iif89WI2KPREDKQ8Vg0HtFuSYPNebXEM0cppT5v+wA
	qALO1TdtraXSPx2qW4hAXM5wWAQitazLBu9UdlfaxtOftCx3tjTKat5stgSU9lqXsnBM
	T8ct3fQXifHi4Xqn+yxmHtnTeRMJUcc2zjPJVFequ2pAl6rsVQzUT9nEALDneeBsX/Fd
	lC0qEb1PCZ15rI/asN5vXjHgefqugXRj1a4C2Q04yWbDSfK2C0S7avV43VszEhS4Jjrv
	klzA==
X-Gm-Message-State: AJaThX6p5CDUbMJE/ou6NZdL0nlfIXQUNkDF0TTG30kJ5VHBxq51+bp9
	SkfbpQGZVb5vOIRRJQvEQuGb4NPaIQdLUPF5ewQ8PQ==
X-Google-Smtp-Source: AGs4zMazvuWfuyh2qzbNEZfK3FDAmU6XLwQQh2+fqTsXdVlDWP8FI9RC6u7pRdMC2ZExOiVXbiycfqxkyRJQfh4h56U=
X-Received: by 10.107.36.80 with SMTP id k77mr1469182iok.176.1510159235248;
	Wed, 08 Nov 2017 08:40:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Wed, 8 Nov 2017 08:40:14 -0800 (PST)
In-Reply-To: <CAE0QtjO__n4qCFySZ=r4vEJ_6VO=hGrRqxgwVdrzUYC0Am9QmA@mail.gmail.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<7b91c698b1dd25c12d10792fa298e48c@sw-optimization.com>
	<CAE0QtjMWEr78VDNzPCd=sC2Uze9FwK=r23yNUt3ZsVEDTRvrfw@mail.gmail.com>
	<CAJTo0LaapSRMFq79XrQL1RJUgG1ZJtp909y+MOoUbuUBPHN37g@mail.gmail.com>
	<CAE0QtjMF=wfkypu8Fy=3Mq-Jd8RXvH2i6wmbmATpOBobzfssvg@mail.gmail.com>
	<CAJTo0LZYLhQWPKvwwsx_r-icVC-78QnOH-idvD8ag9NrTcxwQg@mail.gmail.com>
	<CAE0QtjO__n4qCFySZ=r4vEJ_6VO=hGrRqxgwVdrzUYC0Am9QmA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Nov 2017 16:40:14 +0000
Message-ID: <CAJTo0LYWP-jNKLr949rQa5188txsBVBD=aVWetK=NmA=1jrGwg@mail.gmail.com>
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
X-List-Received-Date: Wed, 08 Nov 2017 16:40:37 -0000
Content-Type: multipart/alternative; boundary="001a1141909ec5b159055d7b589e"

--001a1141909ec5b159055d7b589e
Content-Type: text/plain; charset="UTF-8"

The failure doesn't happen for anyone else.  You're literally saying "it
breaks" but not even saying what "it" is, or how "it" is breaking.

Ross

On 8 November 2017 at 16:38, Jerry Lian <jerry.lian@gmail.com> wrote:

> Isn't my problem clear: the failure pop-up randomly!
> Do you mean the random failure also help you for debugging?
>
>
>
>
> On Wed, Nov 8, 2017 at 11:33 AM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> Well next time it happens feel free to reply to this thread. Otherwise
>> you're asking us "fix my problem" without saying what the problem is.
>>
>> Ross
>>
>> On 8 November 2017 at 16:31, Jerry Lian <jerry.lian@gmail.com> wrote:
>>
>>> So that is further tricky part:
>>> * it may fail when finishing 20%, 40% 60%, 80%
>>> * And the failure last time may not appear next time.
>>> * So it just pop-up randomly
>>>
>>> (By the way, I just build brand new PC with 16 threads CPU, 32G memory,
>>> and install Ubuntu 16.4.3 with ESXI-6.5)
>>> (so really confused)
>>>
>>>
>>>
>>> On Wed, Nov 8, 2017 at 11:24 AM, Burton, Ross <ross.burton@intel.com>
>>> wrote:
>>>
>>>> The autobuilder does about 50 builds a night using pure poky and we
>>>> don't see this, so again: what recipe and what errors?
>>>>
>>>> Ross
>>>>
>>>> On 8 November 2017 at 16:22, Jerry Lian <jerry.lian@gmail.com> wrote:
>>>>
>>>>> I am not talking about my own layer or recipe.
>>>>> It happens even when I run the demo QEMU/beaglebone builds.
>>>>> (I just download poky, and make NO modifications)
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz <eas@sw-optimization.com
>>>>> > wrote:
>>>>>
>>>>>> Most likely a dependency problem of the package which fails w/ exit
>>>>>> code 1.
>>>>>> Check the dependencies in the recipe and w/ Yocto's bitbake it self.
>>>>>>
>>>>>> Cheers
>>>>>> Eric
>>>>>>
>>>>>>
>>>>>> Am 08.11.2017 16:49, schrieb Jerry Lian:
>>>>>>
>>>>>> I am not sure whether it is a bug or an error: * Quite often, bitbake
>>>>>>> will fail before finishing, with message like: ... task failed with exit
>>>>>>> code 1... * But if you rerun bitbake, it will continue to build. * So
>>>>>>> sometimes I have to rerun many times for finish one build ---- annoying!
>>>>>>> (by the way, my CPU can run 16 threads)
>>>>>>>
>>>>>>> Any idea to clear this annoying bug? thanks.
>>>>>>>
>>>>>>
>>>>>
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>>
>>>>
>>>
>>
>

--001a1141909ec5b159055d7b589e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The failure doesn&#39;t happen for anyone else.=C2=A0 You&=
#39;re literally saying &quot;it breaks&quot; but not even saying what &quo=
t;it&quot; is, or how &quot;it&quot; is breaking.<div><br></div><div>Ross</=
div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 8 No=
vember 2017 at 16:38, Jerry Lian <span dir=3D"ltr">&lt;<a href=3D"mailto:je=
rry.lian@gmail.com" target=3D"_blank">jerry.lian@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Isn&#39;t my =
problem clear: the failure pop-up randomly!<br></div>Do you mean the random=
 failure also help you for debugging?<br><br><br><br></div><div class=3D"HO=
EnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Wed, Nov 8, 2017 at 11:33 AM, Burton, Ross <span dir=3D"ltr">&lt;=
<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@inte=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr">Well next time it happens feel free to reply to this thread. Otherwise =
you&#39;re asking us &quot;fix my problem&quot; without saying what the pro=
blem is.<span class=3D"m_-7249916971913785882HOEnZb"><font color=3D"#888888=
"><div><br></div><div>Ross</div></font></span></div><div class=3D"m_-724991=
6971913785882HOEnZb"><div class=3D"m_-7249916971913785882h5"><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On 8 November 2017 at 16:31, Je=
rry Lian <span dir=3D"ltr">&lt;<a href=3D"mailto:jerry.lian@gmail.com" targ=
et=3D"_blank">jerry.lian@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><span><div><div><div><div>So that is furth=
er tricky part:<br></div>* it may fail when finishing 20%, 40% 60%, 80%<br>=
</div><div>* And the failure last time may not appear next time.<br></div>*=
 So it just pop-up randomly<br><br></div>(By the way, I just build brand ne=
w PC with 16 threads CPU, 32G memory, and install Ubuntu 16.4.3 with ESXI-6=
.5)<br></div>(so really confused)</span><div class=3D"m_-724991697191378588=
2m_6993360276503493409m_-9180168540301135828gmail-yj6qo m_-7249916971913785=
882m_6993360276503493409m_-9180168540301135828gmail-ajU"><div id=3D"m_-7249=
916971913785882m_6993360276503493409m_-9180168540301135828gmail-:ov" class=
=3D"m_-7249916971913785882m_6993360276503493409m_-9180168540301135828gmail-=
ajR"><img class=3D"m_-7249916971913785882m_6993360276503493409m_-9180168540=
301135828gmail-ajT" src=3D"https://ssl.gstatic.com/ui/v1/icons/mail/images/=
cleardot.gif"><br><br></div></div></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote"><span>On Wed, Nov 8, 2017 at 11:24 AM, Burton, Ross =
<span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_b=
lank">ross.burton@intel.com</a>&gt;</span> wrote:<br></span><div><div class=
=3D"m_-7249916971913785882m_6993360276503493409h5"><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr">The autobuilder does about 50 builds a night using =
pure poky and we don&#39;t see this, so again: what recipe and what errors?=
<span class=3D"m_-7249916971913785882m_6993360276503493409m_-91801685403011=
35828HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross</div></font><=
/span></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div>=
<div class=3D"m_-7249916971913785882m_6993360276503493409m_-918016854030113=
5828h5">On 8 November 2017 at 16:22, Jerry Lian <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:jerry.lian@gmail.com" target=3D"_blank">jerry.lian@gmail.com</=
a>&gt;</span> wrote:<br></div></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><di=
v class=3D"m_-7249916971913785882m_6993360276503493409m_-918016854030113582=
8h5"><span class=3D"m_-7249916971913785882m_6993360276503493409m_-918016854=
0301135828m_5644338540134727684im m_-7249916971913785882m_69933602765034934=
09m_-9180168540301135828m_5644338540134727684HOEnZb"><div dir=3D"ltr"><div>=
I am not talking about my own layer or recipe.<br></div>It happens even whe=
n I run the demo QEMU/beaglebone builds.<br>(I just download poky, and make=
 NO modifications)<br><br><br><br></div></span><div class=3D"m_-72499169719=
13785882m_6993360276503493409m_-9180168540301135828m_5644338540134727684HOE=
nZb"><div class=3D"m_-7249916971913785882m_6993360276503493409m_-9180168540=
301135828m_5644338540134727684h5"><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz <span dir=3D=
"ltr">&lt;<a href=3D"mailto:eas@sw-optimization.com" target=3D"_blank">eas@=
sw-optimization.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>Most likely a dependency problem of the package which fails w/ exit code 1=
.<br>
Check the dependencies in the recipe and w/ Yocto&#39;s bitbake it self.<br=
>
<br>
Cheers<span class=3D"m_-7249916971913785882m_6993360276503493409m_-91801685=
40301135828m_5644338540134727684m_-5461088350158078915HOEnZb"><font color=
=3D"#888888"><br>
Eric</font></span><div class=3D"m_-7249916971913785882m_6993360276503493409=
m_-9180168540301135828m_5644338540134727684m_-5461088350158078915HOEnZb"><d=
iv class=3D"m_-7249916971913785882m_6993360276503493409m_-91801685403011358=
28m_5644338540134727684m_-5461088350158078915h5"><br>
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
</div></div></blockquote></div><br></div>

--001a1141909ec5b159055d7b589e--
