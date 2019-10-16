Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C74E3E00D97; Wed, 16 Oct 2019 10:40:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A936DE0098A
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2019 10:40:07 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id u12so11581524pls.12
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2019 10:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=p9+0Wfxyx0txivHgszi4TXC/affQIl8JX0UUg6FU4pE=;
	b=SpW+pkThA1oUGhhJk7XZDLTWEkSd2P8hrmR6OZbHKe7Pmwvtqx8Fkgsqkv1vUXIuyf
	ncTHWuH16n6e1OQ8xEFZlihx9WUXUyxyJw8SpQvt+j/de5lwbZdzqcmQeOvmTCA7ZP/H
	RkPfl/4qmbN9CZ9R4I+RL3rCjD4TIEZyIuXcDdZ5RDVVr/RT7voSwQh7tLoa8A7GjhTl
	bW7Sr+D/e64owxs+QIldjHYpslTmYAciOSlzaHWRLwtVDTGIZmBTWNdGO8I5Sr41qVQd
	Iz0AcOJ0rg4CDS7NOpH7juQFVsHT7/A0hIXY100/YK1zFGEvQdlKn0bevlAWkoPwwSpp
	bggQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=p9+0Wfxyx0txivHgszi4TXC/affQIl8JX0UUg6FU4pE=;
	b=jWBvfMxuY10dQOz8+/T9sfLYHh8i1BIKpw8MC23S+KgLtUXsbKg8DMCwfvhxzCqtrV
	iPdzkXVBxgJfbI6HN7wrGtLrUtGOPaZ3b1G8gWw4ZHhctoTTNFsmiusEUDQcm9RL89B/
	WpULliNZA+dpDh77NcaMmtbRq1Cvx8iN/23TH6pCv2RcrrfYNpnN7WmkLqG+ss8sEpDT
	SvBjQnFx+DzDATAunv8pw5G+RXmQgylo+NV1Y0Nh3h8QwZswqdb4Gfl+nJFmZ58qQrwx
	rAjRyABbyIdZpgdeAvphuZSUKIun4wsRrZlmzXiWPMfdcmUEYl+soCfAWW8xL0j7jfhU
	og2Q==
X-Gm-Message-State: APjAAAVLNO77SClnQ/p+4rsTEaelOUTExa+KVSzAwrQsyUrSz5+CZK7S
	j0tDH3yedyCcG8Fzyd+m+F9SpgbX
X-Google-Smtp-Source: APXvYqxYBbCBjX1Hox01XBYiTWpr9iRiFv5aA4P2WYhk7T1A/CImkiwzlzNeiKzF2g4ZGVr0S/zbXg==
X-Received: by 2002:a17:902:7891:: with SMTP id
	q17mr41880398pll.289.1571247605790; 
	Wed, 16 Oct 2019 10:40:05 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:8dc1:2952:740a:7402?
	([2601:202:4180:a5c0:8dc1:2952:740a:7402])
	by smtp.gmail.com with ESMTPSA id
	i10sm30941333pgb.79.2019.10.16.10.40.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 16 Oct 2019 10:40:05 -0700 (PDT)
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@yoctoproject.org
References: <20191010112237.4227-1-alex.kanavin@gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <67d31238-e46d-2c73-963c-500281294eef@gmail.com>
Date: Wed, 16 Oct 2019 10:40:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191010112237.4227-1-alex.kanavin@gmail.com>
Subject: Re: [meta-security][PATCH 1/2] apparmor: add PRIVATE_LIBS for ptest package
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
X-List-Received-Date: Wed, 16 Oct 2019 17:40:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US


merged
On 10/10/19 4:22 AM, Alexander Kanavin wrote:
> Otherwise, the following occurs:
> ERROR: apparmor-2.13.3-r0 do_package: apparmor: Multiple shlib providers for libapparmor.so.1: apparmor, apparmor-ptest (used by files: /home/alexander/development/poky/build-metaoe/tmp/work/core2-32-poky-linux/apparmor/2.13.3-r0/packages-split/apparmor/usr/lib/perl5/vendor_perl/5.30.0/i686-linux/auto/LibAppArmor/LibAppArmor.so)
> ERROR: apparmor-2.13.3-r0 do_package: apparmor: Multiple shlib providers for libapparmor.so.1: apparmor, apparmor-ptest (used by files: /home/alexander/development/poky/build-metaoe/tmp/work/core2-32-poky-linux/apparmor/2.13.3-r0/packages-split/apparmor/usr/lib/python3.7/site-packages/LibAppArmor/_LibAppArmor.cpython-37m-i686-linux-gnu.so)
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  recipes-mac/AppArmor/apparmor_2.13.3.bb | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/recipes-mac/AppArmor/apparmor_2.13.3.bb b/recipes-mac/AppArmor/apparmor_2.13.3.bb
> index 2e5d221..990d870 100644
> --- a/recipes-mac/AppArmor/apparmor_2.13.3.bb
> +++ b/recipes-mac/AppArmor/apparmor_2.13.3.bb
> @@ -165,3 +165,5 @@ RDEPENDS_${PN} += "bash"
>  RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
>  RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
>  RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
> +
> +PRIVATE_LIBS_${PN}-ptest = "libapparmor.so*"


