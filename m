Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 720FFE0146D
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 01:55:02 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x19so186454vbf.10
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 01:55:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=sArQFLl9jWt5sPhx9BdYpeuyjZykd/AvTvbAhB3iTF0=;
	b=BZK/wlnuznnsDQL3U6q1wGdp74ZWO9URxYFLaVjHSlNjzFJG33P0kR7ro76LTiloT4
	UO42cY5pX3LPgmNdof3nTrA1QOMVdp1DrPDEiR7Y2myRl5e/njP3RMg2ooBZ4TCb1RnR
	MXBogOWxNhzajsDAlQzpT2tPIj/IKo3Duh2A49jgZlXtD9NLrDCh4tEx4DqVimfAUWjl
	o1tLW6Ubvr1u+17EtwTiTpqBzdckGH7pGHwnI6E1SujZb8uCbN80jLOr0dj6b1QjanxE
	yDiDk4EhKzwy3roy+D+XL0O8ssCqnfrf4a5Inv1WpcJGsHm5sgVJP1VRbrDchmfj1JPJ
	YGrg==
X-Received: by 10.220.140.18 with SMTP id g18mr819588vcu.54.1366102501464;
	Tue, 16 Apr 2013 01:55:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Tue, 16 Apr 2013 01:54:41 -0700 (PDT)
In-Reply-To: <CANwz6nxtkVCvz5GBQwtDaL8Qx1FurZg4vMHv4eSyeP05d6ZQow@mail.gmail.com>
References: <CANwz6nxtkVCvz5GBQwtDaL8Qx1FurZg4vMHv4eSyeP05d6ZQow@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Apr 2013 09:54:41 +0100
Message-ID: <CAJTo0LZY+zTcC2dOLx0-5Y_jw1smgCvV-UGMv_J7VuDm9Bp9+g@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQnmubtfcmk8PsglfNg/y64b5uIJniWwamTwopha74WLXDv73Y4f7qKrp+AB8e7DWZsI6TaJ
Cc: yocto@yoctoproject.org
Subject: Re: beagleboard, qemuarm, beaglebone, and pandaboard images.
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
X-List-Received-Date: Tue, 16 Apr 2013 08:55:02 -0000
Content-Type: text/plain; charset=UTF-8

On 16 April 2013 01:00, Edward Vidal <vidal.develone@gmail.com> wrote:
> beagleboard 1949 RPMs
> qemuarm 1747 RPMs
> beaglebone 1742 RPMs
> pandaboard 3842 RPMs
> Any and all help will be appreciated.

Have a look in work/[machine]/[image]/[version], you'll see
installed-pkgs.txt and complementary-pkgs.txt.  Comparing these will
tell you where the differences are.

Ross

