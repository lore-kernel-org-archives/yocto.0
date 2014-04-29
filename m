Return-Path: <eric.nelson@boundarydevices.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51ECDE00C66; Tue, 29 Apr 2014 13:03:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23F89E00C64
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 13:03:24 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id ld10so732495pab.12
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 13:03:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=cgVSmEW5ymXo+8yf+/HwggU4xN0oKGI1jzNXaVmqtuc=;
	b=ZFU2v0QYAQWXwQ9dvrwiNqkAl+6VBeDv5rHJNHllriapkAnOGGAUAtKfTySM+OxS69
	5CRXT7GnaM1B+FoMmBa2oi6oJ4lH3k2xoqg5ARw2+pIz4luneYn9VW3j+KQlyE0G5wt6
	nGeRd6VmTiuVP74Iry4ypQb9MftGnFnnO0//cFI7uWyachg1L1hAJ2nBGCK7BrJM2nKf
	7hi9hqtCNHYXlU9jfBkwX3ip9TnORkTojjn686f0viNKHmHHEiAGSqWcRQk/6QrNAlWm
	3ty8hTsf8yJeKpvCYRl0Q2d+sJYcxYSraJ8YZ24blC21qmubkf2cU1cVWnyz6fNkviKE
	vpGA==
X-Gm-Message-State: ALoCoQmkJNvv3ZgqXvO9FS0/8Omt2GSSHbpy460g3CjtuIrgzDzub/3Fl3h5O0uvXW5FMJlDPCVi
X-Received: by 10.66.119.136 with SMTP id ku8mr2260115pab.121.1398801803956;
	Tue, 29 Apr 2014 13:03:23 -0700 (PDT)
Received: from [192.168.0.124] ([63.226.49.26])
	by mx.google.com with ESMTPSA id
	ry8sm117555022pac.29.2014.04.29.13.03.21 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 29 Apr 2014 13:03:22 -0700 (PDT)
Message-ID: <53600587.8090201@boundarydevices.com>
Date: Tue, 29 Apr 2014 13:03:19 -0700
From: Eric Nelson <eric.nelson@boundarydevices.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Mahyar Yaghmaee <mahyar@boundarydevices.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAOJo16WHnFc+aEfBX7jMSPELXUXzgpssv_QzD1RtkRkxEnP7rw@mail.gmail.com>
In-Reply-To: <CAOJo16WHnFc+aEfBX7jMSPELXUXzgpssv_QzD1RtkRkxEnP7rw@mail.gmail.com>
Subject: Re: fsl-image-multimedia-full build failure on master branch
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
X-List-Received-Date: Tue, 29 Apr 2014 20:03:29 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Mahyar,

On 04/29/2014 12:39 PM, Mahyar Yaghmaee wrote:
> Hello,
>
> I can not build fsl-image-multimedia-full as "fsl_debug.h" seems not to
> be present.
> here's the error log:
>

This is the wrong forum for the question, and I suspect that
this has something to do with Lauren's recent patch set for
the upcoming Freescale release.

Regards,


Eric


