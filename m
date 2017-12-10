Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CF16E00D20; Sun, 10 Dec 2017 11:37:13 -0800 (PST)
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
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17B29E008FB
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 11:37:12 -0800 (PST)
Received: by mail-pf0-f176.google.com with SMTP id u25so9964185pfg.5
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 11:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fbjhYbOAYvs2T2wlqfm5Lc3yjigUX1B/Dkdny9MefLE=;
	b=dqzSlNbtrum7bB+obtX7iDU92kebdMGcHRgODV7MftVsL6NwX+GrDQzbeamRCKlE2c
	RDWnTgfaiPMnpIXTyaYXG5MFd8mZ0S6r4Hw9Fmze4Hx/qZeMFOnlksnxnVfFSuyuPgOx
	gORtJK6h6rap7maFXFkXEBiM4dBeh3rN36V71s1DW1oylmMwMcqcAMeWHIXVu9aTpiM5
	7XTOA9ug7pQHgjSsZFX9CVfnY9XJBp4T6AXI4jzyqVIlf2yC7+7awZJzddzyXIUv3H/x
	d4DY4aRAjTIGI923H5Re2vu9vUFHQ8DxSOED4opx/oNn4vVyMJJdh7YVfbsxUwd/OHsz
	l0dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fbjhYbOAYvs2T2wlqfm5Lc3yjigUX1B/Dkdny9MefLE=;
	b=oilUZJA1dZGt1AoXU9j48xqtoYzks7zrP3QHJw8mIMyW8W7vpPPSAhVm/ZpDNCjfMA
	XvJEa/sD+2LxXzaa7gx4VRLxUTjuBHPlqjD+YOMKutxFRuuhPFd35zYmoTrLnAfIrKZC
	Sg9DiScxg4qddd3qQzkx+O6wLDl2MGESVuHJzz276dyTgjFWQR6717sF3P9tp2bPtVNa
	6/u2PlXM2hqnjDh5Tqw2pgPwUCBaNJq1c17e0eZrdWtx5RSgJfc96N5sR5y2Wfv6Wqb6
	AxOErP7sRklEQJqdvbkwBCAeyBvs3vybcTu2A6/Z1BiRd2BR+zmOR09bCgTB7MeIlfoT
	1idw==
X-Gm-Message-State: AJaThX4+ciFS0AdwNx7f/FtKUrPRtY3BIaH83+zwo3WKnWvSeGXxp6aY
	OP2xnf+4FzZGnpL7fotktQV4Qam9JUREqlA1+PE=
X-Google-Smtp-Source: AGs4zMYVvyDKRDZayBFa+PAk+8XPAl9uCg3WwuTqUZYvzn0lbp2g9GvpwyVYmBr9MKW/aZU8sfI0IoRAyVNmfL1Rfww=
X-Received: by 10.99.42.210 with SMTP id q201mr35214337pgq.7.1512934632246;
	Sun, 10 Dec 2017 11:37:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Sun, 10 Dec 2017 11:37:11 -0800 (PST)
In-Reply-To: <CAGAf8Lz_e6y-GU3apr_QCVzpjPhZZczUcxrs6sfhTJBhH_0YGA@mail.gmail.com>
References: <CAPb0b+NJuuxBb3=VfHvYd8EzUb-O1WdPudCdSyDZ5zBO4bVoaQ@mail.gmail.com>
	<CAGAf8Lz_e6y-GU3apr_QCVzpjPhZZczUcxrs6sfhTJBhH_0YGA@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Sun, 10 Dec 2017 20:37:11 +0100
Message-ID: <CAPb0b+N6+9PTKF2z6VCUfye9RF8tEavUCkK7SBa2LaF-3TGrMw@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: disable psplash
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
X-List-Received-Date: Sun, 10 Dec 2017 19:37:13 -0000
Content-Type: multipart/alternative; boundary="001a1146df1452d3ba0560018bba"

--001a1146df1452d3ba0560018bba
Content-Type: text/plain; charset="UTF-8"

thank you for your reply. I don't find these parameters in any recipe. I am
still confused, how to approach.


On Sun, Dec 10, 2017 at 5:45 PM, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> > As far as i understood, we can pass it from uboot, but how?
> https://community.nxp.com/thread/460796
>
> Zoran
>
> On Sun, Dec 10, 2017 at 1:02 PM, Sherif Omran <sherifomran2000@gmail.com>
> wrote:
>
>> hi
>>
>> any body knows how to diable the psplash? as per documentation it says
>> pass psplash=false to the kernel. But how to pass it to the kernel? I tried
>> adding it to kernel.cfg but does not seem to be correct. As far as i
>> understood, we can pass it from uboot, but how?
>>
>> thanks for your help
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--001a1146df1452d3ba0560018bba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">thank you for your reply. I don&#39;t find these parameter=
s in any recipe. I am still confused, how to approach.<br><br></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sun, Dec 10, 2017 at =
5:45 PM, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=3D"mailto:zoran.=
stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><spa=
n class=3D""><div><span style=3D"font-size:12.8px">&gt; As far as i underst=
ood, we can pass it from uboot, but how?</span><br></div></span><a href=3D"=
https://community.nxp.com/thread/460796" target=3D"_blank">https://communit=
y.nxp.com/<wbr>thread/460796</a><br><div><br></div><div>Zoran</div></div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div class=3D"=
h5">On Sun, Dec 10, 2017 at 1:02 PM, Sherif Omran <span dir=3D"ltr">&lt;<a =
href=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000=
@gmail.com</a>&gt;</span> wrote:<br></div></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div><div class=3D"h5"><div dir=3D"ltr"><div><div>hi <br><br></div>any =
body knows how to diable the psplash? as per documentation it says pass psp=
lash=3Dfalse to the kernel. But how to pass it to the kernel? I tried addin=
g it to kernel.cfg but does not seem to be correct. As far as i understood,=
 we can pass it from uboot, but how?<br><br></div>thanks for your help<br><=
/div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--001a1146df1452d3ba0560018bba--
