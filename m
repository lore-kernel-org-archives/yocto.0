Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8B86E0044A
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 08:41:21 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A21E8F81221; Mon, 21 May 2012 09:41:20 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 81CD6F81220;
	Mon, 21 May 2012 09:41:19 -0600 (MDT)
Message-ID: <4FBA621F.6030200@mlbassoc.com>
Date: Mon, 21 May 2012 09:41:19 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
	<14387597.ECeojYX8cL@helios>
	<00b101cd3764$be9cd960$3bd68c20$@Distant-earth.com>
	<2402037.qbM01MX6gb@helios>
	<00b501cd3767$46f76530$d4e62f90$@Distant-earth.com>
In-Reply-To: <00b501cd3767$46f76530$d4e62f90$@Distant-earth.com>
Subject: Re: [poky] RaspberryPi Layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 May 2012 15:41:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-05-21 09:34, John Willis wrote:
> Hi Paul,
>
>>> That had been my plan but I got the impression that was frowned up in
>>> the Yocto environment.
>>
>> Well, IMHO it's suboptimal, but far less so than two separate competing
>> layers that ultimately exist for the same purpose.
>
> Pushed a note in the README with suggestions on a suitable Yocto BBMASK.

However, this note has a typo.  BBMASK must be a proper Python regex.

diff --git a/README b/README
index 6558bdc..e9ff8e6 100644
--- a/README
+++ b/README
@@ -22,7 +22,7 @@ mask few recipes requiring systemd or other recipes not included in your distrib

  You can achieve this by adding something like the following to local.conf:

-BBMASK = "meta-raspberrypi/recipes-multimedia/libav meta-raspberrypi/recipes-core/systemd"
+BBMASK = "meta-raspberrypi/recipes-multimedia/libav|meta-raspberrypi/recipes-core/systemd"

  You can adjust the BBMASK for any .bbappends that your distribution does not contain recipes for.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

