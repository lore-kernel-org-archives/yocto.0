Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B3A2E00DA7; Fri, 18 Aug 2017 01:51:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 406C7E00B1B
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 01:51:52 -0700 (PDT)
Received: by mail-ua0-f182.google.com with SMTP id n29so1544581uai.5
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 01:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TPuzM2j6NBNg7Di9HIX9je+w7+FLEKkLt8fbZISeA+o=;
	b=Uojolz3vryxT5Pq+GnNyaQswy+zw6bmaCdkdlujYggy3mGfuUg00QSB8nmEJho+EWM
	NagqN2xLiEPaW4nhb8Z2wbusiWlB/ZDLQnx0SlwDdLxNorqkKjQVigMMY+w78kDDevfE
	tI3jIQhu0vXJs0RwE/id0tXOfyhS42elBiZjvTDMPlJ2QCsJLGce8msTyuSBMs56738B
	O9b9d4QdAvsA7LBjktODDD4DteRwIFXRPhJx2U0z06JrQ8SyWdrxCIfGy4q8qEcRO+Dt
	3id2gBTzT/ACr7SiuamVzuxsB6iSlKgYKoJtoHgRoflOrMAi/t9DYPcEUuWc1CN/HsIQ
	XRFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TPuzM2j6NBNg7Di9HIX9je+w7+FLEKkLt8fbZISeA+o=;
	b=j35b2IDZ73F2HXX0Cf0So+Fee0/VdUAGw9R7gx1Y4zkiUT1zCrrSfrPi0zzYHNBVD0
	aIVO93zkFCWtSXfJ+G0DVnrG4lxyuKyWXeM0AfyVpIJ/1lapFqNv8bRKnUdejsASKUE4
	B9WEtxt59wq6Zo5oRcPSABnp7c/W8H34YX9HPZtusIiZo4eVugFPrhEgyss+rwaxRqNq
	ugiS5UBMZLF/HnuDRCBR99S3yzUtyKyYz7i0gzg5o7zG2chHicG20BZGxNPxnMJQ/hBQ
	zdvp0Q7LrGTGcC3OSmET9HHogNnrym1WJraSxooK+aXivkq+ZHodvSdBNCiZWAzUaoa6
	WxCQ==
X-Gm-Message-State: AHYfb5gSvcF5IjSI0skSuAVK/UUiADLad+Evuv9VMdDpU6mN7NIcw1up
	MbYW0xMGxA8T8I/ZF7wRgdDYxDoVKQ==
X-Received: by 10.176.8.81 with SMTP id b17mr5727751uaf.82.1503046312077; Fri,
	18 Aug 2017 01:51:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.26.168 with HTTP; Fri, 18 Aug 2017 01:51:51 -0700 (PDT)
In-Reply-To: <1502980006217.54872@BlackBox.com>
References: <1502980006217.54872@BlackBox.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Fri, 18 Aug 2017 10:51:51 +0200
Message-ID: <CAEjjRe+tYoJh5ux-iCYsqHfbdRp8_xyfMcaegXXppvK3iHUqsA@mail.gmail.com>
To: "John O'Sullivan" <John.OSullivan@blackbox.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Checking out code from svn
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
X-List-Received-Date: Fri, 18 Aug 2017 08:51:54 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Yes
user=username
pswd=userpassword

it's still in the bitbake code. But not in the documentation.

Beside providing username and password as a parameter bitbake also
parses URI and it can also contain useradata.  Where URI scheme:
scheme:[//[user[:password]@]host[:port]][/path][?query][#fragment]

Regarding SVN module and correct svn fetch url creation, documentation
misses examples and pitfalls.

if no path_spec, path_spec == module

SRC_URI + module -- ( fetch/checkout sw ) -> downloads/svn/SRC_URI/path_spec
downloads/svn/SRC_URI/path_spec  -- ( do_unpack )  -->
tmp/work/.../<package>/../path_spec/sub_dir

mirror tar -> module_src_uri_revision.tar.gz

Pitfall here is download directory structure and new SVN client (1.7+
version). SVN client doesn't exit when there is conflict in the svn
directory. So one have to has unique path in
downloads/svn/SRC_URI/path_spec for it packages and shouldn't use
multiple svn urls which are finally fetched to
downloads/svn/SRC_URI/path_spec

P.S.
For authentication to svn resource you could save your credentials in
~/.subversion dir or use svn+ssh rather than using username and
password directly.

Br,
Chris Z

On Thu, Aug 17, 2017 at 4:26 PM, John O'Sullivan
<John.OSullivan@blackbox.com> wrote:
> Hi,
>
>
> This worked for me
>
> PACKAGE="myapp"
> SRC_URI =
> "${SVN_ROOT}/path_to_module/;module=${PACKAGE};protocol=svn;rev=HEAD"
>
>
> where SVN_ROOT is something like
>
>
> SVN_ROOT = "svn://10.10.10.xx"
>
>
> Hi,
>
> I am looking for some help with incorporating a svn check out into a recipe.
>
>
> The current syntax I arrived at is:
>
> SRC_URI =
> "svn://myserverip/Emerald/trunk/Applications/Examples/;module=SampleApplication;protocol=svn;rev=HEAD;user=username;pswd=userpassword"
>
>
> In interacting with this server I would normally check out using a command
> like
>
> svn co svn://myserverip/Emerald/trunk/Applications/Example/
> SampleApplication SampleApplication
>
> This would give me a directory called SampleApplication with the required
> source code.
>
>
> I would normally authenticate myself once in advance of this checkout.
>
>
> The documentation at
>
> http://www.yoctoproject.org/docs/2.3/bitbake-user-manual/bitbake-user-manual.html#svn-fetcher
>
> mentions
>
> "module": The name of the svn module to checkout. You must provide this
> parameter. You can think of this parameter as the top-level directory of the
> repository data you want.
>
> I'm not sure what that means in this context, in my example does it mean the
> SampleApplication folder?
>
>
> There is no mention in the current documentation of parameters like user or
> pswd so I am not sure if these are still used.
>
>
>
>
>
>
>
> ________________________________
>
> This email and any files transmitted with it are confidential and are
> intended for the sole use of the individual to whom they are addressed.
> Black Box Corporation reserves the right to scan all e-mail traffic for
> restricted content and to monitor all e-mail in general. If you are not the
> intended recipient or you have received this email in error, any use,
> dissemination or forwarding of this email is strictly prohibited. If you
> have received this email in error, please notify the sender by replying to
> this email.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

