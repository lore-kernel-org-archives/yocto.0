Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C71ABE0027E
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 08:22:24 -0700 (PDT)
Received: from mail-ie0-f200.google.com ([209.85.223.200])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 31 Oct 2012 08:22:23 -0700
Received: by mail-ie0-f200.google.com with SMTP id 10so4330330ied.11
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 08:21:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=1kgxXp7dMK5z6JGa9Q2xRulTNCofDBZT3PJX/ZelIJs=;
	b=MT7r1gVn3Md3AJfmoQ4w5TOLxtxsCbRqzEGs8URMNvA/ybqwo3l8Gxlld+B03dab/i
	Fw/HdczySN3z0Srtzb0VF/Rqd7nKnFlmeKi7V7SNYbEn2YpwlHyuVYY2vRn5gsp1emmv
	AcLvuVoMw0qt8VMNCOzFxBMxlno7oUzdwyDCYV4vf63gfuAnhF41p1W0aRlKnEzYZgqR
	5avEmmPri32YHR3kK/BojHrQYQwEFk10DCcjblpqZOf2WSlHWO47J30NfgiQhBrEEQuv
	OqAkGsSbhVWW4MA4loMZI8iB4p4gbUHAQ3BSoLlLyTiWJ7OBZ7rF+dJR2EsSOn77gswk
	DciA==
Received: by 10.42.65.6 with SMTP id j6mr32165523ici.2.1351696911336;
	Wed, 31 Oct 2012 08:21:51 -0700 (PDT)
Received: by 10.42.65.6 with SMTP id j6mr32165514ici.2.1351696911232; Wed, 31
	Oct 2012 08:21:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.68.41 with HTTP; Wed, 31 Oct 2012 08:21:30 -0700 (PDT)
In-Reply-To: <1351696672.1762.8.camel@empanada>
References: <cover.1351650062.git.nitin.a.kamble@intel.com>
	<1351696672.1762.8.camel@empanada>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 31 Oct 2012 15:21:30 +0000
Message-ID: <CAJTo0LYZwOa2twSCABHYHcqaTg_hdR-pkG--dCcKdd2Sb6NL0A@mail.gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Gm-Message-State: ALoCoQkZDlzs5swLg0tbY/8U0RVecPKV6cvXQYRH8F8qGn5wsPaCHGM8H6YLk8byhZhD6ZGVLXVaU9S0wPZlKwQp4mGmjesjxVunKxQGv5Dzn43NlHsNkpevgd/8mRe9q7vqL+Pg9JPQJtYobrDIU3l3PBVmaKKcoQ==
Cc: darren.hart@intel.com, yocto@yoctoproject.org
Subject: Re: [PATCH 0/4] misc fixes for 1.3 meta-intel release
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
X-List-Received-Date: Wed, 31 Oct 2012 15:22:25 -0000
Content-Type: text/plain; charset=UTF-8

On 31 October 2012 15:17, Tom Zanussi <tom.zanussi@intel.com> wrote:
> That just leaves cedartrail before we can pull this in.

That's odd, I was just about to write a mail.  My current images are
broken as they are based on master which has a duff udev.  I'll do a
rebuild against danny but that might not happen promptly.

Ross

