Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2A1CE007BA; Mon, 24 Apr 2017 02:47:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1919E00349
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 02:47:34 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id y63so82686603qkd.1
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 02:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3mnf19FLvlG/IaqPMiDD2ubnzbzU5evfWB0kAdymzXY=;
	b=Qyx1/FPP+NXMpdtLCHZIu4XMefkcE6pWU8aOo+wxI6N7wLADMwvXWDy6N8oRfJi1Di
	zHnxUV7DUOSE7ZZLGbk3iFColmTHTkdwsBWuZvnZDgB1bjqEb5HgPTNn9IPhq3+TQFJX
	muyY1q6/OV+UWvD87/M+DJU+So0+Q7HKYpZpMov3xhMsSGPEGUMrSeUz1GCxgPXJiMqz
	jtWFMshcwE19W4zDgTfOv38l4fcQAfteOzBWheY3a01EupKRnV2HRSohVdvD1NxFq7Ge
	1dNc12Mmmy2vuShNZpZXa5wU8wqP2XGhFeAXQGMge+RqOt1ErbGAZsyvjZCvS4dUCOEO
	XJcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3mnf19FLvlG/IaqPMiDD2ubnzbzU5evfWB0kAdymzXY=;
	b=ZCO9sZpDIz182FhIzPSmvRqK1l8MY31ANDDY9FFcS0frIMuAgMoLaavXpwqZ5nd3+i
	1F2MaeHiw0JRj0S/N68fUFRbakTdeJNen1VSWMxQKqrvfISEjWPURvA77wiORSQ+0lLm
	pun3ic/sUoD0oeMp0cC3WSjcLW8EpW0MJA9u3abU9WqjCnUWcLZz+URx/WsnVv+vWfwz
	alrxBL/xmVaGxBiV1jo3tAiFF9gKVh0vh+BjmlWSrTAio58uAK8RIINjgV96693g/vQP
	tYavN9nBVLnGuGLjtbj3bD5EkHWjsDdZOAIerPqpT57jqnS2k1zBl5AHoD7Vic4gQRAQ
	aFig==
X-Gm-Message-State: AN3rC/4Yzty0fTn/fENf2kZKrpCgDqv+dH9RZVeQSKp/Tup0c7Ff9hNs
	voxM1QqUGiR7TqcLKCocO+Hk1WdbrSlJ
X-Received: by 10.55.17.224 with SMTP id 93mr22053986qkr.244.1493027254196;
	Mon, 24 Apr 2017 02:47:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 24 Apr 2017 02:47:13 -0700 (PDT)
In-Reply-To: <CAJTo0LakaSZhJodT2KQx6u0TEaBL5Ruig3oOdfrtCzQUf1cxXg@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
	<CAJTo0LakaSZhJodT2KQx6u0TEaBL5Ruig3oOdfrtCzQUf1cxXg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Apr 2017 10:47:13 +0100
Message-ID: <CAJTo0LaWkRxjaF4j1HHhUqFDYYTmGADTuiLo8zqPwR+wKSbY2A@mail.gmail.com>
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
X-List-Received-Date: Mon, 24 Apr 2017 09:47:39 -0000
Content-Type: multipart/alternative; boundary=001a1135cbcc2067b0054de67fb4

--001a1135cbcc2067b0054de67fb4
Content-Type: text/plain; charset=UTF-8

On 24 April 2017 at 10:09, Burton, Ross <ross.burton@intel.com> wrote:

> All merged, I'll fire in a moment.
>

The updated glibc recipe doesn't appear to be very happy:
https://autobuilder.yocto.io/builders/buildtools/builds/240/steps/BuildImages/logs/stdio

Ross

--001a1135cbcc2067b0054de67fb4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 April 2017 at 10:09, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:=
rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_extra">All merged, I=
&#39;ll fire in a moment.</div><div class=3D"gmail_extra"></div></blockquot=
e></div><br>The updated glibc recipe doesn&#39;t appear to be very happy:=
=C2=A0<a href=3D"https://autobuilder.yocto.io/builders/buildtools/builds/24=
0/steps/BuildImages/logs/stdio">https://autobuilder.yocto.io/builders/build=
tools/builds/240/steps/BuildImages/logs/stdio</a></div><div class=3D"gmail_=
extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1135cbcc2067b0054de67fb4--
