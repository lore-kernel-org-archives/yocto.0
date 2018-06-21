Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6AA4E00C80; Thu, 21 Jun 2018 10:48:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8829AE0044F
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 10:48:02 -0700 (PDT)
Received: by mail-qt0-f171.google.com with SMTP id y31-v6so3612563qty.9
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2018 10:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=ykplQ+7AnoUquvbyG6mXb28qEmqNw60PMPZVayNS0/M=;
	b=WIUADPwthU1v/On+3Umois+pc46A0Yd2wZi6/BLszqsOV8aUybn0wCAiKuBeQKRld2
	hahqN8YlEpgn2i87JBinFsVzSMlcG4tQZsi1+YVPQ2kPpwRQ5f7zm4qff8vjdDglOOkV
	W9pdcsM/EicxEvahSV4Ak3+Hl2Q4RNcMevjnqRTeET8wTePoUPLBeiArL/UY6eWekGnA
	vjtgwkNnFJAVqhroO+wFlvG+WS7BgEW8bjHAQP85WJdxPKpAoUgRTrTuRjH5yJ2lEETe
	Ta5rLMD/3aFbNBmynhHCKT+o2liOKyCQ2YnEdPULxi4Q+9h2xq52xHNUFm9fO/9xNxuM
	L7Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ykplQ+7AnoUquvbyG6mXb28qEmqNw60PMPZVayNS0/M=;
	b=Sc7AFQHsEUihIkfo1xrYWiiAaabWXkQ0GXY2VA5D0Y9+f4LbNRNvZF86H8YY/kUjXX
	ECAkmOChpTKm8skrIcZmELiqeUgkvSQmpwBU6zT/nA/rIVzdpeW7/RfCmcM39Mf1aUCj
	gAMXZC+mXDkLXJdkhbkqyy2nHAvwTYYiIG7Rh7MEgW1NY1T/ieGenhv7gGb8nKPjb6S7
	thJtFC9iZyopbBiMq0xeMyapM02kDVz7mxhjJyCrxQQoOVUE2rXoQnrIg4DNX7XqDdLS
	40Dq4L5RiWKDp8li85F6DFywG4q7yBdcXbZgtBNNNyzLj8GKm6y9bfcUrSImBpy1uH/8
	7Whg==
X-Gm-Message-State: APt69E3dr6C7R8XeDMCQdKGvZE8y6+XtVgNJVnrqY2t51tiGQr1SB+bR
	Sc6TT9a3yXEClmZ7g08AlWgYKflpppqnUxW1LIOB/OoK
X-Google-Smtp-Source: ADUXVKKM9ocbooHEiB8dObpFHcL097TMRGqqatCE3G8Rwku4fYCdPKeS1MM6GU4vb95oyTeqUjdJGhyASuJzT0MdwOY=
X-Received: by 2002:a0c:c981:: with SMTP id
	b1-v6mr23370071qvk.170.1529603281591; 
	Thu, 21 Jun 2018 10:48:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:874:0:0:0:0:0 with HTTP;
	Thu, 21 Jun 2018 10:48:01 -0700 (PDT)
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Thu, 21 Jun 2018 13:48:01 -0400
Message-ID: <CANmTPBY2kMm7w7ONKozpS6qGYOS9VDDKfLR=dSj7jkFhHgu5mA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 25 Jun 2018 02:06:25 -0700
Subject: porting gRPC into Yocto
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
X-List-Received-Date: Thu, 21 Jun 2018 17:48:04 -0000
Content-Type: multipart/alternative; boundary="0000000000003f3ff0056f2a843e"

--0000000000003f3ff0056f2a843e
Content-Type: text/plain; charset="UTF-8"

Hi,


I just started using Yocto.

Is there a detailed procedure on how I can port gRPC (for C or C++) into a
Yocto project?

Thanks,
S

--0000000000003f3ff0056f2a843e
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Hi,</div><div><br></div><br><div>
<div>I just started using Yocto. <br></div><div><br></div><div>Is there a detailed procedure on how I can port gRPC (for C or C++) into a Yocto project?</div><div><br></div><div>Thanks,</div><div>S</div>

<br></div></div>

--0000000000003f3ff0056f2a843e--
