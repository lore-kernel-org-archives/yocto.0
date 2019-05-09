Return-Path: <aaron@assonance.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A5CAE00D6F; Thu,  9 May 2019 15:56:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7091E00942
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 15:56:43 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id r10so3150639otd.4
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 15:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=assonance-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=u1vxX6KF6HN5Hn9I9iupSbBw1CuQwJrB+rzfpmUYMII=;
	b=0Ef5KEoEjFaDmL+HLdUIfU22uIIYhfKyg3j/1O54kf+x1UZdH1lejCT1p38XvPVg+x
	6qpCXEWmbnFh54HtcPSjCFiNxycFp9BcynwYmwHc7DdCUuO5sKotS/SMrxtQydrXfBy2
	KwSs5lX+CVpQRiEVWjbzS7RDNrob/3DkDlj+S/g2ErjG7vTB7EVORlohFGEJIVVH3PO+
	rB927klrY8DZ30y8uBFjoqmpKgiUahWDYisdZpVJwQk2X/wHc9kqo6LDf78n+K5A3RWs
	WtOCQUeOgxOD8MsTkPps+gXr/4Nq6I2NKzvQsYr4BA1CftukhqUHK0imLpwV/wuqaqn5
	2Ihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=u1vxX6KF6HN5Hn9I9iupSbBw1CuQwJrB+rzfpmUYMII=;
	b=aYt8GiUslFouNQYV0nKQtpHFHke+evK3RGpGvE6QI3EvPAjwm1+IP+UUy1snFao6FE
	MWBK4n/OgJa9sMZ2EbMDTHab77yaYX09VMzTnqSk/cjwoXCH5H3CRDPI78W+38w7cbEs
	fkuIewF7NhWdkEv+5NDQQVJLmz+xWwLpca7BYoiQ1jjRW91i+qkYp53hCAIQqDdixnPw
	Zp63Vfr7z7BSlqzVvti9kQ7byKoo5cADOeeFu/Gr/ImRHMs4cJ3hH3Q6f0fgr9n4snxX
	PNFeBNuWXe1F9emMR9Ra7GGdgRHD0Vhhhvhx1pBOpdUxxGbexWRN9tT+Opi3l5L9QueZ
	6tHg==
X-Gm-Message-State: APjAAAWmLmMpFCXL7uL1IN6qMWrhql8jne9O8uVRHGRc7CpqXYLC8cMB
	gH+ld497azhpZ7jxFVytzmVq1KhAsPsPySpqW8ealU3J
X-Google-Smtp-Source: APXvYqxYgf9kn112WVZ005Wr5WBOMLauXml2yfR2UcN94fn62k4DO8M6fHZZ7LoOoON2a6NbtFGeWeWuv0NFYY713lM=
X-Received: by 2002:a9d:eb7:: with SMTP id 52mr4331314otj.185.1557442602661;
	Thu, 09 May 2019 15:56:42 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Cohen <aaron@assonance.org>
Date: Thu, 9 May 2019 18:56:32 -0400
Message-ID: <CAFSZm+gyGM-pr9UeapDKDq=0gRxvN+T8L3-KmvT6+teajBdeFA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How do IMAGE_FEATURES+="tools-sdk" and TOOLCHAIN_TARGET_TASK interact?
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
X-List-Received-Date: Thu, 09 May 2019 22:56:45 -0000
Content-Type: multipart/alternative; boundary="000000000000170eb005887c5d51"

--000000000000170eb005887c5d51
Content-Type: text/plain; charset="UTF-8"

Looking through the recipes and classes, it seems that adding "tools-sdk"
to the IMAGE_FEATURES of an image just adds a relatively arbitrary list of
"sdk-ish" packages to the image from packagegroup-core-sdk

I had assumed that tools-sdk would duplicate the logic of "populate_sdk"
somehow, so that what you end up on the target is equivalent to what is in
a generated SDK.

In particular, if I add something to TOOLCHAIN_TARGET_TASK, it doesn't seem
to also be added to anything that tools-sdk cares about.

Am I missing something?

Thanks,
Aaron

--000000000000170eb005887c5d51
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Looking through the recipes and classes, it seems that add=
ing &quot;tools-sdk&quot; to the IMAGE_FEATURES of an image just adds a rel=
atively arbitrary list of &quot;sdk-ish&quot; packages to the image from pa=
ckagegroup-core-sdk<div><br></div><div>I had assumed that tools-sdk would d=
uplicate the logic of &quot;populate_sdk&quot; somehow, so that what you en=
d up on the target is equivalent to what is in a generated SDK.</div><div><=
br></div><div>In particular, if I add something to TOOLCHAIN_TARGET_TASK, i=
t doesn&#39;t seem to also be added to anything that tools-sdk cares about.=
</div><div><br></div><div>Am I missing something?</div><div><br></div><div>=
Thanks,</div><div>Aaron</div></div>

--000000000000170eb005887c5d51--
