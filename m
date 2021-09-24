Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,HTML_MESSAGE,
	HTTPS_HTTP_MISMATCH,MENTIONS_GIT_HOSTING,PDS_BTC_ID,SPF_HELO_NONE,URI_NOVOWEL
	autolearn=no autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2796FC433EF
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 02:11:09 +0000 (UTC)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
 [209.85.217.50])
 by mx.groups.io with SMTP id smtpd.web11.2820.1632449468044565525
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 19:11:08 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: gmail.com, ip: 209.85.217.50, mailfrom: fede.evol@gmail.com)
Received: by mail-vs1-f50.google.com with SMTP id z62so8518480vsz.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 19:11:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Imt3w40UA437nNzy0ueofQJ6D9jHhfLdVAHqgatFy0E=;
        b=jjyH1U0EVbf+vaw9Bfl90OX4RDIap6dwP9dAxbf+QcEeGKQQimTa7Es3Kv75/a9QWw
         /GxIQ39reIoLGhisiRgJ+zoNql4aOY7/OYjM6/NxHFHwh716tslobyV+4RS4VgtHS+ck
         u1kNJJrDxGPSU3ZC92B/CDffwKtYi3NzUAfPdVL9/ivhZLEyJFil5QpZqS+Rlid+ELCX
         MDoSmDuwz6bqfz6kSZOTz31JWv1Z01o/sM01FNkZPpNOUcjPWLDeyrc4gLXRlKGCFaF4
         RXnnuVWOEuZJOZwj9hoiGEln1EaYdy2VTGI8uqXbhf/wPa+r91DQ/L5VAJ5isH+tqjvo
         3H/A==
X-Gm-Message-State: AOAM533+QwxocnsC6MChU4mIQIW2Sw3+1msQfUIzzI+PEe5e2LTq7HMM
	/dPKIuk4ojF73Vn/ff9SuZ+T4BdD8LYhzwK1ooU=
X-Google-Smtp-Source: 
 ABdhPJxRKNwm9D2j0oiheuuTnbTa4zE+exslYd2SkPFqin6MXKu8L7JYWbApMYsSCOp9mVJuJ4m/LatKduUd2ddVGz0=
X-Received: by 2002:a67:c896:: with SMTP id v22mr7308198vsk.39.1632449467083;
 Thu, 23 Sep 2021 19:11:07 -0700 (PDT)
MIME-Version: 1.0
References: <3925c5329d6f46f78c5921fe7965662b@blackberry.com>
 <AS8PR09MB4645D63449C60FC6463045E7A8A19@AS8PR09MB4645.eurprd09.prod.outlook.com>
 <16A6EE364B338B15.22723@lists.yoctoproject.org>
 <15166f538f2144adabe2299deb3b2a3c@blackberry.com>
 <4440837f-5f69-28c4-7d8b-57653935790c@gmail.com>
 <16A735F63BB00E6A.1967@lists.yoctoproject.org>
 <1b84a7a456b54acaae9d98efc5731549@blackberry.com>
 <CAM6O0Zgs5Fir2k8m+tTVG_OVVe6oq=uRvCEegxzA6x-AvgwSJw@mail.gmail.com>
 <6be47b6387624c2686df9b5bdab5d1e1@blackberry.com>
In-Reply-To: <6be47b6387624c2686df9b5bdab5d1e1@blackberry.com>
From: Federico Pellegrin <fede@evolware.org>
Date: Fri, 24 Sep 2021 04:10:55 +0200
Message-ID: 
 <CAM6O0Zi4mM4ykAD8BxTZMmXzOtx9jnyyT+w_Rp48O1NqVZ1xiw@mail.gmail.com>
Subject: Re: [yocto] googletest shared library
To: Lijun Chen <lijchen@blackberry.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000996f0905ccb44254"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 02:11:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54828

--000000000000996f0905ccb44254
Content-Type: text/plain; charset="UTF-8"

Hi,
Regarding the INSANE_SKIP: as that files get packed in the "-dev" package,
you should probably then accordingly have:

INSANE_SKIP_${PN}-dev += "dev-elf"

Cheers,
Federico

Il giorno gio 23 set 2021 alle ore 16:46 Lijun Chen <lijchen@blackberry.com>
ha scritto:

