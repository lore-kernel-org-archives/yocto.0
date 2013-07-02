Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B2AAE01206
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2013 08:28:17 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id ia10so2895862vcb.28
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2013 08:28:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=o3oFV9Dtu/s/SRDJPMVWDFDg1uGuAM2QdzETcNPkrV4=;
	b=cqkB7GkJYW/AkqYlexCz1euYwk0PQBvyKEcHM3p/XDMVtZlvAecQk6iqvUlAk7KoCj
	Ez7c/8SeNG7UUb4V5SK/AfWM1unimXI5xznnGnDJuXJ2gh+MYIYFFhCW54ENmr+2Ve40
	pJKUYyI0dxAUWMJjprgA0z/m1JIwt+ql9ZioJG/gfTC6yzoeoeR7dV3Ps54SXI8zz/tW
	5orahuXVgorn64aXXGFbIjhiJtqNQQ1KO41TcyNfJy8Bp3Xd47sc8zp3IIdUlZs3uqdZ
	09j4IcXfp42CVFWCUyU+/vzsbNiE49o1ZPdGDP1h+HukSwAzif/pmR63bGkjOhpFXZNK
	DB/Q==
MIME-Version: 1.0
X-Received: by 10.220.42.147 with SMTP id s19mr11465372vce.46.1372778896898;
	Tue, 02 Jul 2013 08:28:16 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Tue, 2 Jul 2013 08:28:16 -0700 (PDT)
In-Reply-To: <CALmOhgmENvPECpf-L4w8q0cTmLhuvJuYeCyFjaRN6bN=XLx_-Q@mail.gmail.com>
References: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
	<CALmOhgmENvPECpf-L4w8q0cTmLhuvJuYeCyFjaRN6bN=XLx_-Q@mail.gmail.com>
Date: Tue, 2 Jul 2013 08:28:16 -0700
Message-ID: <CAPhnLPCDq8yRw=Bz6TAwR85kpPKJucTYE7hZ5kDEK3qJ2utOkA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
X-Gm-Message-State: ALoCoQlfuofIgjPIvwrgEahGpxuF5nOAzs0OehZiIDy1NSskJKTjp45PLttx/CjrQQB++AteRcmp
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] buildset-config: build core-image-sato SDK
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
X-List-Received-Date: Tue, 02 Jul 2013 15:28:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jun 28, 2013 at 9:01 AM, Trevor Woerner
<trevor.woerner@linaro.org> wrote:
> Just out of curiosity...
>
> On 27 June 2013 06:06, Ross Burton <ross.burton@intel.com> wrote:
>>  buildset-config/nightly-arm.conf     |    2 ++
>>  buildset-config/nightly-fsl-arm.conf |    2 ++
>>  buildset-config/nightly-fsl-ppc.conf |    2 ++
>>  buildset-config/nightly-mips.conf    |    2 ++
>>  buildset-config/nightly-oecore.conf  |    2 ++
>>  buildset-config/nightly-ppc.conf     |    2 ++
>>  buildset-config/nightly-x86-64.conf  |    2 ++
>>  buildset-config/nightly-x86.conf     |    2 ++
>
>
> Against which repository do these apply?

These apply to the yocto-autobuilder eflanagan/yocto-autobuilder-refactor branch


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

