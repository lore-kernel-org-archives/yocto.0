Return-Path: <erik.boto@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EE1AE00C91; Thu, 13 Dec 2018 04:45:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (erik.boto[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.178 listed in list.dnswl.org]
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
	[209.85.210.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B8E6E0076C
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 04:45:16 -0800 (PST)
Received: by mail-pf1-f178.google.com with SMTP id c73so1059958pfe.13
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 04:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VLK2iA3h/cjRl1baGhbJdz4Fcxz63VkzkHGiYRzqcz4=;
	b=K/7h2aief2HDvIKZStpUA4czjdRtclTlV3OnG0gsJVM6bpH9Yrau3F0e0Jwb45dTn9
	v6k8zReUhckLoJTaciVn1wmIuQPYFI/sr58oV7+Z6D9MK3oWDQUKtuQO5c+LMgKASUnM
	DEwrL7zNO+UFbAsb8iO1zdEkL/rpxXu1JunCNtKJCwleyfvNFyOZgJeNNm36GOe0OgkK
	JXRPfQahpts62kcG4q4Fq/L5SRrpOox2Xl+e5WOWk5NOMdndEt6L4E79b7v5N3nTiup8
	YxGQLy5gnU3jNMQiIlYsyMcQhBFRKnzbXMMwDdiZ8XWedZNt6AwwJOHuCAhB7OTZ9kFm
	oblw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VLK2iA3h/cjRl1baGhbJdz4Fcxz63VkzkHGiYRzqcz4=;
	b=i21XwkdoyTPJmwU+AB3wx+caSGNcoa0amx8TxYGljqeC9KUhqotboN1q3RPW6+5SRu
	Ck0ql3WViX+97xH/HawYEJmrlLuIf20oIY8B//9KL/Q/zdLRSkrzfJ17i2MSmQnGLHW7
	aoSRawk2AqKH06J9w/qcsjD3gvKBK4OTuDfufIx7d+5fXGDVeNOoOZsCDJnRqErXCMv4
	RVweEDZQlNXj4m3NGe5zb4XGj/Rwe7XWyCW2qjcWX/Y/tB3Gn0bWy3NV7QdyLnu3OuV+
	FGtjqfOW9fCFtRY2Z34hOBRVpTiVDJ9kE4/KEuMgQq83VNqBW6x7uBQu/Alo2GUMG3el
	OiRA==
X-Gm-Message-State: AA+aEWZ2+YPoO7qpjgv8/2itT1OtQV9J9Xqok+jwC799xsHidK8gtUqz
	0CjNt5TVcMNrzeNkD3+lbQuKX3Gj/Fn3CWt0iVA=
X-Google-Smtp-Source: AFSGD/WEaK8OsswoKh2N6yeTnRp3MR3VSAM6k3DliIGIv8br+okDFzUgzUIuIQ09eDQHeFGVjR/63ekkohvWx3hcPC4=
X-Received: by 2002:a62:184e:: with SMTP id 75mr23503803pfy.28.1544705115612; 
	Thu, 13 Dec 2018 04:45:15 -0800 (PST)
MIME-Version: 1.0
References: <CAOT_U5YDEXHTHtbeb1Hhxvk5=7AufdpyT2u7L1TEpjYL8D0BAw@mail.gmail.com>
	<CALNvYWPWFE-egwTGvqiO36H9fi=YapkHZR+k9wKMsBYVff5vew@mail.gmail.com>
	<CAOT_U5YikyHbm=mtS4UgbO=Hm5DPaEqforUcw9-O+KpDF-Mszw@mail.gmail.com>
In-Reply-To: <CAOT_U5YikyHbm=mtS4UgbO=Hm5DPaEqforUcw9-O+KpDF-Mszw@mail.gmail.com>
From: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@gmail.com>
Date: Thu, 13 Dec 2018 13:45:04 +0100
Message-ID: <CALNvYWNk7vYj1J3euV-zqzYXDO7Bpcb7yszOJAjttD2ceKPqRA@mail.gmail.com>
To: alan.martinovic@senic.com
Cc: yocto@yoctoproject.org
Subject: Re: Best practices for tokens/passwords that can't be versioned
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
X-List-Received-Date: Thu, 13 Dec 2018 12:45:17 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 11, 2018 at 1:44 PM Alan Martinovic
<alan.martinovic@senic.com> wrote:
>
> Thanks Erik,
> guess that could work to and seems cleaner than the env variables.
>
> It still leaves the question how to move that content into a static file.
> For example if in the end the recipe should install a file with "super
> secret" as the content.
>
> Example on the device at runtime:
> cat /etc/config-passwords
> super secret
>
> The only idea that come to mind is to do something like in the recipe:
>
>     set_secrets() {
>         echo ${MYSECRETKEY} > ${IMAGE_ROOTFS}/etc/config-passwords
>     }
>     ROOTFS_POSTPROCESS_COMMAND += " set_secrets;"
>
> But that seems like a bad practice because it "globalizes" the recipe logic.
> It's no longer a matter of that recipe but something applied to the
> whole rootfs.

But couldn't you just place the creation of this secrets file inside a
regular recipe?

When I have config files that I want to place e.g. secret credentials
into during build time I ship them with placeholders that I can then
use sed to modify during e.g. do_install().

E.g. point to file://myconfig in SRC_URI, and maybe myconfig looks
something like:
... tons of options here
username=###USERNAME###
password=###PASSWORD###
... more config options here

Then during do_install() I do something like:

install -Dm0644 ${WORKDIR}/myconfig ${D}/etc/myconfig
sed 's,###USERNAME###,${MYSECRETUSER},' -i ${D}/etc/myconfig
sed 's,###PASSWORD###,${MYSECRETKEY},' -i ${D}/etc/myconfig

That way it will be contained to a recipe and not be something you
have to do in each image that wants to ship the secrets file.

Cheers,
Erik

>
> Be Well,
> Alan

