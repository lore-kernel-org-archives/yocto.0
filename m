Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13AAFE00D01; Tue, 31 Oct 2017 08:17:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.176 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FEEDE00CF2
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 08:17:14 -0700 (PDT)
Received: by mail-pf0-f176.google.com with SMTP id n14so14002642pfh.8
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 08:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=usyliq5TVQP5MlLe28OMToSt15l4jnjeGuiZuRP2fKo=;
	b=dnO33tgwDYG1Qyfc0ncGpBrkEAoSJ0wywUrrKrdObfEIEUOro4ThpyHcPGbVKCuiYT
	5fa2kt75b0s6CDU1v0RmPN1naui5cpnlnLk/JEPj4T4WoV7gm/bNmq3zPJAU64VywRgj
	hjPeVSjfVsV96EgutVB6aBPZ4re82Ns/EChD3X6lv8UQIUpNpD/zZacIUp7HfB6ulP+y
	JUc38GLYs5FLAteGFBTGJzB8IFKwYwjI8WQXpgA3s41gJsVQS0BYYnx08lUDpBAo7BEQ
	S87c74dvwRLw6TrgzIQPEaMiDbbTvZPywrerEVwiPsUiLZ1ud2hB5PDk63a2lE8V2FL7
	OeWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=usyliq5TVQP5MlLe28OMToSt15l4jnjeGuiZuRP2fKo=;
	b=tMnqOH1hiWpCWRu+VVmpdjeW7fkFQSMdv/M0kLDYFfDdphOGTk0SFqRppUNigRtLw/
	Qozvqb8y9pc6mo38mhO+1HeAayfyO/BZfh8niUGamqG+UoV4RYRpUyKmMc+HTAJ55CPT
	/FSjwumQvroJNjiXbFXMEDjCYKzVI0hqLqzckuHUWQM96qLNnX97waqng9pMqDqIMSzb
	2BCibLRdY9L7r8qIIIzxGMJuCkX3P/2Sw0LkyAL7PRuE/5sBxRHveTBsK/D8T60iiB5F
	rYhLZA28c/8oVc5To0/eChvg5nK+jbG0OZH+o5pJJA8DX8+inzjp8UJy7cDRtkK0hvfs
	6k0w==
X-Gm-Message-State: AMCzsaWbdFYXUsIPA2bB2FBxwWnFJX0Figju8jo7uhSBA/dD2002Tnen
	tYkD09QyiAlWwyneDyR6e+OjlMxy3YTQralXxmA=
X-Google-Smtp-Source: ABhQp+Sfr22ZMW57IyI6KJhIX3xYgPBDXOI5RLHU7Vaicwn3Hvx6jQUDFRjwnVtJbe62aQenQbeLtmyRjX9MHAh7OEM=
X-Received: by 10.84.212.16 with SMTP id d16mr2171966pli.374.1509463034058;
	Tue, 31 Oct 2017 08:17:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.141.9 with HTTP; Tue, 31 Oct 2017 08:17:13 -0700 (PDT)
In-Reply-To: <CAJTo0LYPxRO1sB8T=bE2m6aG6jgODWr+fSyujzwcQsEst0eb9w@mail.gmail.com>
References: <CAOsp8o87Tu-jsEQts=f-kmM1mtwcMrDN0eM-Zs0w0c+iF36gFQ@mail.gmail.com>
	<CAMKF1spbS2++NDZ8=mifSPP+i-TOMn1bmNQTnx+H6HdwsPkaDQ@mail.gmail.com>
	<CAOsp8o_a353XUeojQdeLq-AuqL=eXNwBoma57=C6Cq=29q02GA@mail.gmail.com>
	<CAJTo0LYPxRO1sB8T=bE2m6aG6jgODWr+fSyujzwcQsEst0eb9w@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
Date: Tue, 31 Oct 2017 10:17:13 -0500
Message-ID: <CAOsp8o87ZoRBj8-im5n0u7sTpQ74bG2EL-Yo5bz09HHE3ja4BA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Using site.conf
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
X-List-Received-Date: Tue, 31 Oct 2017 15:17:15 -0000
Content-Type: multipart/alternative; boundary="f403045d2026f25d31055cd93f76"

--f403045d2026f25d31055cd93f76
Content-Type: text/plain; charset="UTF-8"

Ok thanks! I think I mistakenly thought that I needed to have it be called
site.conf.sample, and it will copy the sample into the .conf file in the
build/conf area.

On Tue, Oct 31, 2017 at 9:24 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 31 October 2017 at 14:15, Michael Habibi <mikehabibi@gmail.com> wrote:
>
>> Is there an example of this somewhere? I haven't had any luck in
>> documentation or example code to see how to make the site.conf be used.
>>
>>
> site.conf is loaded if it is present in a conf/ directory anywhere.  I
> have a meta-ross which contains conf/site.conf, I add that layer to every
> build tree and bitbake will read the site.conf.  There's not a lot more to
> it really.
>
> Ross
>

--f403045d2026f25d31055cd93f76
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok thanks! I think I mistakenly thought that I needed to h=
ave it be called site.conf.sample, and it will copy the sample into the .co=
nf file in the build/conf area.=C2=A0</div><div class=3D"gmail_extra"><br><=
div class=3D"gmail_quote">On Tue, Oct 31, 2017 at 9:24 AM, Burton, Ross <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blan=
k">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr"><span class=3D"">On 31 October 2017 at 14:15, Michae=
l Habibi <span dir=3D"ltr">&lt;<a href=3D"mailto:mikehabibi@gmail.com" targ=
et=3D"_blank">mikehabibi@gmail.com</a>&gt;</span> wrote:<br></span><div cla=
ss=3D"gmail_extra"><div class=3D"gmail_quote"><span class=3D""><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"ltr">Is there an example of this somewhere? =
I haven&#39;t had any luck in documentation or example code to see how to m=
ake the site.conf be used.</div><div class=3D"gmail_extra"><br></div></bloc=
kquote><div><br></div></span><div>site.conf is loaded if it is present in a=
 conf/ directory anywhere.=C2=A0 I have a meta-ross which contains conf/sit=
e.conf, I add that layer to every build tree and bitbake will read the site=
.conf.=C2=A0 There&#39;s not a lot more to it really.</div><span class=3D"H=
OEnZb"><font color=3D"#888888"><div><br></div><div>Ross=C2=A0</div></font><=
/span></div></div></div>
</blockquote></div><br></div>

--f403045d2026f25d31055cd93f76--
