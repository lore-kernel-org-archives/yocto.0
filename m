Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7803BE00C43; Tue,  2 Jul 2019 08:29:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B818FE00BB5
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 08:29:43 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id s7so37832935iob.11
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2019 08:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=PDAUNNard5Ai/g/9KdHXuWSFqcKV5v5GAuKvOlq7mb4=;
	b=cV7zOfdq32JMx+Ho5l6S/avjocyUwn96OUDIq6+Oc7iHq7M9/RAY+s3zrhZaPaGp1T
	/t+75H1KHhXbbAPsAsMECupqeaHxl0Mh040l+V3u5Gs5LAl/yiH9R3aZwnBdb5seo2j/
	GixbV6lma4EhpgQZ9W/l3fmhFV134YGo75mbaYCZMGFhaAWO76cCaN3aNdJVigGXjy8q
	AtwK7YNBvmX1L9WptlJhXCFKjMbPfJyjGqJ11bY9v9tm9gwZZj0TNPldIrFVcxnjdLpM
	dwco1221hitVqcQveqYu0qLAOBDy4HAF3Eh5hyn4TLtgEdkoTM2Cif4IMRmu38lfh81B
	3qoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=PDAUNNard5Ai/g/9KdHXuWSFqcKV5v5GAuKvOlq7mb4=;
	b=sk9sbuKuyeRhQdWXv3ECK0glT3z+88rTqvbsvDvl8qiJl4xeqqfssHeRVXErCqBv8f
	lFPqGpFB3ONY3ZqwiUlQ009qaLX/lUDOqXsNiRxjve2jtYG7yg+CTnf8z/AM1BD7Aihy
	YX2UkyTF+pjbTmf/6exMYZtrgUFMymMM1gJsKDMHhvXNbQoLfL6Rc4NSPLk3wWF/S3R1
	q7GKLttFdVwzXJ7dUyXvG2QIRMVbHJIXBZ1JnxCnIJoAmaB1cve/0WincY8jaWv/V4S8
	QVRkGke83E5V74+IGnG0qFlE/f9TpQPSIAMwbJLBNhZ7bMqub7OjpdtPCnVp7TPtIioO
	8G2Q==
X-Gm-Message-State: APjAAAX8hT2IcZtVJBJV8FSzX5GFK0x2QZdDMb4XwOob2PTdQSvuhQrT
	HlC4KNV8Evb1sMWsexDXX0uHGh8BRdZZr+FBY54DEA==
X-Google-Smtp-Source: APXvYqz8WSnZHCiSMY8evNbYy6rGt000+G7S12wvp8Wc5fmrdry2U54nAdnQtL9RMuI7EznrCDK0y6isEYE8i68tBeQ=
X-Received: by 2002:a05:6602:104:: with SMTP id
	s4mr25629142iot.200.1562081383169; 
	Tue, 02 Jul 2019 08:29:43 -0700 (PDT)
MIME-Version: 1.0
References: <2566dd81001d4f4891db00ffb2419a21@trijicon.com>
	<CAJTo0LZcAF+F5SF1ifK+wB5ZzZjDXhZHn0a-Q+7wA1FRqJRDgQ@mail.gmail.com>
	<9b82304b0ac6483b9de2eedbc6a961f7@trijicon.com>
In-Reply-To: <9b82304b0ac6483b9de2eedbc6a961f7@trijicon.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 2 Jul 2019 16:29:30 +0100
Message-ID: <CAJTo0LbvoJNCAncDpSk-yUQSN=x3Oge4R-bQJV-6MzYTKHmvwg@mail.gmail.com>
To: Chad Gong <cgong@trijicon.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Poky build errors, help is needed
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
X-List-Received-Date: Tue, 02 Jul 2019 15:29:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Check that the checksum of the file you grabbed matches the recipe.
There's a MD5 in the recipe that it is comparing against.

Ross

