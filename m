Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7D3FE00C67; Wed,  6 Apr 2016 04:23:03 -0700 (PDT)
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
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36AA5E00C43
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 04:23:00 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id 2so52005516ioy.1
	for <yocto@yoctoproject.org>; Wed, 06 Apr 2016 04:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EO5EQgtzWOfqh2i4Offqt3bYOk5a63mJjzbWsuzwie8=;
	b=R84KhxckwDUTp1ATH7MiXtEwwNmzjgDZ33ytaOiPBtDUyjHmQEP/nmuS0MiUjySY4f
	R0ssU8XG2I2Qy7/9/59BH+/VLuqYQlLWIy29Hexuc+ZBZuTSt5b0eAM5R6JGCBilGFUu
	qrFAkJCcP6rdhbuPSaq7Gly5EoWMfS9QbR0NPpG/78FjJ4kfbaOSh5vkAkn5bv9DVRb+
	sS2kiM3YmBLqhhohQZumXv58R3D3aqjEzpBld9AWlbrk22/djFSJMfL0oKZkoVPCSNAE
	0tWM8v3CLL7KAnelpUC8cqv/B6Mxap1LEWH7lrEXTIx0ecGckN1HK52aDFyWahWxHHWX
	2YJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EO5EQgtzWOfqh2i4Offqt3bYOk5a63mJjzbWsuzwie8=;
	b=UMEFO7y/NjzCGQzbqJTgVC7RWCnYH8GRYPl9N/hI5fm9rwFUyXqr9j0dUXiQID+iWW
	aAWYD4usJykmOTIfXlqpiuFwcH5Wo42eSx+xNhlTEP7BSvP7uj099uu/mc1triYle/7t
	egi0+FU92pO0I0wVKSsahut56WTIi+bOIQDh86S3TUarM9GobnOlKd+84mLywTcnzSdL
	GqrRZOt3KgfOor4C9W3WaUgsa+nKuLnDJV7dqp935UyjD6zcUDECL43r2MnQv+U53fd7
	FpMyMAlAidvQjKlYTQVDif1VgUJ5svjL1MCx5ZwUqtbq5JUQdI05fsDeeuH84T0XU8BR
	KJaA==
X-Gm-Message-State: AD7BkJLJ6ezn+cQCwEitEJNF+sAbocXfPOf1cyMwY1CyBG/NoIjrl4lww5qO6waKA81iTvfOxf+VWrKBcVWWypqH
X-Received: by 10.107.135.74 with SMTP id j71mr21325423iod.133.1459941779315; 
	Wed, 06 Apr 2016 04:22:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Wed, 6 Apr 2016 04:22:39 -0700 (PDT)
In-Reply-To: <DUB130-W492E3B0F53AE2AA9EE0F0ADA9F0@phx.gbl>
References: <DUB130-W48119310217EFF39E1E035DA9F0@phx.gbl>
	<CAJTo0LbdXCPtc7PF_25Yc00T0pt=Ptq12whkehT5LVnnwS7RtA@mail.gmail.com>
	<DUB130-W492E3B0F53AE2AA9EE0F0ADA9F0@phx.gbl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Apr 2016 12:22:39 +0100
Message-ID: <CAJTo0Lbg10pM7VT0ZiaqC7r5YwvdX9_c3X9P=vrPdFX3C6maLQ@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python GObject Errors on yocto-2.1_M3.rc2
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
X-List-Received-Date: Wed, 06 Apr 2016 11:23:03 -0000
Content-Type: multipart/alternative; boundary=001a113f92182634ac052fcf2ff6

--001a113f92182634ac052fcf2ff6
Content-Type: text/plain; charset=UTF-8

On 6 April 2016 at 12:19, Chris Trobridge <christrobridge@hotmail.com>
wrote:

> This did the trick for python 2.7, and "from gi.repository import GObject"
> works too.
>

Can you send a patch to add this dependency to the pygobject package?

Ross

--001a113f92182634ac052fcf2ff6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 April 2016 at 12:19, Chris Trobridge <span dir=3D"ltr">&lt;<a href=3D"=
mailto:christrobridge@hotmail.com" target=3D"_blank">christrobridge@hotmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>This did =
the trick for python 2.7, and &quot;from gi.repository import GObject&quot;=
 works too.</div><div></div></blockquote></div><br>Can you send a patch to =
add this dependency to the pygobject package?</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113f92182634ac052fcf2ff6--
