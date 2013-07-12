Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f46.google.com (mail-vb0-f46.google.com
	[209.85.212.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11D79E013D6
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 02:53:36 -0700 (PDT)
Received: by mail-vb0-f46.google.com with SMTP id 10so1390779vbe.33
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 02:53:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=EU4mxrzxyyFRjp1pNT+aEHtThExEr73ZhNVWJAOQJsU=;
	b=aHcX64x1TChzf2wGEe/EmZ/OdihIe1eBeZPOjX3wnuTDjQg8LDE7/qJBfOvexvOzPf
	zlvJOL+pfl7DVi9BomoX59oRO9EBFfW3cmIj7e4BHz4QClnCezNjfhHg+qWNW50EHcvC
	mMiA88srrsWFzzyuUgXYKVIuqj4t8zIenioLnsra3ZmiuKuThODbBGbEPw7c5tinExhN
	iraULv07THoVB73nkec5M/yCHLIwJcvhBKKsVmm8UhImWNo1R9/6DE4q5szsxmvUbRoe
	fH3UUeVU+w2yDzLD+EFtzK1GMbdkySQJLwlxxGndnah3shj4ce4nGDSFjlRa928CspcF
	8lqw==
X-Received: by 10.58.181.225 with SMTP id dz1mr23996591vec.95.1373622815733;
	Fri, 12 Jul 2013 02:53:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Fri, 12 Jul 2013 02:53:15 -0700 (PDT)
In-Reply-To: <5CD486E4007E48769ED69BB9205D327F@PAULD>
References: <5CD486E4007E48769ED69BB9205D327F@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Jul 2013 10:53:15 +0100
Message-ID: <CAJTo0LYDLhLtd1gn3-t2vAhNgaWb2+ngQLbFpSjuTdgNBMwNsg@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Gm-Message-State: ALoCoQmYO80gW1ZeHxDvXoX0RTwuxEktO5k6EtwwRk0v5n74BDnLlmysqLXRb5aS4wH6yq68S8Qa
Cc: yocto@yoctoproject.org
Subject: Re: Mount options for removable drives
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
X-List-Received-Date: Fri, 12 Jul 2013 09:53:37 -0000
Content-Type: text/plain; charset=UTF-8

On 12 July 2013 09:30, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> Can someone point me to the configuration for how removable drives are
> mounted? When I plug in a flash drive, it mounts /dev/sdb1 as /media/sdb1,
> but it uses "relatime" and I'd like to use "noatime". I'd also like it to
> mount in "sync" mode, which I would think would be the default for such a
> drive, but I've gotten a corrupted FAT when I've yanked the drive.

As I understand it, the caveat with "sync" is that you do a *lot* more
writes to the disk which dramatically reduces the lifespan of
flash-based media.

Ross

