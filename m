Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 048D8E00C7E; Thu, 18 Feb 2016 20:47:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EBD5E00C71
	for <yocto@yoctoproject.org>; Thu, 18 Feb 2016 20:47:31 -0800 (PST)
Received: by mail-vk0-f49.google.com with SMTP id c3so64468964vkb.3
	for <yocto@yoctoproject.org>; Thu, 18 Feb 2016 20:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=2fHovuwKY0YVzZwcxC2Wb4z+NH90T+01aNKtJAA86ms=;
	b=qVkdHoFUJgI77tqf+LevB5rmRjMIun4FF2L6iZwwy4+02v9/+KxL5mSYdugLrn+9hh
	Zevxwb9lCfkJIAYu0e3Yh0ggNWnfkFqwthPPbYHvuvLVLHcz2TuDNmStJ3PiTkc3XGxt
	vkiqs/vmI42/La+/HkFDaSL69eiCC+4dkoFJ+ncT3yMXSy+o1Y2YmDtPWG7/JnTJJSvM
	i4w3L2aU4UwG1cgcLG+WvRxtWS1tybRMvGsySDFt1JzQSE9UwZTjRh6RxptGovTShZrA
	zwFeKyngUTZAT+mMGVal1QLx73VSu3Og+jRmt8F+XsJ+yS89YijMcklkedMmCCPKwNjl
	Na6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=2fHovuwKY0YVzZwcxC2Wb4z+NH90T+01aNKtJAA86ms=;
	b=UW05vpKSfdXITcXc+itFRQ16VE1iGi0j/hwyNFYwBxUE2JU4qXIwSH2Q8tpURABeCi
	ajA7rK4pkJI8HoabMD9kBCcf+d7YgienAESJgoXRAXGhMbwuxu+dArxKD/67Ec+abIc4
	0Dc6HWP3WmRSHwHmryPQpBHiamWKzzeZZp4RQAMpix9sYJMjwF/nHN21MQatF+sZ2E4g
	Sre1IE8Gq8KPA8aN/Kr+b7q9diXtTbLBoNULRZ+JjRcMc0zX2Pi+b43KqFqn7iTSuzni
	648BC6HO/3vlC4hAJEwXao3S3SIrQEjwY8GF+upPlpZj8g7kKrcs6xMHPLT1UTdl+G58
	tXHw==
X-Gm-Message-State: AG10YOScgVEQw/Ib3CnoqSiD0dckye1YdJSm3sp9a1azCRE6prnxGyabbIs98bajsmihFBmTDklSmFNrGORBOA==
MIME-Version: 1.0
X-Received: by 10.31.54.75 with SMTP id d72mr9037162vka.30.1455857250983; Thu,
	18 Feb 2016 20:47:30 -0800 (PST)
Received: by 10.31.229.71 with HTTP; Thu, 18 Feb 2016 20:47:30 -0800 (PST)
Date: Fri, 19 Feb 2016 10:17:30 +0530
Message-ID: <CALLyC8SKmc0+7tMU8X6JwCriP9orCGvbVToFwgj6jytvpdd1GA@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: which package/recipe produces "ss" utility
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
X-List-Received-Date: Fri, 19 Feb 2016 04:47:34 -0000
Content-Type: multipart/alternative; boundary=001a11430a1e49e4a6052c182e53

--001a11430a1e49e4a6052c182e53
Content-Type: text/plain; charset=UTF-8

Hi,
        Does any one know which package produces "ss" utility in yocto. i
tried iproute2 reciepe which  is not present.

Thanks and regards
     Vivek

--001a11430a1e49e4a6052c182e53
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Does any one know whic=
h package produces &quot;ss&quot; utility in yocto. i tried iproute2 reciep=
e which =C2=A0is not present.</div><div><br></div><div>Thanks and regards</=
div><div>=C2=A0 =C2=A0 =C2=A0Vivek</div></div>

--001a11430a1e49e4a6052c182e53--
