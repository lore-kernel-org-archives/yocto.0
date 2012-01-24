Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C90ADE00592
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 09:10:26 -0800 (PST)
Received: by lagz14 with SMTP id z14so1658566lag.35
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 09:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=9Hw3nceMl+qdrUJelnppaxDI+4JAiJqU9L30mnOiOd4=;
	b=vujB/WZbxvYZCE1E++eyUOAI8aouCV9dwJyLdhx6qR+IolLrK+dxj2HwsQkFu8M17h
	k9JAkyNU0o03IIv0oh9nslo05CFh+oH6lYZvMniIcQ2F4XqH79bZDUwdaO3LNOMi5HDI
	lPHE86zPflH5X8klRprl02oMUx0kP5m/p8+QA=
Received: by 10.152.132.104 with SMTP id ot8mr2759100lab.17.1327425025263;
	Tue, 24 Jan 2012 09:10:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Tue, 24 Jan 2012 09:09:54 -0800 (PST)
In-Reply-To: <CADzUK1+bGq=n_yRwuJDv_9rHD+cK-n7e89mg8nWcNHLX09+zCg@mail.gmail.com>
References: <CADzUK1J+pYY8hpKKY786ZWPM2O7SkZvMqjOH-5wt8323_kR=gw@mail.gmail.com>
	<CAMKF1somkqJp-DT=faDqNAFww98Q=rb5R5_ZbC2HhxSTkLG9Tg@mail.gmail.com>
	<CADzUK1+bGq=n_yRwuJDv_9rHD+cK-n7e89mg8nWcNHLX09+zCg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 24 Jan 2012 09:09:54 -0800
Message-ID: <CAMKF1sqNmWvR=m0wnjtjdDr70y1ex1JyXVObTvoq5vvvuWM2uw@mail.gmail.com>
To: autif khan <autif.mlist@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: libtool version mismatch
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 Jan 2012 17:10:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 24, 2012 at 8:13 AM, autif khan <autif.mlist@gmail.com> wrote:
>
> do_configure_prepend() {
> =C2=A0 =C2=A0autoreconf -Wcross --verbose --install --force || bbnote "mo=
no
> failed to autoreconf"
> }
>
> do_compile_prepend() {
> =C2=A0 =C2=A0ln -s i586-poky-linux-libtool libtool
> }

get rid of above these are not needed when recipes inherit autotools
see if you need to copy over some of m4 macros that is what you
need to do in do_configure_prepend if needed.

