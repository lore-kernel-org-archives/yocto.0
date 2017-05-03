Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1585E00ACD; Tue,  2 May 2017 18:41:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E55CE00A30
	for <yocto@yoctoproject.org>; Tue,  2 May 2017 18:41:11 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id u65so130718868wmu.1
	for <yocto@yoctoproject.org>; Tue, 02 May 2017 18:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=E7nRLbhjEM47pDiIWNORl4fuzF+SnmK10YcEFjgBF84=;
	b=Zo9LhpYRB0oryYHW6hsAxsRjmqi9Oa4aPRiplmMgsJav5gFTpXRJy2Isyw1/iLP243
	XL6D8Qv4k9wg5wy2B0Quk2UwqooGkb4aUxjVhb26oqCUr/IJkU4xmZ7lWh8ByenQqcMa
	5GkcQ1uvga3sOclkvZDOkPiZUXcBvHdHyVscPlAI1W9fb1ToyBzhORIdEEUlDLj9BNG3
	+WLyDnC5/ToIkTK1Fk9wgaBwA08od+h2KDgNzSC3jHVk12J+tdUrcFY0DCWfXut2eWIE
	D1w9FQI1i3B82GsfPhMcxXVZXgiUTLnevtayUhi3nb5/vchvGTdYneGQqrTFuC/XmB8T
	kiUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=E7nRLbhjEM47pDiIWNORl4fuzF+SnmK10YcEFjgBF84=;
	b=WniCfdCgsXhcL3G8hc8X52Dubt79bHg5RoSoDxZnyaTVpTWE8lNOJU1NUK2+lZ1YvG
	maemnatq++EvBcVUhF8YBlPSCP2cviGP2QQYJM/fnw0inn4DsoHHrU8OUdn9EC0MTI8j
	gKhDC3L9blfLz8StmaDzr+dsSE8NbXlUUpQtTCjRwg6nfvCumzz3flzSchUg3yTQ0CTr
	6+/6HyvyU430DjurinfwUELYY4+WKmyK6hvJuV/s5uj5JjYtPGWqln4Nq0oY+PEbe0hp
	vhxpNB5tDz4zyUGcbryL7F4VHipp6Qvupt31MMNvU2HyNqmtzHFUACZkvCtDbVq/5nS/
	AiYw==
X-Gm-Message-State: AN3rC/5BZeaVfgX4qI18OE3KAFsGCOOMGNiw0HuFAtwjcUDI268EbFqX
	32xc3gM6IcRTBCnjS1m5ULJRCsp/TQ==
X-Received: by 10.80.134.208 with SMTP id 16mr25279703edu.67.1493775670852;
	Tue, 02 May 2017 18:41:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Tue, 2 May 2017 18:40:40 -0700 (PDT)
In-Reply-To: <CAPyrkgzWJ0fQ_zTJwtKcjJLKmwkL4FfyFxSUGXnb6=_Jx8S_rQ@mail.gmail.com>
References: <CAPyrkgzWJ0fQ_zTJwtKcjJLKmwkL4FfyFxSUGXnb6=_Jx8S_rQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 2 May 2017 18:40:40 -0700
Message-ID: <CAMKF1sr-=PQm7-un_tAf1ndRBq6+0Kg+wnfDZfoXRhmw5Kg8cA@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Stable branch plans
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 May 2017 01:41:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, May 2, 2017 at 4:19 AM, Paul Barker <pbarker@toganlabs.com> wrote:
> Hi all,
>
> I've now got a bit of a vested interest in the next meta-raspberrypi
> stable branch as I'm planning to use it as a demo platform for our new
> Oryx distro.
>
> In the past, the stable branch hasn't been created for a while after
> the corresponding oe-core release. The changes made to the stable
> branch after this haven't always been as conservative as I'd have
> liked as well but that's just one opinion.
>
> I'd like to propose the following for the pyro branch:
>
> * We should create the pyro branch within a week or two of the oe-core
> pyro release.
>
> * After the pyro branch is created, changes on the pyro branch should
> roughly follow the oe-core stable branch policy
> (https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance#Policies).
> I don't think we need to be incredibly strict but I do think we should
> avoid making changes which may affect the behaviour of existing
> recipes/bbappends. I would like us to keep doing stable-branch kernel
> updates and adding new MACHINE definitions where possible without
> affecting existing MACHINEs.
>
> This would make the pyro branch perfect for my use case. But obviously
> I'm not the meta-raspberrypi maintainer and I'm not the only person
> with a use case. So I'd like to know what others think of this, is
> this a good plan for meta-raspberrypi stable branches or should we be
> more relaxed?
>
> (I raised similar questions in response to another thread but I think
> that email may have been missed by a few people so I'm starting a new
> thread here in expectation that the oe-core pyro release is imminent)
>

What do we get by branching early  ?

> Thanks,
>
> --
> Paul Barker
> Co-Founder & Principal Engineer
> Tog=C3=A1n Labs Ltd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