> I tried INSANE_SKIP_${PN} += "dev-elf" and "dev-so", still got the QA
> error:
>
> ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package
> googletest-dev contains non-symlink .so '/usr/lib/libgmock.so'
> -dev package googletest-dev contains non-symlink .so
> '/usr/lib/libgtest_main.so'
> -dev package googletest-dev contains non-symlink .so
> '/usr/lib/libgmock_main.so'
> -dev package googletest-dev contains non-symlink .so
> '/usr/lib/libgtest.so' [dev-elf]
> ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors.
> Please consider fixing them.
> ERROR: Logfile of failure stored in:
> /home/lijchen/hdd/ivdp/yocto/imx8/imx-yocto-bsp-Hardknott/build-imx8qmmek/tmp/work/cortexa72-cortexa53-crypto-poky-linux/googletest/1.10.0-r0/temp/log.do_package_qa.24701
> ERROR: Task
> (/home/lijchen/hdd/ivdp/yocto/imx8/imx-yocto-bsp-Hardknott/sources/meta-openembedded/meta-oe/recipes-test/googletest/googletest_git.bb:do_package_qa)
> failed with exit code '1'
>
> I also tried adding " -DCMAKE_INSTALL_PREFIX=/usr/local" to EXTRA_OEMAKE,
> and got the following error:
>
> ERROR: googletest-1.10.0-r0 do_package: QA Issue: googletest:
> Files/directories were installed but not shipped in any package:
>   /usr/local/include
>   /usr/local/lib/libgmock.so
>   /usr/local/lib/libgtest_main.so
>   /usr/local/lib/libgmock_main.so
>   /usr/local/lib/libgtest.so
>   /usr/local/lib/cmake
>   /usr/local/lib/pkgconfig
>   /usr/local/lib/cmake/GTest
>   /usr/local/lib/cmake/GTest/GTestTargets.cmake
>   /usr/local/lib/cmake/GTest/GTestConfigVersion.cmake
>   /usr/local/lib/cmake/GTest/GTestConfig.cmake
>   /usr/local/lib/cmake/GTest/GTestTargets-noconfig.cmake
>   /usr/local/lib/pkgconfig/gtest_main.pc
>   /usr/local/lib/pkgconfig/gtest.pc
>   /usr/local/lib/pkgconfig/gmock_main.pc
>   /usr/local/lib/pkgconfig/gmock.pc
>   /usr/local/include/gtest
>   /usr/local/include/gmock
>   /usr/local/include/gtest/gtest_prod.h
>   /usr/local/include/gtest/gtest-test-part.h
>   /usr/local/include/gtest/gtest_pred_impl.h
>   /usr/local/include/gtest/gtest-matchers.h
>   /usr/local/include/gtest/gtest-printers.h
>   /usr/local/include/gtest/gtest.h
>   /usr/local/include/gtest/gtest-param-test.h
>   /usr/local/include/gtest/gtest-death-test.h
>   /usr/local/include/gtest/gtest-typed-test.h
>   /usr/local/include/gtest/gtest-message.h
>   /usr/local/include/gtest/gtest-spi.h
>   /usr/local/include/gtest/internal
>   /usr/local/include/gtest/internal/gtest-death-test-internal.h
>   /usr/local/include/gtest/internal/gtest-filepath.h
>   /usr/local/include/gtest/internal/gtest-param-util.h
>   /usr/local/include/gtest/internal/gtest-string.h
>   /usr/local/include/gtest/internal/gtest-type-util.h
>   /usr/local/include/gtest/internal/gtest-internal.h
>   /usr/local/include/gtest/internal/gtest-type-util.h.pump
>   /usr/local/include/gtest/internal/gtest-port-arch.h
>   /usr/local/include/gtest/internal/gtest-port.h
>   /usr/local/include/gtest/internal/custom
>   /usr/local/include/gtest/internal/custom/gtest-printers.h
>   /usr/local/include/gtest/internal/custom/gtest.h
>   /usr/local/include/gtest/internal/custom/README.md
>   /usr/local/include/gtest/internal/custom/gtest-port.h
>   /usr/local/include/gmock/gmock-function-mocker.h
>   /usr/local/include/gmock/gmock-generated-function-mockers.h
>   /usr/local/include/gmock/gmock-generated-actions.h.pump
>   /usr/local/include/gmock/gmock-matchers.h
>   /usr/local/include/gmock/gmock-generated-matchers.h
>   /usr/local/include/gmock/gmock-more-matchers.h
>   /usr/local/include/gmock/gmock.h
>   /usr/local/include/gmock/gmock-generated-actions.h
>   /usr/local/include/gmock/gmock-nice-strict.h
>   /usr/local/include/gmock/gmock-spec-builders.h
>   /usr/local/include/gmock/gmock-more-actions.h
>   /usr/local/include/gmock/gmock-generated-function-mockers.h.pump
>   /usr/local/include/gmock/gmock-cardinalities.h
>   /usr/local/include/gmock/gmock-actions.h
>   /usr/local/include/gmock/gmock-generated-matchers.h.pump
>   /usr/local/include/gmock/internal
>   /usr/local/include/gmock/internal/gmock-port.h
>   /usr/local/include/gmock/internal/gmock-pp.h
>   /usr/local/include/gmock/internal/gmock-internal-utils.h
>   /usr/local/include/gmock/internal/custom
>   /usr/local/include/gmock/internal/custom/gmock-port.h
>   /usr/local/include/gmock/internal/custom/gmock-generated-actions.h.pump
>   /usr/local/include/gmock/internal/custom/gmock-matchers.h
>   /usr/local/include/gmock/internal/custom/gmock-generated-actions.h
>   /usr/local/include/gmock/internal/custom/README.md
> Please set FILES such that these items are packaged. Alternatively if they
> are unneeded, avoid installing them or delete them within do_install.
> googletest: 69 installed and not shipped files. [installed-vs-shipped]
> ERROR: googletest-1.10.0-r0 do_package: Fatal QA errors found, failing
> task.
>
>
> ------------------------------
> *From:* Federico Pellegrin <fede@evolware.org>
> *Sent:* Thursday, September 23, 2021 10:27:39 AM
> *To:* Lijun Chen
> *Cc:* yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] googletest shared library
>
>
> Hi,
> To skip the QA you can use:
>
> INSANE_SKIP_${PN} += "dev-elf"
>
> (or any QA part you'd like to skip, ie. dev-elf or dev-so ...)
>
> Cheers,
> Federico
>
>
>
> Il giorno gio 23 set 2021 alle ore 15:33 Lijun Chen <
> lijchen@blackberry.com> ha scritto:
>
>> Hi,
>>
>>
>> If I switch to the default setting of the googletest recipe, the header
>> files are included in the SDK image. However, the libgtest libraries are
>> static.
>>
>> Looks FILES_SOLIBSDEV = "" disables googletest-dev to be included in the
>> SDK.
>>
>>
>> Is there a way to change the library to dynamic and keep the header
>> files? i.e. just add EXTRA_OECMAKE = "-DBUILD_SHARED_LIBS=ON " but skip
>> the do_package_qa part to avoid the QA issue due to un-versioned library?
>>
>>
>> Thanks,
>>
>> Lijun
>>
>>
>> ------------------------------
>> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on
>> behalf of Lijun Chen <lijchen@blackberry.com>
>> *Sent:* Wednesday, September 22, 2021 1:45 PM
>> *To:* Khem Raj; yocto@lists.yoctoproject.org
>> *Subject:* Re: [yocto] googletest shared library
>>
>>
>> Tried adding googletest to TOOLCHAIN_TARGET_TASK. The gtest .h files are
>> still not showing up.
>>
>> Thanks,
>> ------------------------------
>> *From:* Khem Raj <raj.khem@gmail.com>
>> *Sent:* Wednesday, September 22, 2021 11:28:05 AM
>> *To:* Lijun Chen; yocto@lists.yoctoproject.org
>> *Subject:* Re: [yocto] googletest shared library
>>
>> The .h files will be in dev pkg in this case googletest-dev
>> what happens if you add googletest to TOOLCHAIN_TARGET_TASK
>>
>> On 9/22/21 6:18 AM, Lijun Chen wrote:
>> > Hi,
>> >
>> >
>> > Now I included googletest to the IMAGE_INSTALL in my image file, and
>> > built both board image and SDK image. I can see libgtest.so is
>> available
>> > in both images. However, gtest/gtest.h is a not present in SDK. How do
>> I
>> > add the header files to the SDK image? Looks the following lines affect
>> > that?
>> >
>> > SOLIBS = ".so"
>> > FILES_SOLIBSDEV = ""
>> >
>> > Thanks,
>> > Lijun
>> >
>> > ------------------------------------------------------------------------
>> > *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on
>> > behalf of Lijun Chen <lijchen@blackberry.com>
>> > *Sent:* Tuesday, September 21, 2021 3:50 PM
>> > *To:* Konrad Weihmann; yocto@lists.yoctoproject.org
>> > *Subject:* Re: [yocto] googletest shared library
>> >
>> > Thanks Konrad. That worked.
>> >
>> > ------------------------------------------------------------------------
>> > *From:* Konrad Weihmann <kweihmann@outlook.com>
>> > *Sent:* Tuesday, September 21, 2021 10:26:19 AM
>> > *To:* Lijun Chen; yocto@lists.yoctoproject.org
>> > *Subject:* Re: [yocto] googletest shared library
>> >
>> > On 21.09.21 16:18, Lijun Chen wrote:
>> >> Hi,
>> >>
>> >> I would like to include libgtest.so into my Yocto image. I added
>> >> googletest to IMAGE_INSTALL and added the following line to
>> >> sources/meta-openembedded/meta-oe/recipes-test/googletest/
>> googletest_git.bb
>> <https://urldefense.com/v3/__http://googletest_git.bb__;!!COg3wY07Hnb7!7O_HT4lxGD2NMUNxv3WxuozghHtiiLg6jEedfRQlWFKmZAkTPU49ug2kIHlR9kH4xg$>
>> :
>> >>
>> >> EXTRA_OECMAKE = "-DBUILD_SHARED_LIBS=ON "
>> >>
>> >>
>> >> The shared libraries were built successfully. However, there are
>> errors
>> >> in do_package_qc as following:
>> >>
>> >>
>> >> ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package
>> >> googletest-dev contains non-symlink .so '/usr/lib/libgmock.so'
>> >> -dev package googletest-dev contains non-symlink .so
>> >> '/usr/lib/libgtest_main.so'
>> >> -dev package googletest-dev contains non-symlink .so
>> >> '/usr/lib/libgmock_main.so'
>> >> -dev package googletest-dev contains non-symlink .so
>> >> '/usr/lib/libgtest.so' [dev-elf]
>> >> ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors.
>> >> Please consider fixing them.
>> >
>> >
>> https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$
>> > <
>> https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$>
>>
>> >
>> > (and the next lines) might give you a hint what to do in this case.
>> > Although one could also consider that's something that needs to be fixed
>> > in the installation script of googletest, as versioned libraries are the
>> > expected default
>> >
>> >>
>> >>
>> >> Any idea to fix this?
>> >>
>> >>
>> >> Thanks,
>> >>
>> >> Lijun
>> >>
>> >>
>> >>
>> ------------------------------------------------------------------------
>> >> This transmission (including any attachments) may contain confidential
>> >> information, privileged material (including material protected by the
>> >> solicitor-client or other applicable privileges), or constitute
>> >> non-public information. Any use of this information by anyone other
>> than
>> >> the intended recipient is prohibited. If you have received this
>> >> transmission in error, please immediately reply to the sender and
>> delete
>> >> this information from your system. Use, dissemination, distribution,
>> or
>> >> reproduction of this transmission by unintended recipients is not
>> >> authorized and may be unlawful.
>> >>
>> >>
>> >>
>> >>
>> > ------------------------------------------------------------------------
>> > This transmission (including any attachments) may contain confidential
>> > information, privileged material (including material protected by the
>> > solicitor-client or other applicable privileges), or constitute
>> > non-public information. Any use of this information by anyone other
>> than
>> > the intended recipient is prohibited. If you have received this
>> > transmission in error, please immediately reply to the sender and
>> delete
>> > this information from your system. Use, dissemination, distribution, or
>> > reproduction of this transmission by unintended recipients is not
>> > authorized and may be unlawful.
>> > ------------------------------------------------------------------------
>> > This transmission (including any attachments) may contain confidential
>> > information, privileged material (including material protected by the
>> > solicitor-client or other applicable privileges), or constitute
>> > non-public information. Any use of this information by anyone other
>> than
>> > the intended recipient is prohibited. If you have received this
>> > transmission in error, please immediately reply to the sender and
>> delete
>> > this information from your system. Use, dissemination, distribution, or
>> > reproduction of this transmission by unintended recipients is not
>> > authorized and may be unlawful.
>> >
>> >
>> >
>> >
>> ------------------------------
>> This transmission (including any attachments) may contain confidential
>> information, privileged material (including material protected by the
>> solicitor-client or other applicable privileges), or constitute non-public
>> information. Any use of this information by anyone other than the intended
>> recipient is prohibited. If you have received this transmission in error,
>> please immediately reply to the sender and delete this information from
>> your system. Use, dissemination, distribution, or reproduction of this
>> transmission by unintended recipients is not authorized and may be unlawful.
>> ------------------------------
>> This transmission (including any attachments) may contain confidential
>> information, privileged material (including material protected by the
>> solicitor-client or other applicable privileges), or constitute non-public
>> information. Any use of this information by anyone other than the intended
>> recipient is prohibited. If you have received this transmission in error,
>> please immediately reply to the sender and delete this information from
>> your system. Use, dissemination, distribution, or reproduction of this
>> transmission by unintended recipients is not authorized and may be unlawful.
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#54807):
>> https://lists.yoctoproject.org/g/yocto/message/54807
>> <https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto/message/54807__;!!COg3wY07Hnb7!7O_HT4lxGD2NMUNxv3WxuozghHtiiLg6jEedfRQlWFKmZAkTPU49ug2kIHkkPvk7KA$>
>> Mute This Topic: https://lists.yoctoproject.org/mt/85766613/5117409
>> <https://urldefense.com/v3/__https://lists.yoctoproject.org/mt/85766613/5117409__;!!COg3wY07Hnb7!7O_HT4lxGD2NMUNxv3WxuozghHtiiLg6jEedfRQlWFKmZAkTPU49ug2kIHmbs58Lwg$>
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>> <https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto/unsub__;!!COg3wY07Hnb7!7O_HT4lxGD2NMUNxv3WxuozghHtiiLg6jEedfRQlWFKmZAkTPU49ug2kIHnXvmLp7Q$>
>> [fede@evolware.org]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>> ------------------------------
> This transmission (including any attachments) may contain confidential
> information, privileged material (including material protected by the
> solicitor-client or other applicable privileges), or constitute non-public
> information. Any use of this information by anyone other than the intended
> recipient is prohibited. If you have received this transmission in error,
> please immediately reply to the sender and delete this information from
> your system. Use, dissemination, distribution, or reproduction of this
> transmission by unintended recipients is not authorized and may be unlawful.
>

--000000000000996f0905ccb44254
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hi,</div><div>Regarding the INSANE_SKI=
P: as that files get packed in the &quot;-dev&quot; package, you should pro=
bably then accordingly have:</div><div> <span><br></span></div><div><span>I=
NSANE_SKIP_${PN}-dev +=3D &quot;dev-elf&quot;</span></div><div><br></div><d=
iv>Cheers,</div><div>Federico<br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">Il giorno gio 23 set 2021 alle ore 1=
6:46 Lijun Chen &lt;<a href=3D"mailto:lijchen@blackberry.com">lijchen@black=
berry.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_4090285402321779064divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<div id=3D"gmail-m_4090285402321779064divtagdefaultwrapper" dir=3D"ltr" sty=
le=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-se=
rif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoj=
i&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot=
;,EmojiSymbols">
<p>I tried <span>INSANE_SKIP_${PN} +=3D &quot;dev-elf&quot; and &quot;dev-s=
o&quot;, still got the QA error:</span></p>
<p><span></span></p>
<div>ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package goog=
letest-dev contains non-symlink .so &#39;/usr/lib/libgmock.so&#39;<br>
-dev package googletest-dev contains non-symlink .so &#39;/usr/lib/libgtest=
_main.so&#39;<br>
-dev package googletest-dev contains non-symlink .so &#39;/usr/lib/libgmock=
_main.so&#39;<br>
-dev package googletest-dev contains non-symlink .so &#39;/usr/lib/libgtest=
.so&#39; [dev-elf]<br>
ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors. Pleas=
e consider fixing them.<br>
ERROR: Logfile of failure stored in: /home/lijchen/hdd/ivdp/yocto/imx8/imx-=
yocto-bsp-Hardknott/build-imx8qmmek/tmp/work/cortexa72-cortexa53-crypto-pok=
y-linux/googletest/1.10.0-r0/temp/log.do_package_qa.24701<br>
ERROR: Task (/home/lijchen/hdd/ivdp/yocto/imx8/imx-yocto-bsp-Hardknott/sour=
ces/meta-openembedded/meta-oe/recipes-test/googletest/googletest_git.bb:do_=
package_qa) failed with exit code &#39;1&#39;<br>
<br>
</div>
I also tried adding <span>&quot; -DCMAKE_INSTALL_PREFIX=3D/usr/local&quot;<=
/span> to <span>EXTRA_OEMAKE</span>, and got the following error:
<p></p>
<p><span></span></p>
<div>ERROR: googletest-1.10.0-r0 do_package: QA Issue: googletest: Files/di=
rectories were installed but not shipped in any package:<br>
=C2=A0 /usr/local/include<br>
=C2=A0 /usr/local/lib/libgmock.so<br>
=C2=A0 /usr/local/lib/libgtest_main.so<br>
=C2=A0 /usr/local/lib/libgmock_main.so<br>
=C2=A0 /usr/local/lib/libgtest.so<br>
=C2=A0 /usr/local/lib/cmake<br>
=C2=A0 /usr/local/lib/pkgconfig<br>
=C2=A0 /usr/local/lib/cmake/GTest<br>
=C2=A0 /usr/local/lib/cmake/GTest/GTestTargets.cmake<br>
=C2=A0 /usr/local/lib/cmake/GTest/GTestConfigVersion.cmake<br>
=C2=A0 /usr/local/lib/cmake/GTest/GTestConfig.cmake<br>
=C2=A0 /usr/local/lib/cmake/GTest/GTestTargets-noconfig.cmake<br>
=C2=A0 /usr/local/lib/pkgconfig/gtest_main.pc<br>
=C2=A0 /usr/local/lib/pkgconfig/gtest.pc<br>
=C2=A0 /usr/local/lib/pkgconfig/gmock_main.pc<br>
=C2=A0 /usr/local/lib/pkgconfig/gmock.pc<br>
=C2=A0 /usr/local/include/gtest<br>
=C2=A0 /usr/local/include/gmock<br>
=C2=A0 /usr/local/include/gtest/gtest_prod.h<br>
=C2=A0 /usr/local/include/gtest/gtest-test-part.h<br>
=C2=A0 /usr/local/include/gtest/gtest_pred_impl.h<br>
=C2=A0 /usr/local/include/gtest/gtest-matchers.h<br>
=C2=A0 /usr/local/include/gtest/gtest-printers.h<br>
=C2=A0 /usr/local/include/gtest/gtest.h<br>
=C2=A0 /usr/local/include/gtest/gtest-param-test.h<br>
=C2=A0 /usr/local/include/gtest/gtest-death-test.h<br>
=C2=A0 /usr/local/include/gtest/gtest-typed-test.h<br>
=C2=A0 /usr/local/include/gtest/gtest-message.h<br>
=C2=A0 /usr/local/include/gtest/gtest-spi.h<br>
=C2=A0 /usr/local/include/gtest/internal<br>
=C2=A0 /usr/local/include/gtest/internal/gtest-death-test-internal.h<br>
=C2=A0 /usr/local/include/gtest/internal/gtest-filepath.h<br>
=C2=A0 /usr/local/include/gtest/internal/gtest-param-util.h<br>
=C2=A0 /usr/local/include/gtest/internal/gtest-string.h<br>
=C2=A0 /usr/local/include/gtest/internal/gtest-type-util.h<br>
=C2=A0 /usr/local/include/gtest/internal/gtest-internal.h<br>
=C2=A0 /usr/local/include/gtest/internal/gtest-type-util.h.pump<br>
=C2=A0 /usr/local/include/gtest/internal/gtest-port-arch.h<br>
=C2=A0 /usr/local/include/gtest/internal/gtest-port.h<br>
=C2=A0 /usr/local/include/gtest/internal/custom<br>
=C2=A0 /usr/local/include/gtest/internal/custom/gtest-printers.h<br>
=C2=A0 /usr/local/include/gtest/internal/custom/gtest.h<br>
=C2=A0 /usr/local/include/gtest/internal/custom/README.md<br>
=C2=A0 /usr/local/include/gtest/internal/custom/gtest-port.h<br>
=C2=A0 /usr/local/include/gmock/gmock-function-mocker.h<br>
=C2=A0 /usr/local/include/gmock/gmock-generated-function-mockers.h<br>
=C2=A0 /usr/local/include/gmock/gmock-generated-actions.h.pump<br>
=C2=A0 /usr/local/include/gmock/gmock-matchers.h<br>
=C2=A0 /usr/local/include/gmock/gmock-generated-matchers.h<br>
=C2=A0 /usr/local/include/gmock/gmock-more-matchers.h<br>
=C2=A0 /usr/local/include/gmock/gmock.h<br>
=C2=A0 /usr/local/include/gmock/gmock-generated-actions.h<br>
=C2=A0 /usr/local/include/gmock/gmock-nice-strict.h<br>
=C2=A0 /usr/local/include/gmock/gmock-spec-builders.h<br>
=C2=A0 /usr/local/include/gmock/gmock-more-actions.h<br>
=C2=A0 /usr/local/include/gmock/gmock-generated-function-mockers.h.pump<br>
=C2=A0 /usr/local/include/gmock/gmock-cardinalities.h<br>
=C2=A0 /usr/local/include/gmock/gmock-actions.h<br>
=C2=A0 /usr/local/include/gmock/gmock-generated-matchers.h.pump<br>
=C2=A0 /usr/local/include/gmock/internal<br>
=C2=A0 /usr/local/include/gmock/internal/gmock-port.h<br>
=C2=A0 /usr/local/include/gmock/internal/gmock-pp.h<br>
=C2=A0 /usr/local/include/gmock/internal/gmock-internal-utils.h<br>
=C2=A0 /usr/local/include/gmock/internal/custom<br>
=C2=A0 /usr/local/include/gmock/internal/custom/gmock-port.h<br>
=C2=A0 /usr/local/include/gmock/internal/custom/gmock-generated-actions.h.p=
ump<br>
=C2=A0 /usr/local/include/gmock/internal/custom/gmock-matchers.h<br>
=C2=A0 /usr/local/include/gmock/internal/custom/gmock-generated-actions.h<b=
r>
=C2=A0 /usr/local/include/gmock/internal/custom/README.md<br>
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.<br>
googletest: 69 installed and not shipped files. [installed-vs-shipped]<br>
ERROR: googletest-1.10.0-r0 do_package: Fatal QA errors found, failing task=
.</div>
<br>

<p></p>
<p><span></span><br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_4090285402321779064divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> Federico Pellegrin &lt;<a href=3D"mailto:fede@evolware.org" target=3D=
"_blank">fede@evolware.org</a>&gt;<br>
<b>Sent:</b> Thursday, September 23, 2021 10:27:39 AM<br>
<b>To:</b> Lijun Chen<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] googletest shared library</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div><br>
</div>
<div>Hi,</div>
<div>To skip the QA you can use:</div>
<div><br>
</div>
<div>INSANE_SKIP_${PN} +=3D &quot;dev-elf&quot;</div>
<div><br>
</div>
<div>(or any QA part you&#39;d like to skip, ie. dev-elf or dev-so ...)</di=
v>
<div><br>
</div>
<div>Cheers,</div>
<div>Federico</div>
<div><br>
</div>
<div><br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">Il giorno gio 23 set 2021 alle ore 15=
:33 Lijun Chen &lt;<a href=3D"mailto:lijchen@blackberry.com" target=3D"_bla=
nk">lijchen@blackberry.com</a>&gt; ha scritto:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_4090285402321779064gmail-m_8376641144616927063divtagdefa=
ultwrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);font-famil=
y:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols">
<p>Hi,</p>
<p><br>
</p>
<p>If I switch to the default setting of the googletest recipe, the header =
files are included in the SDK image. However, the libgtest libraries are st=
atic.</p>
<p>Looks <font size=3D"2"><span style=3D"font-size:10pt">FILES_SOLIBSDEV =
=3D &quot;&quot;</span></font> disables googletest-dev to be included in th=
e SDK.</p>
<p><br>
</p>
<p><span>Is there a way to change the library to dynamic and keep the heade=
r files? i.e. just add
<font size=3D"2"><span style=3D"font-size:10pt">EXTRA_OECMAKE =3D &quot;-DB=
UILD_SHARED_LIBS=3DON &quot;</span></font> but skip the
<font size=3D"2"><span style=3D"font-size:10pt">do_package_qa</span></font>=
 part to avoid the QA issue due to un-versioned library?</span></p>
