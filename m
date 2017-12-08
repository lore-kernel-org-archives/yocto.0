Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EBBAE00D6F; Fri,  8 Dec 2017 08:20:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B392E00D19
	for <yocto@yoctoproject.org>; Fri,  8 Dec 2017 08:20:56 -0800 (PST)
Received: by mail-it0-f65.google.com with SMTP id d16so5862510itj.1
	for <yocto@yoctoproject.org>; Fri, 08 Dec 2017 08:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=t+a0CW7o4JeDwDpDrsRit1cqTOK9vtNDKlfZHLbCEmY=;
	b=QFoa6HH42cwn1ZJiXd8K/aIzk4Q0dcav+s7dYbUxmumroxh+RIXDM7zUAfQZ7DiBFc
	ZCzg6eLomYjEJ83It0ltDyJyLfxDW1eff4qovIeBwaiFawFcXGIpeD1d7rQohXhsfIj7
	uvdVU87jUbs/zs2OMf8echJp6rhogKF2m242HtVuE0T0RH8SCa5z/NfYOOE/8a/Xo5bS
	keC+2pqpSAgRDBkI8ijo1BdPkW0dOvwFJHW/SOk76NMRMUTqoLvM0XJFjSfgx/LoMhH2
	bCWZrrYflm/5uScni8eFP7P3iPMcw31v8+Sg8EdzyhtPVayEsGZvAMUXfFvqiuh7ZYhE
	sjqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=t+a0CW7o4JeDwDpDrsRit1cqTOK9vtNDKlfZHLbCEmY=;
	b=qO7wa8h0y/kOJvnwtbVPC7/10UxjE3zvmF4ijWGPYKRqFf3y79xqI8boNcPq9YuNvz
	JiBy+zL9eeGdhAbq0Ml/Bb9/HMoLiclhX4VcN0SNt2h3jhMtmEnrgTynpvM1paJ1CwVv
	+7fRl45c/FiKJaqK1bIqPsvqEaiyijWjgEHM1tN53PVTZM5DJ9yARQT6Hp7RFFxlZHvI
	Gy/TtO/BHhxU7NpaGxyuKah/LK7V1JNe7fAdXnw0XvV7nSIW8QkRdc9GVqKyLG42E3jA
	3Dp2yaW0DwZdGcI1uEQNiywLfj+bhHsPQa2F4gK2oxo7wbMAbbgVNHnLkxOFapPNrm5Y
	wr+A==
X-Gm-Message-State: AJaThX5sLB4s6stiaM6oroWO8d2tf4jZ9xGeUJ86uS6ziqouCtaZfYL+
	/haaeVpV7upyBRmOsmXY4lipV1mCO1ZkH6/rMrI4fw==
X-Google-Smtp-Source: AGs4zMbZF3s65O2DQ89BKYYSUeKGaWv+EsnesFtJPvp8cDBJvxnW/LVItbt3Jg3pm3y4YSaAe0NidMatgG5HQFkTeRA=
X-Received: by 10.107.32.18 with SMTP id g18mr42762121iog.227.1512750056147;
	Fri, 08 Dec 2017 08:20:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.137.195 with HTTP; Fri, 8 Dec 2017 08:20:35 -0800 (PST)
In-Reply-To: <20ca1f3c-d99b-089e-8806-82101fc1a6e1@linux.intel.com>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<348a1df0689fa954c0a8da46751bd5f9b0666b87.1512630627.git.liezhi.yang@windriver.com>
	<662dab3a-5e90-43a3-5962-07eed51bb7bc@linux.intel.com>
	<bf1a9396-7796-aabc-afc9-69b1976751ae@windriver.com>
	<20ca1f3c-d99b-089e-8806-82101fc1a6e1@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Dec 2017 16:20:35 +0000
Message-ID: <CAJTo0LaRAFuMxp5WYFSKT2_ziG4ZR9bu9viL7US8qPOVp7Q8Nw@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 09/12] upgradehelper.py: use git user in commit when recipes are specified
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
X-List-Received-Date: Fri, 08 Dec 2017 16:20:58 -0000
Content-Type: multipart/alternative; boundary="001a1141b498bb286e055fd691e8"

--001a1141b498bb286e055fd691e8
Content-Type: text/plain; charset="UTF-8"

On 8 December 2017 at 14:07, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 12/08/2017 03:51 AM, Robert Yang wrote:
>
> I'm not sure about this one. Commits shouldn't be created automatically on
>>> a person's behalf and then also signed-off - I'd say you need to first look
>>> at them.
>>>
>>
>> IMHO, Auh is a helper, when user run:
>> $ auh less
>>
>> It helps create commits, should be the same as user run "git commit", and
>> the
>> user should responsible for it. Or how about add a -S option:
>>
>> -S, --SOB    Use git user as the author and add SOB.
>>
>
> Yeah, as long as maintainers don't send those raw commits straight to
> mailing list, it's okay. It's rare that such an auto-created commit doesn't
> need further work (e.g. to explain changes in patches or license, or other
> adjustments).


The lack of a SOB was intentional for exactly this reason.  No SOB means a
human didn't look at it *at all*/

Ross

--001a1141b498bb286e055fd691e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 8 December 2017 at 14:07, Alexander Kanavin <span dir=
=3D"ltr">&lt;<a href=3D"mailto:alexander.kanavin@linux.intel.com" target=3D=
"_blank">alexander.kanavin@linux.intel.com</a>&gt;</span> wrote:<br><div cl=
ass=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><span class=3D"">On 12/08/2017 03:51 AM, Robert Yang wrote:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
I&#39;m not sure about this one. Commits shouldn&#39;t be created automatic=
ally on a person&#39;s behalf and then also signed-off - I&#39;d say you ne=
ed to first look at them.<br>
</blockquote>
<br>
IMHO, Auh is a helper, when user run:<br>
$ auh less<br>
<br>
It helps create commits, should be the same as user run &quot;git commit&qu=
ot;, and the<br>
user should responsible for it. Or how about add a -S option:<br>
<br>
-S, --SOB=C2=A0=C2=A0=C2=A0 Use git user as the author and add SOB.<br>
</blockquote>
<br></span>
Yeah, as long as maintainers don&#39;t send those raw commits straight to m=
ailing list, it&#39;s okay. It&#39;s rare that such an auto-created commit =
doesn&#39;t need further work (e.g. to explain changes in patches or licens=
e, or other adjustments).</blockquote><div><br></div><div>The lack of a SOB=
 was intentional for exactly this reason.=C2=A0 No SOB means a human didn&#=
39;t look at it *at all*/</div><div><br></div><div>Ross=C2=A0</div></div></=
div></div>

--001a1141b498bb286e055fd691e8--
