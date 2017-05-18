Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AD53E00B28; Thu, 18 May 2017 06:01:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D653E00AE4
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 06:01:20 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id c13so33103062qtc.1
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 06:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TdHmcIRYBuqDjzqSthiL6UmdBh9YRHUH6MQL77Ih1aE=;
	b=XfYf3SEPPcR1h4kj2wWzOfhkOX8fl42wotM9CawjA4e7ka4M5FP4pz6tVuXt3w+3gg
	HprBuK3ng8dvhcLSlczpCWcA5GVIomXLz0xqe9oAGk/CT7hpCJfp1UPdC5LrYFAim2mi
	6V7VS6vBcF8VZCN2n7GlvHvPxziz244mRbctHHsedT3NsSrxTTW3bgQ/G7myLLnK+2Jb
	lxmcG7nradcxZhCvWbKse6Ys37AoTCJBsGp8weDks9vvz57lGPdBCrfUXGvPuRQ/W3xR
	oI6vpnGG5vLgQN4gumD2ErpMv1k0jgYqSJYoeu7qmuHmcd+BCNl0gFCyizarW4AkWOym
	eNcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TdHmcIRYBuqDjzqSthiL6UmdBh9YRHUH6MQL77Ih1aE=;
	b=ai5EbZxVU0BnxHcL2ww+L7tNFxgPs2RjfPejyLu1+UtgTmQW9RgZ6nG6KwUhLuaNC2
	Xz4x8QrDw2MmwWbDT4zqd9wrrdDOLc3/Fucy0DACj7a+lIZeuyFWOdH6GOlll/fEF4Fw
	n6nGDGJinm3E8l2gNEhwm+0egT9lPXmhBg5jxyavF/6vDTNnerfUHGm/1UMhc1zyidwC
	CdNKYwFZPpV62yrSvJS4AjZqDKGPvKnRtbUUIy9NMZtagcSxpQSrjL2CpCW8hoD1zeLB
	UAb/O6HInLnAJiQxIHdUnXhRXjx+DGQD9gC5WJYVTikRQVhBUhG48T1OxROh1i0nepkD
	WQtg==
X-Gm-Message-State: AODbwcBfRt84x/dBNeLchGV+ypw5hswIhNI8i56d5k3G05XQYvv33bBm
	C0nmn5bKV+6zwAdZaNBx+Q89bAKyJ2Pn
X-Received: by 10.200.41.214 with SMTP id 22mr3838670qtt.144.1495112480204;
	Thu, 18 May 2017 06:01:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.41.115 with HTTP; Thu, 18 May 2017 06:00:59 -0700 (PDT)
In-Reply-To: <c8acbe0804cf48b589fc0672c23fcf93@PLEXTEK-EXCH1.plextek.lan>
References: <c8acbe0804cf48b589fc0672c23fcf93@PLEXTEK-EXCH1.plextek.lan>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 18 May 2017 14:00:59 +0100
Message-ID: <CAJTo0LayKX1dHK89DvYyUoane0Nc2W19WFaq-acp--Fd7o4=ZQ@mail.gmail.com>
To: Alan Levy <alan.levy@plextek.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem using Subversion in Pyro
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
X-List-Received-Date: Thu, 18 May 2017 13:01:31 -0000
Content-Type: multipart/alternative; boundary="001a114105e0483c0b054fcc007a"

--001a114105e0483c0b054fcc007a
Content-Type: text/plain; charset="UTF-8"

On 18 May 2017 at 12:40, Alan Levy <alan.levy@plextek.com> wrote:

> Eventually I traced this down to the fact that SVN is missing from the
> list of host apps defined in HOSTTOOLS in bitbake.conf. If I add an
> assignment in local.conf to append svn to HOSTTOOLS all is well again.
>
>
As Alex says we typically use subversion-native as we can't rely on the
host subversion being new enough for some features we need.

Does your recipe fetch using svn:// in SRC_URI?  If so then it should have
svn in the sysroot already.  A minimal example would be useful.

Ross

--001a114105e0483c0b054fcc007a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 May 2017 at 12:40, Alan Levy <span dir=3D"ltr">&lt;<a href=3D"mailto:=
alan.levy@plextek.com" target=3D"_blank">alan.levy@plextek.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal">Eventual=
ly I traced this down to the fact that SVN is missing from the list of host=
 apps defined in HOSTTOOLS in bitbake.conf. If I add an assignment in local=
.conf to append svn to HOSTTOOLS all is well again.<u></u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>As Alex says we typically=
 use subversion-native as we can&#39;t rely on the host subversion being ne=
w enough for some features we need.</div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">Does your recipe fetch using svn:// in SRC_UR=
I?=C2=A0 If so then it should have svn in the sysroot already.=C2=A0 A mini=
mal example would be useful.</div><div class=3D"gmail_extra"><br></div><div=
 class=3D"gmail_extra">Ross</div></div>

--001a114105e0483c0b054fcc007a--
