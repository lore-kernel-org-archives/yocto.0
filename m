Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2527E008BC; Sat,  2 Jul 2016 07:22:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD6ABE00575
	for <yocto@yoctoproject.org>; Sat,  2 Jul 2016 07:22:38 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id a5so39047492ita.1
	for <yocto@yoctoproject.org>; Sat, 02 Jul 2016 07:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZMlp96MTlyCx5XW6M8CXiabZKMfS+xZhKFnD22Y2ibc=;
	b=PUd533XI2u+P4rWHdCA9k2zvyudWDrYE8PvUK7ku8cW613vU6tkI2ZZP1SpwCP6HFv
	bpkytS0e67sz+An6MvDjsaffd8+rl6YwMNWgMMiGyRXMVnnifV+PlTO7w9sBIQkhS9U7
	/seHkQCZ3fTAN7WKwBhDMLu6lJ/JdHB4Jm2F4EsibV5C1JS+07ssYhlQ8YTxIQNFMy6L
	eaOvssZmxmfoyZMI4+jYoak+406rEqfs3Egh0K3MvPvCPcT99Ufr9fP0nXDB3EaYR9rt
	OXPAZCaAAjbd1seA7AYdjFKQjN4g7uOKiJRv6dEnQR9yl9PiwqdTmPGcCjSflAuXnuaW
	eRSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZMlp96MTlyCx5XW6M8CXiabZKMfS+xZhKFnD22Y2ibc=;
	b=hPwJ7TWA0yo36sASuuQhwfVTMMwytGyiw8mC2YZKIfJ4hTUD4zuntHCgcQcr+Zx5ld
	C5K2d1gZwh5gFbPNMYORPshYNyAvXHfPx8IsemKq3i8jOL4mgxbrzgfUlf6VWzFvK5eC
	f4lJ3lt4X/BdulH3Q1qtYaDAU5rJcq56fnxT1lb/pmw922TvdnqFlNjSe7UjstnJgATC
	3r/++uxVWbOdyRRzoAvCfRwr1gKuy9C+pkhzKGy6ceuQtEpAnedStnn8i4pbs7L4Tq40
	EmOkafZFB7BOwYfxkHmc162UH6h7F/tHFkQrj6G7cUidCDB3Bi6GZM2/3I3r6lbh7tjL
	S6Cw==
X-Gm-Message-State: ALyK8tKi1zL0wKrCN4Re35529f+B1hboTzFfRg6Ef4Ql/3/5ALq6+ve4FPNpZeP8HqbNKc1as1DJUxeMZWY0NDjm
X-Received: by 10.36.120.71 with SMTP id p68mr2938653itc.22.1467469357641;
	Sat, 02 Jul 2016 07:22:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Sat, 2 Jul 2016 07:22:18 -0700 (PDT)
In-Reply-To: <5d1eeebd9e9e47cdbccf88c399c6d31c@HIBDWSMB02.ad.harman.com>
References: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
	<CAJTo0LYiA-mxZUuK8bOx64tFMvPmvRBBzExcQNfxsc5q6JvxMw@mail.gmail.com>
	<b57493dfacad490388b9bd3600179e65@HIBDWSMB02.ad.harman.com>
	<CAJTo0Lbu3O3Qqo2be_t4=pXr-B=q=J-diKNm-ZuJsbW0C=0wpQ@mail.gmail.com>
	<c3c0e392db09430d91496cf4def6c395@HIBDWSMB02.ad.harman.com>
	<CAJTo0LZCxCYNL-C0LU5oKVwSzeQfY5DCJXsiHR1N_PwdcBHHTw@mail.gmail.com>
	<0821b36bfa664ed49614099e658e46b9@HIBDWSMB02.ad.harman.com>
	<CAF3SDA4+4NhbBskh=PxDGqJP1PFcwFOEHYEK04DOTVv7mKTRrg@mail.gmail.com>
	<1980608174.6503.1467381831219.JavaMail.zimbra@evalan.com>
	<CAF3SDA5jrx7n5C6WpFGKJSxnnwY=VJJ-EDdUYwYt45Z5xfTw9Q@mail.gmail.com>
	<f7f70173e1304433b5bb00c0f8cec5bf@HIBDWSMB02.ad.harman.com>
	<CAJTo0LaSUYdjYmxwV7OdbqKeic-B7pMZROEKvEpC7o0jetqxwQ@mail.gmail.com>
	<5d1eeebd9e9e47cdbccf88c399c6d31c@HIBDWSMB02.ad.harman.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 2 Jul 2016 15:22:18 +0100
Message-ID: <CAJTo0LZEk44n27-nYQRrPNff_hbDruxVzJHHxFFojocXo-nZbw@mail.gmail.com>
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setcap using recipe
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
X-List-Received-Date: Sat, 02 Jul 2016 14:22:42 -0000
Content-Type: multipart/alternative; boundary=001a114a9388c807ba0536a7d5aa

--001a114a9388c807ba0536a7d5aa
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2 July 2016 at 11:37, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrote:

> Post-installation scripts run immediately after installing a package on
> the target *or during image creation when a package is included in an
> image*.
>
> Does  it not mean that we can set the file attributes(setcap) during
>  image creation ?
>
>
>
> I understand the delayed approach of executing it on the target, but my
> requirement is to do it on the build host. We do not want =E2=80=9Csetcap=
=E2=80=9D  utility
> to be present on the target.
>
>
Then I suggest that you test the setcap patch that I pointed to earlier,
you'll likely need the pseudo 1.8 upgrade that Joshua sent last night.
This should ensure that setcap works in the pseudo environment.   Then
follow the instructions in image_types.bbclass to ensure that xattrs are
preserved when the image is created, and check your kernel configuration to
confirm that xattrs are supported.  I recommend attempting to use fsetattr
on the target directly to verify this. If all the pieces are in place then
they should work.

There's a number of bugs in bugzilla for tracking these issues (#9859 is
the metabug tracking them).  Your help in solving this would be much
appreciated!

Ross

--001a114a9388c807ba0536a7d5aa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 July 2016 at 11:37, Kumar, Shrawan <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:Shrawan.Kumar@harman.com" target=3D"_blank">Shrawan.Kumar@harman.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNorma=
l">Post-installation scripts run immediately after installing a package on =
the target
<b><u>or during image creation when a package is included in an image</u></=
b>.<u></u><u></u></p>
<p class=3D"MsoNormal">Does =C2=A0it not mean that we can set the file attr=
ibutes(setcap) during =C2=A0image creation ?
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I understand the delayed approach of executing it on=
 the target, but my requirement is to do it on the build host. We do not wa=
nt =E2=80=9Csetcap=E2=80=9D =C2=A0utility to be present on the target.<u></=
u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>Then I suggest that you t=
est the setcap patch that I pointed to earlier, you&#39;ll likely need the =
pseudo 1.8 upgrade that Joshua sent last night.=C2=A0 This should ensure th=
at setcap works in the pseudo environment. =C2=A0 Then follow the instructi=
ons in image_types.bbclass to ensure that xattrs are preserved when the ima=
ge is created, and check your kernel configuration to confirm that xattrs a=
re supported.=C2=A0 I recommend attempting to use fsetattr on the target di=
rectly to verify this. If all the pieces are in place then they should work=
.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ther=
e&#39;s a number of bugs in bugzilla for tracking these issues (#9859 is th=
e metabug tracking them).=C2=A0 Your help in solving this would be much app=
reciated!</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">Ross</div></div>

--001a114a9388c807ba0536a7d5aa--
