Return-Path: <theknoppix@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18095E00C49; Wed, 14 Nov 2018 03:46:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (theknoppix[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B118AE00C10
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 03:46:29 -0800 (PST)
Received: by mail-wm1-f54.google.com with SMTP id t15-v6so14511110wmt.0
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 03:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6iBLNxfDWXldcLFGjxCzxUiB8iHyF+Rm2y4lDHuOQbw=;
	b=lDny4CKt4CLeF1EzyfHtDWm1NldRPjo36XLxv6dJh/DNXpppD6rHFOuIk1oOZVZ5mN
	OroVOQimG9EWgB5gF6ee/QClMY+R+DWw5lzLHl3qY/w16QwWSSwLrgYuec6BBg/ryhL9
	PlEuJ9MlOjpphCvUWuIendUvNwI5AVqcde+RpIx09XYC6RJcS8bC4tyHtGqOF1WP1C+l
	FaQvlBidt78zb/nWIw04xZTjOxbzsycRokUD1Ugl3MbR38Ct49drGoYMlxH5hSBSlP1S
	ZVVguLeIsAQutbPe22WiL+/eZp3WSFYDLdkfBKjJiKs2EqFMYfdO0cFO/qqedFUNFe3l
	SOKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6iBLNxfDWXldcLFGjxCzxUiB8iHyF+Rm2y4lDHuOQbw=;
	b=H/lXIhnn5CUAVItRaAV3Clafzjp7pZNkDxbI89KuCxy8tEhWakRTAGeKnM2zrPCpfd
	m/Ur57O3ZGgGNkZI7+pURqjk6agpPe99uMtWW2sPuqoieNV6rN/pnWH5cSUCHDwCrO+r
	DLLSxIToSpSTJCS3ngzmFHXjQlnAKH57efd8icz6KvTRgwp9ZyfnoIMkD1aIRZfgS0OR
	v1QYBywY/Jydxg2k8c21kMkpL34TI44MvxlrIRIaEjFmXa4qlt2I7IHqSfAQR2rlIfOJ
	ZiA8GJRDkpoMw/xtHXpRv8GEQlfy0705tY0WVVU8D6qOA9SKElROEbE05jxICx0nMocx
	9vHQ==
X-Gm-Message-State: AGRZ1gI72TUot3vvYm8fZSh5F4dUs0ALzrFph5oKdkerqBXc40LVLrWY
	8LEAr1Ka6XKe26XaHj7E3YpFwe9z8iKUxL/3ft0=
X-Google-Smtp-Source: AJdET5fwUsWOPmS0ojJJJGAxCjaTSBFF7FnOXDGxe3SsYkBOPozov06BZAZXbW5PI3UWkLF7JSzTk8tYjONfU3BcXo4=
X-Received: by 2002:a1c:a184:: with SMTP id
	k126-v6mr1677337wme.32.1542195988396; 
	Wed, 14 Nov 2018 03:46:28 -0800 (PST)
MIME-Version: 1.0
References: <CAD9sEJu_CbZYAGCiytx1GuM+HEQ+ar8mRG+aWG55dRe_okpK8Q@mail.gmail.com>
	<CAJTo0LY4jYkwWH0LEjzoAmjPWpm3W7P0m45YSWC7CfTW11P_CQ@mail.gmail.com>
In-Reply-To: <CAJTo0LY4jYkwWH0LEjzoAmjPWpm3W7P0m45YSWC7CfTW11P_CQ@mail.gmail.com>
From: Knoppix <theknoppix@gmail.com>
Date: Wed, 14 Nov 2018 14:46:16 +0300
Message-ID: <CAD9sEJsfnEMaPpREK26BoXqteh+3yXw3Uy6jQThBJMnnomJ3EA@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] meta-gnome: what are dependencies for gnome-full-desktop (gnome interface)
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
X-List-Received-Date: Wed, 14 Nov 2018 11:46:31 -0000
Content-Type: multipart/alternative; boundary="0000000000001006a5057a9e7c42"

--0000000000001006a5057a9e7c42
Content-Type: text/plain; charset="UTF-8"

My question were implement the missing recipes for yocto->meta-gnome
To start from point I did want to learn dependency graphic of gnome3.
I subscripted devel right know.

Mr Burton: Thank you.

On Wed, Nov 14, 2018 at 2:25 PM Burton, Ross <ross.burton@intel.com> wrote:

> On Wed, 14 Nov 2018 at 08:42, Knoppix <theknoppix@gmail.com> wrote:
>
>> (Excuse me for my english I am not native)
>>
>> One disappointment for me was learn that meta-gnome is not
>> fully-supported for running desktop. So i want to write all remain recipes
>> to use desktop environment. I want to start from scratch (except from
>> meta-debian-recipes) because for learn gnome world.
>>
>> Dear friends, how can I learn what are the necessary binaries&libraries
>> for gnome interface (i.e: desktop window&display-manager panel, topbar,
>> settings and other UI full-desktop-environment) to use on yocto project?
>> Which project is I should start to write its recipe?
>>
>
> If you just want to know what the GNOME dependencies are then you should
> be asking GNOME.  GNOME has a build tool called jhbuild, the module sets in
> tht list all of the dependencies required.
>
> Note that there's a series to add the GNOME 3 desktop to meta-gnome under
> review on the openembedded-devel list, so working on that would avoid
> duplication of effort.
>
> Ross
>

--0000000000001006a5057a9e7c42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>My question were implement the missing recipes for yo=
cto-&gt;meta-gnome</div><div>To start from point I did want to learn depend=
ency graphic of gnome3.</div><div>I subscripted devel right know.<br></div>=
<div><br></div><div>Mr Burton: Thank you.<br></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr">On Wed, Nov 14, 2018 at 2:25 PM Burton, Ross &lt;<a=
 href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">On Wed, 14 Nov 20=
18 at 08:42, Knoppix &lt;<a href=3D"mailto:theknoppix@gmail.com" target=3D"=
_blank">theknoppix@gmail.com</a>&gt; wrote:<br><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>(Excuse me for my engli=
sh I am not native)<br></div><div><br></div><div>One disappointment for me =
was learn that meta-gnome is not fully-supported for running desktop. So i =
want to write all remain recipes to use desktop environment. I want to star=
t from scratch (except from meta-debian-recipes) because for learn gnome wo=
rld.</div><div><br></div><div>Dear friends, how can I learn what are the ne=
cessary binaries&amp;libraries for gnome interface (i.e: desktop window&amp=
;display-manager panel, topbar, settings and other UI full-desktop-environm=
ent) to use on yocto project? Which project is I should start to write its =
recipe?</div></div></blockquote><div><br></div><div>If you just want to kno=
w what the GNOME dependencies are then you should be asking GNOME.=C2=A0 GN=
OME has a build tool called jhbuild, the module sets in tht list all of the=
 dependencies required.</div><div><br></div><div>Note that there&#39;s a se=
ries to add the GNOME 3 desktop to meta-gnome under review on the openembed=
ded-devel list, so working on that would avoid duplication of effort.</div>=
<div><br></div><div>Ross</div></div></div>
</blockquote></div></div>

--0000000000001006a5057a9e7c42--
