Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28A49E00B65; Tue, 24 Sep 2019 07:46:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0641.aruba.it (smtpcmd0641.aruba.it [62.149.156.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92825E00961
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 07:46:40 -0700 (PDT)
Received: from [10.0.3.96] ([213.213.6.58])
	by smtpcmd06.ad.aruba.it with bizsmtp
	id 5Sme2100a1F741R01SmeoH; Tue, 24 Sep 2019 16:46:38 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <502d6e32-4069-50fd-4ebe-d2dc770ca590@faresoftware.it>
Date: Tue, 24 Sep 2019 16:46:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1569336398; bh=ZRqjaIvd7GHCjKOpC5du0BqiiRCX8XSWgsPeIiWQxOA=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=mwX9A67mEuD3r7Bj4VvthnrGU0y+aFbWwTZNjS8NUCeVI7alqc784rpKQNIG/xz03
	OFX9eEt4pPKTIW//L4WOr+GXASJJ5Hh+wsA3E7Vr0MLlh2Jc22IqIFeHXW7//WMbxh
	KlABajbv7m0RAlpR+QsAuerozSzAJiX9tndLP1CuAllfzI775fJC+Tz6U4BT0E+6Vg
	HHDbhaAsa7X4rGTXBczTIIXSljrbFckADxfL7eXuddj7+QpwDFGr68VCe5k6Ctks2p
	i28zVDultJR7WlS4E2ZRA77e1lnkAY10OXi4NyfClTCvDHD3I1vBdIsfle9WEyklnt
	tfyuGBovp3MSA==
Subject: Sumo: default is python2 or python3
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
X-List-Received-Date: Tue, 24 Sep 2019 14:46:42 -0000
Content-Type: multipart/alternative;
	boundary="------------38FAF9455AF37BC64794A5A8"
Content-Language: it

--------------38FAF9455AF37BC64794A5A8
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit

Hi all.

I need to move my application from krogoth to sumo.

Which is the python choosed for sumo, as system python interpreter?


Best regards,

   Mauro


--------------38FAF9455AF37BC64794A5A8
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-15">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font size="-1">Hi all.</font></p>
    <p><font size="-1">I need to move my application from krogoth to
        sumo.</font></p>
    <p><font size="-1">Which is the python choosed for sumo, as system
        python interpreter?</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">Best regards,</font></p>
    <p><font size="-1">  Mauro</font><br>
    </p>
  </body>
</html>

--------------38FAF9455AF37BC64794A5A8--
