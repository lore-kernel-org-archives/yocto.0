Return-Path: <usmanhaider89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1810E00C44; Mon, 11 Sep 2017 01:24:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (usmanhaider89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.175 listed in dnsbl.sorbs.net]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 934C6E00C89
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 01:24:14 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id y123so21318998iod.0
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 01:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=91z3f4Ul+Ab9C8u3wabD7v5DXdSzbIoAjEwIqsmMNYc=;
	b=R/1CF00OlPzfo4AFNT1x3m9CN8N0iRTHbBgkw55qitRfcJt2FgI2EFsFz02OF05ROE
	C8wW+ioKipE2ucfBelMfAcBk1OQX2V1L9RNU4DvTY0lEmpplIXAoZ8v0f4lWKaLJowdA
	XvvABb/lhoRCXc284BD2ZqPodBqR71YLqbAcOCdw1QXwjIXjofPBAkIlJn+R7AHOCwj7
	Wf/eZLOiBemqJaWDd4WzInnvTLnJUW+udlJ8134aGxNvCdJZT0o5e3hKyb7ftFTYHZmt
	yDwns4MRlER9oRyY86GgFrBPBx35iPmuf2CaP589rDKNM+W82VUt4UUg0ELb+LJQPC6p
	4fwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=91z3f4Ul+Ab9C8u3wabD7v5DXdSzbIoAjEwIqsmMNYc=;
	b=c1PQYU//v6k/HKIHT1rFZc8B0Ju+c7ry3HXmbkr5iWLuU/np9IUs7Sd2MxM4GJK2vJ
	N3fT9yRB7Yk/CNFImchGKkVc08Zuq4PIRLc9eO3kBnG/DCT2faLbPU++JLFK6cpREPnj
	lpOGDucKWp4wmtiSGlXaD+NxDogB1Jsl/OSF963dqHT2lPJLiEFOxSrUv6LWBw8FjIbh
	oth0CAlozjFQahZsjP1QdI7u1D8E9K/7OowONCcbpr5TBJknmYW+KDQcpRz7wMumLLQm
	dV3PU8ZgJskstRJzjoICukiQE6EfzcKPLvtdsXdyRLBqBizZnbj2iW7RGi353HqZyH5D
	9hFQ==
X-Gm-Message-State: AHPjjUjkG4l0HKzJtVfe7ahmvrX+C3AJZlrlEjceXAqMCHY73YjQB+O1
	pXfi/aeOu82tnS9modCeQiHihkUdUIwP
X-Google-Smtp-Source: ADKCNb7+wAysy4+3REegP7vk1poCPPrGtGqwAfz3F7xQPPnw6sn9EygFL08EKuN6ytWW6D4L0fXSIAFHad6Imcz/RnU=
X-Received: by 10.107.19.139 with SMTP id 11mr5793998iot.286.1505118253778;
	Mon, 11 Sep 2017 01:24:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.57.2 with HTTP; Mon, 11 Sep 2017 01:24:13 -0700 (PDT)
In-Reply-To: <CAJTo0LbEg7M0FfhJ7bFzr+B3DSprTXVD=jp6oMkiyKP8+wARzg@mail.gmail.com>
References: <CANxWOTbROX_e50FqD_oV9=3KTnxHik2jgDP98rRWq2A09QaNeg@mail.gmail.com>
	<b59f7241-632a-0801-1dce-ade844162f23@dynamicdevices.co.uk>
	<6353963F-63D3-413E-B685-72A56004CBA9@keylevel.com>
	<CAJTo0LbEg7M0FfhJ7bFzr+B3DSprTXVD=jp6oMkiyKP8+wARzg@mail.gmail.com>
From: Usman Haider <usmanhaider89@gmail.com>
Date: Mon, 11 Sep 2017 13:24:13 +0500
Message-ID: <CANxWOTa28uL3HoPvU5mU54XB1HMpxu_iskSZH1gdBB=ugEcMtA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Suitable machine for yocto
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
X-List-Received-Date: Mon, 11 Sep 2017 08:24:22 -0000
Content-Type: multipart/alternative; boundary="001a113f30e6dc8be50558e5a64f"

--001a113f30e6dc8be50558e5a64f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 11, 2017 at 1:21 PM, Burton, Ross <ross.burton@intel.com> wrote=
:

> On 10 September 2017 at 12:00, Chris Tapp <opensource@keylevel.com> wrote=
:
>
>> I have a similar spec, except I use an SSD for the build area and only
>> 16GB RAM (I don=E2=80=99t see more than about 12GB used during a build) =
- a build
>> from scratch (excluding download time) takes just under an hour.
>>
>
> The thing to remember with SSDs is that builds can write *a lot* of data
> and this can destroy SSDs faster than you'd like.
>
> Personally I find lots of RAM more cost effective.  If you've got a
> moderate amount then a slow commit time in fstab lets the kernel batch
> writes wisely.  If you've got plenty of RAM (my machine has 64GB) then a
> good sized tmpfs (32GB here) mounted at TMPDIR (the local.conf setting, n=
ot
> /tmp) in with rm_work means you literally have no I/O latency.  To persis=
t
> files either copy them out or for example set DEPLOY_DIR to a real disk.
>
> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

Thanks,

I'll consider this too. A lot of techincal stuff to learn here on this
mailing list :)

Regards,
Usman

--001a113f30e6dc8be50558e5a64f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Sep 11, 2017 at 1:21 PM, Burton, Ross <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
><span class=3D"">On 10 September 2017 at 12:00, Chris Tapp <span dir=3D"lt=
r">&lt;<a href=3D"mailto:opensource@keylevel.com" target=3D"_blank">opensou=
rce@keylevel.com</a>&gt;</span> wrote:<br></span><div class=3D"gmail_extra"=
><div class=3D"gmail_quote"><span class=3D""><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>I have a similar spec, except I use an SSD for the build area and only 16G=
B RAM (I don=E2=80=99t see more than about 12GB used during a build) - a bu=
ild from scratch (excluding download time) takes just under an hour.<br></b=
lockquote><div><br></div></span><div>The thing to remember with SSDs is tha=
t builds can write *a lot* of data and this can destroy SSDs faster than yo=
u&#39;d like.</div><div><br></div><div>Personally I find lots of RAM more c=
ost effective.=C2=A0 If you&#39;ve got a moderate amount then a slow commit=
 time in fstab lets the kernel batch writes wisely.=C2=A0 If you&#39;ve got=
 plenty of RAM (my machine has 64GB) then a good sized tmpfs (32GB here) mo=
unted at TMPDIR (the local.conf setting, not /tmp) in with rm_work means yo=
u literally have no I/O latency.=C2=A0 To persist files either copy them ou=
t or for example set DEPLOY_DIR to a real disk.</div><span class=3D"HOEnZb"=
><font color=3D"#888888"><div><br></div><div>Ross</div></font></span></div>=
</div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br></div><div class=3D"gmail_extra">Thanks,<br>=
<br></div><div class=3D"gmail_extra">I&#39;ll consider this too. A lot of t=
echincal stuff to learn here on this mailing list :)<br><br></div><div clas=
s=3D"gmail_extra">Regards,<br></div><div class=3D"gmail_extra">Usman<br></d=
iv></div>

--001a113f30e6dc8be50558e5a64f--
