Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A46AFE00C7B; Tue, 24 Oct 2017 03:52:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.48 listed in dnsbl.sorbs.net]
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F264E007EF
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 03:52:52 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id p138so9448863itp.2
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 03:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lB+t94b5Y1uGZynPYYBWAIX9xKfHU82kzrWqvxlWMus=;
	b=iYiPW2vrdz5rgOCqWPn2KrsmbekFmRz+jn9KiQQtHQq15kaqSyKN5EUuNtpigTQ5Rw
	KKgrXEgxe3cDOoxNED06oCORz7xkt8+Pzn9JMKPl43AJWELzAOfocHtt2sCtZ3kqepE8
	jzMZSzMaZVg261Aaff55kR60YhlokhOYBRps9HH1ZDK90E9nJNBdTy++d1B738O02dr7
	1OytUDlcOeIVqewCKGU6yFHfZs/sbZYJ7yahkDgq/SGecbMZhzLvevizP6BWLwy9JvSr
	rZmzEW+LtJrcVbqgarzkyzDOJxG7PbDXTsVXunE2NVIZIsndH6BXiJn6hZlXpdMps4TW
	zGTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lB+t94b5Y1uGZynPYYBWAIX9xKfHU82kzrWqvxlWMus=;
	b=M1HON3JkqeBVtjHjTxz1igv6HU7kZyYp2U2sTNNYhC7ZIIHCX8aXEgyweJTscyLggH
	25RM8+SpxmhuhDH/8ZZasS2BpN4P2W+7G76XXyyBRJ4u55WIwsH9QAr6mY4013Q5pDMx
	Uf3OqADJPW5Ej+wMFw2lMYhYTx12xZvs9Vxht1OwCQv9gcsgE1Z1bu6k9JhtkDJhkXEB
	xJDkbcYLxedqXJZRDyMzHec5HKwq2deh1qHynT17k+1Bl7uW1T2rTMWBlfqPEfACKawH
	8JV59ypJYheUx7WVc3GmLnYCfOzmzhyIXAPscSyc973cpBpQia+lG4gYfDDBTUtOaWN1
	FahA==
X-Gm-Message-State: AMCzsaWqXEMjJtJkWn+iEFB9N8eXmB4dqXY8ruByobXYflpJbJGR6LHF
	ykKSy2V5Qzo76RrEkySP5Rrv2AyEWT3BIFvg13owHA==
X-Google-Smtp-Source: ABhQp+Td0BNtkhYz00W6BXA6x2xU/r1eBq5ypCMhbvr7D7LufHQ5bAqKPiQrpBR9wsZF3oDRfnUB6owcIWWi9zcRMLQ=
X-Received: by 10.36.81.21 with SMTP id s21mr13126924ita.144.1508842371769;
	Tue, 24 Oct 2017 03:52:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Tue, 24 Oct 2017 03:52:31 -0700 (PDT)
In-Reply-To: <CAAfyv34DUfkMhN1zqVMYtqXG4PSuUacAq=6sUBLw5_1cPfCRdg@mail.gmail.com>
References: <CAAfyv37ogJyGkDSVYSgi61C=3+Y+Z2wXJgg5isHOiXderZ=e-Q@mail.gmail.com>
	<CAJTo0LYbM5HeRgn6iuVwvpYqrWnN-H2f82qMqzXADj5Zn7QdJQ@mail.gmail.com>
	<b4892a0c-4562-9d04-1f15-5506e1c3648b@linux.intel.com>
	<CA+chaQd3rrBO8niNGSLvsA181qUQj_zAukk6K77ihBQbb-kEMQ@mail.gmail.com>
	<CAAfyv34DUfkMhN1zqVMYtqXG4PSuUacAq=6sUBLw5_1cPfCRdg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 24 Oct 2017 11:52:31 +0100
Message-ID: <CAJTo0LYkn56zd-dx96fjc5u-d4CAoi=YoysazKMNC6=3-KAfQw@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: rocko: QA issue with glibc-locale
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
X-List-Received-Date: Tue, 24 Oct 2017 10:52:53 -0000
Content-Type: multipart/alternative; boundary="001a113a7146979100055c48bd70"

--001a113a7146979100055c48bd70
Content-Type: text/plain; charset="UTF-8"

On 24 October 2017 at 10:25, Belisko Marek <marek.belisko@gmail.com> wrote:

> Probably. Should I fill some bugzilla somewhere? Rocko should be
> released in few days (if not yet already) and this issue can be really
> annoying ;)
>

There's already a bug:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12265

Ross

--001a113a7146979100055c48bd70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 24 October 2017 at 10:25, Belisko Marek <span dir=3D"lt=
r">&lt;<a href=3D"mailto:marek.belisko@gmail.com" target=3D"_blank">marek.b=
elisko@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-col=
or:rgb(204,204,204);padding-left:1ex">Probably. Should I fill some bugzilla=
 somewhere? Rocko should be<br>
released in few days (if not yet already) and this issue can be really<br>
annoying ;)<br></blockquote><div><br></div><div>There&#39;s already a bug: =
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12265">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12265</a></div><div><br></di=
v><div>Ross=C2=A0</div></div></div></div>

--001a113a7146979100055c48bd70--
