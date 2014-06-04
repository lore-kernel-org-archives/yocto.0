Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49B45E00BF7; Wed,  4 Jun 2014 01:28:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5E6AE00BEC
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 01:28:48 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id 63so15161104qgz.2
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 01:28:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=cPhS5C6RFw+5mmkkSJ6tK/18U1AdC+EVPjcGP8uNcjk=;
	b=R7dtk2Iz5zCK1o8joefEPVxO7HH3gBA/aARsbtR2x84y4N4k4uI7NlgWtKmE2gy1QS
	yOLQdkb2MAsmf4oGfoDW7g27BrS5TWOXn0dtUoKabnLydVZQQQVE2h+bdfRBfLbYI38C
	dq0XNPVPqTadPp8LO+/+TUmp05zVZys72atHikPOtIYDUN26uomq229sqsrUh5tonWH4
	2Z1vyi9/Yhz85Pz5A5lJaZI5BAPnAiRhhFZWtIafa7+YBioHAMzGKMcWXEo35dLi0qgy
	Pt3J3c1/4JmDqhefCAmA5pH4lRLYMNSlMhXUWT6chl6a3bv9fhFIGmZNguTH8xIrNPld
	EO7Q==
X-Gm-Message-State: ALoCoQng61B3OKyYm2iIzAdBvZmtM92YiX7Nh+swCF/Iv4tKKGNMhYHODsIvqK9P+hcN0WtVHoY0
X-Received: by 10.224.151.206 with SMTP id d14mr3488120qaw.35.1401870527835;
	Wed, 04 Jun 2014 01:28:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 4 Jun 2014 01:28:27 -0700 (PDT)
In-Reply-To: <1401843822-13967-3-git-send-email-lynncyrin@gmail.com>
References: <1401843822-13967-1-git-send-email-lynncyrin@gmail.com>
	<1401843822-13967-2-git-send-email-lynncyrin@gmail.com>
	<1401843822-13967-3-git-send-email-lynncyrin@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 4 Jun 2014 09:28:27 +0100
Message-ID: <CAJTo0LbLeCkwJSWyJkmz1PhLj=6BTUvqj8=55JokykdgnKbPLQ@mail.gmail.com>
To: "Lynn 'Cyrin' Conway" <lynncyrin@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/3] PublishArtifacts: add md5sums artifact
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
X-List-Received-Date: Wed, 04 Jun 2014 08:28:49 -0000
Content-Type: text/plain; charset=UTF-8

On 4 June 2014 02:03, Lynn 'Cyrin' Conway <lynncyrin@gmail.com> wrote:
> -        else:
> +        else:1

Pretty sure you didn't mean that :)

Ross

