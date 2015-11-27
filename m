Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D594E00BFF; Fri, 27 Nov 2015 05:47:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AAF1E00BF4
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 05:47:29 -0800 (PST)
Received: by igbxm8 with SMTP id xm8so30925339igb.1
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 05:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tanmic-co-in.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=u2J/+wjnkRClnxb98h86fqiZN8zMMAxNHaBrFkKXWWw=;
	b=EzM0Ros51Ify0CwBRzdWiQFdQqVvjFJfqIncbqBFOvh+8vlHd2+ZzxUB8kPw3szYrG
	5y0Yr66PS3lrBdrAo1Li1ND8ffDpyFKtejn6tBakPxmrAG45u3Rxy04oktKO3ZIHzX/+
	YJAniYD3Gj72IMvDUeBM5RoTT1vqBx2yutkqA01cvWuRpoUl+0ZcF86KusQ7Xjy8RyD3
	WWnKYL0IGNO8eo+2Pa8r2BUwfmZ1vzBV0isGmLRzy/ug5C90ZP/qhSeTz2wd5mzWcjxk
	+Fo3mnfQQ8L8BD90x130Rmx2yYTQUMBf6dClF9m5a6w7niCuqPiYX3omRe4r3a7Azfbv
	NZqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:date:message-id:subject:from
	:to:content-type;
	bh=u2J/+wjnkRClnxb98h86fqiZN8zMMAxNHaBrFkKXWWw=;
	b=Poq+mVFH6LduZHawBJBfV33dCoQAfQmzpDZH8lRNAobB/sRmj6WZVqa+6VQEJwwzjC
	+Mm0gPXfsricMpX3NNESfo1pVzGUNzOcDvDxhNzTcW6bADfYzXFZBm5IR0m76FwLyJk5
	hNXrWK02pYqnxqQkPT8KyI8Jtx5ZjPgrfZuwguFbGvuOpadHZTszzuxdURImw7jba4rz
	VZqP7ajyknK8ODX+MWTvLHPpIuyk6yThyWD9K5sQG0Y8hsilglI5+n3RAU2fkql7E3/u
	EWje7G9Cr2UdP97KDQwF7ajUwLtXpoBmpAwzsQ4H+/fdPvpa2W59NQxuVMdzZCGw03Ut
	Y4+w==
X-Gm-Message-State: ALoCoQmk+YiVdXF2VR162w6p2WuyzEFeNrDOpbwyO7wpaIC1h/+8g+1jZf6rHbZhpSUJKGw0XmrY
MIME-Version: 1.0
X-Received: by 10.50.79.231 with SMTP id m7mr8518053igx.15.1448632048808; Fri,
	27 Nov 2015 05:47:28 -0800 (PST)
Sender: sarayu@tanmic.co.in
Received: by 10.107.19.142 with HTTP; Fri, 27 Nov 2015 05:47:28 -0800 (PST)
Date: Fri, 27 Nov 2015 19:17:28 +0530
X-Google-Sender-Auth: mXa3MbvYrTPzbcdXvA_UJU33_ts
Message-ID: <CAF5S8SN2wHM39fbLuj+jT5d8mM-e83sey_aJ7vYHa-9=ifzS_A@mail.gmail.com>
From: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
To: yocto@yoctoproject.org
Subject: Kernel header generation
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
X-List-Received-Date: Fri, 27 Nov 2015 13:47:34 -0000
Content-Type: multipart/alternative; boundary=089e013a06bcae0ebb052585eec7

--089e013a06bcae0ebb052585eec7
Content-Type: text/plain; charset=UTF-8

Hi ,

I have written a kernel module which i am currently building along with the
yocto kernel but i want to be able to move my code to a different
repository and be able to build it as a stand alone module.

To do so , i will need the kernel headers to be generated from the linux
kernel on yocto . Can you please provide me the steps to build the kernel
headers and be able to install it outside the yocto setup.

I am using the QorIQ-SDK-V1.8 SDK .

Thanks in advance for your help.
Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

--089e013a06bcae0ebb052585eec7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;com=
ic sans ms&#39;,sans-serif">Hi ,=C2=A0</div><div class=3D"gmail_default" st=
yle=3D"font-family:&#39;comic sans ms&#39;,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:&#39;comic sans ms&#39;,sans-serif"=
>I have written a kernel module which i am currently building along with th=
e yocto kernel but i want to be able to move my code to a different reposit=
ory and be able to build it as a stand alone module.</div><div class=3D"gma=
il_default" style=3D"font-family:&#39;comic sans ms&#39;,sans-serif"><br></=
div><div class=3D"gmail_default" style=3D"font-family:&#39;comic sans ms&#3=
9;,sans-serif">To do so , i will need the kernel headers to be generated fr=
om the linux kernel on yocto . Can you please provide me the steps to build=
 the kernel headers and be able to install it outside the yocto setup.</div=
><div class=3D"gmail_default" style=3D"font-family:&#39;comic sans ms&#39;,=
sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:&#3=
9;comic sans ms&#39;,sans-serif">I am using the=C2=A0<span style=3D"font-si=
ze:12.8px">QorIQ-SDK-V1.8 SDK</span><span style=3D"font-size:12.8px">=C2=A0=
.=C2=A0</span></div><div class=3D"gmail_default" style=3D"font-family:&#39;=
comic sans ms&#39;,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:&#39;comic sans ms&#39;,sans-serif"><span style=3D"font-siz=
e:12.8px">Thanks in advance for your help.</span></div><div><div class=3D"g=
mail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D"comic =
sans ms, sans-serif">Thanks and Regards,</font><div><font face=3D"comic san=
s ms, sans-serif">Sarayu K S=C2=A0</font></div><div><font face=3D"comic san=
s ms, sans-serif">Tech Lead=C2=A0</font></div><div><font face=3D"comic sans=
 ms, sans-serif">Zaikenn Technologies</font></div></div></div></div></div><=
/div>
</div>

--089e013a06bcae0ebb052585eec7--
