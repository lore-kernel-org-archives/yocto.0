Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6363CE00B8B
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 13:45:42 -0700 (PDT)
Received: by mail-ie0-f173.google.com with SMTP id rl12so2965942iec.32
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 13:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=R8fyhhSDzvBCW6NSiRp0BtgM2G2t8GJb1s+YCFg3etQ=;
	b=mjXT16S5XLj5sKOjfegAZEnrWoHm+5tEhyrpfiAPT5UbYo1s3xH8avLG/jmaP35jRC
	iBvBXkacceUX2FrdWL5C7f4DsY3AnrIg8VTUWlfdwtDj4ziwwuEl4mcr4RcazDO00b48
	0nwqmHoJX83SD5CiRn/B1XJQnW0p8786GBRh56Jsoae+SWY78eK3t9VRtKKtdtC/+kxj
	B8gQY6nYTuqPGz7qfc2Znu1/t4bgYCVL++MUywwkBnQHi58hMU1MA7iG8MvygeHENmxU
	2wX1DIajuWCYyecok0roUm7f4dwBvBXlde31LNM/2HR8nDW/v1EJ43DIQ7M5ngErmig/
	Pesw==
X-Received: by 10.43.145.137 with SMTP id ju9mr3882018icc.36.1398372341804;
	Thu, 24 Apr 2014 13:45:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.229.14 with HTTP; Thu, 24 Apr 2014 13:45:11 -0700 (PDT)
In-Reply-To: <27e070ca16304830944c61965e3a919e@GURMBXV03.AD.ARICENT.COM>
References: <mailman.16937.1398342313.26702.yocto@yoctoproject.org>
	<27e070ca16304830944c61965e3a919e@GURMBXV03.AD.ARICENT.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 24 Apr 2014 13:45:11 -0700
Message-ID: <CAMKF1soeXsCpAzDGxw=tBq2H8nq9iY3E+YyMfUA+64dt1_k4=w@mail.gmail.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: patching issue
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
X-List-Received-Date: Thu, 24 Apr 2014 20:45:45 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 24, 2014 at 8:27 AM, Rohit2 Jindal
<rohit2.jindal@aricent.com> wrote:
> I have two patches and two different source as shown with fetching controlled using SRC_URI_newlib and SRC_URI and I want to apply patches conditionally on SRC_URI and SRC_URI_newlib . But fails to do so.
> Can u help how to apply newlib.patch in SRC_URI_newlib and glibc.patch in SRC_URI.
>
> If I keep newlib.patch in SRC_URI_newlib it is not considered and ignored.
>
> Please help me out

is new lib an override that you have defined ? if not then yes its not
going to change anything when you say SRC_URI_newlib

