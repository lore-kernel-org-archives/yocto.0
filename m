Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1778E00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 09:38:24 -0800 (PST)
Received: by lagw12 with SMTP id w12so612421lag.35
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 09:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=3jb5vqQ5bg09oXGYIs9tiLvvDskC9mik5r5kCgWEZCI=;
	b=UFOgZJDUGGzv6Hy+7PQtqVYiSC72qZwZHxsoTDQ6x/QC5dUgqbEDWhr+fMtz4ngcO0
	PyYTzh6EiqdyD9mfA5cdCCSAwseu7Tdg9M4L1msziePxXw5viUtINo6S9juDT6MUHpfq
	OT7w4YTv+Ui7BZL00o9ax/8yusR7oi6eI0R9c=
Received: by 10.112.99.136 with SMTP id eq8mr4720273lbb.42.1327945103367; Mon,
	30 Jan 2012 09:38:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Mon, 30 Jan 2012 09:37:53 -0800 (PST)
In-Reply-To: <OF07B6379D.FDCBA64F-ON88257995.0059F0C8-88257995.005B0477@selinc.com>
References: <OF07B6379D.FDCBA64F-ON88257995.0059F0C8-88257995.005B0477@selinc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 30 Jan 2012 09:37:53 -0800
Message-ID: <CAMKF1sodYnhvVBt852x4BD8XUP193m7d=DrbNrN3-GHJ6E8q_w@mail.gmail.com>
To: paul_nathan@selinc.com
Cc: yocto@yoctoproject.org
Subject: Re: Yocto & long-term reproducibility of rebuilds
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
X-List-Received-Date: Mon, 30 Jan 2012 17:38:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 30, 2012 at 8:34 AM,  <paul_nathan@selinc.com> wrote:
> Hi,
>
> I am investigating Yocto for a build system here. Part of my requirements
> for a build system is auditable/traceable builds that can be replicated l=
ong
> into the future (our company has a 10 year warranty on our products, and =
we
> build products for the multidecade term). Initial examination of Yocto sh=
ows
> that it builds packages from a number of different domains online, which
> will not meet our requirements - we'll have to store these packages to
> ensure these packages exist in the correct version long into the future. =
=C2=A0I
> know we can manually edit the SRC_URI setting in .bb files, but the more
> general problem of package archiving exists.
>
> I am interested in any information or recommendations other users of the
> Yocto system have on how they have solved this sort of design constraint.

Hi Paul

You can cache all the source tars as you mentioned and then
store them internally and use PREMIRROR facility which should
check premirrors before it hits src_uri so provided you cache
all the sources it should always get it from your internal
mirror

>
> - - -
> Regards,
> Paul Nathan
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

