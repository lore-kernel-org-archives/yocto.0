Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27772E00927; Wed, 22 Jul 2015 07:52:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1B50E008EC
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 07:52:46 -0700 (PDT)
Received: by qkdv3 with SMTP id v3so154649349qkd.3
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 07:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=r8eMc0qovGkWlmuOnGJquNObLD1WGHLK4iLoIGsXtig=;
	b=P9eZYrkjU5HhDkUNlO9/q7aG8vtCF2hTjCsRjzzofySMlRcQRR+IxrjjGtDmT1VR9Y
	Ud2zTFPbTBhcRXr55hwE9QVOeZg7x/y86lufBbEJ8oYBOQagdERMAmm71iuHkHqeRTvL
	sJySE/HLOEvHoYYdazY7HipIohR6eTLDiS/z87ei6Jr/+Y2BW9zV53KvqXC5CMEMKqEI
	0S+tC5afFQ9duyQEDPCEai0Ndmx69JKRopH4qqnMLqKZXjNra25kNzBMEpKXIBdC430M
	pCHpH8RkpBsfScalS1xujiA94mLQ36GiEN013b5QVScKkDyVnD+FllNkLciHFv03uJxN
	2JNg==
MIME-Version: 1.0
X-Received: by 10.55.23.104 with SMTP id i101mr4248688qkh.23.1437576765778;
	Wed, 22 Jul 2015 07:52:45 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Wed, 22 Jul 2015 07:52:45 -0700 (PDT)
In-Reply-To: <CAJTo0LaDY0SmXhgSAWyCwnWoiZjLdXf5e4VXdWFznYQ6O2bW_g@mail.gmail.com>
References: <CAF3SDA4myioYp5a1b4iouOzTeww-na8XMR7-i8-EQ5Tw7+RLWg@mail.gmail.com>
	<CAJTo0LaDY0SmXhgSAWyCwnWoiZjLdXf5e4VXdWFznYQ6O2bW_g@mail.gmail.com>
Date: Wed, 22 Jul 2015 11:52:45 -0300
Message-ID: <CAF3SDA4af-nYTLxp90b5edhm304-g_S9zh_obJZ=BtyN3dEcvw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Wireless connection wizard.
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
X-List-Received-Date: Wed, 22 Jul 2015 14:52:48 -0000
Content-Type: text/plain; charset=UTF-8

Hi Burton

Thank you for your help, I got connman installed but when I try to
enable wifi I got this:
root@enlace-imx6:~# connmanctl enable wifi
Error wifi: Method "SetProperty" with signature "sv" on interface
"net.connman.Technology" doesn't exist

Typing `connmanctl' and then `enable TAB TAB' gives me this:
root@enlace-imx6:~# connmanctl
connmanctl> enable
ethernet  offline
connmanctl> enable

So I thinks I got no wifi support build on it. I'll try to workaround
this and post here the results. Thank you again for pointing me out!

Best regards,
- dhs

2015-07-22 10:26 GMT-03:00 Burton, Ross <ross.burton@intel.com>:
>
> On 22 July 2015 at 14:07, Daniel. <danielhilst@gmail.com> wrote:
>>
>> I want to know if is there any wifi connection/configuration wizard
>> (GUI) available on Yocto. I'm using Dizzy release. I got wireless
>> working with wpa_supplicant configuration using an TPLINK TL-WN722N
>> but now I need to easy configuration for end user. On desktop I use
>> wicd, but I can't find any recipe for it. Any suggestion?
>
>
> core-image-sato uses connman-gnome to add a UI around ConnMan, which you may
> be able to use.
>
> Ross



-- 
"Do or do not. There is no try"
  Yoda Master

