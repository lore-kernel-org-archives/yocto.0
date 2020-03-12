Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9669.1584021362956148504
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Mar 2020 06:56:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@googlemail.com header.s=20161025 header.b=nSU1cxn2;
 spf=softfail (domain: googlemail.com, ip: 140.211.169.56, mailfrom: matthias.schoepfer@googlemail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72CC0E0179B; Thu, 12 Mar 2020 06:56:02 -0700 (PDT)
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
	*      (matthias.schoepfer[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91F4FE01757
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2020 06:56:01 -0700 (PDT)
Received: by mail-wm1-f42.google.com with SMTP id f7so6421652wml.4
        for <yocto@yoctoproject.org>; Thu, 12 Mar 2020 06:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=jT4QuUqqsxyFXuxz1HInwXAXtW6MZywdZWSWJWy7ogs=;
        b=nSU1cxn2TMUiWeGU7HrhkVV/m8yseh8sXPhpv+OGm9CmAW4J+TelOBzfenIuorBTNM
         nh9rUA12mNlUGNBvdn084DITKNpLZyYhyESpC8Y1FrQu/PBApnwsmBzy3rCjHLVHz9Yz
         X9LfEezumiH7wppP2Myh4CRQFbZTj60UOxujnhtBE5TJ4rxP3sxavGDYlA9RLLrjbXzL
         DE+l/Scki/NXMIUl2IRNZEfoGivOgj03BMzejxGRi3Bw3lo5WwRSTUiicc5fFeG40/Y9
         zUyewDBwGfRp7p1BhUauuJ1hLV+w2U3f7VvGf4+FNnZN9mgDoIf5pWmJk5uo9/OWjXnN
         PaPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=jT4QuUqqsxyFXuxz1HInwXAXtW6MZywdZWSWJWy7ogs=;
        b=qmK1tRT8ND7JA7SK02D6Ug4zqeC4NGKB2A1etguLBekMum9N5AtxGeMLjHoHQYEwFE
         O6yCUv1TWOFQCR22nHSHcr0COwPR8i6dXt5W+rBtC0AIlnxDxa96dEVzHiJq7qPR4q4m
         pWaeE8i1ONGY9OpZmWhn/3CC5CMcjo7X5B/hmCEFoByYxscQB1imIzUFXEZH3wE1LSXC
         gdf7aaIIuqhZ2qsmiaDt+DTFcTGfM6nJ3/j3S3RSHdS9lX0PN8E57MuXOvAjvrbERXma
         wcW/EzfFPYTaN2X0qU494LOS2tjHJxF1WgdRybr0eub+RIjN4JUFhC42VkChu7HK4dzR
         fEVA==
X-Gm-Message-State: ANhLgQ2kpynWgH1MNbtUsivQ6qIcQDOazIYQaJ9MO7PEme2sFfKfveTd
	22nG7bavEbh2vVN2YBLQGHk=
X-Google-Smtp-Source: ADFU+vuDafpF8E6VEalsUaUso21p3hB6DmTmpeyQlZ82r+uQqlivykvgCtiCK4aMal58tYyOE7yPnQ==
X-Received: by 2002:a1c:3d6:: with SMTP id 205mr5292015wmd.155.1584021360447;
        Thu, 12 Mar 2020 06:56:00 -0700 (PDT)
Received: from [172.16.100.14] ([213.168.66.146])
        by smtp.gmail.com with ESMTPSA id a5sm12204174wmb.37.2020.03.12.06.55.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 06:55:59 -0700 (PDT)
To: Yocto-mailing-list <yocto@yoctoproject.org>
From: "Matthias Schoepfer" <matthias.schoepfer@googlemail.com>
Subject: git fetcher: does not execute git fetch --tags or similar when HEAD has not changed
Message-ID: <cb73c40e-6eed-d626-513d-c1012a0f9f32@googlemail.com>
Date: Thu, 12 Mar 2020 14:55:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi!

We have noticed the following issue: We keep the versions of out=20
software by means of tags on the git repositories, i.e. during the=20
build, somethings like git describe --tags gets called. In yocto, our=20
recipe of SomeLibrary might look then similar to this:

SRC_URI =3D "git://our.private.gitserver.org/git/SomeLibrary.git;tags=3Dv=
${PV}"

When we build the image, and *then* apply a tag to HEAD, that was=20
already built before, it seems like the tags are not fetched (my guess=20
is git fetcher sees that origins HEAD and local HEAD have the same hash=20
and is fine with it).

The error is, that while the correct version is built, it will report=20
itself with a wrong version.

Is this a bug?

Regards,

   Matthias

--=20
Dr.-Ing. Matthias Sch=C3=B6pfer
matthias.schoepfer@googlemail.com
