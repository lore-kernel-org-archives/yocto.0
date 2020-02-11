Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.13349.1581440742662493129
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 09:05:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o6ueyl30;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: kent.dorfman766@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01773E01722; Tue, 11 Feb 2020 09:05:42 -0800 (PST)
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
	*      (kent.dorfman766[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.53 listed in list.dnswl.org]
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F5ACE007EE
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 09:05:41 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id y23so4233243ual.2
        for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 09:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=2OF74T9Ti2bt1mK+rLdujfByftdCnQ4KdVg7g6Xc+NM=;
        b=o6ueyl303vWA0RpHTaGAHrNgKT7LPKjkrzfLPMp/yiEXIY4g1+8pSEqEZA1wjoTgUB
         9CkenEt4Q2Ey4ttxdDJUOLl8Il9wJqmsUFnh03o9aJZ+qB864G5W/TzOtVaRHAXZhD1U
         hvXL80j9vPC2xe9+Hm7Sd+3REInPziKQqNSQ1Rfj2RkXeol3PdaawTSH/uWBRutDOVm9
         Z4+3b2Tlv+J9PsJgVA1pcqkRfhKqe1IEhyRlTn1gfvlqgpVJNCnsmsI4CYPgVuakyeQ+
         FAzfzR5pbcVXHeajm86jJaWw5jXp1CpeiTDuorkEmyB1CvnCk+vV1q0sPR2hJd4/eTve
         FQiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=2OF74T9Ti2bt1mK+rLdujfByftdCnQ4KdVg7g6Xc+NM=;
        b=Vf5wMgiOFKyolEYJDZhkq18N9iEeT60CjEDIN2EH39gN7Daiwss/hmqtQP0k2SuExy
         7yvEL4AUh8HrY6KsNHHdUKmNTscGVVrRzqIhFGD+n081oeItDhoHfV32R4NqLagp3wAT
         cqZS5JBPmbtO4Kw96OLRHByFE0Xg56jx10S9mzBAv3EydO4r3PLeOWi4ASbCsYex+O61
         aRcs+BbbqeqR7IZwqLRrosRRkMRab3g/lWQ9W6Bw+otKjmPyFQI/N/DY1edh2SIIOAAV
         E0B8wy5hZT3VKYtzBD7B9kJu5+NfkhrGwdfwHKRfg/wvq69Vgr3h17OolrqOdndFbsj6
         pLUQ==
X-Gm-Message-State: APjAAAWZ/XkVQ8lQ/NS0smfPUX91xfQG8NiL+YMW+991hLoo6iwgwaTw
	SUaYi5QubZG3UEObUE37CZ2+/NGWUdB068sOrz75rw==
X-Google-Smtp-Source: APXvYqzeDjs3XZm0G/eoBUjqbClSM4+4PJmtCb8L1hocaJXxIFHQ6lwntlIe3ou6c4cy+UHYnXcIvOYlE9jGBk/26es=
X-Received: by 2002:a9f:300a:: with SMTP id h10mr2163736uab.91.1581440740373;
 Tue, 11 Feb 2020 09:05:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:4186:0:0:0:0:0 with HTTP; Tue, 11 Feb 2020 09:05:39
 -0800 (PST)
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Tue, 11 Feb 2020 12:05:39 -0500
Message-ID: <CAK4PFCX2OfGLaDwMVxraim6mp35WjUbY_wVb45EZxV8YFF3QXA@mail.gmail.com>
Subject: how to remove a package from image
To: yocto@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

My vendor finally realized that I needed a full yocto release and not
the eSDK.  Anyway, I can build their image, but when I modify the
kernel to remove CAN drivers I get the errors that

packagegroup-can-support
packagegroup-ow-support

are required.

What is the "yocto way"  to remove those packages and dependencies
from the build?
