Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D93A3E00DA3; Tue, 19 Dec 2017 10:03:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f49.google.com (mail-pl0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F986E00CEF
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 10:03:29 -0800 (PST)
Received: by mail-pl0-f49.google.com with SMTP id s10so7427845plj.5
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 10:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=JsvYxdBYzhcgz6u/mjJkh3QLUwkifJ8JlCeDMWjQln4=;
	b=T87Zm5IXN6lkOoeGWQ38UAQ0lo3DPYNCvfk3pI5dgPkH5uGHhTlv88b5XnHI9xxcLQ
	+9lXug8sALhRiEirG7JjCsGIrMWGxZDlprdlcBXy+vpDIF6QoEy/40sfqDTkZsrMutrF
	X+8b1CbmCWlruSIKQiJB685GzezZ1H76bVVUlT4b94z1phSmz6deMjXaTHHqL/DhTJNK
	euivB4T0MfiMuzn9A2sy9LbmnjofH/yT66JjTTs3YjQ48usUj6g/aNDKn6a92gWx4+s1
	HS9xGxqqc+vB4LGV1iaNFPrQrj1d7mWBWPVWENcRYt0Je+8nCfiGQ5qksWCzqDuvNjta
	39sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=JsvYxdBYzhcgz6u/mjJkh3QLUwkifJ8JlCeDMWjQln4=;
	b=sPwVM3KJnOEeGbX+mFxHV+/wRLwsdT0EzKXOzqBVPo/8gQgwoGYGIVuyg1XcJDh/Ww
	3kTBOwzJz+E2apRaFbP8+u1t2sRdqktM5C12T8wTvE2hw/OLq+GJadd9WPKcXMbF61yt
	IKGwoJnQiISsV6suEYW352FsRAmf3msKHPxYK0CI7JbrTzo1VZ3CeJvslOfJnw4S72ir
	6w4l0Q0ySDIxe6NCXfLfbmUQCeyLFHwSV8GEgGopHppveUSIpn//KOgOPJLaV7QDhtRy
	cfi08mdS477O6wg4ggy6s4wRfd2LbJo/RRWn90kaXN4Xg7Fa6cgwykDe1p0qIUGHPw3l
	2N2w==
X-Gm-Message-State: AKGB3mLM/udtYUBxsUecizbe6mULZC765DjUmsgL8dLKmP73UMNbI4t/
	RmZfGcCxtFPT3gJD21stDrpPPpy1ZVOJ88c+dEo=
X-Google-Smtp-Source: ACJfBovptLIanZ/FFCTp4+/LNAQ/pEMZZYq7iEADM0QCPSWT3BEW0a1KyORtqdrLxXXAKmwKvEYMv2BiHHQbzIZvsP4=
X-Received: by 10.84.133.108 with SMTP id 99mr4141021plf.48.1513706609251;
	Tue, 19 Dec 2017 10:03:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Tue, 19 Dec 2017 10:03:28 -0800 (PST)
In-Reply-To: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
References: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Tue, 19 Dec 2017 19:03:28 +0100
Message-ID: <CAPb0b+ODNZ1k2rH6+CJYbCPzLtXFmHB76NnWK4yVSDEQ68skdA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: rfkill cannot open control device
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
X-List-Received-Date: Tue, 19 Dec 2017 18:03:31 -0000
Content-Type: multipart/alternative; boundary="94eb2c12f946bd1b8a0560b54887"

--94eb2c12f946bd1b8a0560b54887
Content-Type: text/plain; charset="UTF-8"

how can i add rfkill recipe?

On Tue, Dec 19, 2017 at 4:23 PM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> i used core-image-minimal for a raspberry pi 0w. But i get rfkill can not
> open control device. when i give rfkill , i get the syntanx output, this
> means it exists.
> the wifi driver is installed.
>
> What is the rfkill device? is it /dev/rfkill ?
>
>

--94eb2c12f946bd1b8a0560b54887
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">how can i add rfkill recipe?<br></div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Tue, Dec 19, 2017 at 4:23 PM, Sher=
if Omran <span dir=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@gmail.com"=
 target=3D"_blank">sherifomran2000@gmail.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>i used core-image=
-minimal for a raspberry pi 0w. But i get rfkill can not open control devic=
e. when i give rfkill , i get the syntanx output, this means it exists. <br=
></div>the wifi driver is installed.<br><br></div>What is the rfkill device=
? is it /dev/rfkill ?<br></div><br></div>
</blockquote></div><br></div>

--94eb2c12f946bd1b8a0560b54887--
