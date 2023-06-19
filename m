Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCCFEB64D9
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 17:27:45 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.13469.1687195659493179825
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 10:27:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=OhSOM6Kw;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-4f86e1bdce5so2069726e87.3
        for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 10:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687195657; x=1689787657;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fdx1zVbf4auDG6CbrGbxuZUp+sHHiV3uTXmkrpg9fyE=;
        b=OhSOM6KwqK1dsanSSn0oaQ3aizqmL9JtA71k1hlIxBEicuYuTfPTdmrEBdXbD2Cwdd
         ip5dhLIaUFufXhDkgLHrsB0uaoXHHf0T0nF3WLSYpucbapU2FwWlnzvY9xHul12nMe9y
         FbwzpC9U6d7CnIA7wGHgC6+C4M9vLiGCxcNMVOl4+CnlsZT8p4W1it9il2wps+WkTYfx
         0tbuNprMooLbAfIDOYC5Fr8zILH8efLgtZ2G//YtwjynzqkKdIxmUBlpcblAP2NiIvvi
         94wNjwz9/US5kmBVF5BhLp7lI/Z1b01tpWgYWOlZ5Evdh3EqfNKDnUsHZLTseXjWnr+/
         jhFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687195657; x=1689787657;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fdx1zVbf4auDG6CbrGbxuZUp+sHHiV3uTXmkrpg9fyE=;
        b=SYxmxyVwUlrIPxMJZWhHPA5Pu2BbxMeliBPap8cQQxkShccsiCSGEKsLGDaAPRUfoj
         M8ul1hvbUqNOZfZjMQ1/pJ7NjPJRYJaztwttq2Ggld+AaICJvoF/oKPFwE41bpRhs5HP
         HAogLFaK0uMweHGe5plUPbBkN4M0ohEJVda/ai/6vvAtcze/Ih/9J02+Q3o5CDBzvl5A
         UnGIJ6ekddgc8NttA8JwqJUkhMF2iVio5BdW7vnW+JbchUisjphfkbdWQw3tMIIQ0MT7
         YaCj3+sBjTBtSlYaf4Zucq86CD9ZrrZYeJVMDjT1e6FAxTteOT20i8ESpNlIF1M/lHyI
         9IjQ==
X-Gm-Message-State: AC+VfDwXdBKRQGH4Ffm4s+yv5HOI3Ro1rb+Ij00yfA6+emqRwLRuQUs4
	nXydgzILgwQzrRS362VWHoDUmBLdrNkToVNr4C4=
X-Google-Smtp-Source: ACHHUZ6QezyBLotOjefMDutTa2KapjThoD4sBleiibMPQucQZ848w1G266Q7fRtygtQ3EXB1vWQMt5YOcAZDSOoo1Ks=
X-Received: by 2002:a19:f24d:0:b0:4f3:aa09:5566 with SMTP id
 d13-20020a19f24d000000b004f3aa095566mr5390824lfk.65.1687195657454; Mon, 19
 Jun 2023 10:27:37 -0700 (PDT)
MIME-Version: 1.0
References: <PH0PR11MB49021AEB3FDB7ED00B7CE733D75FA@PH0PR11MB4902.namprd11.prod.outlook.com>
 <176A1DBE70E5CC10.31313@lists.yoctoproject.org>
In-Reply-To: <176A1DBE70E5CC10.31313@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 19 Jun 2023 19:27:26 +0200
Message-ID: <CANNYZj9-AOrddDK2VRrbrrDnWhgDOJ2tPbJRXO1bWrKpoOfzzg@mail.gmail.com>
Subject: Re: [yocto] File magic/sdk relocation
To: alex.kanavin@gmail.com
Cc: oobitots@cisco.com, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 17:27:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60351

On closer look, it should even say:
export MAGIC="\$OECORE_NATIVE_SYSROOT/usr/share/misc/magic.mgc"

If you can test this and confirm that it works, a patch would be welcome.

Alex

On Mon, 19 Jun 2023 at 18:55, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
>
> I think there is a mistake in the file recipe (and rpm has the problem too):
>
>         cat <<- EOF > ${D}${SDKPATHNATIVE}/environment-setup.d/file.sh
>                 export MAGIC="$OECORE_NATIVE_SYSROOT${datadir}/misc/magic.mgc"
>         EOF
>
> $OECORE_NATIVE_SYSROOT should be prefixed with a \ to prevent shell
> variable expansion at build time.
>
> Can you check that the problem is then fixed?
>
> Alex
>
> On Mon, 19 Jun 2023 at 17:50, Oleksiy Obitotskyy via
> lists.yoctoproject.org <oobitots=cisco.com@lists.yoctoproject.org>
> wrote:
> >
> > Hi,
> >
> > I'm working on master oe core master branch and run into problem with file for nativesdk (buildtools tarball).
> > File started to use MAGIC variable initialized from .../environment-setup.d/file.sh, like
> >
> > /usr/local/oe-sdk-hardcoded-buildpath/sysroots/x86_64-xesdk-linux/usr/share/misc/magic.mgc
> >
> > This path relocation does not covered by relocate_sdk.sh script.
> >
> > Commit that change behavior from wrapper that use relative path to environment variable with absolute path is:
> >
> > commit 47db876d09d9a4394048579c21d0b394450ce681
> > Author: Chen Qi <Qi.Chen@windriver.com>
> > Date:   Tue Jan 17 12:06:30 2023 +0800
> >
> >     file: export MAGIC in SDK
> >
> >     Previously, a wrapper is used for file, which adds '--magic-file'
> >     option to it. But other components might use libmagic and in such
> >     case, if there's no MAGIC environent variable set correctly, things
> >     do not work. For example, rpmbuild makes use of libmagic and it
> >     requries MAGIC to be set correctly.
> >
> >     Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> >     Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> >     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> >
> >
> > I would like to ask if anybody else has such an issue. Any propositions other than reverting commit?
> >
> > Regards,
> > Oleksiy
> >
> >
> >
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60350): https://lists.yoctoproject.org/g/yocto/message/60350
> Mute This Topic: https://lists.yoctoproject.org/mt/99626082/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

