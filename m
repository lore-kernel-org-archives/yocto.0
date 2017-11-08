Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22F8FE00D53; Wed,  8 Nov 2017 08:55:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.181 listed in dnsbl.sorbs.net]
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
Received: from mail-ot0-f181.google.com (mail-ot0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E747E00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:55:52 -0800 (PST)
Received: by mail-ot0-f181.google.com with SMTP id w8so2844628otw.11
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:55:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hEpZwwcae/xjOQjKCG7ja+bGmPP8xPOb8XmKbrnYFSs=;
	b=DDOJLTeFenv1jcS35HslcHLJ/I5rB56HjZNHY7J3yK+y3uU7n15AQcu/P+65R2Tqm9
	yTeeJHAwi9/AbY9pW5br0odJBzJrKLq1Ib9eBj0qH4oXD2jsagawDu96D8xYmM8foYiy
	TZIFOHDBpPJCeHYfzJJrqQP/gHYExDEqe0kgQwGQ5nW3++jSPJkbhQADn+STOE3eK5li
	kyF5qyoyl8nSyLTwWhl7S5KMCBJ0yaeleGrdjlD7zEnCKXFvaztDazbOJs6bEduebNSO
	RLbktzBxPubuOCjhMECkLXYrJMZAVzwPUJMf/dmQbpDejq3xqnDiEAXBnt7rJz7BZ2FP
	CK7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hEpZwwcae/xjOQjKCG7ja+bGmPP8xPOb8XmKbrnYFSs=;
	b=VqEpm1UJuLQvBjZ08nmHm42tLn34asz1NUAKbavvbGz/p4cXDk77wrRBoReLcd60Sc
	JnlsiTDsZpt/dKT7u/nuI/TZyvHj2sI++eEr13oEkgrcrwOoCgo8RR67CYqPnyfbRYaT
	udtqiZwNUDvqswaFGRu2JG2Q1LsZIStud1SkOR8owF4AsRKdfbSj21lo6tx7WMdLbTHF
	Cry+8fqsJV5TlMxGE8VDEdsgBKq20IAJV3FcHA5QLZPj4IlWp730lYlF/A1DdmhFAPkc
	ULlQrT9J8utnXlFTLMiydPbQS2z9jgNI3rzAc9PwgMllznxXgMzO88BgH/Ut790GFzFv
	4l3A==
X-Gm-Message-State: AJaThX4AA8Pm83lmiznSXRq9dDQLpKaLbnmyg4COib3DU8/bS4HDbsKR
	8lXb82QbRoSz7FJ0cK5vieSRDv6cqyALmMoYUfo=
X-Google-Smtp-Source: AGs4zMbooGSAHuB6y9gK80LhTJRPYIJlwdBE+GwxGLZiYXquNY5BPIWJ0psaXEDeA92UFOQIwHcfh0blmiW3fpj80dA=
X-Received: by 10.157.52.71 with SMTP id v65mr733778otb.469.1510160152392;
	Wed, 08 Nov 2017 08:55:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 8 Nov 2017 08:55:51 -0800 (PST)
In-Reply-To: <CAE0QtjPW4m7L0FWjGQoJiz823ACPSWBp1HkRJuYq2MuersNsow@mail.gmail.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<7b91c698b1dd25c12d10792fa298e48c@sw-optimization.com>
	<CAE0QtjMWEr78VDNzPCd=sC2Uze9FwK=r23yNUt3ZsVEDTRvrfw@mail.gmail.com>
	<CAJTo0LaapSRMFq79XrQL1RJUgG1ZJtp909y+MOoUbuUBPHN37g@mail.gmail.com>
	<CAE0QtjMF=wfkypu8Fy=3Mq-Jd8RXvH2i6wmbmATpOBobzfssvg@mail.gmail.com>
	<CAJTo0LZYLhQWPKvwwsx_r-icVC-78QnOH-idvD8ag9NrTcxwQg@mail.gmail.com>
	<CAE0QtjO__n4qCFySZ=r4vEJ_6VO=hGrRqxgwVdrzUYC0Am9QmA@mail.gmail.com>
	<CAJTo0LYWP-jNKLr949rQa5188txsBVBD=aVWetK=NmA=1jrGwg@mail.gmail.com>
	<CAE0QtjPW4m7L0FWjGQoJiz823ACPSWBp1HkRJuYq2MuersNsow@mail.gmail.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 8 Nov 2017 11:55:51 -0500
Message-ID: <CAE0QtjNZwwd78fgeuYoQZ3k4ZGATpHvwHZpss5gz3OTOTZsySA@mail.gmail.com>
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
X-List-Received-Date: Wed, 08 Nov 2017 16:55:54 -0000
Content-Type: multipart/alternative; boundary="001a114150566ffa25055d7b8f27"

--001a114150566ffa25055d7b8f27
Content-Type: text/plain; charset="UTF-8"

So bad: I do use Ryzen-7!
I will try new kernel, how about Ubuntu-17? or should be latest Debian?

On Wed, Nov 8, 2017 at 11:47 AM, Jerry Lian <jerry.lian@gmail.com> wrote:

> Really, only me got this problem?
>
>
>
>
> On Wed, Nov 8, 2017 at 11:40 AM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> The failure doesn't happen for anyone else.  You're literally saying "it
>> breaks" but not even saying what "it" is, or how "it" is breaking.
>>
>> Ross
>>
>> On 8 November 2017 at 16:38, Jerry Lian <jerry.lian@gmail.com> wrote:
>>
>>> Isn't my problem clear: the failure pop-up randomly!
>>> Do you mean the random failure also help you for debugging?
>>>
>>>
>>>
>>>
>>> On Wed, Nov 8, 2017 at 11:33 AM, Burton, Ross <ross.burton@intel.com>
>>> wrote:
>>>
>>>> Well next time it happens feel free to reply to this thread. Otherwise
>>>> you're asking us "fix my problem" without saying what the problem is.
>>>>
>>>> Ross
>>>>
>>>> On 8 November 2017 at 16:31, Jerry Lian <jerry.lian@gmail.com> wrote:
>>>>
>>>>> So that is further tricky part:
>>>>> * it may fail when finishing 20%, 40% 60%, 80%
>>>>> * And the failure last time may not appear next time.
>>>>> * So it just pop-up randomly
>>>>>
>>>>> (By the way, I just build brand new PC with 16 threads CPU, 32G
>>>>> memory, and install Ubuntu 16.4.3 with ESXI-6.5)
>>>>> (so really confused)
>>>>>
>>>>>
>>>>>
>>>>> On Wed, Nov 8, 2017 at 11:24 AM, Burton, Ross <ross.burton@intel.com>
>>>>> wrote:
>>>>>
>>>>>> The autobuilder does about 50 builds a night using pure poky and we
>>>>>> don't see this, so again: what recipe and what errors?
>>>>>>
>>>>>> Ross
>>>>>>
>>>>>> On 8 November 2017 at 16:22, Jerry Lian <jerry.lian@gmail.com> wrote:
>>>>>>
>>>>>>> I am not talking about my own layer or recipe.
>>>>>>> It happens even when I run the demo QEMU/beaglebone builds.
>>>>>>> (I just download poky, and make NO modifications)
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz <
>>>>>>> eas@sw-optimization.com> wrote:
>>>>>>>
>>>>>>>> Most likely a dependency problem of the package which fails w/ exit
>>>>>>>> code 1.
>>>>>>>> Check the dependencies in the recipe and w/ Yocto's bitbake it self.
>>>>>>>>
>>>>>>>> Cheers
>>>>>>>> Eric
>>>>>>>>
>>>>>>>>
>>>>>>>> Am 08.11.2017 16:49, schrieb Jerry Lian:
>>>>>>>>
>>>>>>>> I am not sure whether it is a bug or an error: * Quite often,
>>>>>>>>> bitbake will fail before finishing, with message like: ... task failed with
>>>>>>>>> exit code 1... * But if you rerun bitbake, it will continue to build. * So
>>>>>>>>> sometimes I have to rerun many times for finish one build ---- annoying!
>>>>>>>>> (by the way, my CPU can run 16 threads)
>>>>>>>>>
>>>>>>>>> Any idea to clear this annoying bug? thanks.
>>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> _______________________________________________
>>>>>>> yocto mailing list
>>>>>>> yocto@yoctoproject.org
>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
>

--001a114150566ffa25055d7b8f27
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>So bad: I do use Ryzen-7!<br></div>I will try new ker=
nel, how about Ubuntu-17? or should be latest Debian?<br></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Nov 8, 2017 at 11:4=
7 AM, Jerry Lian <span dir=3D"ltr">&lt;<a href=3D"mailto:jerry.lian@gmail.c=
om" target=3D"_blank">jerry.lian@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr">Really, only me got this problem?<=
br><br><br><br></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Wed, Nov 8, 2017 at 11:40 AM=
, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.co=
m" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr">The failure doesn&#39;t happen for=
 anyone else.=C2=A0 You&#39;re literally saying &quot;it breaks&quot; but n=
ot even saying what &quot;it&quot; is, or how &quot;it&quot; is breaking.<s=
pan class=3D"m_9080268941826167710HOEnZb"><font color=3D"#888888"><div><br>=
</div><div>Ross</div></font></span></div><div class=3D"m_908026894182616771=
0HOEnZb"><div class=3D"m_9080268941826167710h5"><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On 8 November 2017 at 16:38, Jerry Lian <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:jerry.lian@gmail.com" target=3D"_blank"=
>jerry.lian@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"ltr"><div>Isn&#39;t my problem clear: the failure pop-up ran=
domly!<br></div>Do you mean the random failure also help you for debugging?=
<br><br><br><br></div><div class=3D"m_9080268941826167710m_-884916937028252=
7886HOEnZb"><div class=3D"m_9080268941826167710m_-8849169370282527886h5"><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Nov 8, 2017=
 at 11:33 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.bur=
ton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Well next time it happ=
ens feel free to reply to this thread. Otherwise you&#39;re asking us &quot=
;fix my problem&quot; without saying what the problem is.<span class=3D"m_9=
080268941826167710m_-8849169370282527886m_-7249916971913785882HOEnZb"><font=
 color=3D"#888888"><div><br></div><div>Ross</div></font></span></div><div c=
lass=3D"m_9080268941826167710m_-8849169370282527886m_-7249916971913785882HO=
EnZb"><div class=3D"m_9080268941826167710m_-8849169370282527886m_-724991697=
1913785882h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
8 November 2017 at 16:31, Jerry Lian <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:jerry.lian@gmail.com" target=3D"_blank">jerry.lian@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span><div><di=
v><div><div>So that is further tricky part:<br></div>* it may fail when fin=
ishing 20%, 40% 60%, 80%<br></div><div>* And the failure last time may not =
appear next time.<br></div>* So it just pop-up randomly<br><br></div>(By th=
e way, I just build brand new PC with 16 threads CPU, 32G memory, and insta=
ll Ubuntu 16.4.3 with ESXI-6.5)<br></div>(so really confused)</span><div cl=
ass=3D"m_9080268941826167710m_-8849169370282527886m_-7249916971913785882m_6=
993360276503493409m_-9180168540301135828gmail-yj6qo m_9080268941826167710m_=
-8849169370282527886m_-7249916971913785882m_6993360276503493409m_-918016854=
0301135828gmail-ajU"><div id=3D"m_9080268941826167710m_-8849169370282527886=
m_-7249916971913785882m_6993360276503493409m_-9180168540301135828gmail-:ov"=
 class=3D"m_9080268941826167710m_-8849169370282527886m_-7249916971913785882=
m_6993360276503493409m_-9180168540301135828gmail-ajR"><img class=3D"m_90802=
68941826167710m_-8849169370282527886m_-7249916971913785882m_699336027650349=
3409m_-9180168540301135828gmail-ajT" src=3D"https://ssl.gstatic.com/ui/v1/i=
cons/mail/images/cleardot.gif"><br><br></div></div></div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote"><span>On Wed, Nov 8, 2017 at 11:24 =
AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.=
com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br></spa=
n><div><div class=3D"m_9080268941826167710m_-8849169370282527886m_-72499169=
71913785882m_6993360276503493409h5"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">The autobuilder does about 50 builds a night using pure poky and w=
e don&#39;t see this, so again: what recipe and what errors?<span class=3D"=
m_9080268941826167710m_-8849169370282527886m_-7249916971913785882m_69933602=
76503493409m_-9180168540301135828HOEnZb"><font color=3D"#888888"><div><br><=
/div><div>Ross</div></font></span></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote"><div><div class=3D"m_9080268941826167710m_-884916937=
0282527886m_-7249916971913785882m_6993360276503493409m_-9180168540301135828=
h5">On 8 November 2017 at 16:22, Jerry Lian <span dir=3D"ltr">&lt;<a href=
=3D"mailto:jerry.lian@gmail.com" target=3D"_blank">jerry.lian@gmail.com</a>=
&gt;</span> wrote:<br></div></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><di=
v class=3D"m_9080268941826167710m_-8849169370282527886m_-724991697191378588=
2m_6993360276503493409m_-9180168540301135828h5"><span class=3D"m_9080268941=
826167710m_-8849169370282527886m_-7249916971913785882m_6993360276503493409m=
_-9180168540301135828m_5644338540134727684im m_9080268941826167710m_-884916=
9370282527886m_-7249916971913785882m_6993360276503493409m_-9180168540301135=
828m_5644338540134727684HOEnZb"><div dir=3D"ltr"><div>I am not talking abou=
t my own layer or recipe.<br></div>It happens even when I run the demo QEMU=
/beaglebone builds.<br>(I just download poky, and make NO modifications)<br=
><br><br><br></div></span><div class=3D"m_9080268941826167710m_-88491693702=
82527886m_-7249916971913785882m_6993360276503493409m_-9180168540301135828m_=
5644338540134727684HOEnZb"><div class=3D"m_9080268941826167710m_-8849169370=
282527886m_-7249916971913785882m_6993360276503493409m_-9180168540301135828m=
_5644338540134727684h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz <span dir=3D"ltr">&lt;=
<a href=3D"mailto:eas@sw-optimization.com" target=3D"_blank">eas@sw-optimiz=
ation.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Most lik=
ely a dependency problem of the package which fails w/ exit code 1.<br>
Check the dependencies in the recipe and w/ Yocto&#39;s bitbake it self.<br=
>
<br>
Cheers<span class=3D"m_9080268941826167710m_-8849169370282527886m_-72499169=
71913785882m_6993360276503493409m_-9180168540301135828m_5644338540134727684=
m_-5461088350158078915HOEnZb"><font color=3D"#888888"><br>
Eric</font></span><div class=3D"m_9080268941826167710m_-8849169370282527886=
m_-7249916971913785882m_6993360276503493409m_-9180168540301135828m_56443385=
40134727684m_-5461088350158078915HOEnZb"><div class=3D"m_908026894182616771=
0m_-8849169370282527886m_-7249916971913785882m_6993360276503493409m_-918016=
8540301135828m_5644338540134727684m_-5461088350158078915h5"><br>
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
</div></div></blockquote></div><br></div>

--001a114150566ffa25055d7b8f27--
