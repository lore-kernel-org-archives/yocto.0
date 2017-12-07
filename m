Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9ADAE00D71; Thu,  7 Dec 2017 12:26:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauldotknopf[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CCE9E00D71
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 12:26:34 -0800 (PST)
Received: by mail-it0-f44.google.com with SMTP id m11so2166389iti.1
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 12:26:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IYDoc3FeG/yuqV0l0NPBb2ag89H8kaa/4hYZgalr9Hg=;
	b=uB3lhWedcFmffxSsVzgWEyXbIJjs7B5ULNRshxu/0SIsi963dG7XR3JjBZjkiNYN5s
	22/Sie4oKsumJ+Uas+hP6D7jISEcz40SPB5gAe3ktWblOGfcnsPFrV/9l4r7vWaiMh/D
	x8fStNnIiJkmdO5JIseJkPqfSqAUvtSAjOTEMeU/4hlJgBLbuLD6qz/LsndwFMI//Lt3
	PI2dyP0xhxQuR11KBgIhG6J+BECpjpIq1ZSCnv1s8M8Zfvm1unPBTK5fdOg2OJFdS1k3
	Yp0OdxT1dJPjQo8PNW5aTFAUcRItyQ6HolqBOuVXrJxwP7PeeGDPgKwEvsutU1QaxW9r
	oDsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IYDoc3FeG/yuqV0l0NPBb2ag89H8kaa/4hYZgalr9Hg=;
	b=r6NM9Y5DWrdxh64HsZkqkZTPHqi+luJul8T+s1cHY0Ejyr3B6VGbD8qt8sKhD8cxcv
	eIQL109N0znDWnqjPPIQ9+yPZtSIidW44FV1Uf+rlvZy1BQy6zUAUKXuLPDz/ihfaDTF
	45cfl1F7tgECDI0AE95uqEDNhQzPM7q+fFj8QTffNGILZq42BU4QFHuFQIBfTwW7CgIR
	rt/hv288z86fxfcdpeU44+tzoR38eaHnW/opaqd0BfZmZ9EVAxhcdle0VfZjs0SkoLet
	8kAdGeD9nReOuev7Lf7at3CUPyvhhZww6eG5obOp59+OdPvCm68T7vbKya63OGUOE/0w
	MAAw==
X-Gm-Message-State: AJaThX44yyMnJjCLGsXU4ITzHkLmOazi/PaC35XF54r2C1qQO54ijRkG
	qL+iL9ZIucv3UJiJn+5DX5ytVwHYn/9MSvp/o40=
X-Google-Smtp-Source: AGs4zMazQtabIjMMYgs6TANMIkmeUOBf+q6BD4U2VGeIwbiqVqKrHzWyO1kYcPaJX4Gszqci/E1924Av4yBt+sqvylo=
X-Received: by 10.107.8.152 with SMTP id h24mr42016529ioi.155.1512678393815;
	Thu, 07 Dec 2017 12:26:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.132.96 with HTTP; Thu, 7 Dec 2017 12:26:33 -0800 (PST)
In-Reply-To: <CAKmWj-1PzW29FUnWTeuJh6=hRghQ-7vi+PKst5K1cL4Tg1LQyw@mail.gmail.com>
References: <CAKmWj-1fwjsLE9SU05JBO0Q3BHXqRHdOYfN759=0D-OtYYXJrA@mail.gmail.com>
	<CAKmWj-0_JS5WTDC+ih2oW9_MPTnZJZurHj0cRy4N1jXcH5vSPg@mail.gmail.com>
	<95676e99-422b-8ab4-131f-de9878d3b3e8@linux.intel.com>
	<CAKmWj-1PzW29FUnWTeuJh6=hRghQ-7vi+PKst5K1cL4Tg1LQyw@mail.gmail.com>
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Thu, 7 Dec 2017 15:26:33 -0500
Message-ID: <CAKmWj-3d0ie0Sgxmg_BKj-JnZLjP3dCoEOjFjbo-LbfbSOZCjw@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Preventing a variable from being cached
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
X-List-Received-Date: Thu, 07 Dec 2017 20:26:34 -0000
Content-Type: multipart/alternative; boundary="001a113f8fc652a7ea055fc5e2aa"

--001a113f8fc652a7ea055fc5e2aa
Content-Type: text/plain; charset="UTF-8"

If I add whitespace to the recipe, it works. It will read the new
BUILD_GIT_POSITION and trigger commands to be re-run if it was changed.

How do I make it so that a recipe file is never cached, and reparsed?
Parsing is fine, since it BUILD_GIT_POSITION doesn't change, the commands
do_compile don't get run. However, if it does change, do_compile does get
called (which is what I want).

On Thu, Dec 7, 2017 at 3:22 PM, Paul Knopf <pauldotknopf@gmail.com> wrote:

> I have all my meta-layers and build conf files checked into a single
> repository (submodules for layers). I want a recipe to look at the git
> repository, and place a file in the build. I'd like this repository to read
> the HEAD, and decide if it needs to be rebuilt (to put new file in image)
> based off of HEAD/branch location.
>
> On Thu, Dec 7, 2017 at 11:15 AM, Alexander Kanavin <
> alexander.kanavin@linux.intel.com> wrote:
>
>> On 12/07/2017 05:47 PM, Paul Knopf wrote:
>>
>>> I take it that this is not possible?
>>>
>>
>> A recipe will rebuild if you change SRCREV or SRC_URI in it. What are you
>> trying to do?
>>
>> Alex
>>
>
>

--001a113f8fc652a7ea055fc5e2aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If I add whitespace to the recipe, it works. It will read =
the new BUILD_GIT_POSITION and trigger commands to be re-run if it was chan=
ged.<div><br></div><div>How do I make it so that a recipe file is never cac=
hed, and reparsed? Parsing is fine, since it BUILD_GIT_POSITION doesn&#39;t=
 change, the commands do_compile don&#39;t get run. However, if it does cha=
nge, do_compile does get called (which is what I want).</div></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Dec 7, 2017 at 3:=
22 PM, Paul Knopf <span dir=3D"ltr">&lt;<a href=3D"mailto:pauldotknopf@gmai=
l.com" target=3D"_blank">pauldotknopf@gmail.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div dir=3D"ltr">I have all my meta-layers and=
 build conf files checked into a single repository (submodules for layers).=
 I want a recipe to look at the git repository, and place a file in the bui=
ld. I&#39;d like this repository to read the HEAD, and decide if it needs t=
o be rebuilt (to put new file in image) based off of HEAD/branch location.<=
/div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On Thu, Dec 7, 2017 at 11:15 AM, Alexander Kana=
vin <span dir=3D"ltr">&lt;<a href=3D"mailto:alexander.kanavin@linux.intel.c=
om" target=3D"_blank">alexander.kanavin@linux.<wbr>intel.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><span>On 12/07/2017 05:47 PM, Pau=
l Knopf wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I take it that this is not possible?<br>
</blockquote>
<br></span>
A recipe will rebuild if you change SRCREV or SRC_URI in it. What are you t=
rying to do?<br>
<br>
Alex<br>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a113f8fc652a7ea055fc5e2aa--
