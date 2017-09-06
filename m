Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 122FBE00C45; Wed,  6 Sep 2017 02:24:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f170.google.com (mail-wr0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F049E00BB7
	for <yocto@yoctoproject.org>; Wed,  6 Sep 2017 02:24:39 -0700 (PDT)
Received: by mail-wr0-f170.google.com with SMTP id a47so10970667wra.1
	for <yocto@yoctoproject.org>; Wed, 06 Sep 2017 02:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=qdniDm23rV8lLFLMSAW228hPabDT79Ff/yOosBGJgdQ=;
	b=y4yZ51ITvZGrwMSzYB7o5CabpZgxqzP2GRGEOYVy/NvjyLBlODe4T9PxnRD7y4cXZV
	XO7RdVCx+CWQyYgWi6dz7wzc8MdBvXUs+fRGNe6i5RUCOZ2aS5Pfl4eI1wP/nQrmnE9V
	SVySSyxBFW//VlaVeUVgDZgxMQAwuFnDpleAv5Ew29JrBSJmasa4dmSSrZ2byJaoZaml
	zbymZdjeUH5r4mJOYChDZvSFAYFp/u8soVAf/4qF8OzRsMiE3aNLTOTcfaOX3sI3Zayw
	68s6483coQ6Ef8mj8Q/SXcRDeSA1yECTDXBOvqTe9e3jxGJbvRpMUioGwdXoUUYMkqnT
	uqXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=qdniDm23rV8lLFLMSAW228hPabDT79Ff/yOosBGJgdQ=;
	b=DRfzgFdmDIwi0C49sqOCbLcB8TfDzTAbVCELb9RPzFLWhmuA/VZNHh+HUHDeHEK/NN
	Xwb8EGY3SW4iO4SVtpvqb1gm/WscgNFm25ErJQKVZ2ugIKLkqIqT1sckuOB0Jd4nrTjY
	nGCw4ItFvFfATDMAYilfVXWl05WychftxzpZY9ZIicDwyMIqz8RFSL9dwJH2uZ9KNywH
	81KkY1RPi13gfjhbWuzQjsKITeNDR3ohsufeowAGf2wkkvuHttYw8sVBeOFpySqWgV1e
	XteOhEKTH2dpfvuZauSbP4HGeo1REOUD8wB2M7VcOMasrtEHietltlkzc7X3iXjmxIA+
	JaBQ==
X-Gm-Message-State: AHPjjUhcAWZ8ZG1JRel/33pNdHCV31+e3B1xDnd7vgKhyJvtoojeDfyf
	g1Bqoicq4s4KiY2YuEKFVsQzY96wnbj4
X-Google-Smtp-Source: ADKCNb463/J7eyQQU1TqP710GfBI8M81zZ8B2vb1V8hBx7ZI8pkNNvu5iPBUokg8rsRY8WNl/NEn8oM8/mLhM2wB7Vo=
X-Received: by 10.223.184.250 with SMTP id c55mr1325593wrg.134.1504689878108; 
	Wed, 06 Sep 2017 02:24:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.166.53 with HTTP; Wed, 6 Sep 2017 02:24:37 -0700 (PDT)
In-Reply-To: <F98BA99E4B0943A0A53066A561848FB5@PAULD>
References: <F98BA99E4B0943A0A53066A561848FB5@PAULD>
From: Paul Barker <pbarker@toganlabs.com>
Date: Wed, 6 Sep 2017 10:24:37 +0100
Message-ID: <CAPyrkgxXCJ37YBL9n80hGF4c04+DCAcBCr+VuVOB6wRSggDU2A@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build RPi without wireless?
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
X-List-Received-Date: Wed, 06 Sep 2017 09:24:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 5, 2017 at 9:19 PM, Paul D. DeRocco <pderocco@ix.netcom.com> wr=
ote:
> How do I build a Raspberry Pi image without WiFi or Bluetooth, or any of
> the related utilities? There seem to be lots of packages involved in this=
,
> and I can't figure out what's pulling them in in the first place.
>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>

There is one initial thing you could try adding in your local.conf:

    MACHINE_FEATURES_remove =3D "bluetooth wifi"

If that doesn't work, I think we need a bit more detail to give
further advice here.

- Which MACHINE are you building for?
- Which image recipe are you building?
- Which packages don't you want included?

Cheers,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

