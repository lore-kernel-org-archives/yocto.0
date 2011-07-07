Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A7824C80215
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2011 17:31:30 -0500 (CDT)
Received: from mail-wy0-f180.google.com ([74.125.82.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 07 Jul 2011 15:31:29 -0700
Received: by wye20 with SMTP id 20so990676wye.25
	for <yocto@yoctoproject.org>; Thu, 07 Jul 2011 15:31:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.3.17 with SMTP id q17mr23292wes.107.1310077888091; Thu, 07
	Jul 2011 15:31:28 -0700 (PDT)
Received: by 10.216.188.145 with HTTP; Thu, 7 Jul 2011 15:31:28 -0700 (PDT)
In-Reply-To: <1310075502.2320.73.camel@elmorro>
References: <CAPhnLPAr4z9CagpCnWo=oyEHFzRQTSbhga8Zm5HnF3dKOX11_w@mail.gmail.com>
	<1310075502.2320.73.camel@elmorro>
Date: Thu, 7 Jul 2011 15:31:28 -0700
Message-ID: <CAPhnLPA2qgc1S_Wo0+sVaqDJpN_7RVmrhpEgEwu7mzGRpveqKw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: Details on Bug #963 kernel tarball corruption.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Jul 2011 22:31:30 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jul 7, 2011 at 2:51 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Thu, 2011-07-07 at 13:34 -0700, Flanagan, Elizabeth wrote:
>
> Shouldn't this always be the state of DL_DIR i.e. any change made to the
> contents of SRC_URI be exactly reflected in the same thing in DL_DIR?
> If that were the case, I think it would solve the problems below as well
> as the original problem in the bug report where downstream is apparently
> being served the resulting badness in DL_DIR...

It should and in a clean DL_DIR, do_fetch does, in fact, clone
correctly. But do_fetch with an already populated fetched repo in
DL_DIR causes it to get dirty by placing new branches in
remotes/origin. This is caused by fetch, however, looking at
do_kernel_checkout, it seems as if this was at one point, expected
behavior.

-b

