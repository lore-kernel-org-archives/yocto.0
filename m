Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.8855.1578995939522986604
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 01:58:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=UZFq6wXF;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1342AE013FF; Tue, 14 Jan 2020 01:58:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9927E01383
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2020 01:58:55 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id b18so12081342otp.0
        for <yocto@yoctoproject.org>; Tue, 14 Jan 2020 01:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=maHsN3rdYBR6NzkFKTzIRMPcnJ6C+GjfRMfJOFB/CXk=;
        b=UZFq6wXF0cV3miNf41fl5Nwz/iT5gv4JlJUX7xuxGjykQqZkdL/HBimg8J/pO8rVLy
         QFQEpsjUuU9JmfgJpMSj4hGQUPW4KxlwerarbEnur9uGNuE+kWxTFrS8fO6WA1/bSTmz
         VdmI2eKiky65EQi7ApA1UHP5MDH3cHtuVbIMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=maHsN3rdYBR6NzkFKTzIRMPcnJ6C+GjfRMfJOFB/CXk=;
        b=VG5DYvHhsVEW3H8K+DjneC2CTargFmIkbcpCzMFWGLqCq7IWIseCdesBuBI+8w55w3
         IWD12ipQaE7bB/Kh5fjF4iKGY7lXRoaGwXcOGeHcF2lHY5BEtuM/d3OQl4XUHANbQR+W
         yUzHtmex7uRLqSs6ULhzWKTXgOvItuOuqyraLorxow0qnHwp32u8xUO8JH/eSxA7oXRZ
         nwM0xhNSu0AwXsF5cNMtlxcx19iTa5vwKaiNRl96c3bCDlbfEZJPlyGsDUAfnpdQrzMW
         iKdlq4joPIuQx+cwtU5GAbsxxHJfDBFLAGvRbJBzBSDoz+DdSbdhwmZ6tv89WLrobBOd
         kV5Q==
X-Gm-Message-State: APjAAAWJR1MCDc4RRCGbsUHhqwNp22MZ4deHOqEKorgAwowV5fsBQ6Hw
	131Gd25yP48Ing0Yn7dx+EtlrI9PFaQXaSAbxz/K0w==
X-Google-Smtp-Source: APXvYqyQ2BqjzWgL16ra9lrH9I+OoOx6v9TLxGnOIWv5sa+DACp2fMxe/TFLixOmhv7gRw6QK1Nk7BGkMFfVN4M/xyw=
X-Received: by 2002:a05:6830:194:: with SMTP id q20mr17068533ota.92.1578995935138;
 Tue, 14 Jan 2020 01:58:55 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWQeNV4X2cxfX0FuVCCFhM-gQULO_z1bVw2JvgeZ7rdJWA@mail.gmail.com>
In-Reply-To: <CAA=hcWQeNV4X2cxfX0FuVCCFhM-gQULO_z1bVw2JvgeZ7rdJWA@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Tue, 14 Jan 2020 09:58:44 +0000
Message-ID: <CAM9ZRVsSmb5QrgAjFh=qJKVohseLBEajb80higHnW9vBNmB=Kg@mail.gmail.com>
Subject: Re: [yocto] zeus build errors
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 14 Jan 2020 at 09:49, JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I had no problems to build thud, but after updating thud by zeus, I
> was not able to build it, what I could be missing?
>
>
> --2020-01-14 09:37:54--  https://ftp.gnu.org/gnu/bison/bison-3.4.2.tar.xz
> Resolving ftp.gnu.org (ftp.gnu.org)... failed: Name or service not known.
> wget: unable to resolve host address =E2=80=98ftp.gnu.org=E2=80=99
>
> -2020-01-14 09:38:26--  https://www.mpfr.org/mpfr-4.0.2/mpfr-4.0.2.tar.xz
> Resolving www.mpfr.org (www.mpfr.org)... failed: Name or service not know=
n.
> wget: unable to resolve host address =E2=80=98www.mpfr.org=E2=80=99
>
> ERROR: mpfr-native-4.0.2-r0 do_fetch: Fetcher failure for URL:
> 'https://www.mpfr.org/mpfr-4.0.2/mpfr-4.0.2.tar.xz'. Unable to fetch
> URL from any source.

My guess is a DNS issue or a temporary failure here rather than a
problem with the zeus branch. Could you try pinging those sites or
manually downloading the files using wget? If that works, try
re-running the build.

Thanks,
Paul