On Tue, 2 Jul 2019 at 16:25, Chad Gong <cgong@trijicon.com> wrote:
>
> Ross, Gabriele,
>
> I switched to branch 2.7. Still have the same problem as shown below.
>
> ERROR: opkg-utils-0.4.0-r0 do_fetch: Checksum failure fetching http://git=
.yoctoproject.org/cgit/cgit.cgi/opkg-utils/snapshot/opkg-utils-0.4.0.tar.gz
>
>
> When using wget, the files can be downloaded as shown below.
>
> $ wget http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/snapshot/opkg=
-utils-0.4.0.tar.gz
> --2019-07-01 20:11:01--  http://git.yoctoproject.org/cgit/cgit.cgi/opkg-u=
tils/snapshot/opkg-utils-0.4.0.tar.gz
> Resolving git.yoctoproject.org (git.yoctoproject.org)... 140.211.169.56
> Connecting to git.yoctoproject.org (git.yoctoproject.org)|140.211.169.56|=
:80... connected.
> HTTP request sent, awaiting response... 200 OK
> Length: unspecified [application/x-gzip]
> Saving to: =E2=80=98opkg-utils-0.4.0.tar.gz=E2=80=99
>
> opkg-utils-0.4.0.tar.gz           [ <=3D>                                =
            ]  29.82K  --.-KB/s    in 0.005s
>
> 2019-07-01 20:11:02 (5.97 MB/s) - =E2=80=98opkg-utils-0.4.0.tar.gz=E2=80=
=99 saved [30536]
>
>
>
>
>
> Chad Gong
> Electrical Engineer
>
> Trijicon, Inc.
>
>
>  | P.O. Box 930059
> Wixom, Michigan 48393 US
> cgong@trijicon.com |
>
> -----Original Message-----
> From: Burton, Ross <ross.burton@intel.com>
> Sent: Tuesday, July 02, 2019 9:00 AM
> To: Chad Gong <cgong@trijicon.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Poky build errors, help is needed
>
> CAUTION: This email originated from outside your organization. Exercise c=
aution when opening attachments or clicking links, especially from unknown =
senders.
>
> On Tue, 2 Jul 2019 at 13:53, Chad Gong <cgong@trijicon.com> wrote:
> > WARNING: m4-native-1.4.18-r0 do_fetch: Failed to fetch URL
> > http://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz, attempting MIRRORS if
> > available
>
> $ wget http://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz
> URL transformed to HTTPS due to an HSTS policy
> --2019-07-02 13:59:34--  https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz
> Resolving ftp.gnu.org (ftp.gnu.org)... 209.51.188.20, 2001:470:142:3::b C=
onnecting to ftp.gnu.org (ftp.gnu.org)|209.51.188.20|:443... connected.
> HTTP request sent, awaiting response... 200 OK
> Length: 2006643 (1.9M) [application/x-gzip] Saving to: =E2=80=98m4-1.4.18=
.tar.gz=E2=80=99
>
> m4-1.4.18.tar.gz
> 100%[=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D>]
>   1.91M  1.38MB/s    in 1.4s
>
> 2019-07-02 13:59:36 (1.38 MB/s) - =E2=80=98m4-1.4.18.tar.gz=E2=80=99 save=
d [2006643/2006643]
>
> Looks like you've got networking problems inside the virtual machine.
> Verify using wget that you can download those files successfully.
>
> Ross
>
>
>
> This electronic message contains information that may be
> confidential, privileged, proprietary, or subject to the export control l=
aws of
> the United States, including the Arms Export Control Act (22 U.S.C. 2571 =
et
> seq.), the International Traffic in Arms Regulations  (22 C.F.R. Part 120
> et seq.), and/or the Export Administration Regulations (15 C.F.R. Part 73=
0 et
> seq.).  This information is intended for the use of the addressee only, a=
nd
> if you are not the intended recipient, any disclosure, copying, distribut=
ion,
> printing, or any other use of, the contents of this message is prohibited=
.
> Any transfer, retransfer, or disclosure of this data to a Foreign Person =
without
> United States Government authorization is also prohibited.  If you have
> received this message in error, please notify the sender and destroy the
> original message.

