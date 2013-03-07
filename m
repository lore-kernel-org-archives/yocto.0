Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f171.google.com (mail-qc0-f171.google.com
	[209.85.216.171]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 957DAE014D2
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 04:33:07 -0800 (PST)
Received: by mail-qc0-f171.google.com with SMTP id d1so122819qca.16
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 04:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type:content-transfer-encoding;
	bh=5Vy/8Feo2Kb/AWtoiUhnwVL/44prEGTiWYf+fRZ4V60=;
	b=ZfJVFFZ5IMPo/k0gWSOkI+Px2FJpghc5NrfJqpVrIvJihzWEEKfnmQxtp39CchMWM3
	5/5zEGup8JcLeFakv6V1iClTZBKhYnp0cumEw6yFjBc6FDDelOHydY24Fe/dAck6pCBP
	CwtIOZWp6aJul70+ZwI7R/bFv79HFXawrcz4+nHp5tYCWnPsnC6MbujHKwhfVirblUK0
	i0K1DC0WPsewHdazGwBa/KADfClavhPb9IPNMqB664E5YVV61EmSKEkWvkZtlSAKYGcc
	2sly+G7skFnJZTMNUgOXSlRxXJPnd0GrsytjBM+eaYAMpnCQCI+Ci6xjtESdZ+MBoQVj
	xLqg==
MIME-Version: 1.0
X-Received: by 10.49.24.135 with SMTP id u7mr55242816qef.4.1362659586686; Thu,
	07 Mar 2013 04:33:06 -0800 (PST)
Received: by 10.49.67.98 with HTTP; Thu, 7 Mar 2013 04:33:06 -0800 (PST)
In-Reply-To: <CAFyqS9q2BimC1TeDGj5r5WZQCcG1z+MA1tdbrB5X8yLqxCheTA@mail.gmail.com>
References: <CAFyqS9q2BimC1TeDGj5r5WZQCcG1z+MA1tdbrB5X8yLqxCheTA@mail.gmail.com>
Date: Thu, 7 Mar 2013 13:33:06 +0100
Message-ID: <CAFyqS9r=myEwXm6tv4cTFVSPUi4fG3eAvmZ0oqKMBDFmV4wBZw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Problem with applying a patch using default -pnum
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
X-List-Received-Date: Thu, 07 Mar 2013 12:33:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 7, 2013 at 1:12 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> w=
rote:
> Hi. More problems ;)
> I have a patch file that needs to be applied to a source tree and the
> patch file is copied properly to the ${WORKDIR} directory.
> So far so good. But, the problem with this source tree is that it is
> not built from the traditional root folder of the repo.
> This means I need to change ${S} to point somewhere else. This also
> causes the patch system to fail!
> I did an override of do_patch() in my .bb and that seems to work, but
> I do not like to use overrides unless I really have to.
> So basically, is there some way to tell the built-in patch system to
> use a different -pnum value?
> If there is, I could stick with the do_patch() as provided by default.
>
> Hans

Hmm, ok a correction from my side. Forget parts of what I said ;)
The patch system does not seem to use the value of ${S}, it is using
${WORKDIR} as the root for patching, this is also where the patch file
is placed. The problem in my case does not seem to be that is built
from a non-standard path. The reason why it fails seems to be because
the actual source is not in ${WORKDIR}, it is in ${WORKDIR}/git. The
patch file does include git as part of the source path for obvious
reasons. What am I doing wrong? Having actual source code in
${WORKDIR}/git I assume is very common for git based downloads.

Hans

