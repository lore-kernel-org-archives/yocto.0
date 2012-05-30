Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04215E00723
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 07:44:52 -0700 (PDT)
Received: from mail-qc0-f180.google.com ([209.85.216.180])
	by mga09.intel.com with ESMTP/TLS/RC4-MD5; 30 May 2012 07:44:26 -0700
Received: by qcmv28 with SMTP id v28so2531341qcm.25
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 07:44:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=xAxINk06LxX2iJdRK+G3anmPBdH+Y4ilDVOXhxSO6Cs=;
	b=L3OmcV84Rn/4jOhlc2UCGBq6eTr3CLJxL7AdBBMZVNpZUNK2+cD0k80ewvXgs/CvK4
	xyu4hyTuX7VI09WXTehItstqBTPOB2UeX6tU3/2h31cj5veLxVUaVHlXGpvnAQaOBpw9
	5dYaX/ZROJqWDGmQs/rjSb9u0O9d/IBJKaowwvSSdA3WaQvb1Htqb//WgprowrrbHcPg
	69tsomRoihvJCk9rlUztGjnpk9Y+EAD+uqYRa61u1P8gDULXE+NksqaD9i/xL1Jr7xDs
	DYg8q4ictIqKEDsiY+A4xmkXUdEGYKz7CNkotVn0rSZpjNuoPATsIqvBhdRIPQY0WeLg
	r+8A==
Received: by 10.224.44.136 with SMTP id a8mr16180300qaf.34.1338389066057; Wed,
	30 May 2012 07:44:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.53.212 with HTTP; Wed, 30 May 2012 07:44:05 -0700 (PDT)
In-Reply-To: <3142CB09BE468C408BD5916115E8D45F012A0C@G2W2535.americas.hpqcorp.net>
References: <3142CB09BE468C408BD5916115E8D45F0129A8@G2W2535.americas.hpqcorp.net>
	<CAJTo0LbO9isDBoeO-oMf3nR5+57mgJq66Q1njfEsaR1A2whi=g@mail.gmail.com>
	<3142CB09BE468C408BD5916115E8D45F012A0C@G2W2535.americas.hpqcorp.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 30 May 2012 15:44:05 +0100
Message-ID: <CAJTo0LbN00yBJG29umhXMwkPxkXJbumUmSH8SqMg4w8qiN7s8g@mail.gmail.com>
To: "Racine, Michel" <michel.racine@hp.com>
X-Gm-Message-State: ALoCoQliqKKkrt1HrG5g43iE9MFPhNtWn3QGknBVG1HAkyOQPXCaHbrTGvbB6QCMBH+frX7SZYsH
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build issue (syslinux ext2_fs.h error) in Edison 6.0.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 May 2012 14:44:53 -0000
Content-Type: text/plain; charset=UTF-8

Michel,

On 30 May 2012 15:35, Racine, Michel <michel.racine@hp.com> wrote:
> I'm currently working from a tar ball release of 6.0.1. Could you please point me to docs/link to obtain a patch? I probably missed it from the docs I looked at...

The patch is attached to the bug at
https://bugzilla.yoctoproject.org/show_bug.cgi?id=2236.  The direct
URL is https://bugzilla.yoctoproject.org/attachment.cgi?id=439.

Save that, then patch -p1 < /path/to/the/patch at the top of the
edison tree should result in it fixing syslinux.  From memory it
cleanly applies to edison.

Ross

