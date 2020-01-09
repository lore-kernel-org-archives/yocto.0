Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.7376.1578569217587786985
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 03:26:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nDL/wQ5Q;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alan.martinovic@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21D12E0138F; Thu,  9 Jan 2020 03:26:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alan.martinovic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ABA7E00782
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2020 03:26:56 -0800 (PST)
Received: by mail-lj1-f175.google.com with SMTP id o13so6835273ljg.4
        for <yocto@yoctoproject.org>; Thu, 09 Jan 2020 03:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=rhbnB4DXWeZm+JoJ8KzMRIAEQWtwSVYw4TRBsFj6THA=;
        b=nDL/wQ5Qc4DtsbKOkoAHfs7gj0JswIMr9QdTkH9NBB7YnqYqJEPE606eMljtMRDvBI
         HVirPafVSNyRXHvVAC5zQlB/BaLsZ7lE95Fpa5UdIRNkg1twgt279O7N9HJiuJqhsQc7
         ddOfZdNhbUgDHfb0FxvO+GuwXd4Tauv30JYWWc/cz7reF+qKmEfwhLN2OKHEdMRKaTBF
         80K+s9gq2+cUJ4RBVuAvjHoHbhkJeVaap+NYjpUaMWy8S/Q/ruKjllVMRUk+KqGQTT7l
         4DeD5DwXGGWfWVnwZa3Gg2VkG4PXxB0abJiD/sIThGo23BTJOiwXNgMoC74QtgqEP+7o
         bIpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=rhbnB4DXWeZm+JoJ8KzMRIAEQWtwSVYw4TRBsFj6THA=;
        b=drm42rgG3uBe3U81KulMho9n/yexSFgjWpUgEpqI8ggaRLA+xnMxVLkofT1+9PQTPx
         uFsEQmPazlTONwmw0jA4HrwtLHhKTFNQaNfpbz69s9h0FvqI9YjbqZLub4qf5raW4g/0
         vOTNxDiulNU8BFT7tB5pSSJzykL8Gir4C648vGWn2uHVS9XuJTdQpCrSgwWfy/u3Dbrf
         0VjyFWh5RycOLuSiCzdq4ewPoOzlUbeMZbrnlUQcq4gMqDGkvQK83zUT5vv5Wvi20bWw
         mXR+tk2kVCUhmmQgRABikEWbp2ojmpd087vmOkJZWE3W+uDK4h8HcNN0x+pP0pXw6rJ0
         Deog==
X-Gm-Message-State: APjAAAW+b2qQi+uUvkYWPjrNrqGZHCZb8SDLoyLXtG57fDZ8UVJJ2m7n
	ZPFsH2JiwZkYUtmmiXSFWC1wJ3Ar11lvbaRfZkY14mHR
X-Google-Smtp-Source: APXvYqy29fZZumsaMq3iHcsexPKKCAEM3oCTWA+W8pbJ3NkVsO21h+bdHSGmpxAU3dl6YzGhAXUKazJH25NYOdP3VXY=
X-Received: by 2002:a2e:9143:: with SMTP id q3mr6243394ljg.199.1578569214086;
 Thu, 09 Jan 2020 03:26:54 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?QWxhbiBNYXJ0aW5vdmnEhw==?= <alan.martinovic@gmail.com>
Date: Thu, 9 Jan 2020 12:26:41 +0100
Message-ID: <CAHTPtPFZtcEWdyjf4dkf_mPzKs7TX3w1CBs7UDs14F3vRM2Ebg@mail.gmail.com>
Subject: Getting the example recipe created with create-layer to print
To: yocto@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,
am trying to get some custom logging seen on the console but am
failing to see it get printed.
Here is an example showing the failure.
The starting point is a vanilla clone of poky zeus.
I'm making the layer in the build directory just for development simplicity.

```
source oe-init-build-env recipe-logger
bitbake-layers create-layer meta-logger-test
bitbake-layers add-layer meta-logger-test

# This created a structure recipes-example/example/example_0.1.bb
# The gist of the example recipe is using bb.plain [1] to printing to
stdout in the build task:

# Clean and run
bitbake example -c cleanall
bitbake example

# Prints nothing from the recipe...
```

This is also the case when replacing bb.plain with:
* bb.note
* bb.warn
* bb.fatal
    * the recipe doesn't fail here even though it should....

Examining `bitbake -e example` shows the correct code for do_build.

Now the link [1] does say `can also log to standard output (stdout)
with the right settings`.
I haven't yet found references to what is meant with the right
settings and if those are missing here.

Any tips on what might be happening with this barebones example?

Be Well,
Alan


[1] https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#recipe-logging-mechanisms
