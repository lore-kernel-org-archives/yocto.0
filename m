Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9C72E009AA; Thu,  6 Dec 2018 05:43:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F1F5E003E1;
	Thu,  6 Dec 2018 05:43:23 -0800 (PST)
Received: by mail-it1-f178.google.com with SMTP id h193so1435636ita.5;
	Thu, 06 Dec 2018 05:43:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=N0RB9RL0WjkKs0VOFu/RDnpklr9gloTPMsLMwj8KekM=;
	b=bIdtpAlyFXymZVBs2s9Gt3mKcQO27D6vqpE9s0BmAkR6SzKcCvy+npPhediXSaBnt1
	pPJHeUTLWETkQz0IHbSxZuBAAG6CgPIaUbiDJ2uMOHuqkVyorCK+7LTwYN0TOFdBjsRe
	s98ExnInbRL5NJzSG/5Mi2ch5Ie3f+qFMm8eK1WULJNwmqmH5wNMO5jj7e1mAWZi5T6s
	pfNqtgtJEUE9Ug3Ux48zHuoKrHm+kvSt0bOXp1hIE/Jxn8dSvMickjhkcnMgU4yA9s78
	Cm8216PEUWHvfcp7kVoqwixgXVhV1MsA/yIZU4T2Aeu9Gir+H687JxjMnpdpRhttnBE1
	lihQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=N0RB9RL0WjkKs0VOFu/RDnpklr9gloTPMsLMwj8KekM=;
	b=GXIFxzFYRe+saBSEFl75LIET9HL+LczopT3eP2ANpTieHKWoH233Nu4cXOYO42A6qX
	S4Jv5dEM/dNvLDVAgkcMb+rTj4A381tDGwzDNck8LpmJvfer/BbgP5hXtiP5l1udiAHR
	5JWigOK34B3azKGztI9b8AdLFWXsrP+5COLQqm0Tk30XJUeX9K5VbJjLOGVJcS4a7k7o
	2AMY5crIfdnGUsHiEtkkeIuA0k94kaxfY2tlXDqhKdFXQqUcIne5I94/gmmpMEsnVuiC
	qexJqjiGoMTgmMCes5ut5fFO+guAP1y2bsQ2ah/SVT+1wNGSuNoQQ/MYZPnuD8DTa8Fk
	zxdw==
X-Gm-Message-State: AA+aEWblXLCpimXtaEu7CySCy583CpFRd56zgKsirLEtZLcDouTZ9xP2
	Ga75y7nwY9NkmRc631BudRkbi7E9bKLUzu/hcNT5+pui7mE=
X-Google-Smtp-Source: AFSGD/UttcHYJAmA2lN3rDybej/SL06cf6t5XCrWafs0fxbfbUUPq87BfOuqBkf2mT6LArFRG9RXJVCbCyqpNG+GnBI=
X-Received: by 2002:a24:a08a:: with SMTP id o132mr19450146ite.1.1544103803210; 
	Thu, 06 Dec 2018 05:43:23 -0800 (PST)
MIME-Version: 1.0
References: <CAFq4t4iqk7hNd8FVDZdiN7LRynCWDtmpP=BaJ4mM8RARX+StaQ@mail.gmail.com>
	<CANx9H-BKpUeo=PVq+EkeaqDhCiidy6Lekn62X=sFuVO_h+fGPg@mail.gmail.com>
	<CAFq4t4g9_ZqMRZ223MMRcVo1-cdo8TP_GyyD1ag0MZOg8by9gQ@mail.gmail.com>
In-Reply-To: <CAFq4t4g9_ZqMRZ223MMRcVo1-cdo8TP_GyyD1ag0MZOg8by9gQ@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 6 Dec 2018 14:43:09 +0100
Message-ID: <CAFq4t4hGdCdchtcptM4x33eVYXN8tZ-xwwYjZ3ywAXc=a_g8yw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>,
	eclipse-yocto@yoctoproject.org
Subject: Re: Yocto Cmake Build (Toolchain)
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
X-List-Received-Date: Thu, 06 Dec 2018 13:43:24 -0000
Content-Type: multipart/alternative; boundary="000000000000afcf31057c5aae1b"

--000000000000afcf31057c5aae1b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Now it's all OK. BTW is there some "prelaunch" commands possible?

Using the Eclipse plugin with the cmake from the sdk

This can get confusing because it may be unclear which cmake eclipse is
using, if you have one in the sdk and one installed on the host. To make
sure you get the cmake from the sdk, launch eclipse from a terminal that
has already sourced the environment script instead of launching it by
clicking on an icon (old school, I know...). For example in my case :

$ . /opt/fsl-imx-xwayland/4.9.51-mx8-beta/environment-setup-aarch64-poky-li=
nux
$ /home/ubuntu/eclipse/eclipse

That way, eclipse will find the "correct" cmake and wont complain about
either CMAKE_ROOT or "cmake not installed properly"

On Thu, Dec 6, 2018 at 7:50 AM Peter Balazovic <balazovic.peter@gmail.com>
wrote:

