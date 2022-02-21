Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72A61C433EF
	for <webhook@archiver.kernel.org>; Mon, 21 Feb 2022 08:21:17 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web09.8310.1645431676300831962
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 00:21:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ocWtZ8pM;
 spf=pass (domain: gmail.com, ip: 209.85.167.41,
 mailfrom: rybczynska@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id g39so17087797lfv.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 00:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vY8uNJwCE6lhIE+z1u9Tn6/0SOSUl0fm4ddaQnztHME=;
        b=ocWtZ8pMGxRxZEAK3P2LvyU2ZRsd6W/563oLZeSjQOfZ/dEkcbsvb297cqGeeg8Q0J
         +BBOiwa7PPlGQ+69mW05gFlQJajCmyS8nlXmHG09ft5z6sVp9X89aHZbeLQhf3kLGKCY
         3X/92Xm+KPOwtORa1kvUo2nAl6HFGmhjfVci8uPuoXNsEJkyGORcuiLqSUmaqeeAutLv
         gyHqwHYhme2wCUxMxSigGLrvKcB519mEskx0fbHGcHbqHU5b9cqtxnWFdHA0FvsZ3bZ6
         Ar8zlNY98yF/i4kPyLvFnus0HqIfsMoeHQREtM2GAw6hkRFWUNwV7OJSAHdtngLqiCFj
         VAGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vY8uNJwCE6lhIE+z1u9Tn6/0SOSUl0fm4ddaQnztHME=;
        b=6W7eDMuJVUl9oLxCDvCZufrn4+R4OjBL3kGl+z0Ab4ngTsM8yzMJ5F//HnKnPpZg4p
         jVMIE9S4VD31xoDuH6CDQB05q3fdZfO0r7nH8vSAfhW0YyYV0OYNZPix/Ig60MWNKaxw
         nE5fv42h0asG6SP7bHvq3yb2IzXeOf0L6mDgnKMzUNvI2iJLqbd29Oq76W45DTNAN4OW
         ZtS3i4OO8TWlQlM6p2LgkV8gO2KMMZ6PEy/MWAaav0X2ThLlktPGpXHZeATvcYBUTpvP
         GS+rApzwA4eJ0d5nH8nqjuQcFYVKtTZ/0v4e7EcN7IDMR5KCQ0pdsLTqFOR6GnbDcySZ
         e97A==
X-Gm-Message-State: AOAM5303v7UxLEzMBJQQ1FNnvTz0fusfLQ5AgF7g0yToE80F7mrRNvYh
	oL1RbibHCJu19Kp+yZJpbSnX4fiIq/AjeiRaFrU=
X-Google-Smtp-Source: 
 ABdhPJytmBfBUha3BW/6KrluDCMqi2LKH2+/nPGtFkvjx34Fw21KtoMoB3lbreC7AeQLFMVGZcRhbI+Zs8o4ilAFxow=
X-Received: by 2002:a19:ee17:0:b0:443:5d4b:a4e4 with SMTP id
 g23-20020a19ee17000000b004435d4ba4e4mr13007508lfb.352.1645431674217; Mon, 21
 Feb 2022 00:21:14 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAPoiz9wL16OTzxNHdw_5-L72GOHkhhM0--WZF7An071cx6sr_A@mail.gmail.com>
In-Reply-To: 
 <CAPoiz9wL16OTzxNHdw_5-L72GOHkhhM0--WZF7An071cx6sr_A@mail.gmail.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Mon, 21 Feb 2022 09:21:02 +0100
Message-ID: 
 <CAApg2=TxBsDcU2_YgjMVM4r_4_9K4B0=dapFfMg-EotyTLi85w@mail.gmail.com>
Subject: Re: [oe] Inclusive Language Proposal for YP/OE
To: Jon Mason <jdmason@kudzu.us>
Cc: yocto@lists.yoctoproject.org,
	Patches and discussions about the oe-core layer
 <openembedded-core@lists.openembedded.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="00000000000071aa7705d882ea62"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Feb 2022 08:21:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56220

--00000000000071aa7705d882ea62
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 24, 2022 at 5:18 PM Jon Mason <jdmason@kudzu.us> wrote:

> CVE_CHECK_PN_WHITELIST -> CVE_CHECK_SKIPRECIPE
> CVE_CHECK_WHITELIST -> CVE_CHECK_IGNORECVE
>

When running master-next I have found one missing rename, cve-check has
"CVE STATUS" result
which is still Patched, Unpatched, Whitelisted. I propose to rename
Whitelisted to Ignored to be in-line
with the variable rename.

Is there anyone using the states in scripting or other tools today?

Marta

--00000000000071aa7705d882ea62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 24, 2022 at 5:18 PM Jon M=
ason &lt;<a href=3D"mailto:jdmason@kudzu.us">jdmason@kudzu.us</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
CVE_CHECK_PN_WHITELIST -&gt; CVE_CHECK_SKIPRECIPE<br>
CVE_CHECK_WHITELIST -&gt; CVE_CHECK_IGNORECVE<br></blockquote><div><br></di=
v><div>When running master-next I have found one missing rename, cve-check =
has &quot;CVE STATUS&quot; result</div><div>which is still Patched, Unpatch=
ed, Whitelisted. I propose to rename Whitelisted to Ignored to be in-line</=
div><div>with the variable rename.</div><div><br></div><div>Is there anyone=
 using the states in scripting or other tools today?</div><div><br></div><d=
iv>Marta<br></div></div></div>

--00000000000071aa7705d882ea62--

