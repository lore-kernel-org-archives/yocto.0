Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E1B8E00C1C; Wed, 16 Aug 2017 02:48:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1CD0E00C14
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 02:48:41 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id f15so29222498wmg.1
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 02:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=RBUAOp5kg4hM3bYbVBwWPc+9ozyuFrnoqw23kL4o8SY=;
	b=KcrISz8iY7S52KMKPLeGl/vXGW4HWbvexvaEYSqTdVmz9YONDT3q+wgVkms051VFLI
	82RhgVa2muhb/gRIu+IAXm6DT9NUc6VAwDaWja7pbLAvhKZoOfZj+HP/up2cY8vBU5+d
	zCHEcIVglU/wSLre5XkwgMXf//SmsFilAyMtp3XETOCrcqp0MvKa72UTGt5vYfezCDZK
	xW7iDdD3fmhkXU82BCNwq5M9kF8lcvNbkbFFyXlhnbZvBS/8JHMW8Xtqa/9tsjdH9A4p
	jmK2Xk7djmdcETWG+WDdPCLD8dWQWpW50nS1nOk8tQ6VpESiVhVRqRwfMeGVnwAMJOO5
	wWWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=RBUAOp5kg4hM3bYbVBwWPc+9ozyuFrnoqw23kL4o8SY=;
	b=P4u+C8mCGdywVxE/uwNkvvNSixkw0VotTz+9bxIaj/hwR3NMQ4B2+zoWC3NmOGjR7a
	j1r35NhK84hRmT050PjbDn5eLtKpX2UXYzYbz6TTvqGu9zmmkw4kLAED4kETNskkAxXn
	0EClLwe1dJODED8+XTf7arllN9kacpGHmV82DDFGzifHoeTA6nZ97f11WpFCGnG78LQd
	yySfooQPZeTP52Ne9MCEeXP1rOESll0c83g+0p5vdmAD9zqgwGtm0i5RZi173+ezH9Hs
	pylVJB5XjadthbNA1ECQ82uGL45gWZtN4IpAes6pTvdJ1x9+eaxFs87PWPzvbvq3Xwam
	95CQ==
X-Gm-Message-State: AHYfb5j85NJZq/jTrn1mxgRg5yrRpTyenu82gmTliTY9O2z9Jinvpt3N
	OQYJzxKjZYns0CFW5Qhh0lqlC1XK7UHR
X-Received: by 10.28.187.86 with SMTP id l83mr851207wmf.162.1502876920312;
	Wed, 16 Aug 2017 02:48:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.164.8 with HTTP; Wed, 16 Aug 2017 02:48:39 -0700 (PDT)
In-Reply-To: <DB6PR0502MB291749533AFB89E8DE29AC75E0880@DB6PR0502MB2917.eurprd05.prod.outlook.com>
References: <DB6PR0502MB291749533AFB89E8DE29AC75E0880@DB6PR0502MB2917.eurprd05.prod.outlook.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Wed, 16 Aug 2017 10:48:39 +0100
Message-ID: <CAPyrkgzPchRmz__d5tguCncgxHE40Nn8X6OTGSPPgHyeJE5Qwg@mail.gmail.com>
To: Never Read <dsjnews@hotmail.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Debugging Yocto Project build failures
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
X-List-Received-Date: Wed, 16 Aug 2017 09:48:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 10, 2017 at 1:36 PM, Never Read <dsjnews@hotmail.co.uk> wrote:
> Hi,
>
>
>
> I am trying to build a yocto project for a particular platform and get a
> compile error after about 45 minutes or so.
>
>
>
> The error is reported as a do_compile error when trying to compile a sour=
ce
> file for jq-1.5-r0 (JSON stream filter as far as I know). It reports that
> the file main.c could not be found. I have checked the particular directo=
ry
> an can see that it is in fact present.
>
>
>
> My question is as follows.
>
>
>
> Instead of running make to try and debug the problem (which takes ages to
> reach the point of error), is there a way to use do_compile to manually
> compile/build this one item?
>
>
>
> I have tried running make in projects directory (where its Makefile is
> located) but this does not work because perhaps it is first necessary to
> setup the build environment first.
>
> It appears that it needs x86_64-poky-linux-gcc to do the compile and on
> searching for this file there are about 8 or 9 versions/copies of this fi=
le,
> none of which are on the current path.
>
>
>
> If this is the case how would I go about doing this?
>

You should be able to run "bitbake <recipe> -c devshell" to get a
development shell for that recipe with the PATH set up. See
http://www.yoctoproject.org/docs/2.3.1/mega-manual/mega-manual.html#platdev=
-appdev-devshell.

Cheers,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

