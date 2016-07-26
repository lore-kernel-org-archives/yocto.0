Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 743B8E00CC0; Tue, 26 Jul 2016 07:20:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ABE5E006D8
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 07:20:54 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id b62so22366335iod.3
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 07:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=einOxJG6SPznT+8Shq71sPX6edxGJMhQvnjpjBldvOw=;
	b=xEg8N+jvWfE9/CoVncxQ90rSlwTP/MdcVqJY774twTvpF5a8xzxjC1lU/7WG8TIrhi
	yR8TrDjz3iths0QoeApr86B1Ej/+M/HAH2/Bjczbd9FD4vjELxdTOIu/t4i260O8PBvy
	rH0MXw/8Ffs6tVFMndVIxsWthfRzaa5Q2uIZkHCvr14C+279h4cf5uK5KFZBRsSLEH/2
	7IRzCGB9M3EMHNUwA/T+h0JBWer9Ygki9vO7kk6J1dgERaPurTjaaxTMc1ugbZLYPcfi
	Pmo/lW/8MGDSSkA880k09LscJdrdcmrRAuuMjnpLYle6Weu4IXmoSRMnAdD4Hyq6Y7PY
	6JjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=einOxJG6SPznT+8Shq71sPX6edxGJMhQvnjpjBldvOw=;
	b=bM7mvzTASa0uw1n9lzwxOlj6hWFhcxkWwrFfMJdhSs3sGwv2eBspB0un/jVr/wlMyW
	AGi2vyWvVP71OlLodsRtz6AtRCoVqYDJD7LNonC1KoFRNe79nFK5qm+3mwihc1TyH29Z
	ql6ismdz3DVecrXZZt+uIWOrolet5isADaE6IFCJLR9zep8tlrU3Nan/yMutkeLksitX
	kpRdgcTewGoyCxEogbfoFdiIAjC1w8nXqC34eu7FtwSZdvS12h5FNziznVk2XaWWCank
	2eLQcYr8qF+LW0Ynd/zPTD29J1bEb1rbdicNc/9T7rV/rYPGg8U8aMls0c8aysYb7udb
	E3eg==
X-Gm-Message-State: AEkoouve0MWBOXIuYU9tVjrrN3gZBeEVkewdvKZuHjgVwUsewIYNsWzAb4K0HrUey3Z1BfCCMy7/ss8LkSdls+qI
X-Received: by 10.107.138.212 with SMTP id c81mr25671953ioj.148.1469542853671; 
	Tue, 26 Jul 2016 07:20:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Tue, 26 Jul 2016 07:20:34 -0700 (PDT)
In-Reply-To: <57976F16.8010700@mlbassoc.com>
References: <57976F16.8010700@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 26 Jul 2016 15:20:34 +0100
Message-ID: <CAJTo0LYOYF=czvyC4HzhbuP1zFaQv2jwrXz82tmnoG3rnuxQBg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: python3 on build host
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
X-List-Received-Date: Tue, 26 Jul 2016 14:20:59 -0000
Content-Type: multipart/alternative; boundary=001a113ed932c689f905388a9bc4

--001a113ed932c689f905388a9bc4
Content-Type: text/plain; charset=UTF-8

On 26 July 2016 at 15:09, Gary Thomas <gary@mlbassoc.com> wrote:

> I have a build host that I've used for years.  It is not
> possible to [directly] update python3 on this system to
> one which is identified as suitable for use with bitbake.
>
> To try and work around this, I created a meta-toolchain SDK
> for my target.  I remember needing to do this years ago when
> one of my boxes also became out of date.  Sadly, this process
> has not led me to a solution.
>
> First question: is this the proper way to solve this problem?
> I simply can't update python3 on this box (I've tried), so I
> need another solution so I can continue to use this workhorse.
>

The buildtools-tarball is what you want: you can either build your own
(bitbake buildtools-tarball) or just download the one we've built for you.
This looks like the right one:

http://downloads.yoctoproject.org/releases/yocto/yocto-2.1/buildtools/poky-glibc-x86_64-buildtools-tarball-core2-64-buildtools-nativesdk-standalone-2.1.sh

Second question: even if this is not the correct way to solve my initial
> problem
> of providing a suitable python3 on my build host, shouldn't I be able to
> run
> bitbake (or indeed any suitably complex python3 program) using the SDK I
> installed?


Looks like this SDK doesn't actually contain a full copy of Python, just
the pieces to make what you have in the SDK work (theoretically, at
least).  This is why we add python3-modules to the buildtools-tarball, so
if you want your SDK to ship its own complete Py3 runtime then add
python3-core python3-modules to it.

Ross

--001a113ed932c689f905388a9bc4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 July 2016 at 15:09, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style=
:solid;padding-left:1ex"><div id=3D":2po" class=3D"">I have a build host th=
at I&#39;ve used for years.=C2=A0 It is not<br>
possible to [directly] update python3 on this system to<br>
one which is identified as suitable for use with bitbake.<br>
<br>
To try and work around this, I created a meta-toolchain SDK<br>
for my target.=C2=A0 I remember needing to do this years ago when<br>
one of my boxes also became out of date.=C2=A0 Sadly, this process<br>
has not led me to a solution.<br>
<br>
First question: is this the proper way to solve this problem?<br>
I simply can&#39;t update python3 on this box (I&#39;ve tried), so I<br>
need another solution so I can continue to use this workhorse.</div></block=
quote></div><br>The buildtools-tarball is what you want: you can either bui=
ld your own (bitbake buildtools-tarball) or just download the one we&#39;ve=
 built for you.=C2=A0 This looks like the right one:</div><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra"><a href=3D"http://downloads.=
yoctoproject.org/releases/yocto/yocto-2.1/buildtools/poky-glibc-x86_64-buil=
dtools-tarball-core2-64-buildtools-nativesdk-standalone-2.1.sh">http://down=
loads.yoctoproject.org/releases/yocto/yocto-2.1/buildtools/poky-glibc-x86_6=
4-buildtools-tarball-core2-64-buildtools-nativesdk-standalone-2.1.sh</a><br=
></div><div class=3D"gmail_extra"><br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-colo=
r:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><span style=3D=
"font-size:13px">Second question: even if this is not the correct way to so=
lve my initial problem<br></span><span style=3D"font-size:13px">of providin=
g a suitable python3 on my build host, shouldn&#39;t I be able to run<br></=
span><span style=3D"font-size:13px">bitbake (or indeed any suitably complex=
 python3 program) using the SDK I installed?</span></blockquote><div><br></=
div><div>Looks like this SDK doesn&#39;t actually contain a full copy of Py=
thon, just the pieces to make what you have in the SDK work (theoretically,=
 at least).=C2=A0 This is why we add python3-modules to the buildtools-tarb=
all, so if you want your SDK to ship its own complete Py3 runtime then add =
python3-core python3-modules to it.</div><div><br></div><div>Ross</div></di=
v>

--001a113ed932c689f905388a9bc4--
