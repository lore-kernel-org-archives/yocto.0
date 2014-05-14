Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72215E00975; Wed, 14 May 2014 09:43:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f176.google.com (unknown [209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 483CEE006EF
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 09:43:45 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id ar20so2123805iec.35
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 09:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=b6Wq9d4Xjy3ykzRG2erP1e5fyKG8qZcvGbR/qvncqVg=;
	b=dMqvHcBzG1QPbUfCfL5aPILaHxTup19ykPMJQFzvPuiczz2qnPgrQD7XRo9X3WnB09
	2cH1na6CaciXYs3qBDNxXy7lVtqbrjgMK2ic1x5ltK7z9I/dunXYOwItK6mmiVyKihXf
	skaezxcgkUrVY/ua9zVjWfumq/M5tfexCbMS2fBE/UND/it/x2bogonZ+jVB/amnB5bZ
	1Yrisp1n2mRcOGYNiRCck+dXxMIUq2oG9bnLGYL5q9ruf7PiKkzjnVw6xt8ESzsH/eQf
	EwC/mOi8j2/ln0WfxTIRDB+KJDRhHMikeky0qkaczE9l3UyfNDO6D8YlL++guuw7Nog4
	I4HQ==
X-Received: by 10.43.62.204 with SMTP id xb12mr4327485icb.51.1400085825423;
	Wed, 14 May 2014 09:43:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.79.133 with HTTP; Wed, 14 May 2014 09:43:14 -0700 (PDT)
In-Reply-To: <CAJ7VaygmmV7zNKMO+uCfY3VzoWEO5Z4kDOAqMfZDeq9o4qQ8ZA@mail.gmail.com>
References: <CAJ7VaygmmV7zNKMO+uCfY3VzoWEO5Z4kDOAqMfZDeq9o4qQ8ZA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 14 May 2014 09:43:14 -0700
Message-ID: <CAMKF1srcUVWsROCbuU8j6h44U3sNXYo0XhBa0YxpDTAFhYP5xA@mail.gmail.com>
To: sonia verma <soniaverma9727@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kvm error
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
X-List-Received-Date: Wed, 14 May 2014 16:43:55 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 14, 2014 at 4:06 AM, sonia verma <soniaverma9727@gmail.com> wrote:
> /usr/bin/qemu-system-ppc64 -m 512 -nographic -hda
> /var/volatile/debian_lenny_powerpc_standard.qcow2

may be debian mailing lists would be more helpful on this, is OE
involved some how?