<p><span><br>
</span></p>
<p><span>Thanks,</span></p>
<p><span>Lijun</span><br>
</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_4090285402321779064gmail-m_8376641144616927063divRplyFwd=
Msg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif=
" color=3D"#000000"><b>From:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; on behalf of Lijun =
Chen &lt;<a href=3D"mailto:lijchen@blackberry.com" target=3D"_blank">lijche=
n@blackberry.com</a>&gt;<br>
<b>Sent:</b> Wednesday, September 22, 2021 1:45 PM<br>
<b>To:</b> Khem Raj; <a href=3D"mailto:yocto@lists.yoctoproject.org" target=
=3D"_blank">
yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] googletest shared library</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div id=3D"gmail-m_4090285402321779064gmail-m_8376641144616927063x_divtagde=
faultwrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);font-fam=
ily:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color Em=
oji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&q=
uot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p>Tried adding googletest to <font size=3D"2"><span style=3D"font-size:10p=
t">TOOLCHAIN_TARGET_TASK</span></font>. The gtest .h files are still not sh=
owing up.</p>
<p>Thanks,<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_4090285402321779064gmail-m_8376641144616927063x_divRplyF=
wdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-ser=
if" color=3D"#000000"><b>From:</b> Khem Raj &lt;<a href=3D"mailto:raj.khem@=
gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, September 22, 2021 11:28:05 AM<br>
<b>To:</b> Lijun Chen; <a href=3D"mailto:yocto@lists.yoctoproject.org" targ=
et=3D"_blank">
yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] googletest shared library</font>
<div>=C2=A0</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div>The .h files will be in dev pkg in this case googletest-dev<br>
what happens if you add googletest to TOOLCHAIN_TARGET_TASK<br>
<br>
On 9/22/21 6:18 AM, Lijun Chen wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; <br>
&gt; Now I included googletest to the IMAGE_INSTALL in my image file, and <=
br>
&gt; built both board image and SDK image. I can see libgtest.so is availab=
le <br>
&gt; in both images. However, gtest/gtest.h is a not present in SDK. How do=
 I <br>
