Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web12.73.1632419726242621001
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 10:55:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DQwVZncx;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id w9so4625426qvs.12
        for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 10:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=AfEGX+I5WgudQ88/pb1wPWq3AXrmpEtJln8y3GI9CG4=;
        b=DQwVZncxD16EQ/JP8D4b08U99EV90X7hmnhJsy7MpLBpYF9T92xrA5bfYA1e24JHY1
         JOhr/33CsCXC7AllGP35W/zg+LTfFD50r+5tO19GH9kLl5ZmWI90CN0hSfJItrJ6xKOk
         RTje7MxCEEbv4x+PFThaNd7uq1A1pF09eHT0BJa4ZH2H/Jgqr389gIy+D082uWeBCAjP
         wqJqA4t129vQjp8X/FCXbvw+/N5Qix4pGA/c1ODyjVq3HJkCnOXJSqMJW8Akn5t+r1DZ
         5imjpZvIh0pb081Kl/IQ1Nu9dqBRnH+XzOdFS41acPT4+K32AjDtMs8mPCqHtYq/GMu6
         gH6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=AfEGX+I5WgudQ88/pb1wPWq3AXrmpEtJln8y3GI9CG4=;
        b=Gzp0PT/u7JkLq+WdmDBU8VPSIpncWDplsCzCKc7DtZVDCg+JRkpWUFspTRMnhrFL+N
         Uy3+SHFViCjsp+tJ4BOqJM/jHIlBov9k6AgHd/7KqZEge6GpiZiidnFXU+g5LxuLhsN7
         AwHNXG8zMkQpN51CtjaLWiZO6H5TEN5JuSbvUgYAg+ct02aBxXPeX+7sqNNJDMJdJuuq
         I4u9ubJ0XY+oiOHKuhtCq4IV3XM61sNhG2/2CN7VCjqgf3h6X3AbYcJNLN6bDOyjqKQW
         dkCDYzdf90GwesKPJW3dRIUB8EWtxRRMC/dRhFFXlSr93csZ7ML8SEKLC7SSJAGFErWp
         aYmw==
X-Gm-Message-State: AOAM533oJtda8RbYb/Zx3ePFIT+D8VasXaLe3tw7v4Mo8scczdDL4LcB
	AIg3KkhkJx1/cLTmyA9nTKMNJvbW2xbCortU4VE=
X-Google-Smtp-Source: ABdhPJwr67vYftiLg6duFNq/jrvXADRvGQC6ZvYFcPbZv3wciNQ+RKowEq0OnjFJwYhRrm1VAeWLpb6lQVWFEYvJ81k=
X-Received: by 2002:a05:6214:50b:: with SMTP id v11mr5539008qvw.41.1632419725116;
 Thu, 23 Sep 2021 10:55:25 -0700 (PDT)
MIME-Version: 1.0
References: <3925c5329d6f46f78c5921fe7965662b@blackberry.com>
 <AS8PR09MB4645D63449C60FC6463045E7A8A19@AS8PR09MB4645.eurprd09.prod.outlook.com>
 <16A6EE364B338B15.22723@lists.yoctoproject.org> <15166f538f2144adabe2299deb3b2a3c@blackberry.com>
 <4440837f-5f69-28c4-7d8b-57653935790c@gmail.com> <16A735F63BB00E6A.1967@lists.yoctoproject.org>
 <1b84a7a456b54acaae9d98efc5731549@blackberry.com>
In-Reply-To: <1b84a7a456b54acaae9d98efc5731549@blackberry.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 23 Sep 2021 10:54:58 -0700
Message-ID: <CAMKF1srwyqGWaE26kHR2Eynj2+3dN5ugc50J7jqdfR_F-rWAHw@mail.gmail.com>
Subject: Re: [yocto] googletest shared library
To: Lijun Chen <lijchen@blackberry.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

look into package-split/ directory inside googletest build area and
see how things changes when you use SOLIBS option. I wonder why its
ignoring .h files

