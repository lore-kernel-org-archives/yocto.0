Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C30EE00836; Mon, 26 Jan 2015 07:42:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qa0-f54.google.com (mail-qa0-f54.google.com
	[209.85.216.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6145E006AF
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 07:42:11 -0800 (PST)
Received: by mail-qa0-f54.google.com with SMTP id w8so7199622qac.13
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 07:42:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LFXbmrO+nvgSmHjOqayhRTpnGfinslnByOP/atWHxKw=;
	b=DUjqWl+PPLXf8/VtUpWefvyos41nDzFdbtO18aaC2tvDZmISxTK37tWoIdU3y+QBHy
	tiCENkIQPuWEbmZ2KX2VmnbZGrp5grxMIt6UXOdF32CfMiuMY/tu7Z1Ig3P1R3BhmlQF
	3fhi7CPK0xiDs3rqcExJxMLPRoypqwVvCEkGfn7KTTEYSo4SDpwOwTkYPmIFOUk1sZVj
	MvJzeDn1xRemPjZXn9RLj72L3IGi2uPz21xrOa3UAl5Fb7kcFN6uJAa3t6l067aTsWr+
	DdQB2WtgOc5whnlWBaPrw47MqIifnHFpMT4Z7K7W/uAwiV9yeNzGFwrlFTAaCRUINjJR
	WOXQ==
X-Gm-Message-State: ALoCoQn+LNzVFeeY19kscgocqXMnrNUhaq+8eMjxDay8/JhSHdYuywja6hRfQr87Y7yfQMj4owXC
X-Received: by 10.224.7.197 with SMTP id e5mr28364375qae.64.1422286929859;
	Mon, 26 Jan 2015 07:42:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Mon, 26 Jan 2015 07:41:49 -0800 (PST)
In-Reply-To: <b07e28e49bae2d77641358279a82e920@technux.se>
References: <cover.1420901279.git.petter@technux.se>
	<b07e28e49bae2d77641358279a82e920@technux.se>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 26 Jan 2015 15:41:49 +0000
Message-ID: <CAJTo0LanJCZMdG7pdJ4wtK7o8BTZc13FgKnsX0Wbx8rT9BuDvg@mail.gmail.com>
To: petter@technux.se
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-yocto] [PATCH 0/1] tiny-init: set proper S value
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
X-List-Received-Date: Mon, 26 Jan 2015 15:42:14 -0000
Content-Type: multipart/alternative; boundary=001a11c223f4392daa050d8ffbd1

--001a11c223f4392daa050d8ffbd1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 24 January 2015 at 09:22, Petter Mab=C3=A4cker <petter@technux.se> wrote=
:

> Since bug [5627] has reached poky repo, can you please consider propose
> merging of below change to meta-yocto, to avoid the warning about 'S' not
> set to a proper value?
>

Whoops, I missed that when merging the other pieces, thanks for pinging.

Ross

--001a11c223f4392daa050d8ffbd1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 January 2015 at 09:22, Petter Mab=C3=A4cker <span dir=3D"ltr">&lt;<a =
href=3D"mailto:petter@technux.se" target=3D"_blank">petter@technux.se</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":27f" class=
=3D"a3s" style=3D"overflow:hidden">Since bug [5627] has reached poky repo, =
can you please consider propose merging of below change to meta-yocto, to a=
void the warning about &#39;S&#39; not set to a proper value?<br></div></bl=
ockquote></div><br>Whoops, I missed that when merging the other pieces, tha=
nks for pinging.</div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra">Ross</div></div>

--001a11c223f4392daa050d8ffbd1--
