Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BC11E006D9
	for <yocto@yoctoproject.org>; Sat, 23 Jun 2012 00:29:57 -0700 (PDT)
Received: by eekb45 with SMTP id b45so1021469eek.35
	for <yocto@yoctoproject.org>; Sat, 23 Jun 2012 00:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=iVadKQMyUHNDxNaRHVt8eSio7W4X4d4kQUbyXITs9rQ=;
	b=s0Llp9EkaW9kg6epG8wQUhSCY82XgxaOBfxVR8rKRM+v5pZlnbybME/k+hzZuwV0xn
	j8qov2fMuLXN/mao0KNdN5yxSX7exK2JS5Li/uhEtpCRxHcG1W84mbqgA0PqrVRxlYTF
	iRkyb0PYEtgf3rqNNf+vteTRvi5r/579Mx/3VM5O4PSyX7KUY+YW/mCABRjHpuSbi5lB
	fVtMOoD4Ki4qKQx7Bo1tujEmF9hMJhBG5/Ii5o2P7ooU5RA321VPZ3Un5YXHY/rYFHea
	ANhqLVnSjrdPwjA+/ph6AXpvYnzUvPuzqzwF5PptiMAPFwcEs/gqmIvGQZVZdPh4wIbQ
	7bdQ==
Received: by 10.14.37.206 with SMTP id y54mr1014006eea.218.1340436596655; Sat,
	23 Jun 2012 00:29:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Sat, 23 Jun 2012 00:29:26 -0700 (PDT)
In-Reply-To: <42D532F4-5629-4BE6-B8AD-3E28A192327D@gmail.com>
References: <2E8A3DA3-EC31-4CE7-979D-E842AFFAB8CA@gmail.com>
	<42D532F4-5629-4BE6-B8AD-3E28A192327D@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 23 Jun 2012 00:29:26 -0700
Message-ID: <CAMKF1srTFrW4VwF5ApQFW+oNs_4CiRiEvnZn6EiVCWBC_7DNTQ@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: SRCREV spec not working for kernel git recipes
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
X-List-Received-Date: Sat, 23 Jun 2012 07:29:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 22, 2012 at 11:16 PM, Elvis Dowson <elvis.dowson@gmail.com> wro=
te:
> Hi,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0I found out that if I specify SRCREV_pn-${PN},=
 it works and picks up the correct commit id, as follows:
>
> SRCREV_pn-${PN} =3D "a5556fb251253ccb674bd22d9703c37f6f8807a8"
>
> However, if you simply specifying SRCREV =3D =C2=A0"a5556fb251253ccb674bd=
22d9703c37f6f8807a8", it has no effect and it always picks up the latest co=
mmit from the git repository.
>
> It would be great if someone could please explain why this is so, because=
 I search through the Yocto documentation and it isn't mentioned anywhere. =
The OE classic way of doing things, it used to pick up the correct commit b=
y just specifying SRCREV. Now I find that you have to specify SRCREV_pn-${P=
N} to get it to work.
>
> Is this documented somewhere?

?
can you port bitbake -e virtual/kernel output with and without change
somewhere ?
>
> Best regards,
>
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

