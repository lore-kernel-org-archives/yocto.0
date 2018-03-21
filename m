Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7F83E00CE9; Wed, 21 Mar 2018 08:26:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 627CAE00AE4
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:26:46 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id d13-v6so7395176itf.0
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mP3+Da/D6cXKRZ9eGCL7ORs6I39gvuWoXEUp9l9LAbM=;
	b=TuXCuqmHPC0749YzX+gx/yOMuczjZln10N+GywbsChLpFt+jYmoWNsHFTmPTsQJDXi
	GJKE/x3to8t9V2jef+iIUvT/XiIjLJXEn8lNVuyG1N29NTXQDL8J3lHtFf1VUVRfM/YB
	Sqh4vyXqXHVpConAtGsQjuUy3OGoxyR6PJEFcSFMDgR7szugmrKGvFeJlYq/edfyELkK
	ExrHBJFFMxPMPmPEwDGmuIoKzo6Nl8244khMuGywOoJz/0fYct3y18lHon2nZpJLviot
	Yz2APDFzZkWN6B5IFLTferT1xnOemLo4DkU5pydbvpWAXiGakm2SzG2aalE7MRtrcDXm
	mNSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mP3+Da/D6cXKRZ9eGCL7ORs6I39gvuWoXEUp9l9LAbM=;
	b=R55hG9R9jV64LQRYbzOgAmZxuKCUiMuT55LiLudsyDymO/gEdZRbkTWoF8MJ12HS0v
	utQRuKMa4Ba4wUubs927nDrM3nMLBF062oehBCHZhCSYIO1kxQNwGZ9MVNilRfy9k7Vy
	lA4X8ofB2UGrMb9VD2zRLZCUz1MleJ8nwp3TupvmxWFXq0fGqZH+nX27nRKWOQVYGgHO
	fXn9ZykQ4oqT7KyGM/F1jcCC1ROem/ZM/5czRrx1Qq+Hg6VEL4BkRNgmWWkzybP1JkWZ
	zkcCeMh7TpjmM/I51/3079+8bsRhWIYZAW2MGi/Jlctn300gpjBIEeZPH8erE4ycn0BO
	c+lA==
X-Gm-Message-State: AElRT7G9NFKiCp740WiM6H7HcfuIVHgZm3Vm1F+RH6b/VX7df1Dja4Ou
	lgm1l6BfRuqjtKwFlXlVYkQSKwlpgOKqiTjy4D25sw==
X-Google-Smtp-Source: AG47ELvcp7d5d0HK1wU0sHNeqp5k5l4QyyELO7qMXZomLZ8orMGRBITyFmciZ5Vs+6I2imafSvkTj6DhGOh3s6ppduE=
X-Received: by 2002:a24:22c2:: with SMTP id
	o185-v6mr4825855ito.60.1521646005574; 
	Wed, 21 Mar 2018 08:26:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Wed, 21 Mar 2018 08:26:25 -0700 (PDT)
In-Reply-To: <CAOT_U5ZvVd35LTMMBAm332htfFpStzzXkG+6t=Yedtw5i_WTOQ@mail.gmail.com>
References: <CAOT_U5ZvVd35LTMMBAm332htfFpStzzXkG+6t=Yedtw5i_WTOQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Mar 2018 15:26:25 +0000
Message-ID: <CAJTo0LaQ8+vi90xJg=_jkucTBkHq5B2-=hA0GbnTVx6KKhtSeA@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Building BlueZ master from git in Yocto
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
X-List-Received-Date: Wed, 21 Mar 2018 15:26:47 -0000
Content-Type: multipart/alternative; boundary="000000000000a30f6d0567edd1f7"

--000000000000a30f6d0567edd1f7
Content-Type: text/plain; charset="UTF-8"

Just noticed this:

On 21 March 2018 at 15:21, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> Before hand did all the steps so that BlueZ is correctly pulled
> from master, and no patches from Yocto are applied to it.
>

You've removed our fixes for the bugs in bluez5.  Add them back. :)

Ross

--000000000000a30f6d0567edd1f7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just noticed this:</div><div><br></div>On 21 March 20=
18 at 15:21, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.m=
artinovic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;</s=
pan> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_quote"><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">Before hand did all the steps so that BlueZ is cor=
rectly pulled<br>
from master, and no patches from Yocto are applied to it.<br></blockquote><=
div><br></div><div>You&#39;ve removed our fixes for the bugs in bluez5.=C2=
=A0 Add them back. :)</div><div><br></div><div>Ross=C2=A0</div></div></div>=
</div>

--000000000000a30f6d0567edd1f7--
