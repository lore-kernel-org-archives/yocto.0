Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2ACAE00D41; Thu,  1 Feb 2018 11:05:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f48.google.com (mail-pl0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 497D9E00CE8
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 11:05:12 -0800 (PST)
Received: by mail-pl0-f48.google.com with SMTP id j19so4241452pll.2
	for <yocto@yoctoproject.org>; Thu, 01 Feb 2018 11:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=L2mcP9S6QmoqK9/MZlBb7JRImHKrdEiBFRluwdUJGcM=;
	b=Ty8CId+FqHgzKo2czpBInMfBjxOH6a+2rXiO6H5+SRElJEbexXVd6tNfOf2aCvsW02
	8U+iUKkSykL0VgFDBMFICN+kvLTcgBg2N425Asd6kkzUU3n17VHPP4vieL2fcYq8wrWz
	ljkzBeyMX69pYzMjADpzkV6TCCSCyQd5LaQEV8E6B8HxClAWYf7ebUzmE2FWy0OF4xoP
	WLEqj/KFfRBIgy03b1qQ2+z3GKFRPSvkmSyTEh9DrCplA3zMJPTc9FELdB0N96ftQ5Pi
	Myqa8E64lOdryCe21B1VHPOJj1REnWwBTj1QCsj1pWgLDHKAWeIzpcCMQeLrvs5+l3xW
	S7VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=L2mcP9S6QmoqK9/MZlBb7JRImHKrdEiBFRluwdUJGcM=;
	b=QqtvAaqoaazD9Gi2G6wMwZWNyuEL6aJNeRkiWpJkiSn32tZE2FV9TILDHxCb/Fd0vh
	VZ8mpRkHJ1oZGDt4U/DQeAeKpR8NEZKOQ/mjluO3N3l+ycTHjZ96drDRklvBxrfhicTT
	BEkMoDtBd9RdPSpkHLeAAahwPXzxIQukBx0X1ir6fdXDItpOmDRss9ROyz4PAxrnoo0m
	Mz4F+gd/Bg5fm/ouQ2HfEvB8oUtdJ6HrXHIPWWx+wqDoq6L4kO4A+7rOwe//2uO9sZPl
	9cRv7mWptDggAxScGwGdt0xSvhgAJLaoNhf/if8XtvGP85I73Zmrp0u/xQv7NYSWBJbA
	v/ew==
X-Gm-Message-State: AKwxytdfnxeApJGSr/3zAUr1vypY4yUAA5Mns7K1+eRCyPsE9FrsbFTt
	aN3GLX7gCP9RPv6FTAAI/4Em7bKrznsTlkAp2IM=
X-Google-Smtp-Source: AH8x226rKsSdsYQvJKUpzThhcWTLBhE1GoM9xC7dFup81KvjfesRbBKUpe3VUF4aluIUS5obgEkW4P/7h+JJ4/YR3Gc=
X-Received: by 2002:a17:902:14d:: with SMTP id
	71-v6mr33001316plb.42.1517511912632; 
	Thu, 01 Feb 2018 11:05:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.159.130 with HTTP; Thu, 1 Feb 2018 11:05:12 -0800 (PST)
In-Reply-To: <CAJTo0LYh9Y879OZejijDrvdvXvbYGsyeOb9vLm2ahdfiK3Dg9Q@mail.gmail.com>
References: <CAOsp8o_Evg6RvDSuKj_7MBm8GUs8p=SMiTs8DuGEDbPr_hA7dQ@mail.gmail.com>
	<CAJTo0LZfeg37KA=XOd-G7QJABy53JC5kJ07+uMo17xjjNq66qw@mail.gmail.com>
	<CAOsp8o83H+_rTgZANb9c9SoLEbMpg6L_O-vAYAygPrNjeMpaFw@mail.gmail.com>
	<CAJTo0LYh9Y879OZejijDrvdvXvbYGsyeOb9vLm2ahdfiK3Dg9Q@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
Date: Thu, 1 Feb 2018 13:05:12 -0600
Message-ID: <CAOsp8o-=GpA7HJp0TmTkeZ7vbOqvzO=YA76JvLN1CcP4Y3Fr6Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Patching only the target version of a package?
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
X-List-Received-Date: Thu, 01 Feb 2018 19:05:13 -0000
Content-Type: multipart/alternative; boundary="0000000000007eb5af05642b4697"

--0000000000007eb5af05642b4697
Content-Type: text/plain; charset="UTF-8"

Thanks, that seems to be pretty much precisely what I need. Where can I
learn more about the class construct, e.g. class-target and native? I saw
some references to it in the docs, but not an actual explanation of how
that all works and is put together. Any ideas?

On Thu, Feb 1, 2018 at 9:34 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 1 February 2018 at 15:03, Michael Habibi <mikehabibi@gmail.com> wrote:
>
>> So let's say my whole bbappend file is only necessary for the target
>> version. Can I rename the whole thing package-target.bbappend (add the
>> -target suffix) and it will only append it to the recipe when building the
>> target? Is "target" the actual suffix or is it a placeholder for something
>> more specific? I have only seen -native, -cross, and some other ones that
>> don't seem to apply to this case.
>>
>>
> That won't work, as native and cross suffixes in recipes are for humans,
> not bitbake.
>
> Ross
>

--0000000000007eb5af05642b4697
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, that seems to be pretty much precisely what I need=
. Where can I learn more about the class construct, e.g. class-target and n=
ative? I saw some references to it in the docs, but not an actual explanati=
on of how that all works and is put together. Any ideas?</div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Feb 1, 2018 at 9:34 AM=
, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.co=
m" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr"><span class=3D"">On 1 February 201=
8 at 15:03, Michael Habibi <span dir=3D"ltr">&lt;<a href=3D"mailto:mikehabi=
bi@gmail.com" target=3D"_blank">mikehabibi@gmail.com</a>&gt;</span> wrote:<=
br></span><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span class=
=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">So let&#39;s say my w=
hole bbappend file is only necessary for the target version. Can I rename t=
he whole thing package-target.bbappend (add the -target suffix) and it will=
 only append it to the recipe when building the target? Is &quot;target&quo=
t; the actual suffix or is it a placeholder for something more specific? I =
have only seen -native, -cross, and some other ones that don&#39;t seem to =
apply to this case.</div><div class=3D"m_-704155850292949445HOEnZb"><div cl=
ass=3D"m_-704155850292949445h5"><div class=3D"gmail_extra"><br></div></div>=
</div></blockquote><div><br></div></span><div>That won&#39;t work, as nativ=
e and cross suffixes in recipes are for humans, not bitbake.</div><span cla=
ss=3D"HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross=C2=A0</div><=
/font></span></div></div></div>
</blockquote></div><br></div>

--0000000000007eb5af05642b4697--
