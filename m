Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web11.1838.1603824917384216589
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 11:55:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iyyWJQo/;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id s17so1177837qvr.11
        for <yocto@lists.yoctoproject.org>; Tue, 27 Oct 2020 11:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=u6kaZ5cLl+2+u05bIG899nOU9VJK9K+G+tHRqOulCj4=;
        b=iyyWJQo/bRqDl3Mia+dmnpyqQ5usZfFio67bCO1kXcqM6Wb0ZnPjqcsc2JIn5j0Nng
         D+oqOCyi2oWTWYnjHseqlSXTD/S7ODr13ppliwyjB5PBWkQbO2M4cq/sQkZvL/uTX9+H
         g/Ldqvu4mYsxJEB8UP4HbUe6iDKZSMFXivI6bBV7rVkg2hXceo0AZQBpSgV7y3OopOde
         YsmnJtczOGiFuqCFVWO+mYhl4u5d5Gmzn8F6Ztd9mRWFb0unEHgG3dH1ECs40AbQhrWQ
         JzDjwlHezOXJdszD3vhO2AP30AbL7AWmGXTqivr38g+TDBoxNubBRtM7aZL+WLbWt5rO
         neAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=u6kaZ5cLl+2+u05bIG899nOU9VJK9K+G+tHRqOulCj4=;
        b=oA6T3OE3xSSQdyor5Q3e8CvPEGk3ZBtArkONESBnBkBiwtNZLkNy2Ch9SGGhVp+Xhe
         j4yMYu6y5X0T7gEW/8KK4eZfsYa6YYUzbfkqqrdBIdstwxwDyBsXkEFMC6sVzzEfCpEl
         9d86Y4G9tmjEz11bOPaezVCpz8tL3ypSD9hkjrS8SB9ac/ntzVR3JnDni0w1/9I2fSLx
         1na8EqY/TpGMAVVgRwQOaHvwN5t5WCcB/c6IT+R7GV4wbbptlUpgAHRmhwLnTRWNLYAQ
         tpMXiCL0lZ6EKFXYTwUr8P5WzuhGzvG+RnzKt8Xa85yX38HgWo5UjcwEma03HBA9nAOJ
         u/oQ==
X-Gm-Message-State: AOAM5300kVNCcKQQp5O9qdtMrLZ4uocPCvcV/+Yep9Rqm/YJQ/fTmS9V
	sqSjnD4Lm8BoMVtspRhk46DiKcrpOWLZUTfBLIo=
X-Google-Smtp-Source: ABdhPJw9FhC+hmOkL6CtDqzfXUk4r9Q6LFql6wNRWVzA5p4NcMAh7A6jUxlBjpwazHG44C3FEE/YKAPwUgKJ8VkSSes=
X-Received: by 2002:ad4:58f2:: with SMTP id di18mr3682381qvb.19.1603824916350;
 Tue, 27 Oct 2020 11:55:16 -0700 (PDT)
MIME-Version: 1.0
References: <qaTe.1603822971108892398.k5IF@lists.yoctoproject.org>
In-Reply-To: <qaTe.1603822971108892398.k5IF@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 27 Oct 2020 11:54:50 -0700
Message-ID: <CAMKF1spmHDP=YR9TgcgMwhRJifHzUOKjWC2ZqjgKdurEUeANeQ@mail.gmail.com>
Subject: Re: [yocto] How to use WORKDIR of recipe A in recipe B ?
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello Talel

On Tue, Oct 27, 2020 at 11:23 AM Bel Hadj Salem Talel
<bhstalel@gmail.com> wrote:
>
> Hi All,
>
> I have a macchina.io recipe that fetches the source from Github and compiles it correctly.
>
> In the WORKDIR , there is a samples directory with many examples, and each example has a Makefile, here is an example :
>
> include $(POCO_BASE)/build/rules/global
> include $(POCO_BASE)/OSP/BundleCreator/BundleCreator.make
> objects = BundleActivator
> target          = io.macchina.samples.sensor1
> target_includes = $(PROJECT_BASE)/devices/Devices/include
> target_libs     = IoTDevices PocoOSP PocoUtil PocoJSON PocoXML PocoFoundation
> postbuild = $(SET_LD_LIBRARY_PATH) $(BUNDLE_TOOL) -n$(OSNAME) -a$(OSARCH) -o../bundles HelloSensor1.bndlspec
> include $(POCO_BASE)/build/rules/dylib
>
> There is a global variable that are used when building macchina, like (POCO_BASE, BUNDLE_TOOL, ...)
>
> Now, I don't want to make a patch for my custom sample, because that will force macchina to recompile again and that will take more than 45minutes.
> I need to use the macchina WORKDIR

many options to handle such situations.
usually, workdirs is strictly specific to one recipe, no other recipe
gets to peak into it. however if you have multiple recipes needing to
access same sources again
its perhaps ok to turn it into recipe-source recipe which sets up
common sources dir and every recipe refers to it. This however only
works if you purely need to access source
and source alone. If you are depending on intermediate buils artifacts
e.g. object file libraries etc. then better approach is to add it to
your -dev package from the source recipe
during its build and then when you DEPEND = "recipeA" in your recipeB
it will automatically stage them in the recipe specific sysroot.

However in many case you need fully configured and built trees of a
package into another. then look at how kernel is sharing its build
artifacts for kernel module builds from other
recipes.

> 
>
