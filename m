Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBCC0E00CFD; Sat, 13 Feb 2016 10:12:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 692C9E00CF8
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 10:12:43 -0800 (PST)
Received: by mail-qg0-f47.google.com with SMTP id b35so84922628qge.0
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 10:12:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=moYzmA2VCNMZftShzZ10T83kYfoAKOEt+BMivJGnQfA=;
	b=Cq9A1JyHptBIUVpyTJwi2XKclQBifvyCRS1hzhldcc04UoLKpsEFoiQCLij2OC13t6
	VbhS4AFA6mWw8Wu3vJq5QDkaR1fUKZGrJg6JI7yqpkHOI9fW6skIsv8YP7wpaYidIhTR
	i9TQfAnPI9aj5wOxeXJeh4pUVFWtD1GoPfW+XCN0vV91CP65yEWr1/hcK2kdKkvpnpli
	VqV4g3QulBoMZf3UOsBrOHVgfStWksLskndBjyio5V6T/ukwj7hvnDK90UJbeOe9poOW
	s8uipXftC59GcyFjzd6SyDi5XWuS6Q7wY1y+JU94HxjppTwIoFhW3w4zjXjEXAG1SEZg
	tGcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=moYzmA2VCNMZftShzZ10T83kYfoAKOEt+BMivJGnQfA=;
	b=K8zlkZiJv7LW2yhK1PuMtP0lKVT2I1J0eGfee3LS+vAGHvSpSE0rTxW3MhWKQHugoX
	XYeC0R2uzhPIUI3WxFsOa8JfiEA8kHTT6okyqpoisVuUHb9Hbc3jqKHXLwqcaaLJ3HRv
	Lq/NXrKihx1XDZguxFg25fS6lB5sh8X2O/KUM7XsERcnTTbOXS72Z5pDVwWu4794VC2z
	kDHIXazLo8JLx0cNHMTK6x8YUVyJEF0htAgBUzb0W3XEeoEjQinKRBNleM1Kr62VCxYJ
	R1eJburRK4eziK1gThOn6IouYZB8EPtnqP+DCJpqIGFhZYWMGzyuTIlYKG7g0KdVSKE8
	uO1g==
X-Gm-Message-State: AG10YOSRsNEo4A/nGmiV140MjtmAL2I7fqxRItLO+byNB9gaFg/RppULSTWt80zl4j+X931XD+ggkWmWckP9/A==
X-Received: by 10.140.108.181 with SMTP id j50mr9893470qgf.104.1455387163527; 
	Sat, 13 Feb 2016 10:12:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sat, 13 Feb 2016 10:12:14 -0800 (PST)
In-Reply-To: <1455384501.16142.372.camel@linuxfoundation.org>
References: <CAJTo0LaMycXVjZLoPMU7Te2HDpp7+YUu8GGuNznhk8D8Yje27A@mail.gmail.com>
	<3534892.4K3lPByQ7B@nickl>
	<CAJTo0LY6r8od5c3rysNWFg=-3c0jWx4STaaPQD-pcEmUmqh2Dw@mail.gmail.com>
	<2ABA8704-6F76-49C0-8DD4-8C74295CF4EB@gmail.com>
	<1455384501.16142.372.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 13 Feb 2016 10:12:14 -0800
Message-ID: <CAMKF1spdna7gtQvgAR7KH584G4xj-DV8PzVrWYKRsvfnVfiQ-Q@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Nick Leverton <nick@leverton.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dropping Debian 7 as supported?
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
X-List-Received-Date: Sat, 13 Feb 2016 18:12:46 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 13, 2016 at 9:28 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Sat, 2016-02-13 at 15:30 +0100, Jens Rehsack wrote:
>> > Am 11.02.2016 um 15:32 schrieb Burton, Ross <ross.burton@intel.com>
>> > :
>> >
>> >
>> > On 11 February 2016 at 14:21, Nick Leverton <nick@leverton.org>
>> > wrote:
>> > Possibly a little early - Debian 7 will be going onto LTS security
>> > support for
>> > two years, starting some time this month.  Quoting from
>> > https://wiki.debian.org/LTS
>> >
>> > Ah yes, I'd forgotten about the LTS project and was looking at the
>> > security team.
>> >
>> > This does make it less clear, but it's still an old release and we
>> > can't support/test on everything.
>>
>> Sure, but are there some serious/expensive maintaining efforts
>> continuing support Debian 7?
>> Or is it an approach to kick Debian from list of supported
>> distributions for (above?) reasons?
>>
>> Since I run some build instances on a Debian 7 machine which is not
>> going to be upgraded that
>> soon (don't want Debian 8, but don't want to reinstall from scratch
>> and migrate my Xen VM's ...),
>> dropping support for "it's just time to move on" is more a Desktop
>> philosophy, not for embedded/datacenter
>> approaches ...
>
> For example, we'd like to use the sparse option when building rootfs:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=9099
>
> This support isn't available in the version of dd in debian 7. Our
> options are:
>
> * Build a dd -native

For core feature like sparse files its better to control our own destiny
and use dd-native regardless. But that does not mean we should
not drop debian7 or arcane centos distros that we keep supporting for
ever. I still see patches for centos 5.8 in metadata.

