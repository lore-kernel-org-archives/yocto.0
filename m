Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D842CE00D79; Wed,  8 Nov 2017 08:47:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f181.google.com (mail-ot0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EC5BE00D4D
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:47:23 -0800 (PST)
Received: by mail-ot0-f181.google.com with SMTP id j24so2300310otb.1
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=n/fbPgsJi35qaS4W4eDQzV+5KSFpvxm/Y1rt0swocSI=;
	b=UhQ34/mAVLFnje1ZZ7wOlIAiLfu2SrMqff4ylJ09P4e6//3VR2aBwyyxqhFBIkVNmE
	fQCAfr27IFcgNlqJrW6CzoP1EhzLxdQBFr7GAsZiBBzWo1snOWUyHfo7+b84Hp+Bs9NB
	vRfU1gUb1H2cOfEdcnPrZTArkMsWAeEZNgx1cK+oaMFaIpp19n7S+qTUV4hQ7duLdRzw
	Ynsd4hEwYu5xiRY0CvF7X5DAxmXUgEt8uYwA8WdFjnCw5rmxOeU4lWS/Dws8XOUMFT2O
	uk+pXH/hkbfrN+TEQ9LOiUt5Dhw8RW8bE+DCnI+Tza9saehlf2EXcwvzsxoZPpefLjRM
	/U8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=n/fbPgsJi35qaS4W4eDQzV+5KSFpvxm/Y1rt0swocSI=;
	b=oVIRkYMrltN0tQ1LBMEzTflD267YRdM21NrBAZPKGyuD7lUi2rZj/kg+/olYfuTSFg
	5rmoW1wYQf0OvbMGMLkJWp2HEbH/WSEtuRFnCWri3EjsuxdkDBpMNkikREIwGBP3XG5G
	g0FHQfNy0tnXYJI+QLsOJSQSV1BoFaUdOEvawOmapuyJizmteAsIlOyVB68fH+5FD09A
	3qFQ0+HUUCRvVaduTP+gWf4OZmV6ZMmh5ihMEH1AE31kA4U6fvLpEe/TGb5EYbYWL19s
	7nZbzwx9gEtXur/i3sCSOs1gxDNDD4WzkSa3v+0CkCQLts4ZLCPhlTBN3I4V+Y/WFuOD
	fu4Q==
X-Gm-Message-State: AJaThX63AFFlG0GWbqeWCt6oZFoQbk/x4iQAwOFO4W3ek5Uq/aTUDsCW
	p3GeKeCyeX64nUzfmKT/E+rKaGcixqCQBx9BlH4AuQ==
X-Google-Smtp-Source: AGs4zMagoeqhAEYjAkS7d/rCgqajBWRLcvjDXxpTXjQnY99FprqmjtEYuvn7PguFFio3Ze4VJXc+FQxX8x1zFrNvcUg=
X-Received: by 10.157.81.141 with SMTP id y13mr668441otg.51.1510159643417;
	Wed, 08 Nov 2017 08:47:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 8 Nov 2017 08:47:22 -0800 (PST)
In-Reply-To: <CAJTo0LYWP-jNKLr949rQa5188txsBVBD=aVWetK=NmA=1jrGwg@mail.gmail.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<7b91c698b1dd25c12d10792fa298e48c@sw-optimization.com>
	<CAE0QtjMWEr78VDNzPCd=sC2Uze9FwK=r23yNUt3ZsVEDTRvrfw@mail.gmail.com>
	<CAJTo0LaapSRMFq79XrQL1RJUgG1ZJtp909y+MOoUbuUBPHN37g@mail.gmail.com>
	<CAE0QtjMF=wfkypu8Fy=3Mq-Jd8RXvH2i6wmbmATpOBobzfssvg@mail.gmail.com>
	<CAJTo0LZYLhQWPKvwwsx_r-icVC-78QnOH-idvD8ag9NrTcxwQg@mail.gmail.com>
	<CAE0QtjO__n4qCFySZ=r4vEJ_6VO=hGrRqxgwVdrzUYC0Am9QmA@mail.gmail.com>
	<CAJTo0LYWP-jNKLr949rQa5188txsBVBD=aVWetK=NmA=1jrGwg@mail.gmail.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 8 Nov 2017 11:47:22 -0500
Message-ID: <CAE0QtjPW4m7L0FWjGQoJiz823ACPSWBp1HkRJuYq2MuersNsow@mail.gmail.com>
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
X-List-Received-Date: Wed, 08 Nov 2017 16:47:26 -0000
Content-Type: multipart/alternative; boundary="f403043d7d6c19a221055d7b71ae"

--f403043d7d6c19a221055d7b71ae
Content-Type: text/plain; charset="UTF-8"

Really, only me got this problem?




On Wed, Nov 8, 2017 at 11:40 AM, Burton, Ross <ross.burton@intel.com> wrote:

> The failure doesn't happen for anyone else.  You're literally saying "it
> breaks" but not even saying what "it" is, or how "it" is breaking.
>
> Ross
>
> On 8 November 2017 at 16:38, Jerry Lian <jerry.lian@gmail.com> wrote:
>
>> Isn't my problem clear: the failure pop-up randomly!
>> Do you mean the random failure also help you for debugging?
>>
>>
>>
>>
>> On Wed, Nov 8, 2017 at 11:33 AM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>>
>>> Well next time it happens feel free to reply to this thread. Otherwise
>>> you're asking us "fix my problem" without saying what the problem is.
>>>
>>> Ross
>>>
>>> On 8 November 2017 at 16:31, Jerry Lian <jerry.lian@gmail.com> wrote:
>>>
>>>> So that is further tricky part:
>>>> * it may fail when finishing 20%, 40% 60%, 80%
>>>> * And the failure last time may not appear next time.
>>>> * So it just pop-up randomly
>>>>
>>>> (By the way, I just build brand new PC with 16 threads CPU, 32G memory,
>>>> and install Ubuntu 16.4.3 with ESXI-6.5)
>>>> (so really confused)
>>>>
>>>>
>>>>
>>>> On Wed, Nov 8, 2017 at 11:24 AM, Burton, Ross <ross.burton@intel.com>
>>>> wrote:
>>>>
>>>>> The autobuilder does about 50 builds a night using pure poky and we
>>>>> don't see this, so again: what recipe and what errors?
>>>>>
>>>>> Ross
>>>>>
>>>>> On 8 November 2017 at 16:22, Jerry Lian <jerry.lian@gmail.com> wrote:
>>>>>
>>>>>> I am not talking about my own layer or recipe.
>>>>>> It happens even when I run the demo QEMU/beaglebone builds.
>>>>>> (I just download poky, and make NO modifications)
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz <
>>>>>> eas@sw-optimization.com> wrote:
>>>>>>
>>>>>>> Most likely a dependency problem of the package which fails w/ exit
>>>>>>> code 1.
>>>>>>> Check the dependencies in the recipe and w/ Yocto's bitbake it self.
>>>>>>>
>>>>>>> Cheers
>>>>>>> Eric
>>>>>>>
>>>>>>>
>>>>>>> Am 08.11.2017 16:49, schrieb Jerry Lian:
>>>>>>>
>>>>>>> I am not sure whether it is a bug or an error: * Quite often,
>>>>>>>> bitbake will fail before finishing, with message like: ... task failed with
>>>>>>>> exit code 1... * But if you rerun bitbake, it will continue to build. * So
>>>>>>>> sometimes I have to rerun many times for finish one build ---- annoying!
>>>>>>>> (by the way, my CPU can run 16 threads)
>>>>>>>>
>>>>>>>> Any idea to clear this annoying bug? thanks.
>>>>>>>>
>>>>>>>
>>>>>>
>>>>>> --
>>>>>> _______________________________________________
>>>>>> yocto mailing list
>>>>>> yocto@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
>

--f403043d7d6c19a221055d7b71ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Really, only me got this problem?<br><br><br><br></div><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Nov 8, 2017 =
at 11:40 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burt=
on@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">The failure doesn&#39;t=
 happen for anyone else.=C2=A0 You&#39;re literally saying &quot;it breaks&=
quot; but not even saying what &quot;it&quot; is, or how &quot;it&quot; is =
breaking.<span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div><div=
>Ross</div></font></span></div><div class=3D"HOEnZb"><div class=3D"h5"><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 8 November 2017 at=
 16:38, Jerry Lian <span dir=3D"ltr">&lt;<a href=3D"mailto:jerry.lian@gmail=
.com" target=3D"_blank">jerry.lian@gmail.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div dir=3D"ltr"><div>Isn&#39;t my problem clear:=
 the failure pop-up randomly!<br></div>Do you mean the random failure also =
help you for debugging?<br><br><br><br></div><div class=3D"m_-8849169370282=
527886HOEnZb"><div class=3D"m_-8849169370282527886h5"><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Wed, Nov 8, 2017 at 11:33 AM, Burto=
n, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" targ=
et=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr">Well next time it happens feel free to re=
ply to this thread. Otherwise you&#39;re asking us &quot;fix my problem&quo=
t; without saying what the problem is.<span class=3D"m_-8849169370282527886=
m_-7249916971913785882HOEnZb"><font color=3D"#888888"><div><br></div><div>R=
oss</div></font></span></div><div class=3D"m_-8849169370282527886m_-7249916=
971913785882HOEnZb"><div class=3D"m_-8849169370282527886m_-7249916971913785=
882h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 8 Novem=
ber 2017 at 16:31, Jerry Lian <span dir=3D"ltr">&lt;<a href=3D"mailto:jerry=
.lian@gmail.com" target=3D"_blank">jerry.lian@gmail.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span><div><div><div>=
<div>So that is further tricky part:<br></div>* it may fail when finishing =
20%, 40% 60%, 80%<br></div><div>* And the failure last time may not appear =
next time.<br></div>* So it just pop-up randomly<br><br></div>(By the way, =
I just build brand new PC with 16 threads CPU, 32G memory, and install Ubun=
tu 16.4.3 with ESXI-6.5)<br></div>(so really confused)</span><div class=3D"=
m_-8849169370282527886m_-7249916971913785882m_6993360276503493409m_-9180168=
540301135828gmail-yj6qo m_-8849169370282527886m_-7249916971913785882m_69933=
60276503493409m_-9180168540301135828gmail-ajU"><div id=3D"m_-88491693702825=
27886m_-7249916971913785882m_6993360276503493409m_-9180168540301135828gmail=
-:ov" class=3D"m_-8849169370282527886m_-7249916971913785882m_69933602765034=
93409m_-9180168540301135828gmail-ajR"><img class=3D"m_-8849169370282527886m=
_-7249916971913785882m_6993360276503493409m_-9180168540301135828gmail-ajT" =
src=3D"https://ssl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif"><br><b=
r></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e"><span>On Wed, Nov 8, 2017 at 11:24 AM, Burton, Ross <span dir=3D"ltr">&l=
t;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@in=
tel.com</a>&gt;</span> wrote:<br></span><div><div class=3D"m_-8849169370282=
527886m_-7249916971913785882m_6993360276503493409h5"><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr">The autobuilder does about 50 builds a night usin=
g pure poky and we don&#39;t see this, so again: what recipe and what error=
s?<span class=3D"m_-8849169370282527886m_-7249916971913785882m_699336027650=
3493409m_-9180168540301135828HOEnZb"><font color=3D"#888888"><div><br></div=
><div>Ross</div></font></span></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote"><div><div class=3D"m_-8849169370282527886m_-724991697191=
3785882m_6993360276503493409m_-9180168540301135828h5">On 8 November 2017 at=
 16:22, Jerry Lian <span dir=3D"ltr">&lt;<a href=3D"mailto:jerry.lian@gmail=
.com" target=3D"_blank">jerry.lian@gmail.com</a>&gt;</span> wrote:<br></div=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div><div class=3D"m_-884916937028252=
7886m_-7249916971913785882m_6993360276503493409m_-9180168540301135828h5"><s=
pan class=3D"m_-8849169370282527886m_-7249916971913785882m_6993360276503493=
409m_-9180168540301135828m_5644338540134727684im m_-8849169370282527886m_-7=
249916971913785882m_6993360276503493409m_-9180168540301135828m_564433854013=
4727684HOEnZb"><div dir=3D"ltr"><div>I am not talking about my own layer or=
 recipe.<br></div>It happens even when I run the demo QEMU/beaglebone build=
s.<br>(I just download poky, and make NO modifications)<br><br><br><br></di=
v></span><div class=3D"m_-8849169370282527886m_-7249916971913785882m_699336=
0276503493409m_-9180168540301135828m_5644338540134727684HOEnZb"><div class=
=3D"m_-8849169370282527886m_-7249916971913785882m_6993360276503493409m_-918=
0168540301135828m_5644338540134727684h5"><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:eas@sw-optimization.com" target=3D"_blan=
k">eas@sw-optimization.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">Most likely a dependency problem of the package which fails w/ exit=
 code 1.<br>
Check the dependencies in the recipe and w/ Yocto&#39;s bitbake it self.<br=
>
<br>
Cheers<span class=3D"m_-8849169370282527886m_-7249916971913785882m_69933602=
76503493409m_-9180168540301135828m_5644338540134727684m_-546108835015807891=
5HOEnZb"><font color=3D"#888888"><br>
Eric</font></span><div class=3D"m_-8849169370282527886m_-724991697191378588=
2m_6993360276503493409m_-9180168540301135828m_5644338540134727684m_-5461088=
350158078915HOEnZb"><div class=3D"m_-8849169370282527886m_-7249916971913785=
882m_6993360276503493409m_-9180168540301135828m_5644338540134727684m_-54610=
88350158078915h5"><br>
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
</div></div></blockquote></div><br></div>

--f403043d7d6c19a221055d7b71ae--