&gt; add the header files to the SDK image? Looks the following lines affec=
t <br>
&gt; that?<br>
&gt; <br>
&gt; SOLIBS =3D &quot;.so&quot;<br>
&gt; FILES_SOLIBSDEV =3D &quot;&quot;<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Lijun<br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_bla=
nk">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoct=
oproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; on
<br>
&gt; behalf of Lijun Chen &lt;<a href=3D"mailto:lijchen@blackberry.com" tar=
get=3D"_blank">lijchen@blackberry.com</a>&gt;<br>
&gt; *Sent:* Tuesday, September 21, 2021 3:50 PM<br>
&gt; *To:* Konrad Weihmann; <a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">
yocto@lists.yoctoproject.org</a><br>
&gt; *Subject:* Re: [yocto] googletest shared library<br>
&gt; <br>
&gt; Thanks Konrad. That worked.<br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* Konrad Weihmann &lt;<a href=3D"mailto:kweihmann@outlook.com" t=
arget=3D"_blank">kweihmann@outlook.com</a>&gt;<br>
&gt; *Sent:* Tuesday, September 21, 2021 10:26:19 AM<br>
&gt; *To:* Lijun Chen; <a href=3D"mailto:yocto@lists.yoctoproject.org" targ=
et=3D"_blank">
yocto@lists.yoctoproject.org</a><br>
&gt; *Subject:* Re: [yocto] googletest shared library<br>
&gt; <br>
&gt; On 21.09.21 16:18, Lijun Chen wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt; <br>
&gt;&gt; I would like to include libgtest.so into my Yocto image. I added <=
br>
&gt;&gt; googletest to IMAGE_INSTALL and added the following line to <br>
&gt;&gt; sources/meta-openembedded/meta-oe/recipes-test/googletest/<a href=
=3D"https://urldefense.com/v3/__http://googletest_git.bb__;!!COg3wY07Hnb7!7=
O_HT4lxGD2NMUNxv3WxuozghHtiiLg6jEedfRQlWFKmZAkTPU49ug2kIHlR9kH4xg$" target=
=3D"_blank">googletest_git.bb</a>:<br>
&gt;&gt; <br>
&gt;&gt; EXTRA_OECMAKE =3D &quot;-DBUILD_SHARED_LIBS=3DON &quot;<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; The shared libraries were built successfully. However, there are e=
rrors <br>
&gt;&gt; in do_package_qc as following:<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package =
<br>
&gt;&gt; googletest-dev contains non-symlink .so &#39;/usr/lib/libgmock.so&=
#39;<br>
&gt;&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt;&gt; &#39;/usr/lib/libgtest_main.so&#39;<br>
&gt;&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt;&gt; &#39;/usr/lib/libgmock_main.so&#39;<br>
&gt;&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt;&gt; &#39;/usr/lib/libgtest.so&#39; [dev-elf]<br>
&gt;&gt; ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal erro=
rs. <br>
&gt;&gt; Please consider fixing them.<br>
&gt; <br>
&gt; <a href=3D"https://urldefense.com/v3/__http://git.yoctoproject.org/cgi=
t/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__=
;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4=
iMsNNleww$" target=3D"_blank">
https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/poky/=
tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07Hnb=
7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$</a>
<br>
&gt; &lt;<a href=3D"https://urldefense.com/v3/__http://git.yoctoproject.org=
/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n=
34__;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0N=
ANM4iMsNNleww$" target=3D"_blank">https://urldefense.com/v3/__http://git.yo=
ctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-too=
ls_2021.2.bb*n34__;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3n=
YTCBoGJTY9-K0NANM4iMsNNleww$</a>&gt;
<br>
&gt; <br>
&gt; (and the next lines) might give you a hint what to do in this case.<br=
>
&gt; Although one could also consider that&#39;s something that needs to be=
 fixed<br>
