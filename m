Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF65EE00DED; Tue,  5 Nov 2019 00:19:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74759E00DEB
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2019 00:19:30 -0800 (PST)
Received: by mail-io1-f68.google.com with SMTP id x21so5989549iol.2
	for <yocto@yoctoproject.org>; Tue, 05 Nov 2019 00:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=pZAclLx8DJbB7HvcbZ5u6QKA4XzzrfNW9s3+Xq9tNDM=;
	b=fxGGRBwNcxLQkYq2oF6AweIUJjd4sff3JPP4Y5P9ozmzsWd4YS8aU7RC7DYqX6dxnr
	HVw3H/BDwWEdBRPG5c+U+v1nvBAu0frlFkdJ/2mdaJ1fwxkQ/3QRpbjihyXuHfW6fOUN
	OoR3+G5vfTlAkgUZZDbPx7sZvOt64ymqbLrHVF7a0+XP/vN0N4LSo805sUJSASCExg4D
	gPUYvxVeu+8K5jdZdReGkk5cw4D4MY9l8qWuu+JYik5UaW/7DS5GWTCDTJxSkO7bGkqW
	xnQMlsc81mkeTSqP740FP2RD2EbS87yb8385ICzcDUCiCGCNuGq/0MBZn7yqzd1ffXeH
	OYlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=pZAclLx8DJbB7HvcbZ5u6QKA4XzzrfNW9s3+Xq9tNDM=;
	b=tXGSHGm8HzSTSSGtz/0s/7Og7/q3qNjpAAIWT9GiAEs4gIqEuYXljVavHaqF/dAiQD
	kT2sCDcuUubuGQKzHVKuGp+ttWaku7osFj5WSUNjqrp5JJj1KS3sy6bjmpFSsht3lw99
	N/0YA8/jRoKoRcyJEOtasjunxjAmFMbhTALZ3CRX/a8uIXFOslrGqASjfsRAc7ieDNEn
	LYNE6hT1k4FE53tD9BMpTIqwR34lgACrREgAPi/AF1kroRcJ/0Hkkbs2UC3BwsvNWvlq
	dGb1Q8OQ+YtiC12R+QN5de29+3ZRy6cXg0u+0LSyzUh9lIoFOxOq4fFJWJK0uOfR5OWT
	xsrQ==
X-Gm-Message-State: APjAAAVxh52a6lGwtSZxS2nNbQlNRiU5G4K5WwbXf8dFTQgb6AT2s0tM
	MNvNDgoXDOwRByA35JpXes07rm3Hm1hnwl1Gkbr87I+J
X-Google-Smtp-Source: APXvYqy/ogJWkezmzT3E9RYA/OkQMrNKVVD56e9Gen2L3cKEXkA8t8u3Ddm8aMe0Qlwyn9RlpdapIMRRISEvhl96rbo=
X-Received: by 2002:a5d:81c3:: with SMTP id t3mr3755890iol.300.1572941969214; 
	Tue, 05 Nov 2019 00:19:29 -0800 (PST)
MIME-Version: 1.0
References: <94A31A34C56D884EA74A31C5DD73175B63C2DF48@FMSMSX103.amr.corp.intel.com>
In-Reply-To: <94A31A34C56D884EA74A31C5DD73175B63C2DF48@FMSMSX103.amr.corp.intel.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Tue, 5 Nov 2019 09:18:48 +0100
Message-ID: <CAB2nKc9pSP+YzipHSqgRW5kYu5KM7sV30jBwqGSvEF7zAYCwmA@mail.gmail.com>
To: "Shockley, Timothy" <timothy.shockley@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>, henning@itconsulting-heinold.de,
	"Maxin B. John" <maxin.john@intel.com>
Subject: Re: help with meta-java
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
X-List-Received-Date: Tue, 05 Nov 2019 08:19:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tim,

There are some pending stuff on meta-java ML
openembedded-devel@lists.openembedded.org and layer is not zeus
compatible yet.
I'm trying to contact layer maintainers for several weeks, i don't
know if information is obsolete or if people are too busy/away?

Main layer maintainers:
  Henning Heinold <henning@itconsulting-heinold.de>
  Maxin John <maxin.john@intel.com>
  Otavio Salvador <otavio@ossystems.com.br>
  Richard Leitner <richard.leitner@skidata.com>

For now, I just use master-next, and I'm considering using
https://github.com/AdoptOpenJDK/ prebuilds, meta-java is quite hard to
understand I found :)

Best regards,
Vincent

Le lun. 4 nov. 2019 =C3=A0 18:23, Shockley, Timothy
<timothy.shockley@intel.com> a =C3=A9crit :
>
> Helllo,
>
>
>
> I am looking for some help with meta-java, specifically upgrading to zeus=
 branch and also upgrading openjdk to a more recent release in order to add=
ress CVEs. Wondering if there is anyone else working / needing this?
>
>
>
> Thanks,
>
> Tim Shockley
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

