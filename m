Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C885E006EE; Wed, 16 Jul 2014 06:46:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12265E004FF
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 06:46:02 -0700 (PDT)
Received: by mail-ob0-f180.google.com with SMTP id uy5so917854obc.11
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 06:45:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vx9rmSAIXpBOddei++72vhMMBgPA/xCFV/Q4oKagQ3s=;
	b=D7IGnN1IPcfIS2M3QoAyW1VEhtDgAshK65r6MwaoQdOA9zKzEdQNXXP7OYDv4Ieeni
	KMgUfkqwVkeWATnzE+6HmwB5jJUdeUCckXfn0nXXsLnu3ZBg6GXdvyMJEqBIVaMBatjU
	QZs2tW+Kwp/JJkR40sa5ClQMc8S9pqd4+/XFNtg5Qp2MV40wtPGVysK7DjXqm4HxTbZW
	nqBBHfwi2QdutlD3XVGodMGfTUalDseEyB6OjnhHL/gCXW1MCoDSxd+SGwPnyInB2TZ9
	q+duvKbTtNNAg9TTm6VXbWObluf42J06/0HS9yc+aM1bBYyojeoh5tvMuTddqxlijY2f
	DFDg==
X-Gm-Message-State: ALoCoQnCfaMZK7p5HsSQCYst270bGSjXZ0XJxL9X7mNqHQdF/kszrvzoRwaJD2qZCZOB5clKDKA1
X-Received: by 10.60.70.106 with SMTP id l10mr35650510oeu.54.1405518359549;
	Wed, 16 Jul 2014 06:45:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Wed, 16 Jul 2014 06:45:39 -0700 (PDT)
In-Reply-To: <CAH21_vFnWJZC60p8vzqjB-B9YCiKKbVOsUFts7Ej80gp5K1-TQ@mail.gmail.com>
References: <CAH21_vFnWJZC60p8vzqjB-B9YCiKKbVOsUFts7Ej80gp5K1-TQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 16 Jul 2014 15:45:39 +0200
Message-ID: <CAP71Wjxs_GjVn64UjkskGn06yvVTvSKDRcefPh5Ny226e1gMmA@mail.gmail.com>
To: atulkumar singh <atul.singh008@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Toolchain build independent of host machine
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
X-List-Received-Date: Wed, 16 Jul 2014 13:46:15 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 16, 2014 at 3:28 PM, atulkumar singh
<atul.singh008@gmail.com> wrote:
> I wish to build my toolchain independent of host machine, either my sdk
> machine is 32bit or 64 bit.
> Like for 32bit host machine i am mentioning with i686 for SDKMACHINE in
> local.conf and x86-64 for 64 bit machine.
> Please let me know what i need to do to make my toolchain independent of
> whether my host machine is 32bit or 64bit.

just build the 32-bits version of the SDK. it will work on both
32-machine and 64-machine. this is assuming you install the 32-bit
compatibility libs which depends on which distro you use, but most
distro provide instructions to do that.

