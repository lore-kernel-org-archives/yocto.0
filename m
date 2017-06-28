Return-Path: <drew.moseley@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D4BDE00BC1; Wed, 28 Jun 2017 06:06:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f182.google.com (mail-yb0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 825F7E00BCC
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 06:06:16 -0700 (PDT)
Received: by mail-yb0-f182.google.com with SMTP id e201so18795576ybb.1
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 06:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=eTSFOhoYEJrlx2gZeRDpztcfJwetW55LeIXmutFKeB0=;
	b=xVy5SzIAPNpuKrMZN3OquNloYMVcJDR9gsWxRirsuLz7DUJE9aeYsE993C7F5Q0vuT
	QnVkMNsXGPpH/z649wkZj5t74HFDf7OqNRipbCOeZyxvCTcGIVNqtMRmMAAiIEcKl1js
	SGhLgDGgCiYb0IFbHGkQU8TKH8Hyb1qOFZ8caD6HxGFrv1UZBKJzDoXAYtwTcp5TeVmK
	zHuFGxUewmHQZA86HVcn/3tAszPz7f/e7F5mFbBLGNbvd07a6hLum7P9kzjm/Np1Lvoq
	m6rFDNTm3AJRwZ7gNfFnA+aNwEvWSUyzbmBkMTOcKtWDVjW5Bwro+LKzwXP4fgXrcEnK
	REVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=eTSFOhoYEJrlx2gZeRDpztcfJwetW55LeIXmutFKeB0=;
	b=dVkZeypbey54pr/uD8sI2KpAfxK4riuY+GpFtiyz0SvouqI4TejzDJ70AwLwHjrjU0
	UcZT5+Xe6Iqe21YTkhS5/oGxAVM6lPH27+eBS5MxLwhmHift6LJUEKmazYqM5pYdCJm8
	+iYA3UeKxMLZdr/zjG8qvEqZkHtrpQbiLZ8XedJgoXdpVO0eAG0h8haypQYlDrARpenr
	RJM9XT75bXflTAZQiSTfA++ZtiGI6L65djJbcrCmMlaHL1QzJ8kBYnUN/0cy+muGME3v
	zIuW+TyRSAK510a836OQZWCu1LKXIpVN6KdinElvJKB16UqGrtFLIp4fZ2M1fyTJC8vr
	reDg==
X-Gm-Message-State: AKS2vOyPeaDzwnUXsicuPZxlUctONlTLQr20NZI0qeZWXXA31HL6AF9a
	eJ8TdRPAgyKdyk+N
X-Received: by 10.37.174.149 with SMTP id b21mr8057548ybj.131.1498655176146;
	Wed, 28 Jun 2017 06:06:16 -0700 (PDT)
Received: from [192.168.1.33] (653240hfc152.tampabay.res.rr.com.
	[65.32.40.152])
	by smtp.gmail.com with ESMTPSA id k64sm849977ywe.23.2017.06.28.06.06.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Jun 2017 06:06:15 -0700 (PDT)
From: Drew Moseley <drew.moseley@mender.io>
Message-Id: <1EDC003F-3267-4A60-8D16-B3619CA56E9A@mender.io>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 28 Jun 2017 09:06:14 -0400
In-Reply-To: <CAHUNapTuMqopnqPcaLLym7XsVfKpAVtqdMGqQ4BytrqSPdtk5A@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
References: <cover.1498420110.git.drew.moseley@mender.io>
	<CAHUNapTuMqopnqPcaLLym7XsVfKpAVtqdMGqQ4BytrqSPdtk5A@mail.gmail.com>
X-Mailer: Apple Mail (2.3273)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip][PATCH V2 0/3] Initial attempt at flashing instructions.
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
X-List-Received-Date: Wed, 28 Jun 2017 13:06:22 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_CAEBB283-E9B5-43A9-9B5D-8A3412A46748"

--Apple-Mail=_CAEBB283-E9B5-43A9-9B5D-8A3412A46748
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jun 28, 2017, at 9:03 AM, Trevor Woerner <twoerner@gmail.com> =
wrote:
>=20
> On Sun, Jun 25, 2017 at 3:55 PM,  <drew.moseley@mender.io> wrote:
>> From: Drew Moseley <drew.moseley@mender.io>
>>=20
>> * V2:
>>=20
>> Updated README and layer dependencies.
>>=20
>> Added error checking to flashing script
>>=20
>> * V1:
>>=20
>> This set of patches adds the native tools and target components =
needed to
>> reflash the CHIP boards.  Additionally a shell script is added to the =
deploy
>> directory showing how to kick off a flash update. It's not ideal as =
I've
>> hardcoded a max size for the UBI image into the script and didn't see =
much
>> of an alternative. It does function though.
>=20
>=20
> Looks and works great! Thanks for investigating and getting this =
working :-)
>=20
> Tested-by: Trevor Woerner <twoerner@gmail.com>

FYI, additional discussion is ongoing at =
https://github.com/agherzan/meta-chip/pull/9 =
<https://github.com/agherzan/meta-chip/pull/9>.  I=E2=80=99ll have a V3 =
in a few days. The V3 changes are primarily cosmetic.

Drew=

--Apple-Mail=_CAEBB283-E9B5-43A9-9B5D-8A3412A46748
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jun 28, 2017, at 9:03 AM, Trevor Woerner &lt;<a =
href=3D"mailto:twoerner@gmail.com" class=3D"">twoerner@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"">On Sun, Jun 25, 2017 at 3:55 PM, &nbsp;&lt;<a =
href=3D"mailto:drew.moseley@mender.io" =
class=3D"">drew.moseley@mender.io</a>&gt; wrote:<br class=3D""><blockquote=
 type=3D"cite" class=3D"">From: Drew Moseley &lt;<a =
href=3D"mailto:drew.moseley@mender.io" =
class=3D"">drew.moseley@mender.io</a>&gt;<br class=3D""><br class=3D"">* =
V2:<br class=3D""><br class=3D"">Updated README and layer =
dependencies.<br class=3D""><br class=3D"">Added error checking to =
flashing script<br class=3D""><br class=3D"">* V1:<br class=3D""><br =
class=3D"">This set of patches adds the native tools and target =
components needed to<br class=3D"">reflash the CHIP boards. =
&nbsp;Additionally a shell script is added to the deploy<br =
class=3D"">directory showing how to kick off a flash update. It's not =
ideal as I've<br class=3D"">hardcoded a max size for the UBI image into =
the script and didn't see much<br class=3D"">of an alternative. It does =
function though.<br class=3D""></blockquote><br class=3D""><br =
class=3D"">Looks and works great! Thanks for investigating and getting =
this working :-)<br class=3D""><br class=3D"">Tested-by: Trevor Woerner =
&lt;<a href=3D"mailto:twoerner@gmail.com" =
class=3D"">twoerner@gmail.com</a>&gt;<br =
class=3D""></div></div></blockquote></div><br class=3D""><div =
class=3D"">FYI, additional discussion is ongoing at&nbsp;<a =
href=3D"https://github.com/agherzan/meta-chip/pull/9" =
class=3D"">https://github.com/agherzan/meta-chip/pull/9</a>. =
&nbsp;I=E2=80=99ll have a V3 in a few days. The V3 changes are primarily =
cosmetic.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Drew</div></body></html>=

--Apple-Mail=_CAEBB283-E9B5-43A9-9B5D-8A3412A46748--
