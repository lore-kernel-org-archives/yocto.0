Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20AC9C02180
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 11:52:33 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web11.19080.1736941947735487209
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jan 2025 03:52:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=N4Zb5qOx;
 spf=pass (domain: gmail.com, ip: 209.85.160.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-4679d366adeso7483651cf.1
        for <yocto@lists.yoctoproject.org>; Wed, 15 Jan 2025 03:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736941947; x=1737546747; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=W/EgjsLhRLHw13AK0WHDEQT0fjVx3YA1Kyo8ipUbyPs=;
        b=N4Zb5qOxnSZ2QEg7pxRe8CWaW9KepMljalyLRp+2fTnm8ue7V7EUaM2AhSrtn1byJN
         uJ+SDdLpqdBL1UPVzInwaBrWLXGTa7ddkf6r8bkXkZ+ZGvg3J/I0kdQVyAP1YYL3VqnY
         ct62G0BvtPgE7vI6h/Viyp4C3a504QsIe3ev/QA5gDD/IWJ57Ad0wJsnk7QebEW7lcIY
         1UBOZs92rgpNjCUegbR0vFcjJZOg+7lXTycktm/yHF0jB+daWj0VMbEU3faVETKIwv4F
         BRst6AJzi0llHleBQwFSnfJaj/QtKvXckwME19gRxgTuWNsVXcaEoVOK0CJDWugrezTm
         0rcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736941947; x=1737546747;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W/EgjsLhRLHw13AK0WHDEQT0fjVx3YA1Kyo8ipUbyPs=;
        b=cxQCRnrZ+ggQ3PQjdpISIMFXaYd8zRgTluWWOMpxFTk573GF4+5nTNACTmjIffASdB
         8l4l4rbJn6BeiacAsdRiXphC7nm5KW4KeHqUUO4LRdK4G1DsbltTaWnoSrG2KC8u18vg
         rOhbHfdDgZaj1tT5azc3zgInONq4wFliuJ/kOrZB7iyoVq0uy7so9P6qTI+N59slx5v4
         /yKUH6ZJM41i/F2IuZ3zGs+rfMKwHsnBBJdJh8xJj9H/AbgmjgRpN/zbP9L0URlI1qi4
         vflVOdluU2KSGKZiBnvUSCMKklRGq2vJEeUBoQ6A8k1FZmicIafew1uz33vKMBT1R/W/
         d2QQ==
X-Gm-Message-State: AOJu0YyPl5AB1YEK/ThtSPU3qxMUHHHBvM1sW6+mAXzvXVLCl/x0zwBW
	7xnYEP2y0mYl8166y62Jie/VioAoJPTy9sh00mpT2vm/RD4h5+5uxkcNYRedW3FNyv6SHaljjdY
	yTGq6afR/HsHcJEbakEjyBNUlhNi9bE3q
X-Gm-Gg: ASbGncth2iA76Ba4hlkwK4x8FSQlwDrPLg8gff8EsRNjwfH5NDMuduiRoIro4XPjOYH
	5kGCA1/qfghPNUco7Nq2jNBbnCzUpQsisyyjE
X-Google-Smtp-Source: AGHT+IGwDpw7lPy7GiIRDBmow6R7HbR6KOIasxSGvANv55bYKGtGW2aihdSTBemKSTOvOqIxpOWpIDaGFEe9tNAfppM=
X-Received: by 2002:ac8:5f95:0:b0:46c:82dd:9a69 with SMTP id
 d75a77b69052e-46df578de9amr42387101cf.19.1736941946801; Wed, 15 Jan 2025
 03:52:26 -0800 (PST)
MIME-Version: 1.0
References: <7a0a7d8cc376caf07389f56bbd60330aaf2e56bb.camel@gmail.com> <1047.1736933190903996938@lists.yoctoproject.org>
In-Reply-To: <1047.1736933190903996938@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 15 Jan 2025 12:52:16 +0100
X-Gm-Features: AbW1kvbXaSslKB2EzFs3RFmuAo5kHyvcAJK75CFocnIaseqYGNqU3Cdm2c880hg
Message-ID: <CANNYZj_6ukf2-iq+9JJEof_L+T5fT0R7wb-O_FLsF65H2mpvBQ@mail.gmail.com>
Subject: Re: [yocto] [HELP]
To: yocto@lists.yoctoproject.org, ganesh.manoj.mahajan@signify.com
Cc: Adrian Freihofer <adrian.freihofer@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Jan 2025 11:52:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64559

On Wed, 15 Jan 2025 at 10:26, Ganesh Mahajan via
lists.yoctoproject.org
<ganesh.manoj.mahajan=signify.com@lists.yoctoproject.org> wrote:

> still getting same error

First, please use a better and more specific message subject than "HELP".

Second, the error comes from this spot in scripts/oe-setup-builddir:

    templatesdir=$(python3 -c "import sys;
print(sys.argv[1].strip('/').split('/')[-2])" "$TEMPLATECONF")
    if [ "$templatesdir" != templates ] || [ ! -f
"$TEMPLATECONF/../../layer.conf" ]; then
        die "TEMPLATECONF value (which is $TEMPLATECONF) must point to
meta-some-layer/conf/templates/template-name"
    fi

So you need to find out why the condition for the error holds true.
You can add echo statements to print out the values of $templatesdir
and $TEMPLATECONF just above the if block for example.

Alex

