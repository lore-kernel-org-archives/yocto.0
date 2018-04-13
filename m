Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDEF7E00938; Fri, 13 Apr 2018 05:51:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f195.google.com (mail-ot0-f195.google.com
	[74.125.82.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E184EE0084E
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 05:51:06 -0700 (PDT)
Received: by mail-ot0-f195.google.com with SMTP id v64-v6so9705418otb.13
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 05:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TIaE47AJKn/Px/QBhk+Ey4c9f3oYk8EzwPHnbKlJOTQ=;
	b=CL7vMr38ACOQRTF5GCDw0DqtmWwkD7hy9GYF1SNRb7qG9HQE1EAWrjhzXmg/85XoeJ
	SHAjJRv9E2J0XTppm9f9kiQOeQhM9raIzMdjXYdLDnZAW1E7F9pAZP7sfvq/Cn8Mj8lp
	B1cIZ3N0uUDF3gdvoct0ogy16+byuAJ2bKuDOLGC07xdySw4PQKvjxatYKx7sXdQDSdK
	5h0a4UfF8ZuD7fvHW6Vu8tUSAmhjvOJQaLetBVYZYCVy5tV2r4bHG81cbDwfFYyJ/0KR
	4wNHtUYzt1TBQI2SySIPlUrAQSD2YxJ2dIwOar1gt5LH0y9yplEbzNP3tanZ+1UVaAX+
	r1yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TIaE47AJKn/Px/QBhk+Ey4c9f3oYk8EzwPHnbKlJOTQ=;
	b=fc7D/SoJgE5CB330jdTYASzjOOjjZPCpvJxmDAMercHCDVVFJ5MUvm8S4B929IeWD6
	HbJ0nHgFhbQV89FUA6xHCuzNXdI/GnfeX1AXtLUcnzn7WqcUKPy2LUlb/w8HCkgxtpYd
	7gzh0lvd3nmusb+jLDoe0YzCp2LmkD6gX+V927z91GcQf/42Fo67FO+NfXmpFGSrIYkE
	e6ZEnoCVgDI+PlwoA2fXperzzoUBVwstRrCnK/XITZC73iJawxnqzKb/OYWqiWTUqrYt
	yG2tkocFS5DsEuudAGRh2AemxcGCqJNOvtdRm6TGx8gBSinZ4SXB167fT6eyB+VHpERL
	NeJQ==
X-Gm-Message-State: ALQs6tC7wa1nb6KbMP0wmYaK4Fo3OuHwJxptunQrJ0zuEcFqAlirgXG3
	FeXq9tK67oj9tleQPqLy6MaYAb4AbMUS67qgvU2KBg==
X-Google-Smtp-Source: AIpwx4+Gtldq5OYV7Ntd/5becEF9kRaraZVpN8C4i0jAKGsXOIqqlw4jj1N2nU6sppDuixQdT+ewjwE9QngxNoq8Do4=
X-Received: by 2002:a9d:2ce2:: with SMTP id
	e31-v6mr3311817otd.135.1523623866058; 
	Fri, 13 Apr 2018 05:51:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Fri, 13 Apr 2018 05:50:45 -0700 (PDT)
In-Reply-To: <1523577311-28620-1-git-send-email-juro.bystricky@intel.com>
References: <1523577311-28620-1-git-send-email-juro.bystricky@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 13 Apr 2018 13:50:45 +0100
Message-ID: <CAJTo0LaCBSJ1ch7_DuT5xCp8Z79tM4DxQqzeNy7JP9HOoAuF8Q@mail.gmail.com>
To: Juro Bystricky <juro.bystricky@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Juro Bystricky <jurobystricky@hotmail.com>,
	Alistair Francis <alistair.francis@xilinx.com>
Subject: Re: [meta-mingw][PATCH] qemu_2.11.%.bbappend: fix broken qemu build for mingw
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
X-List-Received-Date: Fri, 13 Apr 2018 12:51:08 -0000
Content-Type: text/plain; charset="UTF-8"

Is it feasible to fix the original patch?

Ross

On 13 April 2018 at 00:55, Juro Bystricky <juro.bystricky@intel.com> wrote:
> The commit "qemu: Bump to version 2.11.0" in oe-core broke the
> build of qemu for mingw, due to using "socketpair", which is
> not supported by mingw. "socketpair" is used in a local patch,
> not in the qemu upstream code. The original local patch had
> conditional code to exclude "socketpair" for _WIN32, but the
> modified patch for qemu 2.11.0 removed this.
>
> The fix is to simply remove the offending patch.
>
> Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
> ---
>  recipes-devtools/qemu/qemu_2.11.%.bbappend | 4 ++++
>  1 file changed, 4 insertions(+)
>  create mode 100644 recipes-devtools/qemu/qemu_2.11.%.bbappend
>
> diff --git a/recipes-devtools/qemu/qemu_2.11.%.bbappend b/recipes-devtools/qemu/qemu_2.11.%.bbappend
> new file mode 100644
> index 0000000..764b500
> --- /dev/null
> +++ b/recipes-devtools/qemu/qemu_2.11.%.bbappend
> @@ -0,0 +1,4 @@
> +
> +
> +SRC_URI_remove_mingw32 = "file://chardev-connect-socket-to-a-spawned-command.patch"
> +
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

