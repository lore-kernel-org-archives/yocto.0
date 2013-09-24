Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f46.google.com (mail-ee0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9128DE01595
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 09:04:05 -0700 (PDT)
Received: by mail-ee0-f46.google.com with SMTP id c13so2594324eek.33
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 09:04:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=2VuMF1Zmm1xQOvcCyzUL8pyacphDa5cDr4TNe9v3/oM=;
	b=bq34zKnJuHbFKYGTol1I3ujKZLOJEu3mcwFdMhQm8fJIds48gIu5Bhp5JqVes7cZ+k
	sUMQ5kdFzwy4CuUbrqOl7WYLN/qxaF/gpyAXxK4wDgPkCVJIaplSGLieJZGbzIyBsYkj
	N3iyXFDMib+y0d1PHK8ZbMaQuMHFxPCAVGbdSfIB2KDsbCHx4FoVQQCahIn+fmHOHHZ6
	oGHFW+nSKh9dvjcjBmKAE9Ryl6zurWunyxiF1yBOCu8IFoTFIZvB+Jeggg8uC8wbrZkV
	7GbK1uEDtTKhmTds6GuOP5BL2rWS5ygHCgdisTzAVZyyVb3xdFgCyzR6B5wYXH4xcNOT
	WJnw==
X-Gm-Message-State: ALoCoQnzZqOHQN0GteQzX9YfxgagdkCosF07V8o6xcT1IvLDo5YFCzfNEK39Tl2yCS/Fq5W+iGGs
MIME-Version: 1.0
X-Received: by 10.14.212.72 with SMTP id x48mr3368077eeo.73.1380038644525;
	Tue, 24 Sep 2013 09:04:04 -0700 (PDT)
Received: by 10.14.117.67 with HTTP; Tue, 24 Sep 2013 09:04:04 -0700 (PDT)
In-Reply-To: <CALmOhgk_5mSaG4mHWMAegiL6FE8aU27ssW_NOytLYNA-v4GYuA@mail.gmail.com>
References: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
	<CAGNsrLCvcW2WNSfmMm-DLQMxFXC5=rr9Sknj6ECdmuiZc=gHgg@mail.gmail.com>
	<CALmOhgkPb8KC5iCYZ+FWhzcPmZG9Vpr3Zw3CurdtUn7b2L4WYA@mail.gmail.com>
	<CAGNsrLDmJDvT3X_7=V+RTiHkG9kZoadXvAnW5WU19EJeO-yO2Q@mail.gmail.com>
	<CALmOhgk_5mSaG4mHWMAegiL6FE8aU27ssW_NOytLYNA-v4GYuA@mail.gmail.com>
Date: Tue, 24 Sep 2013 12:04:04 -0400
Message-ID: <CALmOhgksN8zscF8bLJ7h0xK0uE+z_zNdM9cu38mqdU6PT0AE7Q@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [DYLAN] RPATH issue with qt5's qtwebkit
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
X-List-Received-Date: Tue, 24 Sep 2013 16:04:06 -0000
Content-Type: multipart/alternative; boundary=047d7b621e402f270204e7234991

--047d7b621e402f270204e7234991
Content-Type: text/plain; charset=ISO-8859-1

On 18 September 2013 21:36, Trevor Woerner <trevor.woerner@linaro.org>
wrote:
> I'll create a patch

I have created two patches:
- one for dylan:
http://article.gmane.org/gmane.comp.handhelds.openembedded/59766
- one for master:
http://article.gmane.org/gmane.comp.handhelds.openembedded/59795

Which I'm hoping will be found acceptable for merging.

--047d7b621e402f270204e7234991
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>On 18 September 2013 21:36, Trevor Woerner &lt;<a hre=
f=3D"mailto:trevor.woerner@linaro.org">trevor.woerner@linaro.org</a>&gt; wr=
ote:<br>&gt; I&#39;ll create a patch<br><br>I have created two patches:<br>=
- one for dylan: <a href=3D"http://article.gmane.org/gmane.comp.handhelds.o=
penembedded/59766">http://article.gmane.org/gmane.comp.handhelds.openembedd=
ed/59766</a><span class=3D""></span><span class=3D""></span><br>
- one for master: <a href=3D"http://article.gmane.org/gmane.comp.handhelds.=
openembedded/59795">http://article.gmane.org/gmane.comp.handhelds.openembed=
ded/59795</a><br><br></div>Which I&#39;m hoping will be found acceptable fo=
r merging.<br>
</div>

--047d7b621e402f270204e7234991--
