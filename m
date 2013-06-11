Return-Path: <jefro.net@gmail.com>
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24C15E014F1
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 10:48:54 -0700 (PDT)
Received: by mail-lb0-f172.google.com with SMTP id v20so3291886lbc.3
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 10:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=C5E6lHrCfBuiWmzh+xmucBm2drafdlzkV3WYGH7pbDg=;
	b=ExnHIREhLX6OAotUVaBAPhmSvN08pg+VdS7ZSjjQI3Id16eXWE+hnvMxn/sJq70mD9
	GHYI37rxoRVIPP+KvapVwRFFwik+NbWL1znWQrA6+rXwWDaCK0yQCA/zsPUVsgVBT4ua
	g/JA/2a2I1ypj7DiQXgpaxm0cSkXCOId1qDxlUWmj8LlVAgrJfxg+0coLtTXzu81Y9w0
	Fr9hRz6Y99gXxk6iD1xHJZLINAQeUxi19sdBSoncAM1zqTmCGZsuCQFGTO85zYPDN9/D
	Ew7TBnTmnoCHxLm2l/zINVmwHp/ZL9I2BoGhlrmFRBOZmRthTzB8vhSifliRB/h9Yvdv
	U6KQ==
X-Received: by 10.152.3.7 with SMTP id 7mr7897271lay.66.1370972932976; Tue, 11
	Jun 2013 10:48:52 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.30.146 with HTTP; Tue, 11 Jun 2013 10:48:32 -0700 (PDT)
In-Reply-To: <CAFMfyz+_j-mWj4C0YJUnOBcCX-oMGc8196pmPcQcD8XbK6r0xA@mail.gmail.com>
References: <CAFMfyz+_j-mWj4C0YJUnOBcCX-oMGc8196pmPcQcD8XbK6r0xA@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Tue, 11 Jun 2013 10:48:32 -0700
X-Google-Sender-Auth: aSWASV8eqTu3pjk7bhjUJGUlH2I
Message-ID: <CA+YB3rYq6_o_Sc50t0TVm5rnEeG2MD2qo=Ya6WKyG=c5vy_vHg@mail.gmail.com>
To: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: No crosscompiler in Toolchain
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
X-List-Received-Date: Tue, 11 Jun 2013 17:48:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jun 11, 2013 at 5:59 AM, DAMARLA Satya Swaroop
<swaroop.damarla@gmail.com> wrote:
> Gentlemen! We have a problem here...

Not all here are gentlemen :)

> I compiled the toolchain using the command bitbake core-image-skidata -c
> populate_sdk and installed the toolchain but I have to tell you that I dont
> see any cross-compiler installed with the toolchain...
>
> Any guesses what could be the reason.. The image is customized x11 image...

I'm not sure I understand. It looks like you are using Host A to build
a toolchain and install it into an image (core-image-skidata) on
Target A. Are you then expecting to use Target A as Host B to compile
for Target B?  Is it possible that the skidata image recipe does not
contain the cross-compiler recipes?

--
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

