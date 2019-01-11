Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8488AE00CD8; Thu, 10 Jan 2019 17:03:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
	[209.85.217.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BEA5E00B77
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 17:03:22 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id x64so8235431vsa.5
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 17:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=JkFsmz+wFlFYtK8DxWxBn1vxJdKkPzSEMAYVvptA+ro=;
	b=PT9rgF/6f4Q+3zOTsKPLTKZKjxwaZh6TJW1TPGObH3V7OI7NC9OHlEvyzpUXZEIC3N
	WzwEldaN4EmdLPTtGDIMRMedCyKmxrdzLUJPwXdD4JirufKLYsVTEMpab57PCSrakvum
	yFFh+VLFHh16KvCiZnh7qdfWH1mSZULzx5wX1dorVDEKN9LEy+md4gIDcbA/hXB2GXCg
	1oHX6QH9eojEAgvj1l/qIWubbzwv0YnytNWOW7Ntf3wvM/hKICx9yrsvRFHARxrVE65l
	Txd4kKW/9RgmfnixigYoURmDwjcguthM/dEcjP5yEBZkQedN2V2dqcLhm4kQaQSjwca5
	9x0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=JkFsmz+wFlFYtK8DxWxBn1vxJdKkPzSEMAYVvptA+ro=;
	b=sGRGLe2okLpo0S3eDTYQZWGcz5eLu88CsIsdHImLZK/fhBkel0SF5Wo6Sc5sqG3NAd
	QSOmbmW4FcoB5VVF6H9pShooAtE7FLQRd63rDHxuP9RzJP/0u/Z3VoGWF6kUh0pDgRYY
	a2JAiyHGVLBdyFHS2dac6SI9Jal3ZYPVvIk/OqvD0c3Ys+jXxDGnRxiQ1CWH7FFQrIPE
	cuAHX8eFRBE2ynx6O5Eg0fVkTwH8/8f0M457pkuMhc7dgYMOwSxt37ssDvS+tV8LkhiO
	2qcqjeRItkuW27gj5h+2cV83Qx00qJz3W8wRkEVh/zYdZ3qsEeynTkLMYsGwqlhI0kZR
	nwPg==
X-Gm-Message-State: AJcUukeszGUUOKh2UQ49F31rB3ft9KZcQrASZz7khJYP22qNcCnlcyQD
	mtNZryckXj1KBXNYrke0e3M8o1pwo2RoUQDPCVY=
X-Google-Smtp-Source: ALg8bN4TlXNXL+rJ+m+OubMqm1faL61jw/D6Usm7Bgo0s4n1188rFv3HRUf41tQmSmHFI3zs3limsM66FndIYDaiIIg=
X-Received: by 2002:a67:c806:: with SMTP id u6mr5195079vsk.206.1547168601364; 
	Thu, 10 Jan 2019 17:03:21 -0800 (PST)
MIME-Version: 1.0
References: <CAKRytNzSRPTnjXMO8Gajv5b20XtY++=jskWFWLTdMULSh++53w@mail.gmail.com>
	<CANNYZj_Oec5gWm=RuKnbU1yrEO67AFjv3bzpgTwidgTS=tMe2w@mail.gmail.com>
	<CAKRytNzUxrn+hPxUrNjJuXfw0hshLp+G-Es2HJUr0x1AzAcE4w@mail.gmail.com>
In-Reply-To: <CAKRytNzUxrn+hPxUrNjJuXfw0hshLp+G-Es2HJUr0x1AzAcE4w@mail.gmail.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Fri, 11 Jan 2019 02:03:10 +0100
Message-ID: <CAKRytNzDcavKVJeL-=JWRYftQL9-eRWBwa4PkD__D-8=GKSQGw@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is it possible to upgrade Nodejs from 8 to 10 LTS?
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
X-List-Received-Date: Fri, 11 Jan 2019 01:03:23 -0000
Content-Type: multipart/alternative; boundary="000000000000e45c69057f244299"

--000000000000e45c69057f244299
Content-Type: text/plain; charset="UTF-8"

I tried to port the recipe to node 9.11.2 and I built it without errors
with yocto thud.
The same for both 10.*0.0* and 10*.4.0*.
Everything seems to be ok, but I still need to run these versions on a real
board, so I'll confirm the result in a couple of days.

However, when I try, for instance with either node 10.*15*.0, 10.*14.2* I
receive tons of warnings and the error *"out/Release/torque: Syntax error:
newline unexpected".*
Instead, with both 10.0.0, 10.4.0, I can build also without warnings.

*I still trying to understand the maximum version that I can build to try
to compare it. *
*I'll do some check and then I'll post the recipe with the new patch file
and the full log with the error (it's really huge) to ask help.*


Il giorno gio 10 gen 2019 alle ore 19:04 Stefano Cappa <
stefano.cappa.ks89@gmail.com> ha scritto:

> Thank u for the answer.
>
> The problem is that I'm not expert in this stuff and Nodejs is not
> something so easy to port like small softwares and so on. I think that
> Nodejs is more appropriate for advanced users.
> However, I'll try to do some other random experiments to understand how to
> port the recipe and eventually I'll post my progress here also if not fully
> working.
>
> Another suggestion to the open-embedded community is to create two
> recipes, one called nodejs and another one nodejs-lts. Generally speaking
> its easier to do smaller upgrades if made step by step. In this way it is
> possible to maintain the current lts and also the latest release (not lts).
> Probably the porting from the latest non lts to the next lts wil be simpler
> then skipping two versions in a single step. But these are only my
> suppositions. I never ported complex softwares like this in yocto, so I
> could say stupid things.
>
>
> Il gio 10 gen 2019, 12:00 Alexander Kanavin <alex.kanavin@gmail.com> ha
> scritto:
>
>> On Wed, 9 Jan 2019 at 22:34, Stefano Cappa <stefano.cappa.ks89@gmail.com>
>> wrote:
>> > As explained here https://github.com/nodejs/Release, NodeJS 10 is the
>> current active LTS and NodeJS 8 is right now in "Maintenance" (from January
>> 2019).
>> >
>> > I saw that in master branch, Node has been updated from 8.12 to 8.14.
>> Is there an official scheduling to release NodeJS 10 in open-embedded, for
>> instance with yocto 2.7?
>>
>> In Yocto there is generally no official scheduling for version
>> updates. That work is basically all volunteer-driven, so you are
>> welcome to prepare the patches and send them for review and testing.
>>
>> Alex
>>
>

--000000000000e45c69057f244299
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I tried to port the recipe to node 9.11.2 and I built it w=
ithout errors with yocto thud.<div>The same for both 10.<b>0.0</b> and 10<b=
>.4.0</b>.</div><div>Everything seems to be ok, but I still need to run the=
se versions on a real board, so I&#39;ll confirm the result in a couple of =
days.<br></div><div><br></div><div>However, when I try, for instance with e=
ither node 10.<b>15</b>.0, 10.<b>14.2</b> I receive tons of warnings and th=
e error <b>&quot;<span style=3D"color:rgb(33,33,33)">out/Release/torque: Sy=
ntax error: newline unexpected</span>&quot;.</b></div><div>Instead, with bo=
th 10.0.0, 10.4.0, I can build also without warnings.</div><div><b><br></b>=
</div><div><b>I still trying to understand the maximum version that I can b=
uild to try to compare it.=C2=A0</b></div><div><b>I&#39;ll do some check an=
d then I&#39;ll post the recipe with the new patch file and the full log wi=
th the error (it&#39;s really huge) to ask help.</b></div><div><br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr">Il giorno gio 10 gen 2019 all=
e ore 19:04 Stefano Cappa &lt;<a href=3D"mailto:stefano.cappa.ks89@gmail.co=
m" target=3D"_blank">stefano.cappa.ks89@gmail.com</a>&gt; ha scritto:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">Thank u for the answer.<div><br></div><d=
iv>The problem is that I&#39;m not expert in this stuff and Nodejs is not s=
omething so easy to port like small softwares and so on. I think that Nodej=
s is more appropriate for advanced users.=C2=A0<div dir=3D"auto">However, I=
&#39;ll try to do some other random experiments to understand how to port t=
he recipe and eventually I&#39;ll post my progress here also if not fully w=
orking.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Another su=
ggestion to the open-embedded community is to create two recipes, one calle=
d nodejs and another one nodejs-lts. Generally speaking its easier to do sm=
aller upgrades if made step by step. In this way it is possible to maintain=
 the current lts and also the latest release (not lts). Probably the portin=
g from the latest non lts to the next lts wil be simpler then skipping two =
versions in a single step. But these are only my suppositions. I never port=
ed complex softwares like this in yocto, so I could say stupid things.=C2=
=A0</div></div><div><div dir=3D"auto"><br><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr">Il gio 10 gen 2019, 12:00 Alexander Kanavin &lt;<a href=3D"m=
ailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&=
gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Wed, 9 Jan 2019 =
at 22:34, Stefano Cappa &lt;<a href=3D"mailto:stefano.cappa.ks89@gmail.com"=
 target=3D"_blank">stefano.cappa.ks89@gmail.com</a>&gt; wrote:<br>
&gt; As explained here <a href=3D"https://github.com/nodejs/Release" rel=3D=
"noreferrer" target=3D"_blank">https://github.com/nodejs/Release</a>, NodeJ=
S 10 is the current active LTS and NodeJS 8 is right now in &quot;Maintenan=
ce&quot; (from January 2019).<br>
&gt;<br>
&gt; I saw that in master branch, Node has been updated from 8.12 to 8.14. =
Is there an official scheduling to release NodeJS 10 in open-embedded, for =
instance with yocto 2.7?<br>
<br>
In Yocto there is generally no official scheduling for version<br>
updates. That work is basically all volunteer-driven, so you are<br>
welcome to prepare the patches and send them for review and testing.<br>
<br>
Alex<br>
</blockquote></div></div></div></blockquote></div></div>

--000000000000e45c69057f244299--
