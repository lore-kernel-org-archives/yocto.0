Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB723E00592
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 07:45:22 -0800 (PST)
Received: by lagz14 with SMTP id z14so1563153lag.35
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 07:45:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=IN6RFeHRA/EdDH0bapmi9RRIlKctLu4cWGaNWqwhiBo=;
	b=Fj4AmKrI+IEcw30JikrBG1jLoFrwgXJaujKbFATQhNVvz1EtTxgk0eKdMYIpKLm51I
	gNzr+z6w3LsDSs1p+83ScruIP5SdZ7CA+FK62krTlY2WbxW8Xsu8RK2Qhhidh5UOKF5F
	N1pmk/2J+EommNuxLfcMVHMQ36EY+bL5SgqUI=
Received: by 10.112.26.6 with SMTP id h6mr3354097lbg.6.1327419921295; Tue, 24
	Jan 2012 07:45:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Tue, 24 Jan 2012 07:44:50 -0800 (PST)
In-Reply-To: <CADzUK1J+pYY8hpKKY786ZWPM2O7SkZvMqjOH-5wt8323_kR=gw@mail.gmail.com>
References: <CADzUK1J+pYY8hpKKY786ZWPM2O7SkZvMqjOH-5wt8323_kR=gw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 24 Jan 2012 07:44:50 -0800
Message-ID: <CAMKF1somkqJp-DT=faDqNAFww98Q=rb5R5_ZbC2HhxSTkLG9Tg@mail.gmail.com>
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
X-List-Received-Date: Tue, 24 Jan 2012 15:45:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 24, 2012 at 7:18 AM, autif khan <autif.mlist@gmail.com> wrote:
> Error:
> | libtool: Version mismatch error. =C2=A0This is libtool 2.4, but the
> | libtool: definition of this LT_INIT comes from libtool 2.2.6.
> | libtool: You should recreate aclocal.m4 with macros from libtool 2.4
> | libtool: and run autoconf again.
> | make[3]: *** [allchblk.lo] Error 63

this says it all and we do that regeneration automatically for recipes
which inherit autotools
you need to post your recipes for someone to look at what you are doing

