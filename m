Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCFFBE013B0
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2013 17:13:25 -0700 (PDT)
Received: by mail-vb0-f49.google.com with SMTP id 12so5156492vbf.36
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2013 17:13:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=/kkDBTfd7OOA6QiUzjSVU5o1YrWvxO4nwgXdV5bIi10=;
	b=LZMXY3VYaTg3d38EwmzskSaupY3TB7dTf2bsj66UZJzBTwtR/URCbqYomQc04WmstB
	lHnwaHuT46t6tSq/27RzBuipIWsW3iWLl04xk81QpVH4oDKcu5TSE2ccanQjhkK5o+QJ
	y0MMh+pr0qolTIux0+9iEbVdR3Y+DIUfQc8ZvN8FPrtVgdqvYgu2j5YyEUcXyqdfnXnv
	1YXFeJE/x/9Mw+UXHVXp2rBCzFRhtC53VRzztQC7Q8vCDlkgChokvS/C/zgcSsha1rYT
	espwJ7iAQMd5Gu3GIAG1WB7ITAi82THZFq4fALKj+8VYsq/Z7AoGX6AeETl2BHZXUgdE
	9l6A==
MIME-Version: 1.0
X-Received: by 10.58.118.8 with SMTP id ki8mr11913644veb.84.1372810404677;
	Tue, 02 Jul 2013 17:13:24 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Tue, 2 Jul 2013 17:13:24 -0700 (PDT)
In-Reply-To: <CAPhnLPBC4EgahMeKpQ-guukK0VGcm8rK2BP9pdo3RP5pDKGm+w@mail.gmail.com>
References: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
	<CALmOhgmENvPECpf-L4w8q0cTmLhuvJuYeCyFjaRN6bN=XLx_-Q@mail.gmail.com>
	<CAPhnLPCDq8yRw=Bz6TAwR85kpPKJucTYE7hZ5kDEK3qJ2utOkA@mail.gmail.com>
	<CAPhnLPBC4EgahMeKpQ-guukK0VGcm8rK2BP9pdo3RP5pDKGm+w@mail.gmail.com>
Date: Tue, 2 Jul 2013 17:13:24 -0700
Message-ID: <CAPhnLPCj3WVuXUg5i8wLQhRsdL2k+KYCwmaiD21c1fnDqh_3Cg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Trevor Woerner <trevor.woerner@linaro.org>, 
	StefanX Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQnOTUr6HzGuRe7ZzQG2j+0i6e0ZWvvpdEeKeK5UBRRQI7HtgeEuf6A+jhUt/qRw9aUShlup
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
X-List-Received-Date: Wed, 03 Jul 2013 00:13:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

Actually, I'm going to revert this commit out of master. The
autobuilder doesn't start up when it is applied.

I don't have time to look at why right now, but I'll take a look when
I get back.

-b

On Tue, Jul 2, 2013 at 3:59 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> I'm going to pull these for now, but I'll probably end up doing this
> significantly different when we settle on whatever solution (be it
> LAYERVERSION or whatever) to identify build process breakage.
>
> -b
>
>
> On Tue, Jul 2, 2013 at 8:28 AM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com> wrote:
>> On Fri, Jun 28, 2013 at 9:01 AM, Trevor Woerner
>> <trevor.woerner@linaro.org> wrote:
>>> Just out of curiosity...
>>>
>>> On 27 June 2013 06:06, Ross Burton <ross.burton@intel.com> wrote:
>>>>  buildset-config/nightly-arm.conf     |    2 ++
>>>>  buildset-config/nightly-fsl-arm.conf |    2 ++
>>>>  buildset-config/nightly-fsl-ppc.conf |    2 ++
>>>>  buildset-config/nightly-mips.conf    |    2 ++
>>>>  buildset-config/nightly-oecore.conf  |    2 ++
>>>>  buildset-config/nightly-ppc.conf     |    2 ++
>>>>  buildset-config/nightly-x86-64.conf  |    2 ++
>>>>  buildset-config/nightly-x86.conf     |    2 ++
>>>
>>>
>>> Against which repository do these apply?
>>
>> These apply to the yocto-autobuilder eflanagan/yocto-autobuilder-refactor branch
>
> We've moved the old yocto-autobuilder master to old-master and the
> refactor branch is now master. I will be working from master from now
> on (except for private branches, etc)
>
>>
>>
>> --
>> Elizabeth Flanagan
>> Yocto Project
>> Build and Release
>
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

