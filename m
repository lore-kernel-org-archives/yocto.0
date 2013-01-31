Return-Path: <marc.ferland@gmail.com>
Received: from mail-qe0-f51.google.com (mail-qe0-f51.google.com
	[209.85.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA7C8E00294
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 11:20:18 -0800 (PST)
Received: by mail-qe0-f51.google.com with SMTP id 6so1464465qea.10
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2013 11:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:sender:from:to:cc:subject:references:date:in-reply-to
	:message-id:user-agent:mime-version:content-type
	:content-transfer-encoding;
	bh=snkA8Wl+Mnr5++2DOGXOmHNUBTFiIKIKvnhMC0mpfyY=;
	b=wHrluCCpG6GIDlVZHiXB7CN9/3qvumYIKCEqGWtZhBbA4Hv4b2rhOyXTJiIaiNfKuu
	NVVUo8eABAa413j5vu0BXVJC43YLjUdQsymerSkT7zesxb2QIBfCddlgISUj5+VO+/rL
	0HQOO49G1BzktTu8u/mr9IdAEBs8BXQKSeXEHih17W15RNNdHDXVb8t7J7UFh5NCjiEL
	3+g/WmCv5qZxAPAQ4pXY9196I/cjjcYd81VY4bKT+Rjl4FAHp5uuwqH0ZYpfoc4MhjlU
	UCCYTHYhVNVOcuZ/AlKMnR6O28tCGheBoSdlMDylQ3l39slhfut/7PAOFXJK8Vo4sYUA
	V7MA==
X-Received: by 10.229.105.213 with SMTP id u21mr2458775qco.152.1359660018222; 
	Thu, 31 Jan 2013 11:20:18 -0800 (PST)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id hr1sm4683887qeb.3.2013.01.31.11.20.15
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 31 Jan 2013 11:20:17 -0800 (PST)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Thu, 31 Jan 2013 14:20:26 -0500
From: Marc Ferland <ferlandm@sonatest.com>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
References: <CAE8H0+XKiAGXzTTbLd67CqC32rYBK4iNaDTkoJyjUx8xzkBj+w@mail.gmail.com>
Date: Thu, 31 Jan 2013 14:20:26 -0500
In-Reply-To: <CAE8H0+XKiAGXzTTbLd67CqC32rYBK4iNaDTkoJyjUx8xzkBj+w@mail.gmail.com>
	(r10kindsofpeople@gmail.com's message of "Thu, 31 Jan 2013 14:03:36
	-0500")
Message-ID: <87halxb1mt.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: lmsensors-apps builds, but not in final image?
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
X-List-Received-Date: Thu, 31 Jan 2013 19:20:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

r10kindsofpeople <r10kindsofpeople@gmail.com> writes:

> I'm hoping someone can quickly spot my mistake. =C2=A0I'm attempting to u=
se
> this recipe:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/recipes-exten=
ded/lm_
> sensors/lmsensors-apps_3.3.2.bb
>
> with my meta-intel/crownbay build under denzil 7.0.1. =C2=A0
>
> I put the recipe in my layer, and added "lmsensors-apps" to my
> IMAGE_INSTALL_append in my layer's layer.conf. =C2=A0
>
> The software builds, and I can see the files in
> tmp/work/crownbay-poky-linux/lmsensors-apps-3.3.2-r2.
>
> But it doesn't make it into tmp/work/core-image-minimal-1.0-r0/rootfs
> or the .hddimage file.
>

You have to use one of the packages specified in the recipe. Like
'libsensors' or 'lmsensors-sensors'. lmsensors-apps is empty.

Marc

