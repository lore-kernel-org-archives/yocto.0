Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B7C2E00C90; Tue, 11 Dec 2018 02:55:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.170 listed in list.dnswl.org]
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com
	[209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4070EE00C1E
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 02:55:03 -0800 (PST)
Received: by mail-it1-f170.google.com with SMTP id g76so2886293itg.2
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 02:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=tktyaeoQjD8c0x4o2XAHzSfilaDIiCQ7H5kNorjQO18=;
	b=RRbuwaPEXXZRDdcTRyP4SHOnAvzgl4xwbNxcDe9y+5StRFmT19andSB1ixF3DIAv1L
	/wQ4sq4jcIPC98iByqctVnvrFM3CyQHLP0hOkDutjKDjCFu7nx+GJvvx+qIypt4PFLHt
	sfuRbiAjxJKb2nU0MP3aCsZ3ovDNX4kPwh+86ivt7UNmKR+o4hpZ1CjO0QYxcbUv37c0
	WHg9eqOk4XJG+U0xlp1A7PviGhGjBdxHBYkC4LENCILOxf7xuAQoshgAlFlWbEvGJAZO
	Z1Ycrir2QbzzlWHGZIQ+3XIu7cPargmpjd6cuoaGvsZywdU1cDDVp5afzfcPYvmOyhT0
	OBWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=tktyaeoQjD8c0x4o2XAHzSfilaDIiCQ7H5kNorjQO18=;
	b=GT+bJCAAQkAdpQgUz8UvhjbGuytxOKFFq+PhXC8bSNyvCZcm90TE0eY3T3VeyPyOsv
	hFA+fHqQIKe9WSXF5JC1I2BjN6C4sdtbVJYCqZ2b3gVoF72++lI2+F45wJK9H2MWez6u
	2ocF7+yABcT25lWzfJIgNTsn+970YjCCoBekvOEvsAzl2sVV65sKkZAAs3tjxReJKRzG
	Un+krR/HUCksYEbntsfq/OLoYnSND/QosaCv7YaaAVMTXT7h1TkjDAvJPXaXJK3jNyik
	RacW2y9BQ8b9wU9cmWvcBWS/LsN9wXu+ACDsP1+Ezv7JoxRffgzBZvXsLDRA80ZR7MJP
	iyXg==
X-Gm-Message-State: AA+aEWYf7X25dmw+GS3yuJqr+pfJewlgbQPsFqj1LiWnKzLBO13LWRWX
	hHieU8TI8Cj+Fy+eBzw0wRqk/vLV1l71yyJAH8ibfQ==
X-Google-Smtp-Source: AFSGD/XLh7w0pIZcpZI/V77fW0wvywgsBvKb7mlblp+F4W4VsnLUkaNqtuBsd2wzEryDA1n3YdWesZjxwWG56MmyP1I=
X-Received: by 2002:a02:57c4:: with SMTP id b65mr15149543jad.79.1544525702872; 
	Tue, 11 Dec 2018 02:55:02 -0800 (PST)
MIME-Version: 1.0
References: <CAKpuFdeEtgn9SFt6OsTca7zHFKDc32ORmbn69EO01P+YdybVDw@mail.gmail.com>
In-Reply-To: <CAKpuFdeEtgn9SFt6OsTca7zHFKDc32ORmbn69EO01P+YdybVDw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 11 Dec 2018 10:54:51 +0000
Message-ID: <CAJTo0LZTGKxuQRQretND8S9NFHnqgX1vBkVbNMNaPgfH9K75sQ@mail.gmail.com>
To: jonaskgandersson@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Do rootfs fail when switch from rpm to deb
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
X-List-Received-Date: Tue, 11 Dec 2018 10:55:05 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 11 Dec 2018 at 09:11, Jonas Andersson
<jonaskgandersson@gmail.com> wrote:
> The following packages have unmet dependencies:
>  microservicebus-node : Depends: microservicebus-node-npm but it is not going to be installed
>                         Depends: microservicebus-node-npm-JSONStream but it is not installable
>                         Depends: microservicebus-node-npm-JSONStream-jsonparse but it is not installable
>                         Depends: microservicebus-node-npm-JSONStream-through but it is not installable
> E: Unable to correct problems, you have held broken packages.

I seem to recall that deb doesn't support packages with uppercase
names.  This should have caused a warning somewhere else though.

Ross

