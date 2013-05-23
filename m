Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56E34E01409
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 11:51:20 -0700 (PDT)
Received: by mail-qe0-f49.google.com with SMTP id a11so2097192qen.36
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 11:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=WkcRXCl2m0+K9vHmMFJwNvKw+VRutZyfI+W2MQklPYc=;
	b=PspFQy+vNY6094W5A7mTfMtykEsjat0ldQe9CwZs+guCLrJSAmlMgEJL2zLsG57D8j
	ADU08V1zEOYM0viperxRVc/ATAGygy7fPthOGU3Ij9un03ff/KmZ0XSkIYZZgGwbdn46
	RhGI3ocFT8AyTXK7Vbu4TzWphTbIEe5FoLo3T+0vmKmugJoE3JpqhF/3O72Q4u46WjsK
	fnNQH2nzYduZ8uz2Xtuenvq/D+AYq2efjLIiSgfbdlusrBp61yi9IAbHwJQdeplAfJ4S
	LGDl743MxalMD/xuK9S96PVfqHcEk2eUKDlzmCM3N4BJNahXCTVlMt48Ohm5A9E9m56P
	/8HA==
MIME-Version: 1.0
X-Received: by 10.229.131.201 with SMTP id y9mr4896939qcs.145.1369335079780;
	Thu, 23 May 2013 11:51:19 -0700 (PDT)
Received: by 10.49.24.142 with HTTP; Thu, 23 May 2013 11:51:19 -0700 (PDT)
In-Reply-To: <CAJTo0LaSR_nvvkbFtTwoDgd1xcYY5fN08yoFXe4Y15_0_h_OBA@mail.gmail.com>
References: <CAFyqS9r0yUn_dNT0PH9WgFp2pyOs3M+bNdQ=YnPAa8u8fbkFzw@mail.gmail.com>
	<CAJTo0LYOqeHywd4zftCoccUpnvcB3kDA-TLtgjknkkAZh_Ec4Q@mail.gmail.com>
	<CAFyqS9oLLmdB6_qJzTuXhZ8MyhUctUXaMttSAm5LNm0RHtq-ww@mail.gmail.com>
	<CAJTo0Lbv6RmRN-dO_BRNmSRN49x5Pz8RqXOGf=kB5KcVz0MpyQ@mail.gmail.com>
	<CAFyqS9qtnGX03cD-1OmfiJEVkT0MhCuAW-=XPGRRcnCD9VorFQ@mail.gmail.com>
	<CAFyqS9oQmWmcZLBxYW=bYtsQMo70XzdWpP6vTme_BHkXSRtLyA@mail.gmail.com>
	<CAJTo0LaSR_nvvkbFtTwoDgd1xcYY5fN08yoFXe4Y15_0_h_OBA@mail.gmail.com>
Date: Thu, 23 May 2013 20:51:19 +0200
Message-ID: <CAFyqS9oKKobdM334mq3=FyaQ+WYqKtSYxnG0Do4ENEYOYyCcbg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: .rpm packaging weirdness of dynamic libraries
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
X-List-Received-Date: Thu, 23 May 2013 18:51:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, May 23, 2013 at 8:31 PM, Burton, Ross <ross.burton@intel.com> wrote=
:
> On 23 May 2013 18:16, Hans Beck=E9rus <hans.beckerus@gmail.com> wrote:
>> Hmm. I tried the FILES trick, but either I am doing something wrong or
>> FILES does not really affect whats getting into the .rpm? This is what
>> I tried in our recipe
>>
>> FILES_${PN} +=3D " ${exec_prefix}/usr/lib/libelinx.so"
>> FILES_${PN} +=3D " ${exec_prefix}/usr/lib/libepmq.so"
>
> Use ${libdir} instead of exec_prefix/usr/lib, and I guess the default
> FILES_${PN}-dev is taking the files first.  Try setting that to "".
>
Thanks. I will certainly try that.
However, I have completely changed path now ;) I think the root cause
of this entire problem is that the package is constructed wrong. Since
these .so files are modules, we need to tell libtool so it does not
create the regular versioned lib file structure. What we want is a .so
file and no links. Maybe then all of this is a no issue anymore?

elinx_drv_la_LDFLAGS =3D -module -avoid-version -shared

This might do the trick.

Hans


On Thu, May 23, 2013 at 8:31 PM, Burton, Ross <ross.burton@intel.com> wrote=
:
> On 23 May 2013 18:16, Hans Beck=E9rus <hans.beckerus@gmail.com> wrote:
>> Hmm. I tried the FILES trick, but either I am doing something wrong or
>> FILES does not really affect whats getting into the .rpm? This is what
>> I tried in our recipe
>>
>> FILES_${PN} +=3D " ${exec_prefix}/usr/lib/libelinx.so"
>> FILES_${PN} +=3D " ${exec_prefix}/usr/lib/libepmq.so"
>
> Use ${libdir} instead of exec_prefix/usr/lib, and I guess the default
> FILES_${PN}-dev is taking the files first.  Try setting that to "".
>
> Ross

