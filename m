Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC16C4332F
	for <webhook@archiver.kernel.org>; Tue, 15 Nov 2022 18:03:16 +0000 (UTC)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
 by mx.groups.io with SMTP id smtpd.web08.1564.1668535388296786732
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Nov 2022 10:03:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=o1/leBP3;
 spf=pass (domain: gmail.com, ip: 209.85.160.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-13ba86b5ac0so17134548fac.1
        for <yocto@lists.yoctoproject.org>; Tue, 15 Nov 2022 10:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mTXlQOmKgo4Pukuo/xI60YBmR6kEsm2U8MlOrzCgSmk=;
        b=o1/leBP3U6NFHoT6r3I6zBlS6xfmpAZFfiTesln9WRfOKOyGssggX68ivBJtGvOkyv
         AWdtO5wJ10oOjHdahZdaTiXCZMlvjsf1YtVpD2/mbSZxg3SiXUXMfJM/LJsYjK8c9RZN
         nDLB9wvNi58eR85D74CuqdFhdj3wTAHG5sYkttfV+eeAMvtharRP6aRxF0s56P0ZyiGL
         gl73P30VMtkCMQC/UDikrEk6CZ3LMMwtuGC+oUALrrkIxJpOaSH76xcv60t/8ijGXBNp
         l5GqxgAbS9xEGyv9qD7N/Wzg971ykoDJVfy0vpFD0+w6O+3IKTVFMXnzmih9uHVbOWm2
         qDlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mTXlQOmKgo4Pukuo/xI60YBmR6kEsm2U8MlOrzCgSmk=;
        b=D0dgIU/4Xby8/fpeMl1e6ClDrXXYr1lz3tqjbT4ozyenOCKE6SRLWcGLveB7dxGSpf
         KDgwb1plcs9f63sFj3iv8KsxeMcoOfGn/DHt/bW1PAv0O0MERYJKr9Qgen4LaHFA3eZG
         v2XxslW7lV3wdNFm5aCA5pVQCgFmZfpXPzsXH7JbcQ5q3TW+L9j8omcfJ02KUV7ReNUm
         tzCqb/BCXLGIXJ+OAuzZ3kDTBUyleicG6JYTEP2pkProveuz5MWSCP60ZFZpBu8KdHD3
         RRzPXU4JzUFshhfwCZ0haVnmO3waXOM5RXL5xt7DCHa3vrk2yLds5MsRAa2l56slgsWK
         nLfw==
X-Gm-Message-State: ANoB5pnswuojCIq1mAaSxGrJaxjbrtPsWKN99OTt2KqN0VEwreKnmcVt
	WG7rL6Fic1An3JNFSkbTopw28Yt1SXI0qsltMn4=
X-Google-Smtp-Source: AA0mqf4XHsDk4CyfDbJWSx3DfS/8TO5pyqN7sv+v3eBUqMeij7C0K2LXn0Rml9oACejuqHgV99IHdo2BAEeapHDxPpc=
X-Received: by 2002:a05:6870:d6a4:b0:13b:1e05:a73d with SMTP id
 z36-20020a056870d6a400b0013b1e05a73dmr1065995oap.55.1668535387275; Tue, 15
 Nov 2022 10:03:07 -0800 (PST)
MIME-Version: 1.0
References: <6JjZ.1668491198225465936.lWRF@lists.yoctoproject.org>
In-Reply-To: <6JjZ.1668491198225465936.lWRF@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 15 Nov 2022 10:02:56 -0800
Message-ID: <CAMKF1sqPWRfXN-BZtdH_64qKDSS1w5sROrn35qnn3B=8PROzQA@mail.gmail.com>
Subject: Re: [yocto] Error while bitbake #dunfell
To: Shruti gandotra <shruti10gandotra@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000de40e05ed862b12"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Nov 2022 18:03:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58573

--0000000000000de40e05ed862b12
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 14, 2022 at 9:46 PM Shruti gandotra <shruti10gandotra@gmail.com>
wrote:

> I am trying to build rcar-image-minimal for RCar S4, while bitbake I'm
> getting do_rootfs: The postinstall intercept hook 'update_pixbuf_cache'
> failed error. I tried using cleanall and cleansstate but I'm still getting
> the same error.
> Can anyone help me with issue?


Look into the logs in the rootfs build area and it might reveal the
underlying problem perhaps some missing library or qemu user mode crash
could be the reason

>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58565):
> https://lists.yoctoproject.org/g/yocto/message/58565
> Mute This Topic: https://lists.yoctoproject.org/mt/95037905/1997914
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000000de40e05ed862b12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Nov 14, 2022 at 9:46 PM Shruti gandotra &lt;<a href=
=3D"mailto:shruti10gandotra@gmail.com">shruti10gandotra@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">I am trying to build rcar-ima=
ge-minimal for RCar S4, while bitbake I&#39;m getting do_rootfs: The postin=
stall intercept hook &#39;update_pixbuf_cache&#39; failed error. I tried us=
ing cleanall and cleansstate but I&#39;m still getting the same error.=C2=
=A0<br>Can anyone help me with issue?
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Look into the lo=
gs in the rootfs build area and it might reveal the underlying problem perh=
aps some missing library or qemu user mode crash could be the reason=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex" dir=3D"auto"><br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#58565): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58565" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58565</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95037905/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/95037905/1997914</a><br>
Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/dunfell" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/dunfell</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000000de40e05ed862b12--

