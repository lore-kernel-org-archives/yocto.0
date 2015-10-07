Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0033E00CFE; Wed,  7 Oct 2015 06:04:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3AA3E0071C
	for <yocto@yoctoproject.org>; Wed,  7 Oct 2015 06:04:29 -0700 (PDT)
Received: by qkas79 with SMTP id s79so5282275qka.0
	for <yocto@yoctoproject.org>; Wed, 07 Oct 2015 06:04:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=9j6sirz1od3SPbWhIBPoCl3QzQ/UFY/dUc8jlaHhr7U=;
	b=SY6ipKHPavXTrG2WTm+hkxjN1m3QaARVgGx3y4neUKIiRQifrJWW7ebSe+EpoApnQh
	LWToOihJUVdU1ZhHoStx5M7lO5Bi3cPKauFIvVlSPTkEndshW50zVl/OnvLpNcYhVi6B
	qeETo/bv6H2sNUSRjt1nC2wG3v++Sf+e+2w+pbec7a1gwAgo8cn3TWK8lD+tDzfbLiwo
	lfmHd1e19en8QwuAsDPshOVHR3ph79JSQpVj9CidVWtoN7X6njpooxoeI3o8y+uI9+Z4
	h+pHCXHgloAOz8udTMPn5Oq2qrF2Yom+KXBskqxM5U9ubkxcfSySd/kThm/t46PosUyH
	ZqBw==
X-Gm-Message-State: ALoCoQnKxyJ3dbw3wUoiWPFV3HUaeh9UekfMOZJRjjMPGkS1mtjLliOHip/x3GDptPYVjQzu4Kkr
X-Received: by 10.55.43.129 with SMTP id r1mr1238357qkr.104.1444223068675;
	Wed, 07 Oct 2015 06:04:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Wed, 7 Oct 2015 06:04:09 -0700 (PDT)
In-Reply-To: <CAJTo0LYcHSOFt1zOWBwaWvJr_SqqkGaK7QWiQg2J=d+YGhVuqQ@mail.gmail.com>
References: <DB59870584238C45879465F0A2E5C3F17E16BB@IRVEXCHMB14.corp.ad.broadcom.com>
	<CAJTo0LYcHSOFt1zOWBwaWvJr_SqqkGaK7QWiQg2J=d+YGhVuqQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 7 Oct 2015 14:04:09 +0100
Message-ID: <CAJTo0LYq2JgWo953QYT2nQrdqVtG5yObUuMvmYLYJ0YWzbMsKA@mail.gmail.com>
To: "Luke (Lucas) Starrett" <lstarret@broadcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: tmp on NFS
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
X-List-Received-Date: Wed, 07 Oct 2015 13:04:31 -0000
Content-Type: multipart/alternative; boundary=001a1147ba9efc5e2b05218362a4

--001a1147ba9efc5e2b05218362a4
Content-Type: text/plain; charset=UTF-8

On 7 October 2015 at 13:59, Burton, Ross <ross.burton@intel.com> wrote:

> Follow the link in the patch to the referenced bug, and comment #8 by Mark
> Hatle explains the problems that Wind River were seeing in testing:
>

I should also add that many people buy lots of RAM and do builds with
build/tmp in a tmpfs as it gives you a noticeable performance increase, so
I dread to think how much it will hurt to do a build with build/tmp on a
network mount.

Ross

--001a1147ba9efc5e2b05218362a4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 October 2015 at 13:59, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extra=
">Follow the link in the patch to the referenced bug, and comment #8 by Mar=
k Hatle explains the problems that Wind River were seeing in testing:</div>=
<div class=3D"gmail_extra"></div></blockquote></div><br>I should also add t=
hat many people buy lots of RAM and do builds with build/tmp in a tmpfs as =
it gives you a noticeable performance increase, so I dread to think how muc=
h it will hurt to do a build with build/tmp on a network mount.</div><div c=
lass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1147ba9efc5e2b05218362a4--
