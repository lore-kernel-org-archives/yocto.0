Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA965E00B45; Thu,  1 Jun 2017 06:46:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.172 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AB05E00AE4
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 06:46:45 -0700 (PDT)
Received: by mail-qk0-f172.google.com with SMTP id y201so36480690qka.0
	for <yocto@yoctoproject.org>; Thu, 01 Jun 2017 06:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5mEe1b6OrR1DrovnS8mNhy9WwZVvJ/tnHJmPfzMUmCw=;
	b=xcRxMpvNKGvf1euMbxXmWj2EQr+lU+n1JCjDvIiDbI0WDUCC2ZrL8sgFV8XJBjzWlM
	hio2aqLdgCd0ABNMg8BM7U2S4Aqklbprt+rdIx5jo+VekQEr6etkxhcNBx4k4kkIhYlR
	pc6cL2Shbj7BGODp6aZAxDDMiCo8rkdvg+8imLFaayA3UgLtbIlDH9xnxNDYVtmVk2Ys
	3l9xRm51c3s6sxVsnSB3yegBoFzjETEMKxWd8k76nKOz1bYX0EegSOxA06lWivJ7yaEt
	FyaQOXzek/7IvlfbfpWMWeeuT+jZr/M/wvzlrl+nt64Aw0ggoWXNCVlndNIQX4VC597y
	9xWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5mEe1b6OrR1DrovnS8mNhy9WwZVvJ/tnHJmPfzMUmCw=;
	b=pZqLgKlGgzykFGD44uuQU5wUD1suH3EMixNfyA05VhPIHrJHD7duDSbPX851klqV1n
	7u26dVlwfXBMBonNMO/bebvUq+T0V+nHIVLvjS5zGC6wRYuMUiIdS+j2S3ktMolFp38O
	v4IS6f1tiDnzNSTtBvZMbhNCfsOh97J1hiG2QJS7GuA7P0mWEKp8hQx4sfKEVNYFb+S+
	O7YiGAODreiZcgz3Wvqnl2N+3ZgUUkNAtqMHV7RSRgFRF3evnc43X1r4tO84CItfmd9L
	5BU05y1qYCZ3fteF51RL2bRz7MDVwuchgdry5p11qrLvxC61V50XHw/Rhhm0L/dHUBjh
	p1wg==
X-Gm-Message-State: AKS2vOyQQ4AvK7mRFsGT59nxgp97rGHpTu93iVmM8jmPKtfQvL38plPU
	FnAQDymOCL+hYIWhemZsh2nzzHGEPxvg
X-Received: by 10.55.170.146 with SMTP id t140mr1598345qke.54.1496324805163;
	Thu, 01 Jun 2017 06:46:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.41.115 with HTTP; Thu, 1 Jun 2017 06:46:24 -0700 (PDT)
In-Reply-To: <859693e4-eedd-9212-6dc3-eac70c938c71@mlbassoc.com>
References: <841bb3fb-50d1-bf93-1a14-a507239330e0@mlbassoc.com>
	<CAJTo0Lbu6vQeRHmBhns-YjWNf_bQOUcn13-AhuOQq5KuvZJgLQ@mail.gmail.com>
	<859693e4-eedd-9212-6dc3-eac70c938c71@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 1 Jun 2017 14:46:24 +0100
Message-ID: <CAJTo0LZfKRW7NRmJX10v-EDGNmpzr36KmOP8+Nhh7dTn-ejKVg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>, 
	Alejandro del Castillo <alejandro.delcastillo@ni.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Why can't I install eudev-hwdb
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
X-List-Received-Date: Thu, 01 Jun 2017 13:46:49 -0000
Content-Type: multipart/alternative; boundary="94eb2c06fc5c7b0efb0550e64401"

--94eb2c06fc5c7b0efb0550e64401
Content-Type: text/plain; charset="UTF-8"

On 1 June 2017 at 14:38, Gary Thomas <gary@mlbassoc.com> wrote:

> Thanks for the suggestion.  Sadly, still no go.
>

No idea then.  CCing Alejandro...

Ross

--94eb2c06fc5c7b0efb0550e64401
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 June 2017 at 14:38, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":1t8" class=3D"a3s aXjCH m=
15c63e0f96c79cca">Thanks for the suggestion.=C2=A0 Sadly, still no go.<div =
class=3D"yj6qo ajU"><div id=3D":2bf" class=3D"ajR" tabindex=3D"0"></div></d=
iv></div></blockquote></div><br>No idea then.=C2=A0 CCing Alejandro...</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div>=
</div>

--94eb2c06fc5c7b0efb0550e64401--
