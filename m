Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f53.google.com (mail-ee0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D7B2E01409
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 20:54:05 -0700 (PDT)
Received: by mail-ee0-f53.google.com with SMTP id c41so474478eek.40
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 20:54:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=IRjRN9XcD7HwT40U9RHW/3YNY/Xvn9tmu6GjhMSwHdw=;
	b=bHHgVURbywPHe5bw2i5dk5+hU3IuxFynGNxBIX+eJGi1tRrsIIHxGS5q53mfFcqe7S
	JI3bjM11WOBNtVmSdNUXwwnfdsD+sxfqe48XI8YU+VpVY/VNBQjVAz9LH6YNOLIGzfdw
	kLlky9Jp3vKhBGjf8CPUx4iDY7CjikYv6goDlKAM2AfpimCvhLHYx6I4kwSZtun8gFrK
	Z5/2YR9vPgDq9zSoGQNgtVGOxaM+/4DfblR4MwKc0G5dHhwND9fmlJig+aWN63+iRTFe
	dyYLKhmPayeHYjNrBaVV36kL3jnGRDz5jgk/GvkHdL9FybXgyZdY39vpgvcFCwp7Ldkt
	KoMg==
MIME-Version: 1.0
X-Received: by 10.14.173.70 with SMTP id u46mr4127006eel.92.1372910044303;
	Wed, 03 Jul 2013 20:54:04 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Wed, 3 Jul 2013 20:54:04 -0700 (PDT)
Date: Wed, 3 Jul 2013 23:54:04 -0400
Message-ID: <CALmOhgk03z=B1aAuav0DmN31FW_EhnV9mXMbxDHKtpF4-0RmPQ@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQlsg7xWLjaNL5zOnoJ5RxCtsXKkbcPMMJLEH+PCov7R2/W4rqdL/I+wYKj2Fim+tFAxUBq1
Subject: sstate-cache hit/miss
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
X-List-Received-Date: Thu, 04 Jul 2013 03:54:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

Is there a simple way to determine how well (or not) the sstate-cache
is being hit during a build?

At the end of a build there is always that line saying (something
along the lines of):

    NOTE: Tasks Summary: Attempted X tasks of which Y didn't need to
be rerun and all succeeded.

How good of an indication of sstate-cache use is this information? If
I perform a successful build, delete sstate-cache, and then perform
the same build again Y is always some value greater-than zero. If this
NOTE at the end of a build was 100% a report of the sstate-cache
hit/miss rate, I would assume Y to be zero after a fresh build with no
sstate-cache, no?

