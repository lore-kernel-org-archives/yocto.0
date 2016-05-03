Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC83CE006C7; Tue,  3 May 2016 08:24:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AA4AE00566
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 08:24:03 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id d62so2613756iof.1
	for <yocto@yoctoproject.org>; Tue, 03 May 2016 08:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=CObcemxj2rGTxiHOacW3qXeF3UrLVuwT3AWCVagGaAA=;
	b=v7fQM0F0FEccG5vnpCaO6Oc8ZcYnpPuAYcdaDhzAyeiksmAwOckrOhEMob6G/rITuQ
	JGCGpPubhS/bLGAUmLRc8G/r+bug3nAst9L/UhO5l1SGTANn4IvvsWRFak5mbcRcP3ng
	UUzKXCofc/HaKR7j+G9s7SeE/KfejtHbdeu3bGn821gPsVklOAPKGU5utoxdcfsKX6Mp
	i4K4hwHr6Mu8NbKv18wuAmTraImWYznX4cpzmDb7VRj4LehDCHLBXDX/2RB4mbLYfQzQ
	BTLREzdULspPMLwNGCw1XKN/BsLG6LdAU+JlcDTiis3J35OfQH2RR5OW+O7gKQjLNZcf
	rNQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=CObcemxj2rGTxiHOacW3qXeF3UrLVuwT3AWCVagGaAA=;
	b=H+2x6n6v+mJqqTGUkEK8ARw2mC3GtqOKZHWUR4Ta+U7NCGYaziWS+F3hsDR80PQOry
	mcio18d0PyXttqR6gkG7Qk+Ewc8fY6wG1F+1BywZqFdJxvUcheVy0mxQSZfiM2cEVTQc
	tYBR1gO5TfUNhqXk3x4TJBfQoVTNbr2IqvmC4mKDleN+KgUieDsEk3Ri7TSue0fWo2TQ
	40dt2V4xfOi6UL6S+y21J3VC82SpgPUUa26c5U1XbrdMgSY4zEcipGCtiyvDouxU04ZS
	YPYfVPcj2Mz95/tHMp7ikcxs72k9ght4oVkgoZ5oMaDuQVxzci81p3G2fOoGA7PbMadS
	N0Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=CObcemxj2rGTxiHOacW3qXeF3UrLVuwT3AWCVagGaAA=;
	b=hioXyVvAlU7dR/dXUzyVWcLVRnNvxXJHmgglBE5VF7Y1kHivSSFWwUNjA+q6NE5kpi
	/NtKGhF5lqqnRxqo6OTP2nxIfq5dtXlGgho4ZjeX2P0L4wlv9xhfbiCa3+AS/TQSeAW6
	7mPukCvwltU5HxT7z11u1wmZz2VEpwhgGx+FknS1WXpFWGZV4sG6UQvmsWYy4g1dPDYq
	QnUMBHyW77CYy/rud3P4R+ij4n8Jgh7hpKsYoTUNR3k2z66m4vLSsZw0Wi2MiQSU/4XD
	TzkBcAIhUpUF69ZVHVb73BrUfMo2NcGbjWZ2bO6TgfHd11U1en+YGJUFXGFH9im9NqI/
	DKYw==
X-Gm-Message-State: AOPr4FX9k3g9mrvfgcnQ9CZJ01vZBxrv7HGKkaqcoMDXeuzUyjF88MqpgihyLbybLqnc+PfG4fXiGSSdtKI/Hw==
X-Received: by 10.107.147.7 with SMTP id v7mr3974637iod.3.1462289042569; Tue,
	03 May 2016 08:24:02 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.134.70 with HTTP; Tue, 3 May 2016 08:23:43 -0700 (PDT)
In-Reply-To: <CALf_N3bfJ5etAAVs5JAF7mX=HQ60BQ9P02ragzdk4y1JGv5KCA@mail.gmail.com>
References: <CALf_N3bfJ5etAAVs5JAF7mX=HQ60BQ9P02ragzdk4y1JGv5KCA@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 3 May 2016 15:23:43 +0000
X-Google-Sender-Auth: syT06q2BCpS88J3EVeTRCo8SrDo
Message-ID: <CABcZANkp8WvE3OXFxXcrKV_mi2WwPiyPqwjrgVYHOzQTL3Tk9w@mail.gmail.com>
To: Mark T <mtl1nuxd3v@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: What version of Jethro do we get with - git clone -b jethro git://git.yoctoproject.org/poky.git ?
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
X-List-Received-Date: Tue, 03 May 2016 15:24:07 -0000
Content-Type: multipart/alternative; boundary=94eb2c055f68f11c7a0531f1b2df

--94eb2c055f68f11c7a0531f1b2df
Content-Type: text/plain; charset=UTF-8

On Tue, May 3, 2016 at 3:18 PM, Mark T <mtl1nuxd3v@gmail.com> wrote:

> Hi,
>
> When we started working with Yocto we cloned via -
>
> git clone -b jethro git://git.yoctoproject.org/poky.git  mydir/
> cd mydir
> git clone git://git.yoctoproject.org/meta-intel -b jethro
>
> If we do the same a month or so later do we get the same version ?  we
> suspect not the distro version has changed.
>
> Is there a way we can clone the same version all the time ?
>
> Secondly, what should be considered a stable version to clone ?
>

The release branch will get bug fixes and security updates after the
release. If you don't want it to change at all, use the tag or tarballs,
not the branch.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--94eb2c055f68f11c7a0531f1b2df
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, May 3, 2016 at 3:18 PM, Mark T <span dir=3D"ltr">&lt;<a href=3D=
"mailto:mtl1nuxd3v@gmail.com" target=3D"_blank">mtl1nuxd3v@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><di=
v><div>Hi,<br><br></div>When we started working with Yocto we cloned via -<=
br><br>git clone -b jethro git://<a href=3D"http://git.yoctoproject.org/pok=
y.git" target=3D"_blank">git.yoctoproject.org/poky.git</a>=C2=A0 mydir/<br>=
cd mydir<br>git clone git://<a href=3D"http://git.yoctoproject.org/meta-int=
el" target=3D"_blank">git.yoctoproject.org/meta-intel</a> -b jethro<br><br>=
</div>If we do the same a month or so later do we get the same version ?=C2=
=A0 we suspect not the distro version has changed.<br><br></div>Is there a =
way we can clone the same version all the time ?<br><div><div><br></div><di=
v>Secondly, what should be considered a stable version to clone ?</div></di=
v></div></blockquote><div><br></div><div>The release branch will get bug fi=
xes and security updates after the release. If you don&#39;t want it to cha=
nge at all, use the tag or tarballs, not the branch.=C2=A0</div></div>-- <b=
r><div class=3D"gmail_signature">Christopher Larson<br>clarson at kergoth d=
ot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib=
<br>Senior Software Engineer, Mentor Graphics</div>
</div></div>

--94eb2c055f68f11c7a0531f1b2df--
