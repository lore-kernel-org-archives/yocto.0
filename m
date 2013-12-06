Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62A37E007AF
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2013 06:40:30 -0800 (PST)
Received: by mail-vc0-f181.google.com with SMTP id ks9so786513vcb.26
	for <yocto@yoctoproject.org>; Fri, 06 Dec 2013 06:40:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=6qKN5DSFrIxUJ0aJh50gPk3hEUphfF6GUrz8rCZEqlI=;
	b=AHeJT0QkQCkeTeMhKtNvHJW/Ta+V4zNpvmJ1j95bPYA8itgJbdxKZ+MQ0sOzCxn7rv
	OQNI63qd6zUSa6t9uhzSf/4YsoFmB7ibS0yHrU3BWk1gqIbaXQN2x4ESg3DXcGCL7vNf
	kvTcKh+EH0mn+ETceCGMlPn1j9TpMKxuCdgTFGS9ps/65IA2mBqdKgxMEleofjA01YlM
	OcqXnHpT0ZS4dT4am4X/+mAcYJekGD7IIEPoykqC1xl14pneKN7wh2/yG/VyyBI00L+p
	+Ve67kYKvKvuH6ta6M/idIXWlyJEXWME6HlTyka2VwCkTJh28wGBAoxYs+ndsNttzzNh
	dSgg==
X-Gm-Message-State: ALoCoQnx6O5xm2Nwp+z6p1IJ+wmkz+FitYUe/PlHnfirUN4H9ZXCnCSGxiD8XNN4db7ztvv6Z+yx
X-Received: by 10.58.133.193 with SMTP id pe1mr1268166veb.58.1386340829975;
	Fri, 06 Dec 2013 06:40:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Fri, 6 Dec 2013 06:40:09 -0800 (PST)
In-Reply-To: <CALaXJ9=ON4Ekrqt3OixGOvpKhcrVpaNMP3OwCvssvmHQFwUTUg@mail.gmail.com>
References: <CALaXJ9=ON4Ekrqt3OixGOvpKhcrVpaNMP3OwCvssvmHQFwUTUg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 6 Dec 2013 14:40:09 +0000
Message-ID: <CAJTo0LZ42RmN22KNCfKxgHyz3B7BVPpXCnbMG7XZ9A5h0t0w8w@mail.gmail.com>
To: Kumita Bruce <bruce.kumita@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The difference of & and | in LICENSE definition
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
X-List-Received-Date: Fri, 06 Dec 2013 14:40:32 -0000
Content-Type: text/plain; charset=UTF-8

On 6 December 2013 14:23, Kumita Bruce <bruce.kumita@gmail.com> wrote:
> I don't know whether this is the right place to ask the question. Hope to
> get some help from here.
>
> I see below two types definition of LICENSE in Yocto recipe:
> LICENSE = "license-1 & license-2"
> LICENSE = "license-1 | license-2"
>
> Can somebody help to give some explanation for the difference of those two
> formats? And how to determinate which format should be used for a package.

The documentation can help:

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-LICENSE

Ross

