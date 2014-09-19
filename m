Return-Path: <ashish.dalela@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4D34E00790; Fri, 19 Sep 2014 00:15:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashish.dalela[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f43.google.com (mail-yh0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D96AE006EF
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 00:15:56 -0700 (PDT)
Received: by mail-yh0-f43.google.com with SMTP id v1so364616yhn.16
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 00:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=LWwIYjiyDKBXamInBbiXeuO67lxtEx21Y6j5+4esZdk=;
	b=e0Ri3Ge1yOIstprVxlfNH01HeujZTrO5Y96Gw4fdBNK7dVdqZSdJk8RmHp0bsGVEv2
	ZKeNeWcYQRIYGyqlVaY5o6UwfE1Ycmw4Y0hN248wwlF3gMaLQ3J3Mi+XZEbYed5CZrH5
	SoHOVnttUnAumBZkN6y0IxPertsAebMxe5Cm/VFnMl0tiVgXXiWz5J0GCFZVVuY1caO/
	1ug27GEnTvjMCdWq5+zRo60XFPZqiOp9w2DAB8RBZ0rdS1QxG9bC7jWJENQ3T36v1bO/
	BBSNb5kWazZwxF0zHeigg4bPOqXh1OelOXy/5T/Zk1JSqqr1jgd+bA9cUxH8/enQEW4t
	ZMnQ==
MIME-Version: 1.0
X-Received: by 10.236.162.7 with SMTP id x7mr11144868yhk.6.1411110956055; Fri,
	19 Sep 2014 00:15:56 -0700 (PDT)
Received: by 10.170.176.10 with HTTP; Fri, 19 Sep 2014 00:15:56 -0700 (PDT)
Date: Fri, 19 Sep 2014 12:45:56 +0530
Message-ID: <CABhkJRdYQfPKbmPZQA+Tk33QaG0LvPBmubWed5Zggj_s88yCkw@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Linux Headers question
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
X-List-Received-Date: Fri, 19 Sep 2014 07:15:59 -0000
Content-Type: multipart/alternative; boundary=20cf3040ec9446465f050365df40

--20cf3040ec9446465f050365df40
Content-Type: text/plain; charset=UTF-8

Hi Folks,

Which Yocto package has stdio.h file (and other header files)?

I tried linux-libc-headers-dev and linux-libc-headers-dbg and I did not get
the stdio.h file.

I see a packages-split directory for eglibc-dev but I don't see an RPM
being built for that (I have RPMs being built for every other build). Also
I cannot do bitbake eglibc-dev.

Please help.

Thanks
--Ashish

--20cf3040ec9446465f050365df40
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Folks,<div><br></div><div>Which Yocto package has stdio=
.h file (and other header files)?</div><div><br></div><div>I tried linux-li=
bc-headers-dev and linux-libc-headers-dbg and I did not get the stdio.h fil=
e.</div><div><br></div><div>I see a packages-split directory for=C2=A0eglib=
c-dev but I don&#39;t see an RPM being built for that (I have RPMs being bu=
ilt for every other build). Also I cannot do bitbake=C2=A0eglibc-dev.</div>=
<div><br></div><div>Please help.</div><div><br></div><div>Thanks</div><div>=
--Ashish</div></div>

--20cf3040ec9446465f050365df40--
