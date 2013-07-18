Return-Path: <richbayliss@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 542E1E01363
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 03:55:26 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id qd12so6618849ieb.30
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 03:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=y52Ue4qTZPUPm8zxQCQ2DmO/s74oy1+R4FFLSSnONEc=;
	b=xLASGFj1wepj93z6VZ2i3+txP3CP/8eh2ohXLwx2S1ntfTyMHemKIx79Ef15AgSagg
	qoGFydkU2ommf4XYOdWB3im/H/HoX4KGECw65eOZDMnqUAe7fkfSzPiep8HJ5F8m/WEG
	GAld8NJq2n1is98JSyNcGCLVTNlDMVfSUiXPFG3buCyP1AZc+NqwpktqXURvBK8v4slp
	JSkxCq18A4UpEMZPyhy8RiDuBlkDNlYGDiKUDC3N3s8n0nUYzMSAmBH0yK4y5B+m1zTt
	dHxeDZjkTaMeTiUGJHQkap6DFTCOLzGeuk5/FEmex8NPrklcI9a3F7q5njlOuebxPxOd
	LQDg==
MIME-Version: 1.0
X-Received: by 10.43.14.74 with SMTP id pp10mr6284543icb.87.1374144926379;
	Thu, 18 Jul 2013 03:55:26 -0700 (PDT)
Received: by 10.64.23.165 with HTTP; Thu, 18 Jul 2013 03:55:26 -0700 (PDT)
In-Reply-To: <CAK18fxHz5rHig5tbLN4VjZAr6itpMUVmfem7bjYzbttbT6wN9g@mail.gmail.com>
References: <CAHLvMfaELf9WAjgZJ_wLqGr1wv-wZK++5S27XYbs5ffu668ZRw@mail.gmail.com>
	<CAHLvMfaO2Ve+Z4D8_bKWSMAbskqwwJYjzLsVPvPy8z557Wesug@mail.gmail.com>
	<CAK18fxHz5rHig5tbLN4VjZAr6itpMUVmfem7bjYzbttbT6wN9g@mail.gmail.com>
Date: Thu, 18 Jul 2013 11:55:26 +0100
Message-ID: <CAHLvMfbsKb1gGPNxc9jprU0oDZDBtEVTp2sHyQOHgLDukdbXpQ@mail.gmail.com>
From: Rich Bayliss <richbayliss@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Network not working after first boot success
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
X-List-Received-Date: Thu, 18 Jul 2013 10:55:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 18 July 2013 09:01, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
>
>
> On Wed, Jul 17, 2013 at 11:12 PM, Rich Bayliss <richbayliss@gmail.com>
> wrote:
>>
>> I am building rpi-basic-image and I get a successful build and
>> first-run. My Pi gets an address over DHCP and I can login over SSH.
>>
>> However, if I pull the power/reboot - then on the next start-up my
>> network stays down. On the local console, if I issue "ifup eth0" I am
>> told the interface is already up, while "ifconfig" show no interfaces,
>> not even "lo". If I do and "ifdown eth0" followed by an "ifup eth0"
>> then my DHCP kicks in and everything is back to normal... until the
>> next reboot.
>>
>> Is this a known issue? Does anyone have any ideas?
>>
>>
> Never seen this but will try to reproduce it.
> Will provide feedback.
>
> Andrei

Thanks Andrei, I would appreciate that.

For reference, I have downloaded the latest Raspbian image and I have
no such issue - so I would consider this as ruling out a hardware
issue.

Also, I have noticed the Ethernet activity LEDs go off and on, during
boot, when the interface is started correctly. When I have the issue,
they come on initially but never go off/on again. Maybe an
initialization error?

--
Rich Bayliss