> What's the alternative?
>
> =C4=8Dt 6. 12. 2018 6:54 odes=C3=ADlatel Tim Orling <ticotimo@gmail.com> =
napsal:
>
>> Also including eclipse-yocto mailing list.
>>
>> BTW, ADT is not a thing anymore.
>>
>> On Wed, Dec 5, 2018 at 3:11 PM Peter Balazovic <balazovic.peter@gmail.co=
m>
>> wrote:
>>
>>> I am starting to use Eclipse ADT for app development using Yocto Cmake
>>> Build (Toolchain). I am trying to create simple "hello-world" example o=
ut
>>> of "Yocto Project SDK Cmake Project" but by building the project I am
>>> getting this
>>>
>>> Buildfile generation error occurred..
>>> Build of project failed with the following error:
>>> CMake Error: Could not find CMAKE_ROOT !!!
>>> CMake has most likely not been installed correctly.
>>> Modules directory not found in
>>>
>>> /opt/fsl-imx-xwayland/4.9.51-mx8-beta/sysroots/x86_64-pokysdk-linux/usr=
/share/cmake-3.5
>>> CMake Error: Error executing cmake::LoadCache(). Aborting.
>>> Build stopped..
>>>
>>> Do you encounter such a problem? I have a camke part of the Yocto SDK.
>>>
>>> BTW I am able to build, debug "hello-world" out of "Yocto Project SDK
>>> Autotools Project".
>>>
>>> Thank you for your advice.
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>

--000000000000afcf31057c5aae1b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Now it&#39;s all OK. BTW is there some &quot;prelaunch&quo=
t; commands possible?<div><br></div><div><h2 style=3D"color:rgb(0,0,0);font=
-size:19.4px;font-family:sans-serif;font-weight:normal;margin:0px 0px 0.6em=
;padding-top:0.5em;padding-bottom:0.17em;border-bottom:1px solid rgb(170,17=
0,170);overflow:hidden"><span style=3D"margin:0px;padding:0px;border:0px;fo=
nt:inherit;vertical-align:baseline;color:inherit">Using the Eclipse plugin =
with the cmake from the sdk</span></h2><p style=3D"color:rgb(0,0,0);font-si=
ze:12.7px;font-family:sans-serif;margin:0.4em 0px 0.5em;line-height:1.5em">=
This can get confusing because it may be unclear which cmake eclipse is usi=
ng, if you have one in the sdk and one installed on the host. To make sure =
you get the cmake from the sdk, launch eclipse from a terminal that has alr=
eady sourced the environment script instead of launching it by clicking on =
an icon (old school, I know...). For example in my case :<span style=3D"mar=
gin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font=
-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:monosp=
ace,Courier,serif,EmojiFont;vertical-align:baseline;background-color:rgb(24=
9,249,249)"></span></p><pre style=3D"color:rgb(0,0,0);font-size:12.7px;font=
-family:monospace,Courier;background-color:rgb(249,249,249);padding:1em;bor=
der:1px dashed rgb(47,111,171);line-height:1.1em;white-space:pre-wrap"><cod=
e>$ . /opt/fsl-imx-xwayland/4.9.51-mx8-beta/environment-setup-aarch64-poky-=
linux
$ /home/ubuntu/eclipse/eclipse
</code></pre><p style=3D"color:rgb(0,0,0);font-size:12.7px;font-family:sans=
-serif;margin:0.4em 0px 0.5em;line-height:1.5em">That way, eclipse will fin=
d the &quot;correct&quot; cmake and wont complain about either CMAKE_ROOT o=
r &quot;cmake not installed properly&quot;</p></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr">On Thu, Dec 6, 2018 at 7:50 AM Peter Balazov=
ic &lt;<a href=3D"mailto:balazovic.peter@gmail.com">balazovic.peter@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"=
>What&#39;s the alternative?</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">=C4=8Dt 6. 12. 2018 6:54 odes=C3=ADlatel Tim Orling &lt;<a href=3D=
"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@gmail.com</a>&gt; na=
psal:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div><div dir=3D"auto">Also i=
ncluding eclipse-yocto mailing list.</div></div><div dir=3D"auto"><br></div=
><div dir=3D"auto">BTW, ADT is not a thing anymore.</div><div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr">On Wed, Dec 5, 2018 at 3:11 PM Peter Bal=
azovic &lt;<a href=3D"mailto:balazovic.peter@gmail.com" rel=3D"noreferrer" =
target=3D"_blank">balazovic.peter@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
I am starting to use Eclipse ADT for app development using=C2=A0Yocto Cmake=
 Build (Toolchain). I am trying to create simple &quot;hello-world&quot; ex=
ample out of &quot;Yocto Project SDK Cmake Project&quot; but by building th=
e project I am getting this</div><div dir=3D"ltr"><div dir=3D"ltr"><br></di=
v><div dir=3D"ltr">Buildfile generation error occurred..</div><div dir=3D"l=
tr">Build of project failed with the following error:</div><div dir=3D"ltr"=
>CMake Error: Could not find CMAKE_ROOT !!!</div><div dir=3D"ltr">CMake has=
 most likely not been installed correctly.</div><div dir=3D"ltr">Modules di=
rectory not found in</div><div dir=3D"ltr">/opt/fsl-imx-xwayland/4.9.51-mx8=
-beta/sysroots/x86_64-pokysdk-linux/usr/share/cmake-3.5</div><div dir=3D"lt=
r">CMake Error: Error executing cmake::LoadCache(). Aborting.</div><div dir=
=3D"ltr">Build stopped..</div><div dir=3D"ltr"><br></div><div>Do you encoun=
ter such a problem? I have a camke part of the Yocto SDK.</div><div><br></d=
iv><div>BTW I am able to build, debug &quot;hello-world&quot; out of &quot;=
Yocto Project SDK Autotools Project&quot;.</div><div><br></div><div>Thank y=
ou for your advice.=C2=A0</div></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--000000000000afcf31057c5aae1b--
