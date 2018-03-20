Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76B06E00BB6; Tue, 20 Mar 2018 03:55:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49225E008D2
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2018 03:55:21 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id b20so1786309iof.5
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2018 03:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=bl15gda4LyoMSWg7v4tO3eLFho6ExZFuhE6d3tahQDs=;
	b=cXjkVDx4JeVmjfKA+qVWklwxdYboy7k1QUqYN4HgCE8tK702JuQyybcIjyi+9JvLp5
	+70WmG4TyrKOMIWKCkpn0xu9YUB3j0Iy5mWZXxplY90WjmXaOFBUEeahDU7f6L6zgfsJ
	L+Ri3XPcdPkZvMv1iLymX43TjV4zO130R8REosNbkQg1Bnsv78B/npUTFaNWyoD6URku
	3iFTWFtNl6TBS2o7z7MnCX8abnh69WziRTgwHSEczenzz81lxCrdaYIU1l1XaQb5mM7M
	dUjjhLHGPdMvoDaNDjVaSDNeVnKobXamh+GT4wxqgesVigL/dIvrArmAcZkki7xowtEg
	/BZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=bl15gda4LyoMSWg7v4tO3eLFho6ExZFuhE6d3tahQDs=;
	b=CnDIH5sJtJ5eZx2vEpy8FCUurQZyDYB73fP/wudDGtR8Uo7hG70by6hXp3FBoZ7uO1
	MRc3d/AeChILjjHemGUfUoKuBB0qH0peUKNhKDDpwQQX1LMeCvza+ePn6dNGUJ4RbhSJ
	nWMsThxXBLktRLuVFbp/a4pEHSGXuXYd/DdW096uLYaPLg5lJtkiCgN9v0g3lEhmSoQ6
	ZYYZB0WRxnFqIDlwMg9t5wYEcgt3L2BPVlgTEWBBj8qb2IlSypowvZ11Vy4H4KKrY2JC
	KMw9CjU4m9eNHekUjYgSZAHtJe37Q6IX1f/++brU3HGD7Q2MnViI9xb6P5wj5dx4ZsTp
	wdUA==
X-Gm-Message-State: AElRT7FZMx5cboGJLwBp48/YP64S9D0QEtvKGNiySzUT/Dj/CE7m63Dk
	O3sMzKViWW5KuccolCl8ksC7n4/sAyFnaWvlW31fYg==
X-Google-Smtp-Source: AG47ELs8j4ypxSWVesQAs1xxctKvn/BIhbwB9rIGyzPFQrypAVR18eNy9b/EqCT5RfFLaQWmBbKKnPUzrONNQq9Wr0w=
X-Received: by 10.107.183.4 with SMTP id h4mr15586952iof.201.1521543321207;
	Tue, 20 Mar 2018 03:55:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Tue, 20 Mar 2018 03:55:00 -0700 (PDT)
In-Reply-To: <CAPGMVzEny6KGpsdduj3WUxOW9odJhev86g2p3H0K4p=a3ooDfQ@mail.gmail.com>
References: <CAPGMVzHgUcWV3TFaTeV40+P=SO2zV-4cjw2oWnB2KsBrozk9Sw@mail.gmail.com>
	<CAJTo0LYDmdGjrixdE21h_V-8PvnbZEJ5kPqxSL3F72eofm6cFA@mail.gmail.com>
	<CAPGMVzEny6KGpsdduj3WUxOW9odJhev86g2p3H0K4p=a3ooDfQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 20 Mar 2018 10:55:00 +0000
Message-ID: <CAJTo0LYRhAEPKSpXreg1JwCw=G3gbr73zXnxjbrMo00GT43OxQ@mail.gmail.com>
To: Rajath C S <rajathcs.1996@gmail.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [OE-core] [oe-core] system lock down in middle of build
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
X-List-Received-Date: Tue, 20 Mar 2018 10:55:23 -0000
Content-Type: multipart/alternative; boundary="94eb2c0b8e082bebec0567d5e9a4"

--94eb2c0b8e082bebec0567d5e9a4
Content-Type: text/plain; charset="UTF-8"

Please remember to reply to the list, not the person to who sent the mail.

On 20 March 2018 at 04:10, Rajath C S <rajathcs.1996@gmail.com> wrote:

> You are right, it's not actually logging out but a fast reboot occurs.
>
> Thanks for the info, I'll upgrade my hardware.
>

This isn't an "upgrade my hardware" issue but a "fix the problem" issue.
Run memtest86 to see if you have bad RAM.  Watch the system temperature to
see if its a thermal shutdown.

Ross

--94eb2c0b8e082bebec0567d5e9a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please remember to reply to the list, not the person to wh=
o sent the mail.<div><br></div><div class=3D"gmail_extra"><div class=3D"gma=
il_quote">On 20 March 2018 at 04:10, Rajath C S <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:rajathcs.1996@gmail.com" target=3D"_blank">rajathcs.1996@gmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"au=
to">You are right, it&#39;s not actually logging out but a fast reboot occu=
rs.<div dir=3D"auto"><br></div><div dir=3D"auto">Thanks for the info, I&#39=
;ll upgrade my hardware.</div></div></blockquote><div><br></div><div>This i=
sn&#39;t an &quot;upgrade my hardware&quot; issue but a &quot;fix the probl=
em&quot; issue.=C2=A0 Run memtest86 to see if you have bad RAM.=C2=A0 Watch=
 the system temperature to see if its a thermal shutdown.</div><div><br></d=
iv><div>Ross</div></div></div></div>

--94eb2c0b8e082bebec0567d5e9a4--
