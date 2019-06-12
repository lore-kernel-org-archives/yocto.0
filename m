Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CDB8E00DE6; Wed, 12 Jun 2019 01:04:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CD3EE00B8F
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 01:04:36 -0700 (PDT)
Received: by mail-wr1-f66.google.com with SMTP id x17so511159wrl.9
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 01:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=H/QWXZDFuq0bu+AxDxR+4sS9f2i8DKNHm4+B85pZv2k=;
	b=OPQ+//LEO7FyV3jMq2QbIP9ebFYAox2Hg6oZt4iOAaVxfSVhK/0a6D+AGGPE9ZA5n7
	ey7iiorFq2w0oMGeAcR144ac9k2YXIatXlcM/vGy7VbhSXsU73uap+s0CSwD8OVn5IZm
	pizo+9OINQRZQs/93Xj6zj5RjsXf4okQSeT5o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=H/QWXZDFuq0bu+AxDxR+4sS9f2i8DKNHm4+B85pZv2k=;
	b=Sx05EzkAptx7zYHeOefL9g7Kmt5ajMln1qoZVMlH+XmGsc5WyuLvnu14gkrdm/IobC
	4Sm3ReicHRy3ajB6Dvcy6VROxnpKVDWzLGuCOOdlSkXJjANA168R79+0pziNxUsaa5tk
	w6lIkV3zL6pXSdhaQwoFA8NiTWTGtpPN6NDN04aiULRjyQD4dmAw2Sxfe//IgP/orjI+
	rSyQNdaim2IlW5z4NuB6vbWHiJoy9J3twJv27w8TSYGi4/TXsRLiPTx1BR3g7onkdOFm
	GHHCwE5yUb1GzBrGWBTssyciCBayvl4T9NbfisrS0SftX/xv8lXMny59veY+ADR/Cwj4
	3M7w==
X-Gm-Message-State: APjAAAXX/qS9lEUwrbNmC+simchhdpVUslR2AknUNwFULtpoe7sgL1wI
	l5q9bwXz8XgNshiPd+qG90arYQ==
X-Google-Smtp-Source: APXvYqwWPGtOmB3J4j0Ci4+QLigVLJa1aNVJEgP5IPlBea/NnmDmHPfXFGJ6zQq+p6/o6LkzL00mUw==
X-Received: by 2002:a5d:480c:: with SMTP id l12mr29006689wrq.1.1560326675317; 
	Wed, 12 Jun 2019 01:04:35 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	j7sm23146409wru.54.2019.06.12.01.04.33
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 12 Jun 2019 01:04:34 -0700 (PDT)
Message-ID: <678b31de26a70fb63f19c7ab005dac0d681c8ff0.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, 
	"pokybuild@debian9-ty-1.yocto.io"
	<pokybuild@debian9-ty-1.yocto.io>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 12 Jun 2019 09:04:32 +0100
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634E32E41@PGSMSX110.gar.corp.intel.com>
References: <20190611033223.498F7E00D73@yocto-www.yoctoproject.org>
	<b4ef68996131d5a09e26e597a5b9c76874a0b2a3.camel@linuxfoundation.org>
	<015AB11D45F2C442929CB2765DAE738634E32E41@PGSMSX110.gar.corp.intel.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.8_M1.rc2)
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
X-List-Received-Date: Wed, 12 Jun 2019 08:04:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-06-12 at 00:51 +0000, Jain, Sangeeta wrote:
> On Tue, 2019-06-11 at 03:32 +0000, pokybuild@debian9-ty-1.yocto.io
> > wrote:
> > > A build flagged for QA (yocto-2.8_M1.rc2) was completed on the
> > > autobuilder and is available at:
> > > 
> > > 
> > >     https://autobuilder.yocto.io/pub/releases/yocto-2.8_M1.rc2
> > > 
> > 
> > Some notes for QA:
> Thanks Richard for sharing this.
> > There was a failure in this build in qemux86 oe-selftest. It looks
> > to be a race issue where qemu was shutting down. This needs a bug
> > and looking into but is a minor issue which wouldn't block the
> > milestone release or further QA.
> 
> We are analysing the failures and will file the bugs as suggested.

Just for reference I did file some of the bugs.

> > There are three timeouts in ptest, acl, bluez5 (#13366) and mdadm
> > (#13368).
> > These are also not going to block the milestone release. The
> > bluez5 issue is gcc9 related, mdadm was exposed by wider testing in
> > master. The
> > acl issue needs a bug opening and investigation as that is a
> > regression.
> 
> Looks like some disconnect here. In test result report, no timeout
> issue reported for acl ptest.

https://autobuilder.yocto.io/pub/releases/yocto-2.8_M1.rc2/testresults/testresult-report.txt

acl                          | 184         | 9        | 0         | 302 T

I hadn't spotted that dbus-test also has a timeout :(.

This timeout is also in the testresults file:

ERROR: Exit status is 9\nDURATION: 302\nTIMEOUT: /usr/lib/acl/ptest\n

in:

https://autobuilder.yocto.io/pub/releases/yocto-2.8_M1.rc2/testresults/qemux86-64-ptest/testresults.json

> We are referring to test results at yocto-testresults under tag "
> master/54573-g9910a3631ce953b8dd8f3d57d6e122c7fd8cb462/1"

You are right, there is no mention of this in the log at:

http://git.yoctoproject.org/cgit.cgi/yocto-testresults/tree/runtime/poky/qemux86-64/core-image-sato-sdk-ptest/ptest-acl.log?id=56b1caa6044ce30e92a1895eae48d3935562b627
or
http://git.yoctoproject.org/cgit.cgi/yocto-testresults/commit/runtime/poky/qemux86-64/core-image-sato-sdk-ptest/ptest-acl.log?id=ac623e13e3bc3a348b60fe3b884e6ae567b8230a

I suspect this is due to the information being filtered out as part of
the log processing. We probably shouldn't do that.

Looking at the individual logs in https://autobuilder.yocto.io/pub/releases/yocto-2.8_M1.rc2/testresults/qemux86-64-ptest/testresults.json, the timeout information looks to be truncated off there too.

I do however note that:

            "ptestresult.sections": {
                "acl": {
                    "duration": "302",
                    "exitcode": "9",
                    "timeout": true
                },

is in http://git.yoctoproject.org/cgit.cgi/yocto-testresults/tree/runtime/poky/qemux86-64/core-image-sato-sdk-ptest/testresults.json?id=56b1caa6044ce30e92a1895eae48d3935562b627
so the timeout is recorded in the results.

Regards,

Richard



