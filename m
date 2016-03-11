Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0152E00CDC; Fri, 11 Mar 2016 02:20:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03496E00929
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 02:20:45 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id n190so140045113iof.0
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 02:20:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=M4qOa5u4sKMzNrwTcFmGF3HdATDV8NMCgCZBExUU9V8=;
	b=qJ+Rtktvq8VIT+5IZbDgNWeOl2Yo2vCMzTz7jL6UHGnTIQyG8lHJ8uHg/ElcxNUEpn
	feKljCSHqXADDPL/MwmKE6r7klsOAN4YJbIF1yewpowTkZsMEeHUHhVS3nPWHbbm5Dwh
	H4+BXzgt6EnPTvoJEjtzRemIiwCOPZ9ImEUOr6DuCjL0GRZ38m1Aq20o7PoCUtsywHkN
	qNhZcocDi60GvGS+hiGd5v21pa20+N/qNUorBsOnBOJW0WSewGqWuW4COJvNtDsUgsUN
	ka/B7rpuayecgK6lMsAs0+hKjZXCL6aIFQzBDnc5IhNGWFXZMLRAsF7zybcwh7RoHB0i
	iKzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=M4qOa5u4sKMzNrwTcFmGF3HdATDV8NMCgCZBExUU9V8=;
	b=LQKuX94BegVhtQlhNh7p38ZBJWoCYDu9JtcLZ4u/jsNzrqovQ9VTohZMv+TCTkC+Q0
	iPRt/aWXx+Ah0qdV2Ut9ZPUMe2Y68PkxvKno+9FVevsLaiKOj+nUIHTrPafz7E43nuvO
	BDjoE3SvFOZQjbXt2u5+d9rmsdooGTU5AeuOIyksm8Dx37WIVTzMVuXRnwYbMWESjDM2
	rPxZe/APw90URkmXVGeC8RAWLU5inJg2CrA/wcACgeZOyg/od7djxP1XRRR0uI3u5Ezb
	CSJlz1fUJqPfgM2OOA90RSoVbMmuNz+ejU32Pzpj1SHrNC5yo/Do+IigjwvC5KM9NLLQ
	K8Vg==
X-Gm-Message-State: AD7BkJKNy8Tz71lWxPRmks95OlrRKSlmpvvnGzoeM9WCyTJQ7585PgY6qrzWuaJ9hmsxcHaS094uKUNSkjtCqneA
X-Received: by 10.107.16.19 with SMTP id y19mr8270355ioi.148.1457691644874;
	Fri, 11 Mar 2016 02:20:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 11 Mar 2016 02:20:25 -0800 (PST)
In-Reply-To: <56E298F0.50200@konsulko.com>
References: <56E293BD.1080009@konsulko.com>
	<CAJTo0LZDKBYHmKHH56MJESEcpj1KZuDpDOcEBYNRT0JQNnGwEw@mail.gmail.com>
	<56E298F0.50200@konsulko.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 11 Mar 2016 10:20:25 +0000
Message-ID: <CAJTo0LbqsdrFP4B4t3A8MCRifJDKtXd9oZXWLHGYwJd4D7C2nQ@mail.gmail.com>
To: Leon Anavi <leon.anavi@konsulko.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Nettle from release Fido fails to build
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
X-List-Received-Date: Fri, 11 Mar 2016 10:20:51 -0000
Content-Type: multipart/alternative; boundary=001a113fd1eaaf69ef052dc3485f

--001a113fd1eaaf69ef052dc3485f
Content-Type: text/plain; charset=UTF-8

On 11 March 2016 at 10:07, Leon Anavi <leon.anavi@konsulko.com> wrote:

> OK, thank you for the feedback. I will wait for the fix in the Poky
> repository.
>

Obviously you can apply the fix locally until it ends up in a release
branch.  Hooray git!

Ross

--001a113fd1eaaf69ef052dc3485f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 March 2016 at 10:07, Leon Anavi <span dir=3D"ltr">&lt;<a href=3D"mail=
to:leon.anavi@konsulko.com" target=3D"_blank">leon.anavi@konsulko.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div text=3D"#000000" bg=
color=3D"#FFFFFF">OK, thank you for the feedback. I will wait for the fix i=
n the Poky
    repository.<br></div></blockquote></div><br>Obviously you can apply the=
 fix locally until it ends up in a release branch.=C2=A0 Hooray git!</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></=
div>

--001a113fd1eaaf69ef052dc3485f--
