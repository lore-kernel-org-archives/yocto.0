Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35A9AE01525
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 05:56:21 -0700 (PDT)
Received: by mail-ee0-f52.google.com with SMTP id c50so5967925eek.39
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 05:56:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=6Mh1RZMi7bfiJshqN1U1gqTu/kicBIamennxT6WKEco=;
	b=PXuLEOMt0VvczjHtxhhS0HmCGFug0uFfyPJhco5mkSMQVkGBLDTk2wzXlU2mFG+H6H
	h4nW0DW588IotWQGdBrSH781CrjSYk0Bw1BFmtlUYKCDbVeW5ioyGe2dC6P5LTfHVT3N
	EnLlhRMYfJx0/7C1CMNjFSRmZ7apiI/dvCaI8C7jCFt+REsZU3esWRPk/4HyF3u3bS0p
	9n+MiTSj7+s2GGT2kXN1Jr6NAUL9MxJfg8lF1jbizTb6bYrx2ea1w2JI1qM3Z0g7SbBw
	hkamz6u1KKYJgrmjRjZRJILrE9dcLrU6QhFh9X2nxgsDF5PSxpocohISqWrhIKfJoRMM
	LCLQ==
MIME-Version: 1.0
X-Received: by 10.15.102.68 with SMTP id bq44mr24756979eeb.89.1372078580156;
	Mon, 24 Jun 2013 05:56:20 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Mon, 24 Jun 2013 05:56:20 -0700 (PDT)
In-Reply-To: <CA+gsK-orLA13kBxTSj-E451GQKKdy8L6hUHQxKQgFqg-VNiK8Q@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50C1A@ORSMSX101.amr.corp.intel.com>
	<CDE892AD.36CA0%david.c.stewart@intel.com>
	<000001ce6de8$70639de0$512ad9a0$@annabooks.com>
	<CALmOhg=h=j+uHiPdGShjZwtL97jsnhz1v6T4GRfcge0jJypTKQ@mail.gmail.com>
	<CA+gsK-orLA13kBxTSj-E451GQKKdy8L6hUHQxKQgFqg-VNiK8Q@mail.gmail.com>
Date: Mon, 24 Jun 2013 08:56:20 -0400
Message-ID: <CALmOhgmpSjx-D-EycMX9AJv1Rwgrvv3VE2jKqakd4kUtbXYHJg@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Rudolf Streif <rstreif@linuxfoundation.org>
X-Gm-Message-State: ALoCoQllf26Y7xQ99Z+jl8e16qBCfky8h2dgX7IyRfo33iiOgHfUhG6e3wYL7P4MqyceL9bnHfvi
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail
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
X-List-Received-Date: Mon, 24 Jun 2013 12:56:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Rudi,

On 24 June 2013 01:41, Rudolf Streif <rstreif@linuxfoundation.org> wrote:
>> If I were writing a book about Yocto/OE,
> This is a project I am currently working on, a book about the Yocto Project.

Awesome! That's great news! I was hoping someone would "beat me to it"
:-) I look forward to reading it once it's done. Do you have a
publisher or an expected release date?

An appendix on Android's "repo" tool might make for an excellent
addition; it seems some Yocto projects are showing lots of interest in
using it.


>> in the first chapter I would
>> have the readers build their own filesystem/kernel from scratch
>
> I thought about that too but I found it distracting.

Fair enough. Maybe I'll write some blog-ish post about it for those
rare few who would like to see a bottom-up perspective :-)

