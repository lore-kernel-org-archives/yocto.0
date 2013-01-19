Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f50.google.com (mail-pb0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC6B7E00716
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2013 12:33:40 -0800 (PST)
Received: by mail-pb0-f50.google.com with SMTP id wz7so2642233pbc.9
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2013 12:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=X1+6pulY/eynqhR7UvsmqtEbQnMmAiuuaE/094kL900=;
	b=rVT74j+PDZsB8N7ldhz71/gHXOmBMbBWr7g+LB03QSBk9m6YS1NNK/HBdIi5LnTbyf
	yQfaJswte5vwEzzLdwX2ZUIK8nH6NV0gzgjjGJYtWMNljv534XdtuUH1cJzrt2JZ4LQv
	8VUb1xuAwJvx9co6ER7JMGneMLzIXCrv6FJ0q2HhLtKUxJDELRuvgjoJshYhGVUAYGXl
	FHdeyZ59ygQGZ4yuePVVpztgS3reamAniRyTs4xc3UKQIoTrgKI3ic4lcSTZlk49yWqc
	RzhEcht9oCH7GFBjCpPIy1N/C9qdNGyl5aCNHCs9Th509PaBrvrd/Uqc6D4X78DOqK6f
	ltvg==
X-Received: by 10.69.16.100 with SMTP id fv4mr17167856pbd.135.1358627620551;
	Sat, 19 Jan 2013 12:33:40 -0800 (PST)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id qt2sm5518625pbb.24.2013.01.19.12.33.38
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 19 Jan 2013 12:33:39 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAFNBfteXwY-pL-NX3fM2t8GcZXTX3n7FsuNKnYW8Y459SK_kBA@mail.gmail.com>
Date: Sun, 20 Jan 2013 00:33:25 +0400
Message-Id: <EB9FD54A-F463-4015-8C61-15B83038CBE7@gmail.com>
References: <546EF617-BE24-4442-B74E-29A61364E9F4@gmail.com>
	<CAFNBfteXwY-pL-NX3fM2t8GcZXTX3n7FsuNKnYW8Y459SK_kBA@mail.gmail.com>
To: Flavio Castro Alves Filho <flavio.alves@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Eclipse IDE Plugin: Configuring cross gcc
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
X-List-Received-Date: Sat, 19 Jan 2013 20:33:40 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

On Jan 20, 2013, at 12:15 AM, Flavio Castro Alves Filho =
<flavio.alves@gmail.com> wrote:

> I believe that Yocto ADT plugin only supports Autotools based =
projects.

I tried an Autotools project with a standalone toolchain sdk installed =
on a separate machine.
It was able to reconfigure and build the example.

However, I noticed that on the machine where I built the toolchain, the =
autotools
reconfigure project did not work. When I type bitbake meta-ide-support, =
it
generates an environment configuration file, but the sys root variable =
is not
pointing to the correct toolchain x64_64 something. It is pointing to my
machine configuration folder, e.g. virtex_5_ml507_powerpc440

This cause the reconfigure steps to fail, and give the same error while =
configuring
the project, i.e. the configure step while attempting to detect the c =
compiler, and errors out
saying no c compiler.

Best regards,

Elvis Dowson=20




