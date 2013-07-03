Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E503CE0140D
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 04:36:29 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id ib11so9143vcb.31
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 04:36:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=3TJBl24eZ1Dk6lP7WwpYVnfZ/yfYZg4TceJzXZacRHQ=;
	b=CHoz7Om7b+DTNXZKcIt8GCvQKkIo/bXFeguc5w60R/Miuo0uBrltSXkzlvglkQl53o
	HiLnKqzxxf0TTp0yOi8l1zkm92l3UnwOOzkEdefPEm5r5Tox7SCwS+UtT8eB6oIqnFcY
	Spr2CIZAVbx9hSqY4IHfIum5NEa2AXyH8uu74elPT/fym0zTRJPjtuQoh/ado+g6SJzT
	baO9m4SbsF5JEg3w/EFue1YH0V2N3QL9E86gQ9Co8coMsTBbh2dVoOr503U7Wkqp5mPr
	rCLgyxsk53cmzGvPIdwxkXBeaOMa7Yuvl62UIsgYTlfsH+b5iDb/2QSO+XIHKtC+46wB
	Zckw==
X-Received: by 10.58.181.225 with SMTP id dz1mr104912vec.95.1372851388249;
	Wed, 03 Jul 2013 04:36:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Wed, 3 Jul 2013 04:36:08 -0700 (PDT)
In-Reply-To: <1372850887-10185-1-git-send-email-sergey_matyukevich@mentor.com>
References: <1372850887-10185-1-git-send-email-sergey_matyukevich@mentor.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Jul 2013 12:36:08 +0100
Message-ID: <CAJTo0LYDTjrq+aSQK638pedtiCpX+_a7uzYwd1Gbe0F41T7p6A@mail.gmail.com>
To: Sergey Matyukevich <sergey_matyukevich@mentor.com>
X-Gm-Message-State: ALoCoQmACpxNt/o8JgANwIxOp/0ewdPs3Fg77dGmXT4fS5hTFee3UQ7sd3DCNAuFNtYXmGOtpgYa
Cc: yocto@yoctoproject.org
Subject: Re: [meta-ivi] [PATCH] connman: delete init scripts if 'sysvinit' feature is enabled
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
X-List-Received-Date: Wed, 03 Jul 2013 11:36:31 -0000
Content-Type: text/plain; charset=UTF-8

On 3 July 2013 12:28, Sergey Matyukevich <sergey_matyukevich@mentor.com> wrote:
> connman bbappend: delete init scripts if 'sysvinit' feature is enabled
>
> Connman init scripts are installed only if 'sysvinit' feature is enabled
> in DISTRO_FEATURES: see commit 7c8160ccbe17d6e10bd7a09b91843182a89b9055 in
> poky.
>
> Signed-off-by: Sergey Matyukevich <sergey_matyukevich@mentor.com>

I'm curious as to why you're deleting the connman init scripts in meta-ivi...

Ross

