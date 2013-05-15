Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 467C5E013A3
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 03:37:13 -0700 (PDT)
Received: by mail-ve0-f170.google.com with SMTP id 14so1815861vea.15
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 03:37:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=+jFZT9QLSlOz4TXBG8GdMMJ6M/l9tHgqZpHhpI/m0Vk=;
	b=OTtL0Jm6bf9+DeLNA5LKsjEHwtUuS7MFEgoSrjkCX44FbElWEQk65sG3D6KYvTwfs0
	YveCcZ7CSKmRcK4XfvZBQW9gN/8GFSMlJubzCbemdYrGmLinfMH03proTScjlDrK4Vvu
	gz5VNkGLSxXrufr4GAsrytaggc6oA0IjL4r4HOfAfHsy+kOuA39ZFLlj56C3ap6Qigi1
	uMdCPfe4/7eRWpmDHAVoUJx/dz9XO2e24I/rYYC8t6GqYqf40jGj/sLJesaDomSv4LRc
	pfFrKSUEMYwZhCJ4ayKntMG7IDuBHkajstm0YLVWUd8Or154zg1A3zQPxx2tBR1cAouu
	WCTQ==
X-Received: by 10.52.69.200 with SMTP id g8mr3217221vdu.4.1368614232548; Wed,
	15 May 2013 03:37:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.221.8.3 with HTTP; Wed, 15 May 2013 03:36:52 -0700 (PDT)
In-Reply-To: <1368613962-22807-1-git-send-email-stefanx.stanacar@intel.com>
References: <1368613962-22807-1-git-send-email-stefanx.stanacar@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 15 May 2013 11:36:52 +0100
Message-ID: <CAJTo0LatQiXSBAakkzswEMfZRKe_cSA8ExjL-qZpY64C9ge_Wg@mail.gmail.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQnoOLQpkv511RMBLCKoDuWRZtk8Oxhuol2web1s3oxdbbovqFIFrt3lhVXgBYsGXoqgTXF+
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH] nightly-qa-extras: fix image config options
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
X-List-Received-Date: Wed, 15 May 2013 10:37:13 -0000
Content-Type: text/plain; charset=UTF-8

On 15 May 2013 11:32, Stefan Stanacar <stefanx.stanacar@intel.com> wrote:
> Remove the dmesg sanity as it requires copying a file which
> won't work on a r/o image.

Is this copying the dmesg.sh to the target?  Why not copy the file
into /tmp, which will be read-write?

Ross

