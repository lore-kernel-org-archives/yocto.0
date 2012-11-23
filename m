Return-Path: <twoerner@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38AC2E0052C
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2012 10:27:01 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so5545020lah.35
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2012 10:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=IbkkXv+M7TCgcqJIjXfHznYaTuOPyuqsXfMioipF/EY=;
	b=XINwcJ5wDVTvIQSRB7dnM13XJGPRxrEUN/f7FyyMjFv7p4fIH+4lrS/C2mQNDcxAPi
	7N0ku4J5vf5iKD9ukpEbLzGIxO2ZuTbx0PIhPMIa/0sscU4rw6RELQi8nnSSfPFe6KZB
	uhQnNOwxD/PPKs4YHOnoQOx5i+l9tlZQVWyh8vwod3vlWF5fbc2bJKwrZukowyBYAtNo
	tDsl0sZqdpf9nnGBp7gR3TpVn6JSCtz5epr5nIFV5psP5x66A2xInZNyKtbneLyGy8vk
	lTktqUd3ho6jVDoKU+I5N8P5BqXp3jaQndn3hyrfQXaKAXjCweLjDvOL2hxlT653IoBw
	lKHA==
MIME-Version: 1.0
Received: by 10.152.108.48 with SMTP id hh16mr4141482lab.25.1353695220592;
	Fri, 23 Nov 2012 10:27:00 -0800 (PST)
Received: by 10.112.117.194 with HTTP; Fri, 23 Nov 2012 10:27:00 -0800 (PST)
Date: Fri, 23 Nov 2012 13:27:00 -0500
Message-ID: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: IMAGE_INSTALL_append workflow
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
X-List-Received-Date: Fri, 23 Nov 2012 18:27:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

There have been many emails and lots of documentation describing how
to add a package to a build, and that's all great.

Today I was playing around with an image I had already built and
decided I wanted to add a new package to the mix: trace-cmd. I added "
trace-cmd" (with the required leading space) to IMAGE_INSTALL_append
and re-ran my "bitbake <image>" command.

It failed:

    Unable to resolve package trace-cmd

If I perform:

    $ bitbake trace-cmd

and then

    $ bitbake <image>

it works fine. What am I missing?

As it turns out, if I knew before my first build that I wanted
trace-cmd, I could have just added it as described above and
everything would have worked as well.

Best regards,
    Trevor

