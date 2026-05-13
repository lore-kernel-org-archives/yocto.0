Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2EDD3CD4851
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 12:43:01 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.6635.1778676176156690428
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2026 05:42:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=CoOdQV3p;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-8b6ea7716bfso72871296d6.0
        for <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 05:42:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778676175; cv=none;
        d=google.com; s=arc-20240605;
        b=Ry7vsgLQM83lPdYq6xQyDPOWniR1263+70nu+RlJvNRqA/4tVDhVThoMyx3MbIyWgV
         VPDiDQz/Wvybh2lICdWVGCy3YfDl6ZCGd2tIWP7TT+v9RAe3vw4VGPvr6/04yU6jGYLd
         Bf+xW180ggPGrCxLrTD46Sihep/c6aSETsIRkITamRztTs0PbUkkE57Fu9XIRkXeQv59
         ogNw2xDA/7IjJOVc9/j1znif0h8qGtWaIKOukZBcJG5fX+RiEEAhe0C13uhK/WemIm9H
         eL/PRBHjdOiiXT1RdZ5BFz/7lTrepNyeJUDK5Lmt0wdIfiLfFjiEpWCtPml68h1G1LUl
         Z5eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=UDBCUIyKK5zjvzsvfxM3S/S1pmpSHjklEczDvtGYlQs=;
        fh=PaCoefWFmkFLxT8cExE+3jqAoVAW1g5QHgRIWAFRCJU=;
        b=A/MFS8bi8jmlsUtP4nR+9U2gPKmA8e36tQii6s7as06oi2P9Jkja9GcmuFG3wHMl/v
         bXL/FGtHhms+ekjPgRZALUkw4Rd68xup/DJS4NUlF+enPDAJo5yDeUNVoXfqaq9y0/Xk
         3v05pigP2BXdWMQXAPY2m3I5W2pYAKjiYhL3JmvipP78jf9nyiDcBfRESSxZyxxlbKoH
         at+AghhlIOKpH4Qn6MklGwoWwiPPeW80dKfC646PCg9ej/gurZBSoeINrTL54vZT+WqR
         WSJGlBfkhUNnc1jkyUOjyiXFfCbEBFKyETs+Y1V9MAzPDskJfECX6G99IIfidD2HfV8d
         i0kg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778676175; x=1779280975; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UDBCUIyKK5zjvzsvfxM3S/S1pmpSHjklEczDvtGYlQs=;
        b=CoOdQV3ps/UeAQANdGBLkDe74lAgdVwltBrHmnsgQJWhd4Ln0qCzjVpEN5xGFZHLR5
         tjVNfcVPO5bc7ZzNPeLg+TjgBbA0O+QZVcTqqGzxInDGQtBWNLxuTa0fuhqOd31nfQFx
         Qs38I24/p6V2wvp9oo8lnDu+TuEeJ2RKXvBtlpg7AVoj/8N8XEupbeHMJnsMTOTIF98H
         usYV7BLjaZXoDWusNdQTNwBODHfc1JxtzAWb2yp3+epLszKdjvbDsdTngZkFuoYn5ZqS
         P3YRNVdyMfSfLkUEthPRZrErKBI+34TROjAeTr1cl0ilsJ0vkF67KnSgSsdpHQOzY/Nb
         vWig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778676175; x=1779280975;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UDBCUIyKK5zjvzsvfxM3S/S1pmpSHjklEczDvtGYlQs=;
        b=rL+H1VdEevdOr2sXxhiEzGHUlSm9QSSW1mkbZ+xfXfM9w+tdm2j6HbOmCiuNkHY/rj
         qorgDrThi1dxqJ+DXFPpLh3RnWkWNB9LLAlaaks7qIdMlLKL70XqcQIfv2ocykmkZt24
         rZximIq5rcUSJarmW2cOunCxmVcGlfayoI/Q3pVGa+Zrjmoa2dA8nHxvywckcxq+g9cE
         SC5zJQPIBD0HvYHNABgz+WSQ2ustubJNvrfBVqG6nVVLDcBmpCU1WQGDrH9vHZza0fTz
         +oBB4ssWmV5IIiTCZ2ppvNl3xA0jVzc/7uib09dE1eRVdmZ3zYybI6bBu7WrZFhkOlJd
         8mDA==
X-Gm-Message-State: AOJu0YzbSgnz2sWLqZMa6jYRRAZvHUTRmb/wRbz/Ui0oJml3VWWrLmIO
	jjMSfMN+U8JOziHhrvb3hH9jKZFRyuZQT8JCuh21F5fvclgIFaDm+62UJzreozPFgo9Z3sp5dBA
	UbJXLD6M12cUuvzuFHgc5VKmS7npAfboihQ==
X-Gm-Gg: Acq92OHAn4VJVD0rVb3+cyTtBe/jBSFzW5XsbGQt/wxFnJaMM3hLGpRSLlyiflmIuuW
	HME9lDdiHU+0ooSM7phiF+9dhE0aNjJI6vGiHP3aGkD4ubZURKdTa/HT40yVcN1iFdf9CxVRHSW
	FeagLS0r/PxsWLajIM0r5/EVhfzgrSo4dFW3ORbPN+AJlNVJac488rgtQz/msdo4Ctty20Qvw3t
	X/ILyZus2IP27cpdmv1Ux1Ndilg2m0maR4BefTF/AaqvmmoQXIaG9RiiWtBZ9ijVGQ/XGe445yx
	x8loc4QO05oJ6xpAl4Ui7VQ/BG2bqjmZ4Lk0rgi/+w==
X-Received: by 2002:a05:6214:4389:b0:8b9:3907:166a with SMTP id
 6a1803df08f44-8c7b979c977mr53278506d6.17.1778676170327; Wed, 13 May 2026
 05:42:50 -0700 (PDT)
MIME-Version: 1.0
References: <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de> <AS8PR08MB7251E97A7AC8E670837F704CD5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <2809cf78-c2d1-49f2-81ab-b01b4594de96@windriver.com> <AS8PR08MB7251371207FE8FED08D1FAE0D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
In-Reply-To: <AS8PR08MB7251371207FE8FED08D1FAE0D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 13 May 2026 14:42:39 +0200
X-Gm-Features: AVHnY4JzTprCPR_oWo2bf5Xf0FEMGGqtEHmz-pPQmAd9H1rHeakaqjaCOtooHuo
Message-ID: <CANNYZj91A4NW70-vCNR8j0rStTxuAC84ZgxDmHhErpugXO_N3A@mail.gmail.com>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
To: yocto@lists.yoctoproject.org, ext-antti.garding@kempower.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 12:43:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66552

On Wed, 13 May 2026 at 14:35, EXT-Antti G=C3=A4rding via
lists.yoctoproject.org
<ext-antti.garding=3Dkempower.com@lists.yoctoproject.org> wrote:
> > You can use a bbclass + event handler to achieve this.
>
> That sounds promising.
>
> How can I find out which event to use? Grepping bitbake's code in my clon=
e of Yocto didn't give me any easy hints. Yocto's manual gives impression t=
hat the list there is not a complete list but rather an example.

I think you should still show us the body of the function that sets
the tag from the value PV. What is it doing that can not be done with
the approach that Quentin suggested? It's rather baffling that you
simply skipped his response without explaining that.

Alex

