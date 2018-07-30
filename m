Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51746E008CA; Mon, 30 Jul 2018 07:18:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7842E0080A
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 07:18:16 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id k81-v6so21494790oib.4
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 07:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/QsmXdIukDEo8A2TiYVwTKDjo/6LNc7gufFYOsJWrhs=;
	b=lv2dUkRvT+85dALSis99VTUDZjAQ3j35K5c25QEhUfZV2aWIPU7RJnN0OtW7uZlc6B
	IY4KEWEdp2DMXW+KyhmQOqWTovjR8RAu3Lh+tB5jQwSJkWLkGgwj8J1kx2LdJNgOjvVb
	yNk2FXm7IpIm9MswqW1u+0BMJIWlZW1SiBJMsnIWcKu+tvl09GxdtvS1eB9bH+4tKoy3
	dGmPjILTjvgDYl/Vb5R2dyIEdLc6QAbkXEvZLNZh55VJaNCuanvPkSkuXNzkl41OBQpg
	0iTsRS02f9VH23mjGz9IFmFk/xVfz5FrnxKnEWS42eeIip3sxLt7Yw/JE/NPCFbeJ8n5
	XJIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/QsmXdIukDEo8A2TiYVwTKDjo/6LNc7gufFYOsJWrhs=;
	b=SsMMr8N+q8AOj9UPkDCJfOMuBAup6Nfhiq7lMkTwJJeJFHf1J7nts+c04ALnUGIpvK
	GM8oYau/9d2XMigkrpBeY0QUdf3bOLiBIW4060WP2UUierBMAtr0XuUGzOJ8aTlgNW4x
	ni9e5JV16dXs0DA3iQ79LBJtlJyp7IyJmHrmHJ2HshAK84oEF99fiMqtoqKmen7mnH9d
	D97LAqj3ZKEViW/mv72ISdXjyIGWfELHL8YUfquOqPlJVTAXBj6wwgu1VBm5mLqp1cM5
	GURwatqRVWRcvSYUHVCg02KDzUXmzazkwq9djWOrTCSWlzIm80lqAqFsUEnyrqsORo/C
	UNxQ==
X-Gm-Message-State: AOUpUlG1OhJmfGmHsDCM9qQDgSfhbm9QY9s6vXE9Ns7kTabMJlyAADSx
	FqfAlpD22SDFE8ZBjmiJ1s1yNUtfKpgeke2LPoZ5tA==
X-Google-Smtp-Source: AAOMgpcO4At698L7TH/7nhZcKXZQA42molCUC7XK1XJdrLS0QHu8WFkLz2GXbGzO6JSSuEeCSZEiakZ8ZOvqgPcA/6c=
X-Received: by 2002:aca:b256:: with SMTP id
	b83-v6mr19233809oif.235.1532960296289; 
	Mon, 30 Jul 2018 07:18:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 30 Jul 2018 07:17:55
	-0700 (PDT)
In-Reply-To: <CAFeBWL4qPSzB=o8BicxhpW-xwi4BQhBFQPuajx5A0GA=X=znYg@mail.gmail.com>
References: <CAFeBWL4qPSzB=o8BicxhpW-xwi4BQhBFQPuajx5A0GA=X=znYg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 30 Jul 2018 15:17:55 +0100
Message-ID: <CAJTo0Lb+KsKi2fKwEJx-KbDmbTnCPVwwNaM0M0-mO3G2xOeDeg@mail.gmail.com>
To: Adam Lee <adam.yh.lee@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] devtool add recipe with no srctree / fetchuri?
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
X-List-Received-Date: Mon, 30 Jul 2018 14:18:17 -0000
Content-Type: text/plain; charset="UTF-8"

devtool add's primary convenience is how it can examine the source and
write the LICENSE correctly, the correct inherits, etc.  If you're
just going to install a few files then just write a recipe from
scratch.

Ross

On 30 July 2018 at 15:10, Adam Lee <adam.yh.lee@gmail.com> wrote:
> Is it possible to run 'devtool add [recipe-name]' without 'srctree' or
> 'fetchuri'?
> I just want to add a simple recipe with a few files to be installed on the
> target file system.
> I can directly add a file in my meta-layer, but devtool is probably the more
> correct approach.
>
> Adam
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>

