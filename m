Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 120A9E00CED; Wed, 23 Jan 2019 03:07:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E114CE00872
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 03:07:23 -0800 (PST)
Received: by mail-ot1-f65.google.com with SMTP id j10so1511426otn.11
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 03:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=ZcP8kOpgMphLz338QBMw26n3MZyKv77D7LLfyss841Y=;
	b=g5otZEA2DY9kzLL2f2TbzJWyImul1WEX/9YEfR0bqRhRGBpNoueZsvi0iBo/Ge+cSo
	KHhFud3sqI6d6m7SFj2g8AUZ39uUmpi/0YXHIcwIuuEImG+WWWNQ/PsHB72Pe+Ok2A6C
	P91X/GZAQyrmnbe3bXPgZa8763/w8amQ6Dh6ZkcNv4MgSDQYlZ7pQMfBbUy9u574DCWK
	ALscKXWmO91cvFAF6qnugB0ucLizvNlVdcjvxtcMKS5aAHhL20jnPRQlSpYBqui6kqs8
	o1wWOxiXEVxrhveYUJBRqdod/KabQc+JAyvleVzFsCMjgNXU4ZLcpvszA6jAxnUvCItR
	Da6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=ZcP8kOpgMphLz338QBMw26n3MZyKv77D7LLfyss841Y=;
	b=qqY7K7jEdkB6qz9T3+k7QczjxffvVwYgpk6iVwzYn4N/V7bThqWvn5Rjs8qxxK/T6g
	+E3Ir9tpTn2rbCRRB2q7kBFmMz8QLGZAAvReyQXcULAQyfEjGqQpiKTMxXI8n38G18wY
	oDTz3I0/mvVcp9BqFU4UL7nseH3LltR1uegg8h6RQy95Qw1EVS4h1oCTWV1tkc3ICMOY
	zRVrm8wPs/FBAvlztgxdQp5UO4ENJ3GUrongoM96FYxF5Vv2Hyg2X8mim9579Y3Eq9bR
	bQbEEQh/igfu4NzbKk5nJofRvnbHCZjGtUnVAjKdZFwwFRiAPDJmxruAu7y1L7kPuSAq
	/dAw==
X-Gm-Message-State: AJcUukc72i/a52jdDN4RVw4ScVhTBo4OVTNAiL6OioXmAkvsbxl5ST23
	O5/rMqsJj8qGi+KFgf6RebLCVDj/KmDNNKeV5hg=
X-Google-Smtp-Source: ALg8bN4pdIDCh3z+oKuYmktaDm39i/s1jcNZEZvEnVMw1XzyWk37eqcMdnY5gNohCczo+y+PEG351pv8JGOj2OZjvT0=
X-Received: by 2002:a9d:640d:: with SMTP id h13mr1170028otl.153.1548241643367; 
	Wed, 23 Jan 2019 03:07:23 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8mWzaLii_WpEwE+spDaKjeaXxY9f76htNkPbZJKZkNTxg@mail.gmail.com>
	<CAEhQi8=-KpHdq3kh+gWYYkQOQ347X25vYqFB7H3a4KKQweV0Sg@mail.gmail.com>
In-Reply-To: <CAEhQi8=-KpHdq3kh+gWYYkQOQ347X25vYqFB7H3a4KKQweV0Sg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 23 Jan 2019 12:07:12 +0100
Message-ID: <CANNYZj-JTWMkew=EJbPf6H8edeLBG9AFt4HXLqAtaWLDmtEQhw@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dnf fail in do_rootfs cannot find shared library
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
X-List-Received-Date: Wed, 23 Jan 2019 11:07:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One more thing: can you provide the .spec file that is generated
during build and used to create .rpm packages? You will find it under
tmp/work/<target_arch>/x_media/

Please try not to edit anything out of it.

Alex

On Wed, 23 Jan 2019 at 12:02, M=C3=A5ns Zigher <mans.zigher@gmail.com> wrot=
e:
>
> I have toke the rpm file that was produced. I found the file under the bu=
ild directory under tmp/work/imx8mq-strix-linux/x_media/1.0-r44/deploy-rpms=
/imx8mq/temp/x_media-1.0-r44.imx8mq.rpm. I used the following commands
> 7z x x_media-1.0-r44.imx8mq.rpm
> 7z x x_media-1.0-r44.imx8mq.cpio
>
> The result from this gave me the file tree where I then could run
> file usr/lib/libx_media_1.0.so
> usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64, ver=
sion 1 (SYSV), dynamically linked, stripped
>
> So I believe that I have concluded that the rpm include the file that dnf=
 is complaining about. I don't understand why dnf thinks that this dependen=
cy is not meet when it clearly is part of the package. I have added verbose=
 flags to the dnf call but dose not give any more information.
> I am not sure how I can proceed to find out what I have done wrong. The r=
ecipe is a bit of a freak of nature because the binaries that I am packagin=
g is actually built using another toolchain but it is for the same arch can=
 dnf detect that?
>
> BR
> M=C3=A5ns Zigher
>
> Den tis 22 jan. 2019 kl 17:59 skrev M=C3=A5ns Zigher <mans.zigher@gmail.c=
om>:
>>
>> Hi,
>>
>> I am struggling with a recipe which more or less just downloads binaries=
 and creating a package. We have previously been using ipkg but now we have=
 switched to rpm in our builds. One of the binaries in the packages is a li=
brary let's call it libx_media_1.0.so. This library is part of the package =
that the recipe is producing. The library is placed under /usr/lib/. When b=
uilding the image I am getting the following error
>>
>> ERROR: base-image-1.0-r0 do_rootfs: Could not invoke dnf. Command
>> .....
>> ...
>> Error:
>>  Problem: package packagegroup-x-media-1.0-r11.noarch requires x_media, =
but none of the providers can be installed
>>   - conflicting requests
>>   - nothing provides libx_media_1.0.so()(64bit) needed by x_media-1.0-r4=
4.imx8mq
>>
>> ERROR: base-image-1.0-r0 do_rootfs: Function failed: do_rootfs
>>
>> Here is the output from running the command file on the library
>>
>> usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64, ve=
rsion 1 (SYSV), dynamically linked, stripped
>>
>> I have also verified that the library is part of the produced rpm so tha=
t is not the issue.
>>
>> Dose anyone have any suggestion on how to debug this problem? Because I =
am out of ideas
>>
>> BR
>> M=C3=A5ns Zigher
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

