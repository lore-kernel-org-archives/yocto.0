Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ED50E013FE
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 04:47:21 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 29 Aug 2012 04:47:16 -0700
Received: by obbtb18 with SMTP id tb18so884768obb.35
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 04:47:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=dWp0Bp5YVcEwO3UrNQ2RUYxOcTYY3wKUcfEusjBQCaw=;
	b=AZn5WUN+VuGB83N6YgSpTyXS+oKkO4XMXX/0iu+HnHgNmuD4mKGshyxOcYVi6AmA7d
	cLB7B2pBFOY7NRrkRZP71tDSdIUEQUjAKDK7Dg9jX8uJDeWGdHV3uAqtIyKic0fuj5NH
	3PcP5dAPVVcU4Y5KDCbUV8gZjB/Pc0wP4QkiXrS4ID0QuRtcJOQXIDEYr7ApiPabstAs
	6PPQGn8YLEb+Hs8etAY9Ijqah/GfwBRDMbcD86p21vnEfPHzRwvXb8ju3NroyPWC0mjj
	6+8T96Kc53/GqxbF4B/DHpB0OMoxfKvvIKrbpBzIjBj9w/stJ8lA/4gLalgzvbUhREyY
	dYhw==
Received: by 10.60.19.195 with SMTP id h3mr900156oee.102.1346240836111; Wed,
	29 Aug 2012 04:47:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Wed, 29 Aug 2012 04:46:55 -0700 (PDT)
In-Reply-To: <5037C9B6.2040306@gmail.com>
References: <5037B5F5.5040105@gmail.com>
	<27A36DD288D740FA887185346F191582@intel.com>
	<5037C63E.6050507@gmail.com>
	<AB1D85DF566F4611935A07ABBD4D003E@intel.com>
	<5037C9B6.2040306@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 Aug 2012 12:46:55 +0100
Message-ID: <CAJTo0LaMQkoGqojaDdFOXeELvRJow=sosoKWYnGgV_ONtRjgCg@mail.gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
X-Gm-Message-State: ALoCoQlak/+l/7qa1o8iij5ByjhktzexhxQ/3kJvNwBxychDZ3NWdMs2LiRQ2MuYmYbnImGEhO4x
Cc: yocto@yoctoproject.org
Subject: Re: configuring WiFi in Yocto
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
X-List-Received-Date: Wed, 29 Aug 2012 11:47:21 -0000
Content-Type: text/plain; charset=UTF-8

On 24 August 2012 19:36, Jim Abernathy <jfabernathy@gmail.com> wrote:
> On 08/24/2012 02:23 PM, Ross Burton wrote:
> See the linux-firmware packages. There are a few split out sub packages, and
> then linux-firmware contains the rest.
>
> I see the rtl8192 firmware included in the linux-firmware recipe, but not
> sure if there is a step to force a load of the firmware.

Whoops, accidentally took this off-list by using my phone.

If this is still broken, can you attach the output of dmesg, ifconfig
and iwconfig on a fresh boot?

Ross

