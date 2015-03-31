Return-Path: <abhishek.embsys@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DA0CE00948; Tue, 31 Mar 2015 07:53:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (abhishek.embsys[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B86AE0092E
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 07:52:55 -0700 (PDT)
Received: by labe2 with SMTP id e2so14619666lab.3
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 07:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=urQapfluZo20BSp6C3/oTZ0Xqre0pDlDeX6gNBYbruc=;
	b=ETW1CCENwIqmbOfCFxIyWoTTHRqjdBLDYCT3F+0t7TcY+RB9OnOhnGBllest7T+EzZ
	ehgQ8vIbSYDU2qePRMal1lTRFxt21XOIdSsHbYWR8pK0QDP3hOlkbBJ1idXzaUfSCbG9
	+6ob/1gtSrSFhYYf3kLPJgsqvT3mlIqGP0sBKcfo6Plx9siScgfwINehj5+biP9Q2hEn
	Silu4rpdLAb3fKnfwyW2+qG192P5gfcvE+5DjZFEV003mkEul5dogrDsoKtLgz+P4fMg
	+csG2dlljljc/BNu+oEtEwnM3631brF1d80/IYF0CVr3nrnCyXftNdlJuD/nYmXP8+6K
	Z9pA==
MIME-Version: 1.0
X-Received: by 10.112.236.68 with SMTP id us4mr4622570lbc.91.1427813572641;
	Tue, 31 Mar 2015 07:52:52 -0700 (PDT)
Received: by 10.25.170.197 with HTTP; Tue, 31 Mar 2015 07:52:52 -0700 (PDT)
Date: Tue, 31 Mar 2015 20:22:52 +0530
Message-ID: <CAGj-b5JQ74eR_4nXO4uQiuUdkspojmXGuXdDDWEd1M7Z=bDqKw@mail.gmail.com>
From: abhishek srivastava <abhishek.embsys@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 31 Mar 2015 08:01:19 -0700
Subject: remove package from sdimg
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
X-List-Received-Date: Tue, 31 Mar 2015 14:53:01 -0000
Content-Type: multipart/alternative; boundary=001a11c3c416cd890b051296c078

--001a11c3c416cd890b051296c078
Content-Type: text/plain; charset=UTF-8

hi
i have created core-image-sato sdimg for my project on raspberrypi.
actually, i want to run few applications that need python. i want to remove
unnecessary packages that were required for smooth compilation of those
applications since I downloaded entire python and gcc packages which had
heavily increased size of my sdimg size.

how can i find which applications requires what packages for its normal
functionality so that i can further tweak my sdimg or keep exactly those
libraries that are needed for my application and remove rest.
please help

regards
Abhishek

--001a11c3c416cd890b051296c078
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>hi<br></div>i have created core-i=
mage-sato sdimg for my project on raspberrypi. actually, i want to run few =
applications that need python. i want to remove unnecessary packages that w=
ere required for smooth compilation of those applications since I downloade=
d entire python and gcc packages which had heavily increased size of my sdi=
mg size.<br><br></div>how can i find which applications requires what packa=
ges for its normal functionality so that i can further tweak my sdimg or ke=
ep exactly those libraries that are needed for my application and remove re=
st.<br></div>please help<br><br></div>regards<br></div>Abhishek<br></div>

--001a11c3c416cd890b051296c078--
