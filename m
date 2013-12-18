Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF194E00288
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 01:42:31 -0800 (PST)
Received: by mail-qc0-f182.google.com with SMTP id e16so5816200qcx.41
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 01:42:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=lsqg02K7Q716aYnQJpPNNXyj9HiFTmuRJXRUZ+la2N4=;
	b=QverEVWEncI13PkFMp93MNvepLRJ4IwEjy6k8169MyFu7AdYsoZmrJxwN6wpIIZOKr
	xpFwXDtnJLqjf4dVfRFsCLWYRlY1W/GjR9qWdW4NBnperbDSUe5agRZuMQWmtCCWdNo1
	0NFihPQnT6gUq/V3DqA8zP2XT/Wleb1oaKumHHvTS4UzVbrUzIEb0x3NiNBGyrZNe8vb
	x8x7zdZn+JEEZ4iDZgDLxVGXul2ex+h/Zv3xBmJYMpEJKLbXnpexq8fo7nww+zXLyDXd
	h5e69UMHozPOwAInnNz20syIPNii3QBzBZRX+PfgPtofCCi6KFdeGBsVaYz+2NF9Laja
	xUOg==
X-Gm-Message-State: ALoCoQlRM6vnjEZAvPfEnRYBc6fjNZMUY0Ym5k9gpqYngB6IuBctX1xzY/3uN63v3gglkCh3NGca
X-Received: by 10.49.15.227 with SMTP id a3mr51715827qed.66.1387359750449;
	Wed, 18 Dec 2013 01:42:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.179.105 with HTTP; Wed, 18 Dec 2013 01:42:10 -0800 (PST)
In-Reply-To: <CAOJdAdUOjV56ZBDAp6YhKU2x4cVrmLz=7Ku76WHcu33Oc3g3Mw@mail.gmail.com>
References: <CAOJdAdUOjV56ZBDAp6YhKU2x4cVrmLz=7Ku76WHcu33Oc3g3Mw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 Dec 2013 09:42:10 +0000
Message-ID: <CAJTo0LYy9NGjGckfGZN4KN7MhriKtSdzxJTVPU8e0j7m+f-SzQ@mail.gmail.com>
To: wuteng wu <wutengss@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libxml2 error
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
X-List-Received-Date: Wed, 18 Dec 2013 09:42:34 -0000
Content-Type: text/plain; charset=UTF-8

On 18 December 2013 07:50, wuteng wu <wutengss@gmail.com> wrote:
> I built the Yocto 1.5 project for my SAMA5D34-EK board, i add the libxml2 by
> IMAGE_INSTALL_append = " libxml2", i got the image and programmed it into
> NAND Flash of the board, but when i type python -c "import libxml2" from the
> hyper Terminal , it gave out the message: "Traceback (most recent call
> last): File "", line 1, in ImportError: No module named libxml2"
>
> I can find libxml2.so.2.9 under the usr/lib dir, i'm wondering where does
> the error comes from, could anyone help me to solve the problem ? Thx.

Our libxml2 is built without Python, you'll need to remove the
--disable-python options from the recipe.

Ross

