Return-Path: <kristian@klausen.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4750C43219
	for <webhook@archiver.kernel.org>; Fri, 17 Dec 2021 10:30:05 +0000 (UTC)
Received: from mail.klausen.dk (mail.klausen.dk [157.90.24.29])
 by mx.groups.io with SMTP id smtpd.web10.4585.1639737003906244113
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Dec 2021 02:30:05 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@klausen.dk
 header.s=dkim header.b=EPMt/fzw;
 spf=pass (domain: klausen.dk, ip: 157.90.24.29,
 mailfrom: kristian@klausen.dk)
Date: Fri, 17 Dec 2021 11:29:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=klausen.dk; s=dkim;
	t=1639737000;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wfMZdOVK1Q0tSXlD/jMpue0B5rtlQFlJSLaQYNzt8uE=;
	b=EPMt/fzw0kEERc+9KSOuHIbl6CbH3PEm73YBtxnDkn7k7lVT4bfEi5e542OAqY0KFcEMu+
	0g9nkLeA31Ba0fd5Uv6FcbMW6uSOA6zbiMKIDxOpoluZJNfbsfkI8FH2/V23iSRF5Nw04f
	glVRlbUJwO4a2Vk1n9bS4uQZHjKnVJM=
From: Kristian Klausen <kristian@klausen.dk>
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: kristian@klausen.dk, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-security][PATCH] dm-verity-img.bbclass: Fix wrong
 override syntax for CONVERSION_DEPENDS
Message-ID: <Ybxmpz5QoLp19cOR@eve>
References: <20211217095543.202026-1-kristian@klausen.dk>
 <CANPvuRm0faOH+e2u8KDusq79NPgFer=iE5JSzkTeCaxBcnippQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: 
 <CANPvuRm0faOH+e2u8KDusq79NPgFer=iE5JSzkTeCaxBcnippQ@mail.gmail.com>
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Dec 2021 10:30:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55607

On Fri, Dec 17, 2021 at 10:06:06 +0000, Jose Quaresma wrote:
> Kristian Klausen via lists.yoctoproject.org <kristian=3D
> klausen.dk@lists.yoctoproject.org> escreveu no dia sexta, 17/12/2021 =E0=
(s)
> 09:55:
>=20
> > CONVERSION_DEPENDS hasn't been converted to the new syntax.
> >
> > Fixes: a23ceef ("dm-verity-img.bbclass: more overided fixups")
> >
> > Signed-off-by: Kristian Klausen <kristian@klausen.dk>
> > ---
> > This should also be backported to honister.
> >
> >  classes/dm-verity-img.bbclass | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bb=
class
> > index 0b6d053..93f667d 100644
> > --- a/classes/dm-verity-img.bbclass
> > +++ b/classes/dm-verity-img.bbclass
> > @@ -67,7 +67,7 @@ VERITY_TYPES =3D "ext2.verity ext3.verity ext4.veri=
ty
> > btrfs.verity"
> >  IMAGE_TYPES +=3D "${VERITY_TYPES}"
> >  CONVERSIONTYPES +=3D "verity"
> >  CONVERSION_CMD:verity =3D "verity_setup ${type}"
> > -CONVERSION_DEPENDS:verity =3D "cryptsetup-native"
> > +CONVERSION_DEPENDS_verity =3D "cryptsetup-native"
> >
>=20
> This syntax don't work anymore with oe-core master branch

(resend as I forgot to CC the list)

Are you sure? This was tested with the honister branch, but the code is=20
the same[1].

[1] https://git.openembedded.org/openembedded-core/tree/meta/classes/imag=
e_types.bbclass#n40

>=20
>=20
> >  python __anonymous() {
> >      verity_image =3D d.getVar('DM_VERITY_IMAGE')
> > --
> > 2.34.1
> >
> >
> >=20
> >
> >
>=20
> --=20
> Best regards,
>=20
> Jos=E9 Quaresma

>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55606): https://lists.yoctoproject.org/g/yocto/mess=
age/55606
> Mute This Topic: https://lists.yoctoproject.org/mt/87786381/6376886
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kristian@kla=
usen.dk]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


