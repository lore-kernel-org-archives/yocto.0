Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CB06E00E07; Wed, 24 Jul 2019 20:00:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20F4BE00D5F
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 20:00:51 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id w17so3348191qto.10
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 20:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=cbXb4tZjmTENYPFQ0moy5o87ebT+46yAAJLRP3cv6WU=;
	b=ESUa7gXeoRo0LUr65nCSHOzt6/YWDxYv5taACHERvt6fR2sbi/vMXIemq90LnBAXJM
	hWxRdZmxthN4EmEBco5qS9Fsqo1v618P7hduYx7B9bsN4ASecnV5IrgB8kXSpXI4I3J1
	SkbR0VgwVpPWXXBN/7v18RY5u24JbcoTU+vfHSoKOc+HTgGdN0/GK1lx3hxCteOqD9u4
	LMt+SwBYnkmxwZQO6qD5bnYGz+05N++9fm9ZeMzktXq62nhhe590NgQ62vydqV1VClKy
	ejRDCOwM2QBgfU1BkqM2jLVkTlc9eFdSMFPlhMyQNHa61fU7u0q9yKjE4NCU+F2hPJVm
	kDVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=cbXb4tZjmTENYPFQ0moy5o87ebT+46yAAJLRP3cv6WU=;
	b=Y00/0oEXoyuwJ6yjgD9/j4oK0IX0bBvrEjavGTPRiREcyg1rDHmzNPE0sBVo1v1Pl0
	4FO1ywfaYzXvQNp0rVS1aKUCp1UrKP74vtG1V5kMe7a5QwDQqODZop0m9mb9YY6hpM+C
	L6E0WYtMxNm9uxr3ICk0zCHI12Rw9IVuI8hLL//9X8U9P3r/okvj3I5d22oMKAxrxar1
	s+RgO9qEseJ0JdMBICq1ybxdEjPspZwJz9pBOGL5TudL4j+dNnSfuMiG8eU4hbzfl83w
	nsyCJ3K2kyhgFfjesek8jpVl8fw3n9DsLyEFfxKgpFdrLtpNBMsPJ5NieJJWPp/dsJtl
	oY0w==
X-Gm-Message-State: APjAAAX6sy/P1Kp8e50BOd2J9faS47QN3z4V7zdnJrj1r9eDF/0nWL6V
	PwV+9PUKDkjIaRaNlIc73acFPx/Q6QuDaVGag6rNRvPC5/A=
X-Google-Smtp-Source: APXvYqwzGkoo1RvqJ/b6npqPptQVPTzvKWNv6HJ89aLSf3U5c0jTzkbHz/ts1iEEEA89n4YwZhdn8CADq0Tmg5zUPPM=
X-Received: by 2002:a0c:96e7:: with SMTP id b36mr61827385qvd.155.1564023651263;
	Wed, 24 Jul 2019 20:00:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWTJ_URf273D+6cp8JkeT=9oP5My37Lj22Ho_y5fNmT4=A@mail.gmail.com>
In-Reply-To: <CAA=hcWTJ_URf273D+6cp8JkeT=9oP5My37Lj22Ho_y5fNmT4=A@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 25 Jul 2019 05:00:39 +0200
Message-ID: <CAGAf8LzwJeTMLSVEKWdpTpbG+=XQdQxB7+zSKewm+oeDMVUrPA@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to fix SSH interfactive promotion for Yocto Linux embedded system
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
X-List-Received-Date: Thu, 25 Jul 2019 03:00:53 -0000
Content-Type: text/plain; charset="UTF-8"

> scp .... -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -o
> ServerAliveCountMax=3 -o StrictHostKeyChecking=no -o
> UserKnownHostsFile=/dev/null ...

Format of your command is wrong... scp assumes your options as files
to be transferred.

You need to compile better command, something like:
scp <file to transfer> user_name@host_IP_address:/directory path>
https://www.youtube.com/watch?v=fmMg6cyww14

Zoran
_______

On Thu, Jul 25, 2019 at 3:10 AM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I am running busybox in imx6 using ssh and scp in shell scripts, but I
> troubled to run the scripts to run ssh and scp, it did not have ssh
> options stopped at following:
>
> scp .... -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -o
> ServerAliveCountMax=3 -o StrictHostKeyChecking=no -o
> UserKnownHostsFile=/dev/null ...
>
> ECDSA key fingerprint is SHA256:rAS+4gVqPJj7yfVDHlhG1g5bQP+VgMczooGifv+H9vk.
> Are you sure you want to continue connecting (yes/no)
>
> cp: can't stat '-o': No such file or directory
> cp: can't stat 'ServerAliveInterval=60': No such file or directory
> cp: can't stat '-o': No such file or directory
> cp: can't stat 'ExitOnForwardFailure=yes': No such file or directory
> cp: can't stat '-o': No such file or directory
> cp: can't stat 'ServerAliveCountMax=3': No such file or directory
> cp: can't stat '-o': No such file or directory
> cp: can't stat 'StrictHostKeyChecking=no': No such file or directory
> cp: can't stat '-o': No such file or directory
> cp: can't stat 'UserKnownHostsFile=/dev/null': No such file or directory
> root@solar:/tmp# ssh-keyscan SaController >> /home/root/.ssh/known_hosts
>
> What will be effective and simple solution in Yocto?
>
> - Replace busybox by bash recipe.
>
> - Install openssh-client to run ssh-keyscan to write the target to
> .ssh/known_hosts
>
> Appreciate your advice for Yocto Linux embedded system.
>
> Thank you.
>
> Kind regards,
>
> - jupiter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

