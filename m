Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CAF2E00D91; Thu, 28 Jun 2018 00:19:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED, DKIM_VALID, HTML_IMAGE_ONLY_32, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.175 listed in list.dnswl.org]
	* 0.0 HTML_IMAGE_ONLY_32 BODY: HTML: images with 2800-3200 bytes of
	words
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f175.google.com (mail-ot0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E85EE00C1B
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2018 00:19:52 -0700 (PDT)
Received: by mail-ot0-f175.google.com with SMTP id q11-v6so2821017otk.4
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2018 00:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=55PYfFd5R10D+faYYnRKHGdgrpIEZqFrAZMb740C9rc=;
	b=ZQQcGXj7tgvhLyhRpVSXCmSj4VdEUmTHXx9pJk5qvB9f90J+znAxC7O5Fx5fg+wVpy
	mRt7sJCFPBOq74EhMNVayq7Z50tdWcQ7XLE5s1QlnopSfu6W4o/unsmPANRCFQ0uFIC5
	2ri3R2Oa7d3H9XDJrevhJ/i917GLuHdXT/FuZYDoXI4W8gUZzENuGMSSux5DSRbCqQPi
	hqwmp5AmvsdrzaJvkFJDaek0dYgK1cK7bvImmNbuYAbt8EXXWvfpl4F94ZBvKql5Yd3M
	OPKrAE6Q+qQTR+zsiRgDOQdJok5ymPLOxkY5P3itLt08RnewtXK9E+edUnCfdCAlXLk9
	kXOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=55PYfFd5R10D+faYYnRKHGdgrpIEZqFrAZMb740C9rc=;
	b=il2PqHxhji9DOO+Cup9u2LeH4bJgw4CL3NQQE/rIP/FXNuIPZ5d8exRtRUEZIKU+we
	n9jXSz86YNFAfptucqeTDuuM5M6dPzAd5lJVnVG25i4V1DHSkYXP09zM2C0FrsdHbsGK
	9GSWzh6TEN6Yg4D2NpuDEU+3Jly2XBEfCNleGDTwGw5/TbI3vg6kCaDHR78ti2bkHitt
	SPW2KTsvi/XxsqfIk2hcg6Ixf6FNiH62otF0fZnBMlrKtdHLOnSJEYT3Zeice/RkJ5Tr
	ITix6lLCTR+R7Y8+BJQrg8KQ5yyI5cVS/RhbWeqfXZG8HJH7FiAGrf/uOMmCyO8hpx71
	bCOQ==
X-Gm-Message-State: APt69E1o7MNaRWwkw85zGJLTX57HyLylGw5ZctT6b0lVrv+gjSuqwvVv
	AE75b3uMZmBSSt88S1tRSH17zS1lRvB3RIqXSVm3tQ==
X-Google-Smtp-Source: AAOMgpcQmp5dQsYOnBq85sFhoKTHI/xoxNIADScdaQNIlXj4RkMJhMAlo0Hx1nk7HyehsJ7wLxt1DC0lU9R/gYg2WLE=
X-Received: by 2002:a9d:7a2:: with SMTP id 31-v6mr945913oto.300.1530170392014; 
	Thu, 28 Jun 2018 00:19:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:434d:0:0:0:0:0 with HTTP; Thu, 28 Jun 2018 00:19:31
	-0700 (PDT)
In-Reply-To: <CALYWmf9Yd9iVHLmijQzYK-FmPYqt+x1pwG7=NE6JtDBN_fYJ2Q@mail.gmail.com>
References: <CALYWmf9Yd9iVHLmijQzYK-FmPYqt+x1pwG7=NE6JtDBN_fYJ2Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Jun 2018 08:19:31 +0100
Message-ID: <CAJTo0LYN6EFUQ3H-K0dO9hs=4L2m5-yRuTrocYN=AemayVFijg@mail.gmail.com>
To: Abhishek Kumar Rai <abhishekr@eximiusdesign.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Regarding Use the Latest LTP on Latest YOCTO build
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
X-List-Received-Date: Thu, 28 Jun 2018 07:19:55 -0000
Content-Type: multipart/alternative; boundary="000000000000a98504056fae8e02"

--000000000000a98504056fae8e02
Content-Type: text/plain; charset="UTF-8"

Just so you know, 2.3 is a year old.  2.5 is the latest release.

On 28 June 2018 at 06:59, Abhishek Kumar Rai <abhishekr@eximiusdesign.com>
wrote:

> Hi Team,
>
> I am planning to use the LTP latest version on YOCTO latest vesion.
> It seems that the earlier YOCTO versions are released with LTP and
> latest version are not.
> Found the below difficulties so far:
> 1. Latest LTP version(20180118) suitable for old gcc version(4.8).
> 2. But at the same time, latest version of YOCTO build(2.3) supporting
> latest
> gcc version(6.3) only.
>
> so we want to use a latest LTP version(20180118) with latest YOCTO
> build(2.3) which has latest gcc version(6.3) .
>
> Please share your valuable inputs with me to achieve the same.
>
> Thanks & Regards,
> Abhishek Rai
>
> The information contained in this e-mail message (including any
>
> attachments) may be confidential, proprietary, privileged, or otherwise
>
> exempt from disclosure under applicable laws. It is intended to be
>
> conveyed only to the designated recipient(s). Any use, dissemination,
>
> distribution, printing, retaining or copying of this e-mail (including its
>
> attachments) by unintended recipient(s) is strictly prohibited and may
>
> be unlawful. If you are not an intended recipient of this e-mail, or
> believe
>
> that you have received this e-mail in error, please notify the sender
>
> immediately (by replying to this e-mail), delete any and all copies of
>
> this e-mail (including any attachments) from your system, and do not
>
> disclose the content of this e-mail to any other person. Thank you for
> your cooperation.
>
> *This e-mail message (including any attachments) may be confidential,
> proprietary, privileged, or otherwise exempt from disclosure under
> applicable laws. If you are not an intended recipient, please delete this
> message. Thank you.*
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--000000000000a98504056fae8e02
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just so you know, 2.3 is a year old. =C2=A02.5 is the late=
st release.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 June 2018 at 06:59, Abhishek Kumar Rai <span dir=3D"ltr">&lt;<a href=
=3D"mailto:abhishekr@eximiusdesign.com" target=3D"_blank">abhishekr@eximius=
design.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div>Hi Team,<br=
><br></div>I am planning to use the LTP latest version on YOCTO latest vesi=
on.<br></div>It seems that the earlier YOCTO versions are released with LTP=
 and <br></div>latest version are not.<br></div>Found the below difficultie=
s so far:<br></div>1. Latest LTP version(20180118) suitable for old gcc ver=
sion(4.8).<br></div>2. But at the same time, latest version of YOCTO build(=
2.3) supporting latest<br></div>gcc version(6.3) only.<br>=C2=A0 <br></div>=
so we want to use a latest LTP version(20180118) with latest YOCTO build(2.=
3) which has latest gcc version(6.3) .<br><br></div>Please share your valua=
ble inputs with me to achieve the same.<br><br></div>Thanks &amp; Regards,<=
br></div>Abhishek Rai</div>

<br>








<table cellspacing=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td valign=3D"middle">
<p><span>The information contained in this e-mail message (including any=C2=
=A0</span></p>
<p><span>attachments) may be confidential, proprietary, privileged, or othe=
rwise</span></p>
<p><span>exempt from disclosure under applicable laws. It is intended to be=
=C2=A0</span></p>
<p><span>conveyed only to the designated recipient(s). Any use, disseminati=
on,=C2=A0</span></p>
<p><span>distribution, printing, retaining or copying of this e-mail (inclu=
ding its=C2=A0</span></p>
<p><span>attachments) by unintended recipient(s) is strictly prohibited and=
 may=C2=A0</span></p>
<p><span>be unlawful. If you are not an intended recipient of this e-mail, =
or believe=C2=A0</span></p>
<p><span>that you have received this e-mail in error, please notify the sen=
der=C2=A0</span></p>
<p><span>immediately (by replying to this e-mail), delete any and all copie=
s of=C2=A0</span></p>
<p><span>this e-mail (including any attachments) from your system, and do n=
ot</span></p>
<p><span>disclose the content of this e-mail to any other person. Thank you=
 for your cooperation.</span></p>
</td>
</tr>
</tbody>
</table>
<br>
<img><i style=3D"font-family:Calibri;font-size:14px"><span style=3D"font-si=
ze:10pt">This e-mail message (including any=C2=A0</span>attachments) may be=
 confidential, proprietary, privileged, or otherwise=C2=A0exempt from discl=
osure under applicable laws. If you are not an intended recipient, please d=
elete this message. Thank you.</i><br style=3D"font-family:Calibri;font-siz=
e:14px"><br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--000000000000a98504056fae8e02--
