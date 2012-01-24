Return-Path: <autif.mlist@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0944BE00592
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 09:46:38 -0800 (PST)
Received: by vbbfn1 with SMTP id fn1so4006832vbb.35
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 09:46:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=AQArhM39Bk2RtnP2+aXQtL64wv+/A/zyNsyBaZcQRL8=;
	b=TXkJtQE4KUZelKbFTlMlznmblBEJGAS6q7GppUHLHYvS+g5SUxcgS3o9CRhSN4INya
	SsXzgvdo+Ftm+haxs4/JdPeqkxt304whKgpLYWU/QsYIQ3i6dopYNEc9HVj1do3IGISQ
	pgZesMdDCd5Auuyx0CfxooIhSO8ALk1up2dds=
MIME-Version: 1.0
Received: by 10.52.23.5 with SMTP id i5mr6672412vdf.50.1327427198271; Tue, 24
	Jan 2012 09:46:38 -0800 (PST)
Received: by 10.52.108.37 with HTTP; Tue, 24 Jan 2012 09:46:38 -0800 (PST)
In-Reply-To: <CAMKF1sqNmWvR=m0wnjtjdDr70y1ex1JyXVObTvoq5vvvuWM2uw@mail.gmail.com>
References: <CADzUK1J+pYY8hpKKY786ZWPM2O7SkZvMqjOH-5wt8323_kR=gw@mail.gmail.com>
	<CAMKF1somkqJp-DT=faDqNAFww98Q=rb5R5_ZbC2HhxSTkLG9Tg@mail.gmail.com>
	<CADzUK1+bGq=n_yRwuJDv_9rHD+cK-n7e89mg8nWcNHLX09+zCg@mail.gmail.com>
	<CAMKF1sqNmWvR=m0wnjtjdDr70y1ex1JyXVObTvoq5vvvuWM2uw@mail.gmail.com>
Date: Tue, 24 Jan 2012 12:46:38 -0500
Message-ID: <CADzUK1J6yNz8UOUYCsWjw_w63aTkUni8eBKXOEjOj=LDucGzQg@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Tue, 24 Jan 2012 17:46:39 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 24, 2012 at 12:09 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Tue, Jan 24, 2012 at 8:13 AM, autif khan <autif.mlist@gmail.com> wrote=
:
>>
>> do_configure_prepend() {
>> =A0 =A0autoreconf -Wcross --verbose --install --force || bbnote "mono
>> failed to autoreconf"
>> }
>>
>> do_compile_prepend() {
>> =A0 =A0ln -s i586-poky-linux-libtool libtool
>> }
>
> get rid of above these are not needed when recipes inherit autotools
> see if you need to copy over some of m4 macros that is what you
> need to do in do_configure_prepend if needed.

Can you point me to an existing recipe that already does something
similar? I am not sure what I am looking for.

Thanks for all the help!

Autif

