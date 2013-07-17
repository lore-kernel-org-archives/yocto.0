Return-Path: <richbayliss@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D09CBE006DD
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 13:12:26 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id qd12so5120707ieb.30
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 13:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=EHuqUTWTrCgJWnAnTIGLYI7oVPyrESwAL+QC76Bl7rM=;
	b=ZaRCWb3VhNiQr2xD9c+iUDR2KmbgaTXMORjSywygbMJrK9L/bpoYZiu3o1v89rzk5G
	bQQpeFawdCuDqyGRHhILBzEBMv9Q+rGIadVI5zgc8dyMSh5DIExyIG7fJclN1NTELfpm
	XJkiGStvqHskeAtaweU0Mm3nVY8H/4T3MuX8p8/toJ0UjtF+zavNJLWAbUikk2rj0/XE
	iCWJX3hNlpavGPdR9RRNVlQD3m5LY4jm9pMgijUqVk+53WtAaAoDBUGivZKQCGzmBAVT
	Nmztjk4qsu9smcO1IT8upq/o5zV9gFJhvw87XwqLmedsPswfz0M5Gncw+rhhJVmfpuIu
	n7Bg==
MIME-Version: 1.0
X-Received: by 10.42.52.201 with SMTP id k9mr5428558icg.47.1374091945538; Wed,
	17 Jul 2013 13:12:25 -0700 (PDT)
Received: by 10.64.23.165 with HTTP; Wed, 17 Jul 2013 13:12:25 -0700 (PDT)
In-Reply-To: <CAHLvMfaELf9WAjgZJ_wLqGr1wv-wZK++5S27XYbs5ffu668ZRw@mail.gmail.com>
References: <CAHLvMfaELf9WAjgZJ_wLqGr1wv-wZK++5S27XYbs5ffu668ZRw@mail.gmail.com>
Date: Wed, 17 Jul 2013 21:12:25 +0100
Message-ID: <CAHLvMfaO2Ve+Z4D8_bKWSMAbskqwwJYjzLsVPvPy8z557Wesug@mail.gmail.com>
From: Rich Bayliss <richbayliss@gmail.com>
To: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 17 Jul 2013 20:12:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

I am building rpi-basic-image and I get a successful build and
first-run. My Pi gets an address over DHCP and I can login over SSH.

However, if I pull the power/reboot - then on the next start-up my
network stays down. On the local console, if I issue "ifup eth0" I am
told the interface is already up, while "ifconfig" show no interfaces,
not even "lo". If I do and "ifdown eth0" followed by an "ifup eth0"
then my DHCP kicks in and everything is back to normal... until the
next reboot.

Is this a known issue? Does anyone have any ideas?

-- 
Rich Bayliss

