Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E768E011AC; Thu, 14 Jun 2018 09:56:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.170 listed in list.dnswl.org]
Received: from mail-ot0-f170.google.com (mail-ot0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCF98E01135
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 09:56:31 -0700 (PDT)
Received: by mail-ot0-f170.google.com with SMTP id q17-v6so7884516otg.2
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 09:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=I1z+v7xOZz8O89zBzysMk2xUsgeiynZzceNKpwgI664=;
	b=FunkJcwtRmXRfHQALfxa1wHso+VZSpdjbRYsvJ6MYAge7I1Cg65/wffhV79HX6gfvC
	9W6q+K/U4BaOACFuum4Vjjcp08YDWajjTztIymVhhKkCml1VPA4wZyI0r6un4T5Um/mY
	rpnwbP3oxacnnOMVE7JhtCZJibha6z8/1treyM/s90EWqkHIPm4R5lwfSHlHo0/50DJy
	wIHCRC8xucFJIXHb2EaToAK8nZPHhTphKTkkfXxbHau3dW0vX00hfG7ReRnkd6z589DI
	FVjivZqToGg6jBzXkmIufJRXrp6qiIdho8lt+0ZLvHa+qhvsyg1FWpvjfRmfdMa1pqsV
	3QNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=I1z+v7xOZz8O89zBzysMk2xUsgeiynZzceNKpwgI664=;
	b=EAaD5DyoejDNozKgJ1JaY7K2U+RhWxJkZiJ9OlKxFhTGOBc4OU8X1mPye67/Eu096Y
	hx0if7PL6c/wLcIClzAM3N7GRbezbyExzivvCs5S1LlCp+Zvqbql7EtkL643/nfxOtdK
	+esB7eN7uCfzSCXcImGKA8q84wnX/APxyFCEYb6T4mYpjMb7NisDK92m18HejDswTpdZ
	T/wFfG7wBmCg7X187Dng1LhXJ9zYkeRB7I2R6VjkxGX7o14Zi1WwPw3h5W1/u8P2rxtn
	yTdo9HstyCGcVkBjuZL/2n/3LFmK3U9nDWNL6PEG5RbMmY6UvLdpAp7NmuAdRMl8FB4R
	0CoA==
X-Gm-Message-State: APt69E3sST7EXOZdIiIC4KVWlAP5R2X75Qhmv1GHYWentKHXjG00MqtN
	nU5hjk9v57VKxMuL58/aRqvwftVZHcNghIUVUA81pw==
X-Google-Smtp-Source: ADUXVKL6UnT5iY0/bxtzEyVuhaA1ax6Etyv/v+sjz7lQpm4NKGd8SBVy4UBoLkCjQwYweGZsxp5fJvMJHAplqnsummY=
X-Received: by 2002:a9d:1f23:: with SMTP id
	x32-v6mr1717289otd.201.1528995391067; 
	Thu, 14 Jun 2018 09:56:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:ed1:0:0:0:0:0 with HTTP;
	Thu, 14 Jun 2018 09:56:10 -0700 (PDT)
In-Reply-To: <aade00d6-6ad7-a894-420b-47a97fb68d37@gmail.com>
References: <CANge7vWW35a41fOJhFis1aw2vu2qw9TvtodTSKmyuJ5NvCuL7g@mail.gmail.com>
	<CANge7vWC+p7Df41A5uFLDYfP5EpaFiGhBxtEt5N_DJ3mOwvq3g@mail.gmail.com>
	<aade00d6-6ad7-a894-420b-47a97fb68d37@gmail.com>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Thu, 14 Jun 2018 11:56:10 -0500
Message-ID: <CANge7vVnftfefRnx80EjvEKfZUkPNvd0mf9QUMqXeXc-6UkCag@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>, yocto@yoctoproject.org
Subject: Re: qemu-native build fails on sumo due to missing capstone.h
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
X-List-Received-Date: Thu, 14 Jun 2018 16:56:32 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 14, 2018 at 11:43 Khem Raj <raj.khem@gmail.com> wrote:
> Do you have capstone development headers/libs installed on your build host ?
>

No, and I understand that's an easy thing to address on the build host.

However, I don't think this should be necessary build host dependency.
QEMU includes the capstone codebase as a git submodule, so everything
that's needed is there.

Maybe it's just a matter of tweaking the recipe to set
CMAKE_INSTALL_PREFIX appropriately so that when the build dives down
into the capstone directory, this points to the correct prefix?

It looks like the inclusion and use of capstone is new, as of the QEMU
version included with sumo. (i.e. This appears not to be the situation
with the version used in rocko and pyro).

