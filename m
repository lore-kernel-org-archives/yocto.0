Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 207F0E00AA5; Mon,  3 Apr 2017 01:39:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.17.10 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.17.10 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B1FBE00A4C
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 01:39:53 -0700 (PDT)
Received: from oxbsltgw13.schlund.de ([172.19.249.30]) by
	mrelayeu.kundenserver.de (mreue103 [212.227.15.179]) with ESMTPSA
	(Nemesis) id 0MHMsV-1cqKpX0Mmx-00E8Rz for <yocto@yoctoproject.org>;
	Mon, 03 Apr 2017 10:39:52 +0200
Date: Mon, 3 Apr 2017 09:39:51 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto@yoctoproject.org
Message-ID: <342963357.375508.1491208791976@email.1and1.co.uk>
In-Reply-To: <1490968606.11772.32.camel@collabora.co.uk>
References: <07e901d2aa24$9e0ea470$da2bed50$@ln-systems.com>
	<1490968606.11772.32.camel@collabora.co.uk>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.1-Rev32
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:RUipML7gqi6feE8lYVZv/JwP+3ViHxSluzzOFYeUs7DjcugDuO1
	h/9yCDGdIyIDXnuQYr5knZbC+AO9clDra6AU19TpWhF04Y7dAkUlXj49V6G6DzXXoftflYG
	3yOVSQ7bGObAb0q4QgrJq7K45hiv3uwhwgYC5b1OXZGcFWCxRnPcOg16zIMKwAIZ1IhKsja
	ofgeEuk93EGYTYVRtyrTg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:I7RNNRqXF88=:QSdCdl/4Lf2ZzrDWyriyW7
	JpsF35eSaVgGRlP/gIBS7N3nIQup+9tie8ocJkXLWPaNdFzQDle2cNH3F1XHYe6VT5Ryf8U9u
	wzcYIWoBR21IRPz0hO29iaBEqX7LGXe19WePzIERzlKJFQz8LzhPTasG/PttAeYZhUzMDJYtb
	zW3obw4QEmAS+cF5ncBXOP0zNuMqwGcV37VUIU0HoZ5Y86iVmuJvuGdGZd5bV6Cnkl+pS3whI
	QvP6t91BOEOjRH48hM3DSaVa0JnN0SE9FabWx9i9wGg+RFVWfAtODbXxErpc14OmGPwuZpjOq
	hgPZSOX3fY8V2lEq7YSWL2bbAuEqmNDK51kHWWKaGI3QKtWUrumktn1nh7/HpfDjBn8kMaBfU
	VKG24ho3UbPbKnFRc6FlSu2SmosMKs1RfQE5dphZR9n/se3c3EY3UP1Q6cw0FRtHw7kcDAM8Z
	6ekDiYhnGpWrYNd6jeh8aj86yUEZUWsAUpWHe+K+eL28ABJM0mKNw8+Umq+udoHAQxeFMrzQc
	BEsnNhSCYkFHmteipl+naMopYd3kYnO0E0ypxbNKOZz6BDO5yL1XmHjalR6yGeoKNkbyHLVLY
	LFCEkmd5e1djanF4isv3VBuj9qXSdSPUJw5cOb81tUQC1vZtu7T9Iq7k7P9E/2Wol4lBhrU8h
	GG5qfKz+11qrt00/YJzE1sr7FVn0C2ZArNtmmQOwJOJo/RZqjNrqwAN3jtqDsXDbVAw6vDfvY
	lMCj0pKYXREM1SZN
Subject: Re: Missing dependencies on driver header
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 03 Apr 2017 08:39:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 31 March 2017 at 14:56 Fabien Lahoudere <fabien.lahoudere@collabora.co.uk> wrote:
> 
> On Fri, 2017-03-31 at 14:42 +0100, colin.helliwell@ln-systems.com wrote:
> 
> > I have a niggly problem I keep running into, especially with fresh image
> > builds.
> > I have a custom driver, and a user-space library for controlling it;
> > therefore the library includes one of the driver's header files (IOCTL defs
> > etc).
> > However I can't get the dependencies correct in the library recipe so as to
> > get the driver's header installed and available to the library build step.
> > In other words 'bitbake MyDriverLib' gives a "MyDriver.h: no such file or
> > directory "
> > The lib's recipe includes
> >  inherit autotools lib_package binconfig-disabled pkgconfig
> >  DEPENDS_${PN} = "MyDriver"
> 
> Usually I use "DEPENDS" and not "DEPENDS_${PN}".
> 


Ah, thanks - That seems to have fixed it!


> Else does your kernel module recipe populate sysroot with the header?
> 
> > RDEPENDS_${PN} = "MyDriver"
> > 
> > At 'some point later', the lib *will* build ok: I've done each MyDriver
> > step one by one, and it seems that once the 'install' has been done then
> > MyDriverLib will then compile. ('-c compile MyDriver' isn't sufficient). But
> > shouldn't the RDEPENDS above trigger the MyDriver install?
> > I'm obviously missing a dependency hook somewhere?
> > 
> > --
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

