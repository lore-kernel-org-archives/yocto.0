Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B221E00B94
	for <yocto@yoctoproject.org>; Sat, 22 Mar 2014 12:45:45 -0700 (PDT)
Received: by mail-qa0-f47.google.com with SMTP id w5so3763682qac.6
	for <yocto@yoctoproject.org>; Sat, 22 Mar 2014 12:45:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=36EV+mjGppGEMM3IUivZtk84keOoHyvroo/qEyRp1+s=;
	b=mMLTJGjSHEYjzFiYsylk/3U3EQywtjIAwaPlqmMP113AmctZwZpM5xgW8fjtai+Njp
	e8suezKyi1GWJhSOjjLzApHITGM9oY8o28ZGG3Ls9EXMasIV5gwCyboPnnijgKHZdPnW
	ZMYXfESmkeMZLCnycZavXTroO02UfB9Dxean6jQqC2ZzRaUU7yO5BAY26zLzvqpbj4ZM
	ZusyJXz5F2fE3pImmLP/tcRV7BaxR5RGyOZ74Le2QZGZxQzLUv8SKBT0anewcutyJ584
	tF6v17+VQzg8SBBnTnVWElNqFXo4599LMu+MVPRLCeAFeVjnJ/8G4T13kbJLxjqHwTA9
	tkoQ==
X-Gm-Message-State: ALoCoQnCv/Xnauu3vs91vEmJKJ5SMSsBC9+P/IETOoI3oQUG5432H1jPN7xBQFY4MPN9iez+ksie
X-Received: by 10.229.192.7 with SMTP id do7mr65392409qcb.1.1395517544243;
	Sat, 22 Mar 2014 12:45:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Sat, 22 Mar 2014 12:45:24 -0700 (PDT)
In-Reply-To: <532D6D85.7010302@linaro.org>
References: <532D6D85.7010302@linaro.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 22 Mar 2014 19:45:24 +0000
Message-ID: <CAJTo0LYruhkg+c5KOae410SQkV0sRH-h05Y+gL73i1zYfsh0cw@mail.gmail.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: inherit setuptools
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
X-List-Received-Date: Sat, 22 Mar 2014 19:45:46 -0000
Content-Type: text/plain; charset=UTF-8

On 22 March 2014 11:01, Trevor Woerner <trevor.woerner@linaro.org> wrote:
> | Traceback (most recent call last):
> |   File
> "/SSD/build/fsl/build-wandboard-dual/tmp/sysroots/x86_64-linux/usr/bin/bmaptool",
> line 65, in <module>
> |     from bmaptools import BmapCreate, BmapCopy, BmapHelpers, TransRead
> | ImportError: No module named bmaptools

That's interesting because as can be seen in your listing, there *is*
a module called bmaptools.  Does bmap do anything "clever" (read:
stupid) before it does that import?

And FWIW, I didn't get much out of bmap when I tried it because of how
our images were constructed: all of the sparse segments disappeared
when a whole-disk image was created.  I got a much better win by using
USB 3: around 10 seconds to write a gigabyte+ image to a stick...

Ross

