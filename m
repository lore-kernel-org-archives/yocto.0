Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 821ABE00C25; Mon, 17 Jul 2017 03:24:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.46 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C0DEE00BBF
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 03:24:48 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id v202so47372143itb.0
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 03:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kd2e7trsLx48OOg/QNSMMXwOPcTgGZbOYrJjdsECA0Y=;
	b=trOJfaw/mcDwnVKctCvJI71LKtl9s3gRffYsYFCPjsPHQIHXsPb4Tl4bfQmW4uA3ww
	D2F7Y9oxIFv4XJHg4q2TqcEbAzeFVHyrvx+03YVFMLWa+6OyQiJgdU2Em7Vz0CA5FbBj
	+nAj7WlkHOmU+9kObH5EY2W+d6l+mUOyRjdc+awSbIG+BteQ5qv0lex1I0+Tfr3AoBa6
	d+UdoiS3BLQA08D7LbxH8l1AvBF8T6J/qit0GaNpghV1PrSoaWdF+YdG/83/SOKQg6FD
	JGPRHOFZoWTF8Kq2PeXrvqttlwGzf4XEiVs/5cXgeLOQrre09trrBhAGvZ7ososIPrde
	S7fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kd2e7trsLx48OOg/QNSMMXwOPcTgGZbOYrJjdsECA0Y=;
	b=PZk1ye3NhCCtMVFt6JnmivKO46brX9C429vDErWFTUAPfrfGHO1pdtqFVW3ro6bJpw
	XtuJfKbY6xcU/X2kw7op1NLDraHVIhxRfqifIOoa0QolyYZIDj4xhtKJU1tzx37lFKus
	Lcl4noDAG4gX20zPV0XsjMHdCq7jf6NSy4/bydtXWrmdc1SWmhfMhHvBVYIBfyr4g6Ar
	NjeYi1wSVVu0I8Od0WQgInwiNbBLiv1yi6BGj8PloCyju42ClKZyvrMbiCUzI2f5r8jI
	qU+mwDQNdOqxFx7dJONHF1kFe3F7pSWTgZ8/uwioy44I9DaX6rAK6g3ubM3/pEOU1JcP
	C1rg==
X-Gm-Message-State: AIVw111V7tEri+wnVaW22G/4xAiwvaJSys7azEoA7A9+83B+m4VQ7QVj
	PqqplxYJAx56MW3D+VqJ+0ChzGZswR2WoH0=
X-Received: by 10.36.25.8 with SMTP id b8mr4663024itb.29.1500287088312; Mon,
	17 Jul 2017 03:24:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.161 with HTTP; Mon, 17 Jul 2017 03:24:27 -0700 (PDT)
In-Reply-To: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
References: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 17 Jul 2017 11:24:27 +0100
Message-ID: <CAJTo0LZUiOEAbz_FUfWvS6jyEbz4Okw5eZffrGdMS4-xZc=z7Q@mail.gmail.com>
To: Pierre FICHEUX <pierre.ficheux@smile.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Added missing CPPFLAGS/CFLAGS/LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Mon, 17 Jul 2017 10:24:51 -0000
Content-Type: multipart/alternative; boundary="001a1144a5e8f5dd28055480ce56"

--001a1144a5e8f5dd28055480ce56
Content-Type: text/plain; charset="UTF-8"

On 17 July 2017 at 09:00, Pierre FICHEUX <pierre.ficheux@smile.fr> wrote:

> This problem causes the following error :
>
> ERROR: example-0.1-r0 do_package_qa: QA Issue: No GNU_HASH in the elf
> binary
>

This is essentially a backport of aa3e99e24c3234b6f3f19169939d4cd498d0ce36,
can you mark it as such and use a proper commit message (with the modified
file in the shortlog)

Ross

--001a1144a5e8f5dd28055480ce56
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 17 July 2017 at 09:00, Pierre FICHEUX <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:pierre.ficheux@smile.fr" target=3D"_blank">pierre.ficheux@smile.fr</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-c=
olor:rgb(204,204,204);padding-left:1ex"><div id=3D"gmail-:1tz" class=3D"gma=
il-a3s gmail-aXjCH gmail-m15d4f92f8f5ee64b">This problem causes the followi=
ng error :<br>
<br>
ERROR: example-0.1-r0 do_package_qa: QA Issue: No GNU_HASH in the elf binar=
y<br></div></blockquote></div><br>This is essentially a backport of=C2=A0aa=
3e99e24c3234b6f3f19169939d4cd498d0ce36, can you mark it as such and use a p=
roper commit message (with the modified file in the shortlog)</div><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1144a5e8f5dd28055480ce56--