&gt; in the installation script of googletest, as versioned libraries are t=
he<br>
&gt; expected default<br>
&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; Any idea to fix this?<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; Thanks,<br>
&gt;&gt; <br>
&gt;&gt; Lijun<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; ------------------------------------------------------------------=
------<br>
&gt;&gt; This transmission (including any attachments) may contain confiden=
tial <br>
&gt;&gt; information, privileged material (including material protected by =
the <br>
&gt;&gt; solicitor-client or other applicable privileges), or constitute <b=
r>
&gt;&gt; non-public information. Any use of this information by anyone othe=
r than <br>
&gt;&gt; the intended recipient is prohibited. If you have received this <b=
r>
&gt;&gt; transmission in error, please immediately reply to the sender and =
delete <br>
&gt;&gt; this information from your system. Use, dissemination, distributio=
n, or <br>
&gt;&gt; reproduction of this transmission by unintended recipients is not =
<br>
&gt;&gt; authorized and may be unlawful.<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; This transmission (including any attachments) may contain confidential=
 <br>
&gt; information, privileged material (including material protected by the =
<br>
&gt; solicitor-client or other applicable privileges), or constitute <br>
&gt; non-public information. Any use of this information by anyone other th=
an <br>
&gt; the intended recipient is prohibited. If you have received this <br>
&gt; transmission in error, please immediately reply to the sender and dele=
te <br>
&gt; this information from your system. Use, dissemination, distribution, o=
r <br>
&gt; reproduction of this transmission by unintended recipients is not <br>
&gt; authorized and may be unlawful.<br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; This transmission (including any attachments) may contain confidential=
 <br>