On Thu, Sep 23, 2021 at 6:36 AM Lijun Chen <lijchen@blackberry.com> wrote:
>
> Hi,
>
>
> If I switch to the default setting of the googletest recipe, the header f=
iles are included in the SDK image. However, the libgtest libraries are sta=
tic.
>
> Looks FILES_SOLIBSDEV =3D "" disables googletest-dev to be included in th=
e SDK.
>
>
> Is there a way to change the library to dynamic and keep the header files=
? i.e. just add EXTRA_OECMAKE =3D "-DBUILD_SHARED_LIBS=3DON " but skip the =
do_package_qa part to avoid the QA issue due to un-versioned library?
>
>
> Thanks,
>
> Lijun
>
>
>
> ________________________________
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on beha=
lf of Lijun Chen <lijchen@blackberry.com>
> Sent: Wednesday, September 22, 2021 1:45 PM
> To: Khem Raj; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] googletest shared library
>
>
> Tried adding googletest to TOOLCHAIN_TARGET_TASK. The gtest .h files are =
still not showing up.
>
> Thanks,
>
> ________________________________
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Wednesday, September 22, 2021 11:28:05 AM
> To: Lijun Chen; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] googletest shared library
>
> The .h files will be in dev pkg in this case googletest-dev
> what happens if you add googletest to TOOLCHAIN_TARGET_TASK
>
> On 9/22/21 6:18 AM, Lijun Chen wrote:
> > Hi,
> >
> >
> > Now I included googletest to the IMAGE_INSTALL in my image file, and
> > built both board image and SDK image. I can see libgtest.so is availabl=
e
> > in both images. However, gtest/gtest.h is a not present in SDK. How do =
I
> > add the header files to the SDK image? Looks the following lines affect
> > that?
> >
> > SOLIBS =3D ".so"
> > FILES_SOLIBSDEV =3D ""
> >
> > Thanks,
> > Lijun
> >
> > -----------------------------------------------------------------------=
-
> > *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on
> > behalf of Lijun Chen <lijchen@blackberry.com>
> > *Sent:* Tuesday, September 21, 2021 3:50 PM
> > *To:* Konrad Weihmann; yocto@lists.yoctoproject.org
> > *Subject:* Re: [yocto] googletest shared library
> >
> > Thanks Konrad. That worked.
> >
> > -----------------------------------------------------------------------=
-
> > *From:* Konrad Weihmann <kweihmann@outlook.com>
> > *Sent:* Tuesday, September 21, 2021 10:26:19 AM
> > *To:* Lijun Chen; yocto@lists.yoctoproject.org
> > *Subject:* Re: [yocto] googletest shared library
> >
> > On 21.09.21 16:18, Lijun Chen wrote:
> >> Hi,
> >>
> >> I would like to include libgtest.so into my Yocto image. I added
> >> googletest to IMAGE_INSTALL and added the following line to
> >> sources/meta-openembedded/meta-oe/recipes-test/googletest/googletest_g=
it.bb:
> >>
> >> EXTRA_OECMAKE =3D "-DBUILD_SHARED_LIBS=3DON "
> >>
> >>
> >> The shared libraries were built successfully. However, there are error=
s
> >> in do_package_qc as following:
> >>
> >>
> >> ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package
> >> googletest-dev contains non-symlink .so '/usr/lib/libgmock.so'
> >> -dev package googletest-dev contains non-symlink .so
> >> '/usr/lib/libgtest_main.so'
> >> -dev package googletest-dev contains non-symlink .so
> >> '/usr/lib/libgmock_main.so'
> >> -dev package googletest-dev contains non-symlink .so
> >> '/usr/lib/libgtest.so' [dev-elf]
> >> ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors.
> >> Please consider fixing them.
> >
> > https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/p=
oky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY0=
7Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$
> > <https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/=
poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY=
07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$>
> >
> > (and the next lines) might give you a hint what to do in this case.
> > Although one could also consider that's something that needs to be fixe=
d
> > in the installation script of googletest, as versioned libraries are th=
e
> > expected default
> >
> >>
> >>
> >> Any idea to fix this?
> >>
> >>
> >> Thanks,
> >>
> >> Lijun
> >>
> >>
> >> ----------------------------------------------------------------------=
--
> >> This transmission (including any attachments) may contain confidential
> >> information, privileged material (including material protected by the
> >> solicitor-client or other applicable privileges), or constitute
> >> non-public information. Any use of this information by anyone other th=
an
> >> the intended recipient is prohibited. If you have received this
> >> transmission in error, please immediately reply to the sender and dele=
te
> >> this information from your system. Use, dissemination, distribution, o=
r
> >> reproduction of this transmission by unintended recipients is not
> >> authorized and may be unlawful.
> >>
> >>
> >>
> >>
> > -----------------------------------------------------------------------=
-
> > This transmission (including any attachments) may contain confidential
> > information, privileged material (including material protected by the
> > solicitor-client or other applicable privileges), or constitute
> > non-public information. Any use of this information by anyone other tha=
n
> > the intended recipient is prohibited. If you have received this
> > transmission in error, please immediately reply to the sender and delet=
e
> > this information from your system. Use, dissemination, distribution, or
> > reproduction of this transmission by unintended recipients is not
> > authorized and may be unlawful.
> > -----------------------------------------------------------------------=
-
> > This transmission (including any attachments) may contain confidential
> > information, privileged material (including material protected by the
> > solicitor-client or other applicable privileges), or constitute
> > non-public information. Any use of this information by anyone other tha=
n
> > the intended recipient is prohibited. If you have received this
> > transmission in error, please immediately reply to the sender and delet=
e
> > this information from your system. Use, dissemination, distribution, or
> > reproduction of this transmission by unintended recipients is not
> > authorized and may be unlawful.
> >
> >
> >
> >
> ________________________________
> This transmission (including any attachments) may contain confidential in=
formation, privileged material (including material protected by the solicit=
or-client or other applicable privileges), or constitute non-public informa=
tion. Any use of this information by anyone other than the intended recipie=
nt is prohibited. If you have received this transmission in error, please i=
mmediately reply to the sender and delete this information from your system=
. Use, dissemination, distribution, or reproduction of this transmission by=
 unintended recipients is not authorized and may be unlawful.
> ________________________________
> This transmission (including any attachments) may contain confidential in=
formation, privileged material (including material protected by the solicit=
or-client or other applicable privileges), or constitute non-public informa=
tion. Any use of this information by anyone other than the intended recipie=
nt is prohibited. If you have received this transmission in error, please i=
mmediately reply to the sender and delete this information from your system=
. Use, dissemination, distribution, or reproduction of this transmission by=
 unintended recipients is not authorized and may be unlawful.
>
>=20
>
