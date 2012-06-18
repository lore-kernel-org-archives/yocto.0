Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B38FAE013F7
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:33:27 -0700 (PDT)
Received: by eekb45 with SMTP id b45so2194143eek.35
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=UNEgf6gzFqUrsbJaSxb+zM/tfFSeY7Z26KBsWINmw/k=;
	b=A8sPaRzrqcaNPTiWp+ZZGBuaiOx5e6757N3g8BZDpB8UrabiKW07P78Uhnv7WnyKm/
	iffcz66EXMTg4Fk0ggQO5z7+hIYmtle9bRWzeqvJWVRu2Lm2WsxYbfpfeOEccAukiDKg
	MGjVLN6XttpjQkGeBw3aeKlccmQoyI00gkx22q9Pi7mIzCDHRHCNFeZO1eTGWP2nyCOn
	Rk6rgF0zSTEFveSXi2KIcgp6kF0msaZPA4/r1yAwaf2R7Qprgk/UVR6KOmr2krt89AaC
	92GDy4ClFx3t5duSOsg2dfbBsGon/4ryD+Kv2WN+e1VEYiZjgijlhcA1H3AELSQmwr/e
	8T9g==
Received: by 10.14.48.76 with SMTP id u52mr3187863eeb.180.1340055206868; Mon,
	18 Jun 2012 14:33:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Mon, 18 Jun 2012 14:32:56 -0700 (PDT)
In-Reply-To: <20120618211807.GM3178@jama.jama.net>
References: <cover.1340050502.git.dvhart@linux.intel.com>
	<ca931379d2b30a750ea068558d0040647adcee75.1340050502.git.dvhart@linux.intel.com>
	<160abe7fb477d772d5563a1b826c307630332a5d.1340050502.git.dvhart@linux.intel.com>
	<CAMKF1somYK7Qb4kNfXMH=5wh4kaPdt2vi8s-OywAMwHT2T48WQ@mail.gmail.com>
	<4FDF999E.2030200@linux.intel.com>
	<20120618211807.GM3178@jama.jama.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Jun 2012 14:32:56 -0700
Message-ID: <CAMKF1spLg3wSepaLoDH7tWCJGNZCORMziFBETBxxD6cJnQ4SCw@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>, Phil Blundell <philb@gnu.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 2/2] tiny-init: Basic init mechanism for poky-tiny
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
X-List-Received-Date: Mon, 18 Jun 2012 21:33:28 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 18, 2012 at 2:18 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> what if someone is using
> tiny-init in image with coreutils/util-linux/whatever is needed to
> execute /init without busybox?

it wont work. Thats why I asked for rdepend

