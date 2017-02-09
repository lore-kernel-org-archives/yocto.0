Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 747CAE00A3B; Thu,  9 Feb 2017 06:50:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.175 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D891E006D8
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 06:50:20 -0800 (PST)
Received: by mail-qk0-f175.google.com with SMTP id u25so6447436qki.2
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2017 06:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WoOTGCSwzBpDMCSeXjWMSaQ/Du3cy1EZ9GupgAnNYgY=;
	b=PAvQlc+cJOS+53eLYk4YR4h/YdI9eKMRQ75lGRi0jz6gcYhohSOsjG3JNmie+mSWD3
	swnFJR3J9ZzB0z21k6rysiPkImMHPIXC7UUwtxHLdAc3I5X5yhX97V4OY5QxiKE8MLMB
	iHdwzBcsI0ii8C26Bpk7scdjbZTQ/Crg+Oq2VocOuro7Evbn4JMIk8xYY+Eg+Run2Cz4
	lzUHzoOkVo+FxQoMFyOZTSvYONWt+klEPHJfu8sRAKnXKgfl0/PG+waSbtOnGDdznot2
	XF8R3XyYHZMiH5Wo++hZHR2T8e3R96qxKmRWRXq9kQdD+1DD18LIt0r1cr09eZ1VYhb0
	rWdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WoOTGCSwzBpDMCSeXjWMSaQ/Du3cy1EZ9GupgAnNYgY=;
	b=AHyEa1uudfAxlgkKNxgFIQ5/o7wI42YplI5FQi9/yfmrd4Nrqo1B4rDm//EUjH471h
	yNny38peF6HzFmwDpD5Pf/7JqI3Ud/Z1DKa5I++y7wO91DKPgtKZP9meFzIW/2nhLQG1
	1ovwaAYV+kjv01NH06rKzHg4t9lATn+AXH4czgoUUtBStmkU9JCos+w+GG8GHtb3Bv5t
	OLoV6Y+nsKt0r4nSPec7U2NsZLzrNjhe8kReq9Q8xP5ABeMgTQC+ysLxQBtKPOlUWsIJ
	W0xME5fodk645gHx5NIGPQ404xYPV8VGAYIUcjowAZf0dqWj7AfiPb26MfiaWOKQq5Tb
	TmsQ==
X-Gm-Message-State: AMke39lscnY3kLVQek8WSEECM5jiJW+WLsXfMvntsw3a/KMcRZp0pXxbbXWNJ0n44rKTrMwhAVZPdkLeEVRcc3Xc
X-Received: by 10.55.16.11 with SMTP id a11mr3562136qkh.3.1486651820172; Thu,
	09 Feb 2017 06:50:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Thu, 9 Feb 2017 06:49:59 -0800 (PST)
In-Reply-To: <1a2becc3-33d5-2320-03a1-07c9680bcb4c@mlbassoc.com>
References: <8dce4c37-30db-f5aa-69b7-7c9653769994@mlbassoc.com>
	<CAJTo0LY01P0Mvtj1kmYsrmugk0Sz1exk3JoiWwNGkuKQbi3FHA@mail.gmail.com>
	<1e710ec0-80d0-ecc5-dedd-1ea0b29e2a10@mlbassoc.com>
	<CAJTo0LZCMAENF30XVmY8HgDf5G45uaNixGU=1VKfg-kSYSMLYQ@mail.gmail.com>
	<1a2becc3-33d5-2320-03a1-07c9680bcb4c@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Feb 2017 14:49:59 +0000
Message-ID: <CAJTo0LZHxRvaaRQAXMBQxYo==6jpCnY+yCFdK8OhDEXqFC29vg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trimming images
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
X-List-Received-Date: Thu, 09 Feb 2017 14:50:23 -0000
Content-Type: multipart/alternative; boundary=001a11475cbca5952d05481a1957

--001a11475cbca5952d05481a1957
Content-Type: text/plain; charset=UTF-8

On 9 February 2017 at 14:48, Gary Thomas <gary@mlbassoc.com> wrote:

>
> Is it possible to make this "image" specific?  I have some ramdisk
> based images as well as full fledged "disk" images and I really only
> care about the size issues for the ramdisk ones.  Is there a way to
> say "for my ramdisk image, leave this out, for everything else, it's OK"?


Just set BAD_RECOMMENDS in the image.

Ross

--001a11475cbca5952d05481a1957
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 February 2017 at 14:48, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><br>
Is it possible to make this &quot;image&quot; specific?=C2=A0 I have some r=
amdisk<br>
based images as well as full fledged &quot;disk&quot; images and I really o=
nly<br>
care about the size issues for the ramdisk ones.=C2=A0 Is there a way to<br=
>
say &quot;for my ramdisk image, leave this out, for everything else, it&#39=
;s OK&quot;?</blockquote></div><br>Just set BAD_RECOMMENDS in the image.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></div>

--001a11475cbca5952d05481a1957--
