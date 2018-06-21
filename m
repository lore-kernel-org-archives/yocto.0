Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 617DAE00C80; Thu, 21 Jun 2018 11:15:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D00E3E00942
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 11:15:23 -0700 (PDT)
Received: by mail-qt0-f180.google.com with SMTP id y31-v6so3694132qty.9
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 11:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=5RvFYftIFiBmfvhGFV2BJpZZFUbD3i3rbJfjEOthDX0=;
	b=A/Z4TDEmEqOkEq8Vqmfbh3Uvdeznx4q7BtvdOTMHtZpThXXWLeVy/P9mZ2hleQE2D6
	DzA3tncyK9VJoN/cMsT2YOTshanlm8waMAKfTvKMDYd6NyrL8dwQNkURBJtRP3NhdMuF
	nisdW4j8HFUw4uf2Ot23tH/SSwrwco76iZaYS2Teo3TYQuqpUpfn9BDLi1jWewkE3grg
	jtrbxDXn1aQj8GaVfcses3OgvXAbhNoP5nE2bT1+vOzDuqZJRqQbL7+gxzEOz/SwmxE4
	fsq2py8L2VelEnZilO83L5OBwiDSOgvW1i53+R0JGp34NoTSOyx98PErJEso5ReodCvr
	4omQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=5RvFYftIFiBmfvhGFV2BJpZZFUbD3i3rbJfjEOthDX0=;
	b=KYn29l7/B29XMourVvkqk7kLyL7kt/vzgxMBNCXz2WfYPZ//vWc52ABEaaawOuajIZ
	9DWXTDfuovdjhfAtfzY/K3wkZNSoovaYS9zdpNTAC/JtpE0miEJQOtOm1BIL64KXcP6g
	xykdg2EDFKabCouinlKGcPI2yM+5ZO7iXPBcyurW+Dr00j+I3JNArNPgh+8IPs2UR7cP
	rsnb50nyQ6PMl42Tv2rC5RXpkzJfDR+s8Msgz3LZyxcVFu3sRicweCgirRKiCjqC1DfU
	CUWbeKM9BqO0XRlnzJd9wuZmGPT+t8o7IzNmwoEBlTwpDM2qauxxJ0O8CC/B1zGTMo4V
	n1RQ==
X-Gm-Message-State: APt69E21T8CXXmceem9BUIVe3+EPfCWm5Z5l0o8eY0XZp8GGD/ux9cAh
	icVwKF1Wlhtb4CNx13Wo/zTobOPCfDnF7GjboC0vD/b8
X-Google-Smtp-Source: AAOMgpdTsH81l0+96EnM/jMXL871xwY6GGrwp+rzjSW2W7rheOUojy5q+zIvmeJQhclx/3DURBKa4WD9Aqzk+51cSKU=
X-Received: by 2002:ac8:fbd:: with SMTP id
	b58-v6mr1425517qtk.355.1529604923115; 
	Thu, 21 Jun 2018 11:15:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:874:0:0:0:0:0 with HTTP;
	Thu, 21 Jun 2018 11:15:22 -0700 (PDT)
In-Reply-To: <CANmTPBY2kMm7w7ONKozpS6qGYOS9VDDKfLR=dSj7jkFhHgu5mA@mail.gmail.com>
References: <CANmTPBY2kMm7w7ONKozpS6qGYOS9VDDKfLR=dSj7jkFhHgu5mA@mail.gmail.com>
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Thu, 21 Jun 2018 14:15:22 -0400
Message-ID: <CANmTPBZjJv1Ddrh6hnTJRpR9hKcCzpT2SJAfdvZAF5OY+-PuRg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: porting gRPC into Yocto
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
X-List-Received-Date: Thu, 21 Jun 2018 18:15:24 -0000
Content-Type: multipart/alternative; boundary="00000000000016d50d056f2ae64d"

--00000000000016d50d056f2ae64d
Content-Type: text/plain; charset="UTF-8"

Hi,

I just started using Yocto.

Is there a detailed procedure on how I can port gRPC (for C or C++) into a
Yocto project?

Thanks,

S

--00000000000016d50d056f2ae64d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br>I just started using Yocto.<br><br>Is ther=
e a detailed procedure on how I can port gRPC (for C or C++) into a Yocto p=
roject?<br><br>Thanks,<br></div><div><br></div><div>S<br></div><div><br></d=
iv><div><br></div><div><br></div><div><br></div><div class=3D"gmail_extra">=
<br><br></div></div>

--00000000000016d50d056f2ae64d--
