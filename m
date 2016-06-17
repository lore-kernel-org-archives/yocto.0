Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C815E00DFC; Fri, 17 Jun 2016 03:27:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB889E00DF2
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 03:27:02 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id d132so110731027oig.1
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 03:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VIt1EUbQeE7qmOxTT0uck1zTvDccEL9p2I/5goOEIjc=;
	b=UTKmtZ+7FuFXi+Vcu8GLt5eDa05CJbBl2TJXzwfqRaCL4MdAviFrTRib3fkiQIQAUC
	HgFzbj5vS2jGoIJPGldR7npU5jB486SPhEiA2WBaNL2T6ixBjzgQaaWIFk9u/CU7jy+K
	ADCcocvGc0aIn62c4v0uF3DR4nNKwt0iVEqyCe2SW7kwDTqBT8KKvgdO6sQCu87JD9mX
	tYX+a1Y6M6NCXKFuY6no/5HLUrIPnDorQKlDR0sGs8sk1LC/ySR8upwrMpXbPNaozqAU
	pZTQI98i+oAHjwqEUpKpwHgj5I94lpxO8cVrLAXr/bs2o7ZDhv6nrFk3XDMm583Z2Bzu
	9gJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VIt1EUbQeE7qmOxTT0uck1zTvDccEL9p2I/5goOEIjc=;
	b=fwJjFZax5+kEDE2OxqsYNv7CYlZaWwE0G+BmM0vms2ExoziUi1sUHGH9oWW1QpFITl
	Nn+M2JxQ6s8Kx8F5H1JOVowLkseca8RUfAUjSa5R0RjDxr6/c0FOMX6ZBIU4oEn8L4gP
	+njBLp6iZ5iufDHnm7kxIfF23RN5nXDmgLqPHBJsfZ27eenOMU9z9KfGqXh5kq8aD8zI
	iKUeM60uouCnCupQEskxMkFw1NkRu+y7GFQ1iHG7TrHTNu85WZ7OHiSPsxWALzOK04ID
	ybcouphKu9Gtw6jwRo9vtXEKxXxjOkittBAHZD2GKZfkoDYJFoHF9VhAHwO3Ko4OwPWl
	MaiA==
X-Gm-Message-State: ALyK8tL2CPX5uUGf1nNrc9HBRGNz3MN7JAY5+On13MefO6/Eqwq/NCjhb/g7ZUBLllZGc632ieWnxYt0RTg3h1Y8
X-Received: by 10.202.221.6 with SMTP id u6mr707311oig.51.1466159222044; Fri,
	17 Jun 2016 03:27:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.61.5 with HTTP; Fri, 17 Jun 2016 03:26:32 -0700 (PDT)
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F480DC@MBX214.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F480DC@MBX214.d.ethz.ch>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Fri, 17 Jun 2016 13:26:32 +0300
Message-ID: <CAHiDW_FeWHQtd1rBZ17uSu4=B2s3LAWqF8mRVd5kbk1Kkdq+fg@mail.gmail.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: NTP
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
X-List-Received-Date: Fri, 17 Jun 2016 10:27:23 -0000
Content-Type: multipart/alternative; boundary=001a113ce2569d51f7053576cb4f

--001a113ce2569d51f7053576cb4f
Content-Type: text/plain; charset=UTF-8

On 17 June 2016 at 09:33, Anicic Damir (PSI) <damir.anicic@psi.ch> wrote:
>
> Hi!
>
> I just realised that ntpd + ntpdate is not part of Yocto 2.1
>
> I found http://layers.openembedded.org/layerindex/recipe/2299/
>
> but how to get it?

Note that you do not need ntpd or extra layers for ntp client functionality
if you use systemd. See
https://www.freedesktop.org/software/systemd/man/systemd-timesyncd.service.html
and https://www.freedesktop.org/software/systemd/man/timedatectl.html. I'm
not sure what the default NTP setting is, you may have to enable it.

- Jussi

--001a113ce2569d51f7053576cb4f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 17 June 2016 at 09:33, Anicic Damir (PSI) &lt;<a href=
=3D"mailto:damir.anicic@psi.ch">damir.anicic@psi.ch</a>&gt; wrote:<br>&gt;<=
br>&gt; Hi!<br>&gt;<br>&gt; I just realised that ntpd + ntpdate is not part=
 of Yocto 2.1<br>&gt;<br>&gt; I found <a href=3D"http://layers.openembedded=
.org/layerindex/recipe/2299/">http://layers.openembedded.org/layerindex/rec=
ipe/2299/</a><br>&gt;<br>&gt; but how to get it?<br><br>Note that you do no=
t need ntpd or extra layers for ntp client functionality if you use systemd=
. See <a href=3D"https://www.freedesktop.org/software/systemd/man/systemd-t=
imesyncd.service.html">https://www.freedesktop.org/software/systemd/man/sys=
temd-timesyncd.service.html</a> and <a href=3D"https://www.freedesktop.org/=
software/systemd/man/timedatectl.html">https://www.freedesktop.org/software=
/systemd/man/timedatectl.html</a>. I&#39;m not sure what the default NTP se=
tting is, you may have to enable it.<div><br></div><div>- Jussi</div></div>

--001a113ce2569d51f7053576cb4f--
