Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D370E00C35; Thu,  3 Aug 2017 08:00:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54149E00C32
	for <yocto@yoctoproject.org>; Thu,  3 Aug 2017 08:00:37 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id j32so8048743iod.0
	for <yocto@yoctoproject.org>; Thu, 03 Aug 2017 08:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OLF3NaNYoNhrsN/jdpr7orrg0fpp6K+5OFkSCxru0EI=;
	b=ki+m6xgF1FVAjp9nWrv9orAcpUY1fENl4FRMsoQgL8E5bnlCid+9ZKwqxXoExeMXAf
	jKoxOEhLule1DE7AQFlgrLyseYAYy1X5ieEoorxkXizTNZAPTVoFLg0+Fzir13WVadVW
	zuRyMWQlqCiJeh8nW4AjXF0KMRyAihKc+tg811EHQEYySVZfXj4Sr4J0iA2hbVT/h6QP
	YaokFUqYgWbivOSFGtcbkk94/IH8LZUpnMg+XM9Qlu11Z9K3IVdYaBDNM/PRTQ+4D8eT
	82gqCNzrZcXP7ff++rXlI/TzynRXvWG5ak3iJxMTEt2ENDWB0F05kCEAzw9oT8Mork3y
	G4Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OLF3NaNYoNhrsN/jdpr7orrg0fpp6K+5OFkSCxru0EI=;
	b=JAfUtRO8ajdgo0QOWDqwHOelgoOwTc/yS5niUCjWStCeWyAFn4BdNTRrCXYUujRopP
	huP/jHNjbupGcUJhwbEV4sDmrAFVEiWW/P4IOnaHl4sbLyRpJtmee8xG5VJnoWkxAKCs
	ELqfUtSvFkt7bUGQ4fgW/8UvPmwBfLA1KXGP6AptCxOvlbz+DC4VnPkwTW6MRl8JxLzR
	EVkP6waTqvfVrF5c9Wh99NYYET2bCruqwF4xcvL6RbrgtW9ce0rYYmAC5CZLKMXgO8qM
	p1QclQxGYgkCM8ftbzlkzXEDqi7NmGkVlOCv41a3X+Oj41P4UbyGj4smBPcLKNR+KuBP
	zMYA==
X-Gm-Message-State: AIVw111d3rjgnu2HryET4qPif5RJLj8MoIw0atB44P6JFN0OeL2Huko+
	wxcwtGlDbQ2gTdJ+5mf/NxPMqIkdhXRY
X-Received: by 10.107.132.33 with SMTP id g33mr2067843iod.300.1501772437194;
	Thu, 03 Aug 2017 08:00:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Thu, 3 Aug 2017 08:00:16 -0700 (PDT)
In-Reply-To: <CA+z1-f8Fv3DYhfQcPB2v_bV6515-5hf03LBS0hTdFGhn_bfqRw@mail.gmail.com>
References: <CA+z1-f8Fv3DYhfQcPB2v_bV6515-5hf03LBS0hTdFGhn_bfqRw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 3 Aug 2017 16:00:16 +0100
Message-ID: <CAJTo0LaOSxrGXXXCyHJ_7XbqZCGnC-LyKWLhS5nsQTmFg4jnAg@mail.gmail.com>
To: "blackthirt33n ." <jjosburn@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake download only
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
X-List-Received-Date: Thu, 03 Aug 2017 15:00:39 -0000
Content-Type: multipart/alternative; boundary="001a113ed2e8a729f70555daa480"

--001a113ed2e8a729f70555daa480
Content-Type: text/plain; charset="UTF-8"

Yes,

bitbake core-image-minimal -c fetchall

Ross

On 3 August 2017 at 15:55, blackthirt33n . <jjosburn@gmail.com> wrote:

> Is it possible to perform a download only bitbake of a recipe/target?
>
> For instance only download the necessary files for core-image-minimal?
>
> James
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113ed2e8a729f70555daa480
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes,=C2=A0<div><br></div><div>bitbake core-image-minimal -=
c fetchall<div><br></div><div>Ross</div></div></div><div class=3D"gmail_ext=
ra"><br><div class=3D"gmail_quote">On 3 August 2017 at 15:55, blackthirt33n=
 . <span dir=3D"ltr">&lt;<a href=3D"mailto:jjosburn@gmail.com" target=3D"_b=
lank">jjosburn@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr">Is it possible to perform a download only bitbake of=
 a recipe/target?<div><br></div><div>For instance only download the necessa=
ry files for=C2=A0<span style=3D"background-color:rgb(244,244,244);color:rg=
b(0,0,0);text-align:justify">core-image-minimal?</span><div><br><div>James<=
/div></div></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113ed2e8a729f70555daa480--
