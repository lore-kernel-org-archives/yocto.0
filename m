Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 680C4E00BB8
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 12:40:13 -0700 (PDT)
Received: by mail-ve0-f175.google.com with SMTP id oz11so7906150veb.20
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 12:40:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=XYEcl2EzIqpewUo30hHFj0QCAxjvX1gGLuU4ADXLKHg=;
	b=D6guZNY5FiN8IqKVYIfWHt6CCes5fSg7USZeha/DPiQluUuBuEqnkkRTwirUlZsO0s
	HZ6szlvWXjmDjK2G9qGifyO/BNiS5WdZ8v+My4TIpFpPtDcq0cWqy36COFyZify6PMKg
	bcIoevPobtvN9Nk+8/vLZ4fS8ruPwKIoTGJJjIJ+OWCY8F8gg5jaWLBqfJ2Rq48IIoNz
	vjBBesQKDYlNL0CCnbDLTc0O8x9WF8e22MJWG0rB/DV64Pw9FgEwpQitlYQ9KA7/T8e+
	p3Bqs8wCkMCZOXQCKPvOhYoF0yNTzdOd+HzLRig7PJVHkG10zB07CRJ9xYhnySAxF7VM
	DIUg==
X-Gm-Message-State: ALoCoQllI/zxAsP6g/9w8iSJ51PJeh9uDfuZzEJsAQVnk6m4MtBfFZulwfo6Q/8ZAOIClwta2LJd
MIME-Version: 1.0
X-Received: by 10.221.29.137 with SMTP id ry9mr38227782vcb.6.1397504413259;
	Mon, 14 Apr 2014 12:40:13 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Mon, 14 Apr 2014 12:40:13 -0700 (PDT)
In-Reply-To: <1397464205.9306.3.camel@firebird.rb.intel.com>
References: <CAPhnLPDLvgMCN_e050a4sYWh=n=ukZMCjkuTskVWC2XWUd0oJQ@mail.gmail.com>
	<1397464205.9306.3.camel@firebird.rb.intel.com>
Date: Mon, 14 Apr 2014 12:40:13 -0700
Message-ID: <CAPhnLPDHigzrzKxT3q_VJxSEcCjHDy3V0=86Tt0TWLaTG_Vzbg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: Re: New RC for 1.6.
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
X-List-Received-Date: Mon, 14 Apr 2014 19:40:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Apr 14, 2014 at 1:29 AM, Stanacar, StefanX
<stefanx.stanacar@intel.com> wrote:
> Hi Beth,
>
> There are some artifacts missing for beaglebone, the .dtb files.
> rc3 had them... This is only a problem for minimal images, all the
> others don't need the dtb files, but they should be there nevertheless
> (between rc3 and rc4 kernel image type changed from zImage to uImage
> fwiw, so the dtb file changed name too, as in
> uImage-am335x-boneblack.dtb)
>

Ok, pushing a fix to the AB. I'll move these over by hand if the build
directory still exists (it should). If not, I'll rebuild. Should be
there in a few moments.

-b

>
> Cheers,
> Stefan
>
> On Thu, 2014-04-10 at 22:15 -0700, Flanagan, Elizabeth wrote:
>> All,
>>
>> A few much needed bug fixes came in to fix some of the issues we saw
>> with rc3. We decided that we should just roll and rc4. Please begin
>> testing this as soon as possible.
>>
>> We're seeing one issue on the world build:
>>
>> http://autobuilder.yoctoproject.org/main/builders/nightly-world/builds/42/steps/BuildImages/logs/stdio
>>
>> but as this produces no published artifacts, I think we're ok with at
>> least the release artifacts.
>>
>> http://autobuilder.yoctoproject.org/pub/releases/yocto-1.6_M5.rc4
>>
>> bitbake bb4980c63db386ce7d30d9a6b86e9f3861b3bc3a
>> eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
>> eclipse-poky-kepler 1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
>> meta-fsl-arm d4316faef78ceb01ff023579e15110939ec69408
>> meta-fsl-ppc c4fa1b431f4efc4982a168119db95236cfa8cad3
>> meta-intel db84acfc8d9ed8dccd4a79de39fee337bc729662
>> meta-minnow 7bdcd1140b729598bae6246a4bbc21c3950aadd8
>> meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
>> oecore dca1b4f073fff740364f066f6a68bb3c8697b7a6
>> poky a0958261265049904fd78a2ba0198d46e5e65ea9
>>
>>
>> --
>> Elizabeth Flanagan
>> Yocto Project
>> Build and Release
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

