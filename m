Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f41.google.com (mail-ee0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B0A8E013EC
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 08:35:59 -0700 (PDT)
Received: by mail-ee0-f41.google.com with SMTP id d17so2172711eek.28
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2013 08:35:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=APA9XXUNDhFmQALDLNsO8UIRbas8jVWnRjyEXCWT5vw=;
	b=n41+DYxQuP+rjv7LgM0P8yv2Z2+jwlMaqa7Bct5LL8zcxoGbB5a1RU6S0Hi10rHDhj
	m29nBzZJhxCVA9UqhJVGNLnsYb3Tb3SLB2O/L/BY4oTyYT0C6aGtIF3+tZ+yclbWdDAd
	53OSyXiAROUwDQqHJaKUAHb5lY+WnanTYylT9DuSBBRZOU7Y2wGCTJiDMfN2tHBtkUfq
	BqzAedJGnx+lML8JczPfeUMjKgvsiEfqhsGelwzfgs2rwSh7hWBD5XpQqjnzJgYb0Mjq
	hNmnmM+PKndSFLP8gb9Jx1H+n1faK4rWjVqZqQj2VRGX/whZVgLoVvh5bdL8y1+WjEk4
	T0nw==
MIME-Version: 1.0
X-Received: by 10.14.173.70 with SMTP id u46mr21560333eel.92.1372692958614;
	Mon, 01 Jul 2013 08:35:58 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Mon, 1 Jul 2013 08:35:58 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5286C@ORSMSX101.amr.corp.intel.com>
References: <1372214269-16897-1-git-send-email-trevor.woerner@linaro.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF51ADC@ORSMSX101.amr.corp.intel.com>
	<CALmOhg=evL-vyWc5q3Fd=y2GnUz3gfWSUyJDVFG5J=1k2w2L7g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF527FE@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF5286C@ORSMSX101.amr.corp.intel.com>
Date: Mon, 1 Jul 2013 11:35:58 -0400
Message-ID: <CALmOhg=bV1t1OxiVTYOC3fxq4T2XD=D1-ZQBSKHMOjZPYueaCg@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQmKY6IEhBshbdjt+mbVLDc+aI2EyHIeQbE/sxRRJZ69PpgT46zV7O9Vwzy6S+Ivb95t4kVa
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"patches@linaro.org" <patches@linaro.org>
Subject: Re: [yocto-docs][PATCH] dev-manual: referencing bugzilla issues
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
X-List-Received-Date: Mon, 01 Jul 2013 15:36:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 1 July 2013 02:37, Rifenbark, Scott M <scott.m.rifenbark@intel.com> wrote:
> I got a hold of Saul and confirmed that you are right.  I have been entering these strings incorrectly for a good while now.  I have applied your patch to the tip of the yocto-docs repository and republished in our development area for the manuals.


Great! Thank _you_ :-)

