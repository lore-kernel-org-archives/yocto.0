Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 720E9E00C60; Wed,  6 Jul 2016 07:28:21 -0700 (PDT)
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
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E46D6E00855
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 07:28:19 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id t74so201350823ioi.0
	for <yocto@yoctoproject.org>; Wed, 06 Jul 2016 07:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gTqYuBnfVzywWHdvHcT6mMBrYX23T0QfWFaYKTodznU=;
	b=yu1eQ9KLaMS7Nuj5aGoKdcjaxc9s+MSoUs2zra109n61kVr1R8gd4eLPGA1/EWbbv8
	OYxrsjLU7J2ixWKjKjEPXfX0h5yfnc9S5eK9zY/klKgskE6epJqqjfT4bNPXP1mpjSUZ
	AwStip5QGUXS5b7bDarmdEneg4/HyRdPfxSdqlWQNxuH0y+XimTx5onNbQUki7t76Vjn
	BLjco1jE/gp3FyoL7lV09nSXUkWFx2JmQtMpWhJXU8ZUrP/43ZRz/2mk2I/JQZZPvfJb
	nXkUa/l7faihlU3C1SafPbJqnTAF5SE6Azsi/vCkiIex75yrn3r78KzarVKDuIBpHqIh
	TxRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gTqYuBnfVzywWHdvHcT6mMBrYX23T0QfWFaYKTodznU=;
	b=i+zzQi6u0w8e7/4JUNasjyOPJuA02scQ/1aB4k8YB9RZWbpLSgpZmE1Ver1sO5UeIB
	qf+uw0Xt6uk6zKRWCHP+06VpxhavrNstKgiUDaykAFtxgWwJ6Qar/kcirFJ1Y0NsT9NI
	jpnLJV8ANG2l2458WTYUqmQxQ+pYKH1M90iLGH3z/zDjnE/hlIaDWjZlusndx/wtag36
	rkpxFJSmYgPa0fYpsEKfv/VcLOnLF5Xucj7cbdBp7F/felHlYy21grRpJtAH4iR54Z0R
	vJ1ipp20i+n4X8FerSfFdeblubcVkW4gfyQegG9Foh78LCutQUCFVycok7TMGMFiU/68
	OR1Q==
X-Gm-Message-State: ALyK8tJQ6MJ22GYKogVCiR9ugyKiCdLN7LbDZAdsqCT7wVsXJuXALqa5dzUSZrsi3vHGd2+x7aymWbd/66CsMO/l
X-Received: by 10.107.138.201 with SMTP id c70mr17897906ioj.148.1467815298861; 
	Wed, 06 Jul 2016 07:28:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Wed, 6 Jul 2016 07:27:59 -0700 (PDT)
In-Reply-To: <577D144F.8050208@mlbassoc.com>
References: <577CD922.4000405@mlbassoc.com>
	<CAEjjReJO62jjENv868u8owRazP0yBV+kBVG9yt2rxPBTxSfj2Q@mail.gmail.com>
	<577D144F.8050208@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Jul 2016 15:27:59 +0100
Message-ID: <CAJTo0LaSR8xk2OqRBQKAuoM6VWs3_vJ-YSuZyN9yJJEeMV-dfQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What keeps sstate from being used?
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
X-List-Received-Date: Wed, 06 Jul 2016 14:28:21 -0000
Content-Type: multipart/alternative; boundary=001a113e8e6a7c30a90536f86174

--001a113e8e6a7c30a90536f86174
Content-Type: text/plain; charset=UTF-8

On 6 July 2016 at 15:23, Gary Thomas <gary@mlbassoc.com> wrote:

> Dependency on checksum of file
> MIPS-GAS-Fix-an-ISA-override-not-lifting-ABI-restrictions.patch was removed
>

As this show binutils changing its SRC_URI this suggests that you did
something in between the two runs, or those hashes are not the relevant
pair.

Ross

--001a113e8e6a7c30a90536f86174
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 July 2016 at 15:23, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":329" class=3D"a3s aXjCH m=
155c0997b50556c5">Dependency on checksum of file MIPS-GAS-Fix-an-ISA-overri=
de-not-lifting-ABI-restrictions.patch was removed<br></div></blockquote></d=
iv><br>As this show binutils changing its SRC_URI this suggests that you di=
d something in between the two runs, or those hashes are not the relevant p=
air.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></div>

--001a113e8e6a7c30a90536f86174--
