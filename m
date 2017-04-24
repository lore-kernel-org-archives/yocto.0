Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADFA6E007BA; Mon, 24 Apr 2017 03:18:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.169 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 725EDE00349
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 03:18:54 -0700 (PDT)
Received: by mail-qt0-f169.google.com with SMTP id c45so109084188qtb.1
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 03:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6vESzVvag/Vkglr+WZjCeVTqF4aPQ6ouNkWfMYuZ1Rs=;
	b=sRIA8/VbPdNXGvU8KZh+/jSLwAr8UuBekdKFS0Fw00T5LZBs8XTwPGZRUADWv4mmVb
	RIcdlg21yaaclYo+It1Gb2bxXSgJuVIb3FTrPwDOTrURGREkndThMtwi7f4T9hmJccJE
	H0gaKHffhXkKaFgClqCvTIV2gSFqhgJjt45H8MqKJZNVjgNA742pYjKyg5V2J9b3nicg
	wwTgF4bP/GbabOWKbmmc7DXWxxa37dBrR3pwyp+oN+LQLKAIDYsJlWDpA/15+jGu2zBY
	3LOuURtCGEqObMsO703SYQTuWnsu6Sjabx9aY7WVB/PB7i5k4ymkFiY1LsaFE2vp1YhY
	Jgpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6vESzVvag/Vkglr+WZjCeVTqF4aPQ6ouNkWfMYuZ1Rs=;
	b=lr0J53OAAmhEHcxyQWFam+QvCstUn61GK2D71k+YB25AvSQIIj9lnjZXUCMD/P0hA9
	SUGPL9bHHPvF1oMBNHbYKIPfXmWnPcxJs4bEb+D+Wx4JwmvtMakfGEC0Hzkz/LG2j/ne
	Z04BAdm2kPj9lQZ4FBjYYqRdxzK7lEVQh4JXH4mMrHzLKRh6AExTZNO29bB0yyyZMrs0
	4RGWg/sgadgGe2sDuQnYbklxZgRfse/7UuTHnjE/Os7VT4GBBgfFQAO5h5fSDljMwmQc
	F9BRlGwe8WOtCdgEiz4XBAEgs7R4mW3dQnSd15BlrUV0ubm1QhbP8o+Ho/oTCHYH7BhJ
	Yx0w==
X-Gm-Message-State: AN3rC/6Qq5EVfIbrv0Esp7Hf44Hx9OORNfoRbiLbAlrrliiyaz0YeuLY
	q1+HJKzg9xkmH/cQx6KjAgvLF8hm60Hx
X-Received: by 10.200.34.242 with SMTP id g47mr24266089qta.109.1493029133479; 
	Mon, 24 Apr 2017 03:18:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 24 Apr 2017 03:18:32 -0700 (PDT)
In-Reply-To: <CAJTo0LakaSZhJodT2KQx6u0TEaBL5Ruig3oOdfrtCzQUf1cxXg@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
	<CAJTo0LakaSZhJodT2KQx6u0TEaBL5Ruig3oOdfrtCzQUf1cxXg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Apr 2017 11:18:32 +0100
Message-ID: <CAJTo0LbHfg3ra7ugc8Q9zq-dyf35pyocuBDEe9uVh09ZaNnr7w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 10:18:56 -0000
Content-Type: multipart/alternative; boundary=001a114037d42409cf054de6ef48

--001a114037d42409cf054de6ef48
Content-Type: text/plain; charset=UTF-8

On 24 April 2017 at 10:09, Burton, Ross <ross.burton@intel.com> wrote:

> All merged, I'll fire in a moment.
>

https://autobuilder.yocto.io/builders/nightly-non-gpl3/builds/237/steps/BuildImages/logs/stdio
shows that the old elfutils in meta-gpl2 doesn't like gcc7 either.

Ross

--001a114037d42409cf054de6ef48
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 April 2017 at 10:09, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:=
rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_extra">All merged, I=
&#39;ll fire in a moment.</div><div class=3D"gmail_extra"></div></blockquot=
e></div><br><a href=3D"https://autobuilder.yocto.io/builders/nightly-non-gp=
l3/builds/237/steps/BuildImages/logs/stdio">https://autobuilder.yocto.io/bu=
ilders/nightly-non-gpl3/builds/237/steps/BuildImages/logs/stdio</a> shows t=
hat the old elfutils in meta-gpl2 doesn&#39;t like gcc7 either.<br></div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></d=
iv>

--001a114037d42409cf054de6ef48--
