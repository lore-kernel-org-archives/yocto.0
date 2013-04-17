Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD571E01487
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:57:10 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id hv10so1443713vcb.23
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:57:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=m7AobzIKiiuzq0oH4zOPBoa/VXPOm9EIZQqlCYpf8VI=;
	b=eGRRS1BSCjKwGnlzadFhCa2Oucv2s3oAOHxAL3RpVINPy7UYGzi6VZfRKlsWLNJVD6
	MyMu0GrkfwBLWFfhPxpIfv9wO5dH9q2g0QvsMUgVuiMGMVc16QWOFKpcPxfqpTN35U1r
	bj0eYINu0PxsEbMAACK+MyZldkHr78I11tSN22WEkal4i6uJ+HMLOrxEoD1HZSYETwBQ
	RXG7PhlxV/gyKWCIXRKPHdV6VKi+hy269b6hzE4VaXCqYl9CddxxptoyPSY6pUftszxW
	EoVpAHRPVdsYDILTRSBQET9xRxxrwx68MvEu83P6KmbS3qCDP375yVyoiahRUoQIqhDz
	n7rA==
X-Received: by 10.220.119.200 with SMTP id a8mr5306780vcr.38.1366214230196;
	Wed, 17 Apr 2013 08:57:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Wed, 17 Apr 2013 08:56:50 -0700 (PDT)
In-Reply-To: <CAFMfyzKZNic47o-x83EZu5ueu7imZE9ZWCtYGsPu+J-0oqE2qQ@mail.gmail.com>
References: <CAFMfyzJJY0hFGXimgdVwzp8i58PnXPnAUyKH_bk9DU25FXVjiw@mail.gmail.com>
	<CAJTo0LbUfNkkgeM9HNN4pE6n-tMyMJY9_4_Ns5BTie91=Qy4HQ@mail.gmail.com>
	<CAFMfyzKZNic47o-x83EZu5ueu7imZE9ZWCtYGsPu+J-0oqE2qQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 17 Apr 2013 16:56:50 +0100
Message-ID: <CAJTo0LZr0s1tp6V0_3W5odWmCOzyRtU4_E92OL8omtf9GBGTPA@mail.gmail.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQnO/lKskxjDMvqD1l3LMnics1R5gC1OoY1qEJyptvW/eaH097dxoKe7rF6OajE+I+rNCc9d
Cc: yocto@yoctoproject.org
Subject: Re: Adding prebuilt binaries to /usr/bin on rootfs
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
X-List-Received-Date: Wed, 17 Apr 2013 15:57:11 -0000
Content-Type: text/plain; charset=UTF-8

On 17 April 2013 16:11, Satya Swaroop Damarla <swaroop.damarla@gmail.com> wrote:
> WARNING: File '/usr/bin/sdusb-cmd' from skidata-tools was already stripped,
> this will prevent future debugging!

Use INHIBIT_PACKAGE_DEBUG_SPLIT = "1" to turn off the generation of
-dbg packages, as this is where the splitting and stripping happens.
As your binaries are already stripped, -dbg packages are pointless.

> ERROR: QA Issue: No GNU_HASH in the elf binary:
> '/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/devsrv'

This is familiar but I can't remember how to make it disappear, sorry.

Ross

