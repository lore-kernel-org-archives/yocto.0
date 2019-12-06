Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3303.1575637682466101615
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Dec 2019 05:08:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VXqiGy1c;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mans.zigher@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 025B7E00E4C; Fri,  6 Dec 2019 05:08:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (mans.zigher[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.42 listed in list.dnswl.org]
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14A69E00E0F
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2019 05:07:59 -0800 (PST)
Received: by mail-lf1-f42.google.com with SMTP id n12so5229569lfe.3
        for <yocto@yoctoproject.org>; Fri, 06 Dec 2019 05:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=qRmVIyDtkGgGRstthxL8RIKww0B5N6tigytKKRYyFTY=;
        b=VXqiGy1cOSqsTLnPGFalHitA+RBu0hmpM2D2oGyK8W3rLwsmHJ0FpWhQfr186End5C
         C5GxtspaXAXtfvrVyPgFegXdGw+z/kb3e0Bl/MnA4YG7xkpWFXRtYKVqWAXfUmfIxsA9
         6djDvhRp/qoReh17b4afptsGmyLXWvWimY9z8Zl/vbCUKMnJrwcmbGTt+nLGqbFEw2xK
         g6hUgEf0OlIxiRhP/OpMq8Yt3sMzpgtjU7JGeGlS5ptHBc85zljH8nZHq0JIwkf1gjOg
         VzZxvFohCjNw5NNDQ2U5QZAin26CA9x6jDISoge2kInLTtqWaPbgkP0G87FGFIpD3GYZ
         UuSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=qRmVIyDtkGgGRstthxL8RIKww0B5N6tigytKKRYyFTY=;
        b=mNgYtPPg912HW+YQcxAJow3uiszmcK8hCA2I7+85Fzx2+p2k3j2QvX6RgwwBIYpvny
         ULkc7k1QgBDdrnzbra2N8r5uWfKg421RfOajSHfMhSRRk7B1UsirkDaAJOXnh56GEvfY
         wzClm+0gVW522IHWlFm54cMY+odt4S+/lfWWpxWokMKFGsifgPm8CIXvZSbayUIEdF9e
         jaWbX1gbwf0vR/TBXptw83Nxh8LZUMbcFrug95QB1a/YrUSOuebuFe89bTmlmZGFGz5D
         kjj53CcldY84QcaB0EWudKNpGAC2Acpu5Zrry7C6AKTd6Vhw3doOh5JyR4xiXXgGEK28
         zuTA==
X-Gm-Message-State: APjAAAVBNg/ck5HsEEmKsi7OfD9Yrdigk0jks/QmyWEXySrclqkLrs8c
	0mhxyHGfbXgSoJa3SCbX17mn2N98HswrUR/cEOM3aX21TbM=
X-Google-Smtp-Source: APXvYqzNiuI7VVWDSVkHub+QftVKxqGBY5Bu3/JPtCnPjtVtxbuVWVohmo5i02HGaTUc1V6tpb1/muqabwomOId70rU=
X-Received: by 2002:a19:888:: with SMTP id 130mr8114370lfi.167.1575637678493;
 Fri, 06 Dec 2019 05:07:58 -0800 (PST)
MIME-Version: 1.0
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Fri, 6 Dec 2019 14:07:47 +0100
Message-ID: <CAEhQi8n1NL+e+dhPGK_94stmXhE-H6+F3NHm=u10ACgSJ2wMsQ@mail.gmail.com>
Subject: What should I expect when using SSTATE_MIRROR?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to use the sstate cache by using a SSTATE_MIRROR. I have
built everything from scratch once and pushed my sstate-cache
directory to the server. I then wen't over to another machine and did
a clean build but this time I made sure it used SSTATE_MIRROR but the
result was not what I expected

Sstate summary: Wanted 1255 Found 233 Missed 2044 Current 0 (18%
match, 0% complete)

I have tried it multiple times on different machines with the same
result the only time it works as expect is when running the build on
the first machine from which the sstate cache was originally coming
from. Am I missing something? Or is this expected?

Thanks

/M=C3=A5ns Zigher
