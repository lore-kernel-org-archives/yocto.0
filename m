Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD45CE00C9D; Wed,  5 Dec 2018 22:51:23 -0800 (PST)
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
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.180 listed in list.dnswl.org]
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com
	[209.85.166.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B5C2E00C95;
	Wed,  5 Dec 2018 22:50:37 -0800 (PST)
Received: by mail-it1-f180.google.com with SMTP id b5so24274138iti.2;
	Wed, 05 Dec 2018 22:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=yLUZhblojm6pQLi6MPTL9l+XC0rCV91yuewW+ez9vvY=;
	b=VAY3NZbGDQtNHMDZ89LN7hD/OobCbvIsKNG7RUKUh6l9vDUdtRaiza15jCNZ3CLeux
	Q98XYceyASEdoSHg2D7jfO1n2zqoeReT6kpx0MUtea1GJ+cnZehJAyv8Eg8fBL+38ZXH
	zAWNL4AvdowVHERUU47KIqoEqWlxWUdGppoYjlbDdSFBcbXpGzShjwLTe0hkIn1PtxNi
	jsOWjODvTXbglaykw9irmGnsa70GUQMwpeC90x+63GewU4pVxz4bsY95NAJnm+YUISgX
	k+AAJ0wL9XJqRwUaaVyzh4HG0253mHfNXzWX4vFAn+OwvM2l3efvBQDG8/7mRnc3eqkw
	SRKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=yLUZhblojm6pQLi6MPTL9l+XC0rCV91yuewW+ez9vvY=;
	b=cHzTuZVUCtQuJStMKyBK5T/y1lYaU2+YpmKpQ9GTPGmBOqd5D5nmiLu0r4GFMmjaRN
	XZLM1RHcwPOpaRypNL3UW/VBgU/pdo2oIy4cw8K+bmphAHQyCRT3vmOVpHcVB1hlk+DM
	g+D9zoMVzGZLfH7XO3sP+S4nuZ0bR1ASuWOTVnsPSK17wJ7R5oABK+34xB8xMVZPW/N/
	GF8/9CRo315HTgg9/RsGEH2hpA/xzsReTgCrqntwn8lS4No9kpRcvPxoUuZ4Z74hvjYx
	Fddia7dtJ0RzLJeypykxwThGJrQGxwdplrHg/aVXJWeip+OpWe24x5RW2ZZ7/NRzNvZE
	k3AQ==
X-Gm-Message-State: AA+aEWYo2OJ2KpwdC5i1Q0T98g85bg52gQXP13AWjl8STTykC2kOmXzc
	PJjxTKYWdPAWQF2GrV2XCOh8Kp16QZYa7DPLMY6VnTv3
X-Google-Smtp-Source: AFSGD/XufeK+VNqjKiWcpN8ew59tnmNQVO9TJqHbFqPwZ1M3Fo7Ls2mf0AnTxNp/69RIjJ5hLHS3eu/thWUsE/tim+s=
X-Received: by 2002:a24:6890:: with SMTP id v138mr18911871itb.53.1544079036760;
	Wed, 05 Dec 2018 22:50:36 -0800 (PST)
MIME-Version: 1.0
References: <CAFq4t4iqk7hNd8FVDZdiN7LRynCWDtmpP=BaJ4mM8RARX+StaQ@mail.gmail.com>
	<CANx9H-BKpUeo=PVq+EkeaqDhCiidy6Lekn62X=sFuVO_h+fGPg@mail.gmail.com>
In-Reply-To: <CANx9H-BKpUeo=PVq+EkeaqDhCiidy6Lekn62X=sFuVO_h+fGPg@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 6 Dec 2018 07:50:26 +0100
Message-ID: <CAFq4t4g9_ZqMRZ223MMRcVo1-cdo8TP_GyyD1ag0MZOg8by9gQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 06 Dec 2018 06:51:23 -0000
Content-Type: multipart/alternative; boundary="0000000000007dc9df057c54eacd"

--0000000000007dc9df057c54eacd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What's the alternative?

=C4=8Dt 6. 12. 2018 6:54 odes=C3=ADlatel Tim Orling <ticotimo@gmail.com> na=
psal:

> Also including eclipse-yocto mailing list.
>
> BTW, ADT is not a thing anymore.
>
> On Wed, Dec 5, 2018 at 3:11 PM Peter Balazovic <balazovic.peter@gmail.com=
>
> wrote:
>
>> I am starting to use Eclipse ADT for app development using Yocto Cmake
>> Build (Toolchain). I am trying to create simple "hello-world" example ou=
t
>> of "Yocto Project SDK Cmake Project" but by building the project I am
>> getting this
>>
>> Buildfile generation error occurred..
>> Build of project failed with the following error:
>> CMake Error: Could not find CMAKE_ROOT !!!
>> CMake has most likely not been installed correctly.
>> Modules directory not found in
>>
>> /opt/fsl-imx-xwayland/4.9.51-mx8-beta/sysroots/x86_64-pokysdk-linux/usr/=
share/cmake-3.5
>> CMake Error: Error executing cmake::LoadCache(). Aborting.
>> Build stopped..
>>
>> Do you encounter such a problem? I have a camke part of the Yocto SDK.
>>
>> BTW I am able to build, debug "hello-world" out of "Yocto Project SDK
>> Autotools Project".
>>
>> Thank you for your advice.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--0000000000007dc9df057c54eacd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">What&#39;s the alternative?</div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr">=C4=8Dt 6. 12. 2018 6:54 odes=C3=ADlatel Tim Orling=
 &lt;<a href=3D"mailto:ticotimo@gmail.com">ticotimo@gmail.com</a>&gt; napsa=
l:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div dir=3D"auto">Also incl=
uding eclipse-yocto mailing list.</div></div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">BTW, ADT is not a thing anymore.</div><div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Wed, Dec 5, 2018 at 3:11 PM Peter Bala=
zovic &lt;<a href=3D"mailto:balazovic.peter@gmail.com" target=3D"_blank" re=
l=3D"noreferrer">balazovic.peter@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I=
 am starting to use Eclipse ADT for app development using=C2=A0Yocto Cmake =
Build (Toolchain). I am trying to create simple &quot;hello-world&quot; exa=
mple out of &quot;Yocto Project SDK Cmake Project&quot; but by building the=
 project I am getting this</div><div dir=3D"ltr"><div dir=3D"ltr"><br></div=
><div dir=3D"ltr">Buildfile generation error occurred..</div><div dir=3D"lt=
r">Build of project failed with the following error:</div><div dir=3D"ltr">=
CMake Error: Could not find CMAKE_ROOT !!!</div><div dir=3D"ltr">CMake has =
most likely not been installed correctly.</div><div dir=3D"ltr">Modules dir=
ectory not found in</div><div dir=3D"ltr">/opt/fsl-imx-xwayland/4.9.51-mx8-=
beta/sysroots/x86_64-pokysdk-linux/usr/share/cmake-3.5</div><div dir=3D"ltr=
">CMake Error: Error executing cmake::LoadCache(). Aborting.</div><div dir=
=3D"ltr">Build stopped..</div><div dir=3D"ltr"><br></div><div>Do you encoun=
ter such a problem? I have a camke part of the Yocto SDK.</div><div><br></d=
iv><div>BTW I am able to build, debug &quot;hello-world&quot; out of &quot;=
Yocto Project SDK Autotools Project&quot;.</div><div><br></div><div>Thank y=
ou for your advice.=C2=A0</div></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"noreferr=
er">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div></div>
</blockquote></div>

--0000000000007dc9df057c54eacd--