&gt; information, privileged material (including material protected by the =
<br>
&gt; solicitor-client or other applicable privileges), or constitute <br>
&gt; non-public information. Any use of this information by anyone other th=
an <br>
&gt; the intended recipient is prohibited. If you have received this <br>
&gt; transmission in error, please immediately reply to the sender and dele=
te <br>
&gt; this information from your system. Use, dissemination, distribution, o=
r <br>
&gt; reproduction of this transmission by unintended recipients is not <br>
&gt; authorized and may be unlawful.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
</div>
</span></font>
<hr>
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information
 by anyone other than the intended recipient is prohibited. If you have rec=
eived this transmission in error, please immediately reply to the sender an=
d delete this information from your system. Use, dissemination, distributio=
n, or reproduction of this transmission
 by unintended recipients is not authorized and may be unlawful.<br>
</div>
</div>
</div>
<hr>
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information
 by anyone other than the intended recipient is prohibited. If you have rec=
eived this transmission in error, please immediately reply to the sender an=
d delete this information from your system. Use, dissemination, distributio=
n, or reproduction of this transmission
 by unintended recipients is not authorized and may be unlawful.<br>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#54807): <a href=3D"https://urldefense.com/v3/__https://=
lists.yoctoproject.org/g/yocto/message/54807__;!!COg3wY07Hnb7!7O_HT4lxGD2NM=
UNxv3WxuozghHtiiLg6jEedfRQlWFKmZAkTPU49ug2kIHkkPvk7KA$" rel=3D"noreferrer" =
target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/54807</a><br>
Mute This Topic: <a href=3D"https://urldefense.com/v3/__https://lists.yocto=
project.org/mt/85766613/5117409__;!!COg3wY07Hnb7!7O_HT4lxGD2NMUNxv3WxuozghH=
tiiLg6jEedfRQlWFKmZAkTPU49ug2kIHmbs58Lwg$" rel=3D"noreferrer" target=3D"_bl=
ank">
https://lists.yoctoproject.org/mt/85766613/5117409</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://urldefense.com/v3/__https://lists.yoctoproj=
ect.org/g/yocto/unsub__;!!COg3wY07Hnb7!7O_HT4lxGD2NMUNxv3WxuozghHtiiLg6jEed=
fRQlWFKmZAkTPU49ug2kIHnXvmLp7Q$" rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:fede@ev=
olware.org" target=3D"_blank">fede@evolware.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote>
</div>
</div>
</div>

<hr>This transmission (including any attachments) may contain confidential =
information, privileged material (including material protected by the solic=
itor-client or other applicable privileges), or constitute non-public infor=
mation. Any use of this information by anyone other than the intended recip=
ient is prohibited. If you have received this transmission in error, please=
 immediately reply to the sender and delete this information from your syst=
em. Use, dissemination, distribution, or reproduction of this transmission =
by unintended recipients is not authorized and may be unlawful.<br>
</div>

</blockquote></div>

--000000000000996f0905ccb44254--

