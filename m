Return-Path: <gada.kashyap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12CD6E00BE9; Fri, 13 Jun 2014 01:06:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gada.kashyap[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 682E3E00BB3
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 01:06:37 -0700 (PDT)
Received: by mail-lb0-f171.google.com with SMTP id s7so1136968lbd.30
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 01:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ctMEJQqTCujRq9q5ZV2LmmXtB4+d5Dz7sAz8myj93RE=;
	b=UQCs+0RTLMJNTyRohsM35lPCEgyxictAF5fkubQemzmaa8E9smu1f2SG6ZK71tpOV2
	BBNDxYXvNbnnsTApurcYdvqVz7a3EmlQ5zCuPEhF/jMD5lD6BnebS8SeBTRvpRVMuG3q
	GvMjrgkE3FIIzWWCqI9BIlYPRC1LO+mHk76jE2bqQjbJOUZNa5lylSAgYKcXafZP9xLY
	ShCPYzR2dhipPZCsthxuizzgC4xC7/8VY7D05iiivJpZ4yToLpu9X6Xig+d0YgiUwrVV
	1jnS8f+8rspHsi4VU3nphRwHckxSI4vAXOVOnwSomrme8g3YhV8yMfltm+uWUErJLQSz
	5F2Q==
MIME-Version: 1.0
X-Received: by 10.152.6.37 with SMTP id x5mr789882lax.15.1402646796579; Fri,
	13 Jun 2014 01:06:36 -0700 (PDT)
Received: by 10.114.29.132 with HTTP; Fri, 13 Jun 2014 01:06:36 -0700 (PDT)
Date: Fri, 13 Jun 2014 13:36:36 +0530
Message-ID: <CANJXcUbO=3PdRN_Z6SuucoNNkr6K91H38M6vC=2Wd3K5HWpxNQ@mail.gmail.com>
From: Kashyap Gada <gada.kashyap@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Rasperry Pi bcm2835-bootfiles-20140221-r3 do_fetch
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
X-List-Received-Date: Fri, 13 Jun 2014 08:06:41 -0000
Content-Type: multipart/alternative; boundary=089e014940260e3ae204fbb328b6

--089e014940260e3ae204fbb328b6
Content-Type: text/plain; charset=UTF-8

Hello,
The following do_fetch of bcm28353-bootfiles-20140221-r3 is taking
considerable amount of time. I have kept system monitor applcation on on my
ubuntu workstation which shows download at about 114KBps.

I want to know if this do_fetch task is interrupted and bitbake is stopped
as I have to close down my office, will bitbaking the next time i start the
process continue download from where I stopped or will start fetching for
the package from 0 again.


Also can it be downloaded separately, if yes where can I find the link to
it and where do i have to store it once its downloaded.

Kashyap

--089e014940260e3ae204fbb328b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>The following do_fetch of bcm28353-bootfiles-20=
140221-r3 is taking considerable amount of time. I have kept system monitor=
 applcation on on my ubuntu workstation which shows download at about 114KB=
ps.=C2=A0</div>
<div><br></div><div>I want to know if this do_fetch task is interrupted and=
 bitbake is stopped as I have to close down my office, will bitbaking the n=
ext time i start the process continue download from where I stopped or will=
 start fetching for the package from 0 again.</div>
<div><br></div><div><br>Also can it be downloaded separately, if yes where =
can I find the link to it and where do i have to store it once its download=
ed.=C2=A0</div><div><br></div><div>Kashyap</div></div>

--089e014940260e3ae204fbb328b6--
