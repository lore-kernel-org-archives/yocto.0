Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39977E00B83; Wed, 11 Jun 2014 04:21:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.170 listed in list.dnswl.org]
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C51DEE0082A
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 04:21:34 -0700 (PDT)
Received: by mail-ve0-f170.google.com with SMTP id oz11so5996868veb.29
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 04:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type:content-transfer-encoding;
	bh=hTl7+HTveuTv0Sk9h7ig3kzXnC/V9NkCoqbblHEnZtc=;
	b=jdAFeeYBjSqX4NJrFu/owoCjhMAxAb/YykGSRbaNfj9P541+rtNbEwei2GAEjMVZXX
	LmMQngKheoDhTYYFdDkBtQa3McwrrRE+aeTpWZcr13bkbcT3m/Gkl3Yruq7TOScFhK2+
	/njcHl7ts5rropdvbA07wOxTX0pxz9CX3OLz5rxAtdurpstcSjrD+nbKhDOxbI+wf3/J
	6GDBck4tMkMXsvMYCTH1cfY8mPNs9UWrnnBGprckNf8SG+/lsPwbp3Fm7Q52byU2C3F/
	EXPrdkjKqwKoa0rcmWwc6PucX5cSbocZQIzslDlwndxIf2IdKyquxHNztkTRkNxCGhOt
	IxCw==
X-Received: by 10.52.182.163 with SMTP id ef3mr2749912vdc.22.1402485693376;
	Wed, 11 Jun 2014 04:21:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Wed, 11 Jun 2014 04:21:02 -0700 (PDT)
In-Reply-To: <CAJTo0La_P6YDR5EK8oKOuk3zTqY8qSfOCxPfJfFxew5wBghBhQ@mail.gmail.com>
References: <CAF_dkJCPkO1vRb9d8S=C-rP=TS+GBphJGGt_srmbA4L5kRokMA@mail.gmail.com>
	<3311327.j4RKns8jMV@peggleto-mobl5.ger.corp.intel.com>
	<CAJTo0Lb4_Th8+_MPCkOt_z4_4-2sby5uqqCZXAEOvZ6skCtqsA@mail.gmail.com>
	<CAF_dkJAVphqmrZ5=u-dxyJSbGz-Cg5o3CVU3yx9WYxzReVNX7w@mail.gmail.com>
	<CAJTo0La_P6YDR5EK8oKOuk3zTqY8qSfOCxPfJfFxew5wBghBhQ@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Wed, 11 Jun 2014 07:21:02 -0400
Message-ID: <CAF_dkJCwi-7noF_bP=pn4W3G-pLv1ww-k6mP31wJsPgMbV30=A@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so
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
X-List-Received-Date: Wed, 11 Jun 2014 11:21:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I found the "libtool related change" for which I was looking, fixed
it, submitted a patch upstream, saw the patch approved and applied to
master, and now my Yocto build works once again.

Hooray for Open Source!

(Boo for my lack of ability to keep an email stream on list.)

Thanks everybody for the help.

--wpd


On Tue, Jun 10, 2014 at 12:05 PM, Burton, Ross <ross.burton@intel.com> wrot=
e:
> On 10 June 2014 16:29, Patrick Doyle <wpdster@gmail.com> wrote:
>> Hmmm=E2=80=A6. Thanks Ross, I think you're probably onto something there=
,
>> since the Aravis package is generating a shared library plugin that
>> can be loaded with gstreamer.
>>
>> The confusing thing is=E2=80=A6 this used to work (as of mumble revision=
s ago
>> on the master branch), and I don't see any libtool related changes in
>> the diffs.  I'll go check again, and read the Building-modules.html
>> page to which you directed me, and see if I can figure out what went
>> wrong where/how.
>
> Right, that's exactly whats happening then.  Yocto has had this QA
> warning for a long time, so possibly your distro has done something
> that enabled it?  In this case it's trivial to either fix the Makefile
> (and push the fix upstream) or short-term fix by disabling that QA
> test with INSANE_SKIP.
>
> Ross

