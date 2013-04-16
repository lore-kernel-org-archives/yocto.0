Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1805DE013CA
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 07:04:11 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id p12so399337vbe.29
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 07:04:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=daTbLxZJS8ft/jITLFvjo1mehZlV/Psfmfr8RvOT7gE=;
	b=P88kaF3IFeQv00OhoGLF7BJnkLrN3ZQ0med6czafGx3a92hdaB3zShPPq/mstlUgU9
	YF3fdk9oLp/TwQ3t0q7J9b2O+0cZjXEmA932oQaiCp/0fKPwqdKRuCx3GIl5i4GcpuTw
	EkvQbiSAKCYoqBAKNbhTsk+LKBy4W2PNZooEUavcbIgJaMe/ILChisKuPa3DGckEsJNN
	X4V+PG2tF2YLOUcV1ebfHsZ4QNwI5s3c3gMXi+e4p4OiUyWuKzw6heMh+Ux3Ipn3R9oT
	vkuUyckR+7pacXuSXuUD5Kvm7bJNlMRdUkvioGKJcQC3vxgCEtdvfe39BXu9uTRrn9KL
	X7CA==
X-Received: by 10.52.28.139 with SMTP id b11mr1401628vdh.4.1366121050150; Tue,
	16 Apr 2013 07:04:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Tue, 16 Apr 2013 07:03:50 -0700 (PDT)
In-Reply-To: <CANwz6nxw7PK_g_RsukLbaFZYCPGEMrviFq_sm5ki6H=R_GiLDA@mail.gmail.com>
References: <CANwz6nxtkVCvz5GBQwtDaL8Qx1FurZg4vMHv4eSyeP05d6ZQow@mail.gmail.com>
	<CAJTo0LZY+zTcC2dOLx0-5Y_jw1smgCvV-UGMv_J7VuDm9Bp9+g@mail.gmail.com>
	<CANwz6nxw7PK_g_RsukLbaFZYCPGEMrviFq_sm5ki6H=R_GiLDA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Apr 2013 15:03:50 +0100
Message-ID: <CAJTo0LZjwYj04fw6wq6HBsT1v5UQjCKYc6he8rNudBL+B0dyng@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQlj6VMKWCPf4h7Uj+2AbThJRdJ4pegGsc9e24GLIpJl3YrUDaZ7I8KK7uYgQxWtAO2TokSn
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
X-List-Received-Date: Tue, 16 Apr 2013 14:04:11 -0000
Content-Type: text/plain; charset=UTF-8

On 16 April 2013 15:01, Edward Vidal <vidal.develone@gmail.com> wrote:
> I did a search for installed-pkgs.txt and complementary-pkgs.txt neither of
> these files were on my system.  I am assuming this is because in my
> local.conf I am using INHERIT += "rm_work".
> as found on page 41 of the ref_manual.  What is the difference between the
> two pkgs sets?  The does reduce the capabilities of the systems?  Can the
> complementary-pkgs.txt be installed with a flag?

Yes, rm_work will delete those files.

As far as I know, "installed" is the packages explicitly installed,
"complementary" is the set installed through features such as
dev-pkgs.

If you really want to find the differences on these images, boot each
and dump the installed package list (rpm -qa?).

Ross

