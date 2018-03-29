Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 722D7E009CB; Thu, 29 Mar 2018 12:26:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE591E008E4
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 12:26:34 -0700 (PDT)
Received: by mail-lf0-f47.google.com with SMTP id j68-v6so9830396lfg.13
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 12:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mR0dzCkJmDEfRyrVgkxP6y8h7HtIR4TgiI+DrQc9H6Y=;
	b=VMDrU+Ejqs+8p0QwlRTW7rQ+cj07NGkVMhSBIqQZpaRc3OWwoOZ+sB1HLpjDH0t9A4
	+xo0Rx23TJsXudgVuNw8s927je0OAm0OjtN9yOheJoOPRflw7uiCGZ28t/pnRL5Ee+zk
	sbgqyZamr9BfJu2D5Igt0ubr3drj6uBWMfwLHbHuX2wLAnyOt1OdMyLz8HnR8eWzs3y/
	bN/HS2mPJWIIzwt0t9gYqIQA+3hDqjSYVO3QCX3x2hCnzpj2bn3ibqM49jZ1l0+m+yhy
	68+DmlAAxdeYdrKXBZBf6gLJzn4gCluB37iHKiPpjU1pE4f7iRrkXVPZfQTCkqHKRaHq
	CHZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mR0dzCkJmDEfRyrVgkxP6y8h7HtIR4TgiI+DrQc9H6Y=;
	b=ZybHblj3FY+YME7orHFsHyfUZL1Z69fUN6GSJDTf4tDW5U8sGW0SxFiO0S0G5LbO0a
	N/nFXwcDZXeL7quSQrM3ZZlk0n2a2evJaaEtiAeih+bl+cigxrV5HEAuUE6jIO44YV8i
	NZ9Hos01rRBe3r8BOrEZhr934xGETjb2nsXDDNOwvQWWP5NgixSQnFe9aK1c8/HlXpfW
	vtbbhlVmTLoi0YZe8R1lormN8+L2dKLAAJDvNmR/FsJfCDk6beZ0MJNy3C3MMOU+eYxU
	hI6Dz0UyG4iPRGPMHuGnhv30VY/QpVHIfH6WL+QP5fI9aqROWA6PZCeeP2q453BsPnV1
	S8Tw==
X-Gm-Message-State: AElRT7FFl6O3nsdlSJ3UwoV05JrNAorT31uG2cDY+97/4FWQNhIdaiiO
	U6jRARr2hyY0qc+q2OsaJjwUkvi3l7maNk+cq4U=
X-Google-Smtp-Source: AIpwx48Y39+9eNDKilrgCLWXaeP2Xy9RvGeywDa/raXrDFpuKYZv/hoygYtP2vgnfw/woFoIiNFYJnHSsgPMHLfFobs=
X-Received: by 10.46.117.2 with SMTP id q2mr6492918ljc.12.1522351593732; Thu,
	29 Mar 2018 12:26:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:d80f:0:0:0:0:0 with HTTP; Thu, 29 Mar 2018 12:26:33
	-0700 (PDT)
In-Reply-To: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
References: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 29 Mar 2018 15:26:33 -0400
Message-ID: <CAHUNapQhvr8UWBuF-Z5y0ojhsfF=fUU3nfgmRdxNGi4iKdkbqA@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Has anybody run VC4 + X + recent meta/masters lately
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
X-List-Received-Date: Thu, 29 Mar 2018 19:26:35 -0000
Content-Type: multipart/alternative; boundary="089e082b46c8f7bf9c056892195c"

--089e082b46c8f7bf9c056892195c
Content-Type: text/plain; charset="UTF-8"

64bit RPi or 32?

--089e082b46c8f7bf9c056892195c
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">64bit RPi or 32?<br></div>

--089e082b46c8f7bf9c056892195c--
