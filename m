Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5FB9E00B5E; Mon, 12 Jun 2017 08:23:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6280E00B5E
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 08:23:35 -0700 (PDT)
Received: by mail-qt0-f169.google.com with SMTP id u19so129828846qta.3
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 08:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=54v0Mdx4QjxKnqzURj6z64KZBIQjTfM4taE0XOwRXSY=;
	b=M8Vwh74I5xj9RPOUkWB0gCyEygqMfJjTNx2jex5WA4lI0lmsx4xZMq2pHLGtbMHYoY
	R+UPwLflW6bKnA0dN4soKmLYgpGX4OoqN+x7/GaoI3dCLAk8IbTH7x6QOPr5Dy3gOQAW
	2j3o03OvcPSXPz5mY0K5BBDK+iHZYWPfN9XRdSCxcRE+sJdvq1lOxRE4KMJby1wKXQDa
	KpqRDyHvYH48K2NGU2XS2d69OzX0luMeMPTwT0xxgt2a7zpooAWi7YTodI9pIMnj/iOh
	Iu7QFQKsyeptSkz30kpYIz2+QOxBn2Qya6p1aZkeyHnJjh3W1iitiyxNy97ufDPumKgC
	OSyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=54v0Mdx4QjxKnqzURj6z64KZBIQjTfM4taE0XOwRXSY=;
	b=ciM+lS2+4Z+2SMjIDbg+DB2OJTecR6UdT/9F5n4vnXSjUyFepnMeQJoC9R6FNPs9wI
	3YiyFYssqImqGzOBGC6hfeCsp9nx5hGlWXk9C4s1Cso7ia/mXGGg13tML5DV5KfQLqpI
	HTI9PYIpaSKlA1uYXjEpfq8679ZKDDjPKv5DT0Z4WlY8q1dXSo7+Jx0sWUhWY1lyIcTL
	sreJcZANv8LNeFso6E2YjlI7Af7cVimVtsHWMt8n2kknEAYgrnkf7acw+WvfXeFUfz3y
	JnGPeJKYNs7gK0HWnoeQQ+po01Gj6R3NdF04h+58Kr2G5JOJ1Xx+E/tCY/rCwjXf9uaD
	hkpQ==
X-Gm-Message-State: AODbwcCJ2MG03kKH3Xg5V40HWSGx0Ei+2DXr0sgSKvgNJCtvz/m1kB0V
	xV/er7e8F8wZpu+8NgxkYLGSKpMS1QTI
X-Received: by 10.200.43.99 with SMTP id 32mr70348778qtv.6.1497281014803; Mon,
	12 Jun 2017 08:23:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Mon, 12 Jun 2017 08:23:14 -0700 (PDT)
In-Reply-To: <D3B58608AFC8B244BA0ACD53B2AE6125011B5602C8@vistrex4.vi.vector.int>
References: <D3B58608AFC8B244BA0ACD53B2AE6125011B5602C8@vistrex4.vi.vector.int>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Jun 2017 16:23:14 +0100
Message-ID: <CAJTo0Lb48+RW+_qsdfDpX=ei6OO-a9hXw+zKY8O2wd=RQPL1LA@mail.gmail.com>
To: "Baumann, Michael" <Michael.Baumann@vector.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: mkfifo: not found
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
X-List-Received-Date: Mon, 12 Jun 2017 15:23:36 -0000
Content-Type: multipart/alternative; boundary="001a1146fb460444140551c4e77f"

--001a1146fb460444140551c4e77f
Content-Type: text/plain; charset="UTF-8"

On 12 June 2017 at 16:01, Baumann, Michael <Michael.Baumann@vector.com>
wrote:

> I upgraded from poky 2.1 to 2.3 and now I have an issue with mkfifo in a
> do_install step.
> The error is "mkfifo: not found"
> I already added the package coreutils as dependency.
>

Ah, mkfifo is missing from HOSTTOOLS.

A patch would be appreciated, but this in your local.conf will solve it:

HOSTTOOLS_append = " mkfifo"

(or use mknod instead of mkfifo)

Ross

--001a1146fb460444140551c4e77f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 June 2017 at 16:01, Baumann, Michael <span dir=3D"ltr">&lt;<a href=3D=
"mailto:Michael.Baumann@vector.com" target=3D"_blank">Michael.Baumann@vecto=
r.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":5=
h" class=3D"a3s aXjCH m15c9cd4d422eaba2">I upgraded from poky 2.1 to 2.3 an=
d now I have an issue with mkfifo in a do_install step.<br>
The error is &quot;mkfifo: not found&quot;<br>
I already added the package coreutils as dependency.<br></div></blockquote>=
</div><br>Ah, mkfifo is missing from HOSTTOOLS.</div><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra">A patch would be appreciated, but=
 this in your local.conf will solve it:</div><div class=3D"gmail_extra"><br=
></div><div class=3D"gmail_extra">HOSTTOOLS_append =3D &quot; mkfifo&quot;<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">(or us=
e mknod instead of mkfifo)</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">Ross</div></div>

--001a1146fb460444140551c4e77f--
