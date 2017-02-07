Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B276E0083C; Tue,  7 Feb 2017 03:45:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D238EE0082E
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 03:44:58 -0800 (PST)
Received: by mail-qt0-f181.google.com with SMTP id v23so131833603qtb.0
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2017 03:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6xejo79IAdHGor6/rClfLsWLHKNdxJal+jPlLgGi1Wo=;
	b=HKRuCQR4b1R5eLkq8CGfCXHbLnTZWHPeKCKag9rBz2JhcWI3BgP49sk2ovgyRojbTS
	rQ6e2kKxaUl1cfNnVY3zzRYYkuix1bvHsurq5vGFayoEXUXjfDhaFKRX8+5svx7KPDoy
	wH8o4ZIFLnuOwUYbde0yZDcGDZtPAs+hy69Y0HFRgZFzRz8XKYiNWU37PCthebwUxGwd
	NvKe6lF0DeU21+5PCTa9F+FBYzEZUI44fYWfdTzzX3kJwj3JikJhf72f4YXc+DJMPZr9
	p+GSILdplM3313XqHVw8QjHwJbzxjB3vt5E4gCcmbGV4aF9PTwwblcvTLl4mb3z8UPv7
	3DtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6xejo79IAdHGor6/rClfLsWLHKNdxJal+jPlLgGi1Wo=;
	b=aK9KxIbbN0+VUc4PoiqUPbS8Gjn+RhI9vKEny3ZH4AiMniJQRnNRiBiKagzV7jPuZG
	UGvL2JNXLeK8zDIjV0kRJfEhrzJqQtU6gqBZLRYMhDgYktqYK9pZAYPl8ms0GodXiYNO
	AZojs75de8I1JEBLMhTWsO6VblkqoP3VEni15GSlIp/p0q0So9JLEGqdU5UDdBA/Izia
	EJ/4IntiJeJrJZkmmGhOKsSkL9g2cKTbW1rpzac4iTc7hcd3qYP3fVcsE83pFNzFoDqx
	JRLqz3cY/J+ZaPWBq007h4kCMAdBc2/C+6QRu3ucGADEX4shyMoWrfmy37yuQ25dkHtp
	u0Fw==
X-Gm-Message-State: AMke39nktKikhZJWv9sp5U4+2k+YyrmrAQt+x7xL/rYbAjMC5qTS6eNS6D1r8JxZ43gl7+VBnNxCCoU8JccD24wO
X-Received: by 10.237.54.1 with SMTP id e1mr12851823qtb.68.1486467897695; Tue,
	07 Feb 2017 03:44:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Tue, 7 Feb 2017 03:44:37 -0800 (PST)
In-Reply-To: <AMSPR01MB184F3B10715A0857C3D716992430@AMSPR01MB184.eurprd01.prod.exchangelabs.com>
References: <AMSPR01MB184F3B10715A0857C3D716992430@AMSPR01MB184.eurprd01.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 Feb 2017 11:44:37 +0000
Message-ID: <CAJTo0LYqfUFrXy_O8WaBuNn43=dDoPMV=mf_c=wOAU6=gxEKfw@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [dora] Compiling Qt 5.7 without meta-qt5
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
X-List-Received-Date: Tue, 07 Feb 2017 11:45:02 -0000
Content-Type: multipart/alternative; boundary=001a1142dcf0033d400547ef472e

--001a1142dcf0033d400547ef472e
Content-Type: text/plain; charset=UTF-8

On 7 February 2017 at 11:05, Karim ATIKI <karim_atiki@hotmail.com> wrote:

> Using meta-qt5 is excluded.
>
> But why not port meta-qt5 to dora?

Ross

--001a1142dcf0033d400547ef472e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 February 2017 at 11:05, Karim ATIKI <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:karim_atiki@hotmail.com" target=3D"_blank">karim_atiki@hotmail.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>Using meta-qt5 is =
excluded.</p>
<p></p></blockquote></div>But why not port meta-qt5 to dora?</div><div clas=
s=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1142dcf0033d400547ef472e--
