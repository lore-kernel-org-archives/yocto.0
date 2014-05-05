Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DB87E00A44; Mon,  5 May 2014 09:50:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDF2DE003C7
	for <yocto@yoctoproject.org>; Mon,  5 May 2014 09:50:02 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id hy4so8830466vcb.40
	for <yocto@yoctoproject.org>; Mon, 05 May 2014 09:50:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Hg75UNuYiCm2VABY4emidHPqMMuhpqupjQ8v8x2W3Nc=;
	b=Kpa+BXqAeXe47jerT/Sur0AcB/wd8F/579dw7JDPD88LtBCKHTWF9A2lHSkxf7ADDM
	Jap8srqWZ40A+HdD8A/KYsMoAgeHj6TkIY/yz9fQiKrUVyml4ty0mMLQbAh+bV3T5uU8
	OLh4tPN58S3tOrVeJiqQt2WAIafVFdR3E+wB6RojvPW2V2v4ei7euq0dYAP3KbKh3jbT
	7UXrry931nGgFOg2vkTBzpfGNZUkw4z6z49na4uFJMX7cPatLshw6F7rIxm7SLekRBzb
	wPYXnjdbhwpu/jC02CuUBSv00zNKm7SQPzci4OXn2d9TmPdJeB3LubmdseJSsJZRizK8
	yfEQ==
X-Gm-Message-State: ALoCoQnRrh9HqijPevmDn53/kEKCU8sIR7MVc8eqWtW+KmGAS6vWJ3Kr57QfN1JbSecp8b1Xe45C
MIME-Version: 1.0
X-Received: by 10.58.143.72 with SMTP id sc8mr999700veb.46.1399308602067; Mon,
	05 May 2014 09:50:02 -0700 (PDT)
Received: by 10.52.164.111 with HTTP; Mon, 5 May 2014 09:50:01 -0700 (PDT)
In-Reply-To: <CAPphmgbrwfYffyF6KpKo+0C2VL5BQ4vbnH8wLv1ZKw0Rz2uo4A@mail.gmail.com>
References: <CAPphmgbrwfYffyF6KpKo+0C2VL5BQ4vbnH8wLv1ZKw0Rz2uo4A@mail.gmail.com>
Date: Mon, 5 May 2014 09:50:01 -0700
Message-ID: <CAPhnLPDRt_XYnm_jcRAUY7x2QT8gVgc_smr0Mu-9FnfjbyD0sw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Jate S <jatedev@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [AB] PublishLayerTarballs "git archives" the wrong directory
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
X-List-Received-Date: Mon, 05 May 2014 16:50:07 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 2, 2014 at 1:16 PM, Jate S <jatedev@gmail.com> wrote:
> I am running off of the master branch.
>
> I hope this log message is readable. The key is to know that I have a
> meta-oe repo in the build directory and that the last line shows it's
> running in build instead of build/meta-oe.
>
>  git archive --format=tar HEAD
> --prefix=meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4/ | bzip2 -c
>> meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4.tar.bz2; md5sum
> meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4.tar.bz2 >>
> meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4.tar.bz2.md5sum; mkdir
> -p /home/jate/tmp/yab/publish/builds/qemux86/20140501-1; rsync -av
> meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4.tar.bz2*
> /home/jate/tmp/yab/publish/builds/qemux86/20140501-1
>  in dir /home/jate/yocto-autobuilder/yocto-slave/qemux86/build
> (timeout 100000 secs)
>
> I think that it should be changing directory to meta-oe, but the code
> is just missing that. This happens with all the other repourl's in my
> config too. The generated tarballs are of the same size (of poky).

You are correct. Patch in the works.

-b

>
>
> Cheers
>
>
> - Jate S.



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

