Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42C39E00CA5; Wed, 23 Aug 2017 10:17:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.134 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.134 listed in dnsbl.sorbs.net]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD78AE00C45
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 10:17:46 -0700 (PDT)
Received: from oxbaltgw54.schlund.de ([172.19.246.178]) by
	mrelayeu.kundenserver.de (mreue001 [212.227.15.163]) with ESMTPSA
	(Nemesis)
	id 0MEfLF-1dmQxI2jAf-00FnLv; Wed, 23 Aug 2017 19:17:33 +0200
Date: Wed, 23 Aug 2017 18:17:32 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>,
	Andre McCurdy <armccurdy@gmail.com>
Message-ID: <117613376.118923.1503508652817@email.1and1.co.uk>
In-Reply-To: <CAJ86T=U2e0ukN=pd5P9-kQrgOoBSDSXPq1kDjrm93QRwYT3m1Q@mail.gmail.com>
References: <0fe401d31b4c$ad25dac0$07719040$@ln-systems.com>
	<CAHiDW_H+OPiekHXkoU2yxSbOXcuFoLKVvEG6U5XxQ8Htsu=K0Q@mail.gmail.com>
	<1860092135.29844.1503412987767@email.1and1.co.uk>
	<CAHiDW_FtVmiKcFqwH9vedxrEdB1YnLDQROypCuiRyapt_uu01w@mail.gmail.com>
	<CAJ86T=U2e0ukN=pd5P9-kQrgOoBSDSXPq1kDjrm93QRwYT3m1Q@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev30
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:72F5nMDp84J+QjM6W45Va6wyQOQujeDbKWc/WjF8E1bIw1j9hD5
	Sc0v+Ryj8Msa6qKCCVlsDuM7I6qVPHdLQ0df1ZLefiftvNy9Klw7GLaaTuXHUl2dwnGCR1J
	40S7d/vG2N6yjuPnFo/UsGUDGRJstlCiTJY7V0HkIhewAlguOlVP4OQ/crQEr+WQnjDcYwf
	I3iUvtnb80pDKapBqLodQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:u2P8O60TcCw=:ML3mFfZEuQrLEpws0HOi5z
	Mmg7MByXhX1WnI++SjPvCvyOgNJxOS3+uaOnZkOvmS8TieBAsmtHhkSZW4GFQ2VZzKzKiOOlQ
	FcDNC6bpB6b+0K4aCTRzpfIBJRCXxgRpPrDbkrh5cEkQzTjtRY4W+Ive3qZw0Y1cxRRo8XmV8
	OVDFbNgKu761DooU3LqFe6H4fd5sh1kd0/nhmn/QZ5rx/n72gqFibDDYtL5++q14WoB3C0uYU
	AMTIiqna7jTtwCR6MmXNOj1bKqjX9mfM4OCfOee2YubRRgHcupSAh67LI5F8H/T56GkZ2LmAv
	a6zI028fXsazO5PTpoC3j8mJyC4/6+HOd0rAma4mVE/pHWZ5E4BaRuu+epUMLl2MT70T76dyW
	+wvwq8CWPB7mgsRwowq+3ZDmZJZO2v9A3PX1YfAtF26EhV00duUV25NII1TmLwFgePUSTVbe6
	5puBmDYrbWWQQAKhXlAez5pd+q4+93fCUFMdob61E59W5QRP8cXliOwxgLWpslA0tgbgP++bg
	t2WTv1DgKhyNut817RUJ5gD6UJPC6O8yhRlbOoWXCipBm5TYDsk+tghmIQNh+w21I6SCJ69tw
	ygWmNgxv+HFZODTx2wzODErkmY8mDRhKnjBsrYd3xVHmy/9t7VGMQAAIhVSrIaaNNdVsHBUuW
	QMzVBIA2EPD1zQfL9zuisqBlkgAtu3KgmGCEtVm0m/sgZZzA4jghzAH8Daj03O9oEBJYwfT91
	Tr83j5JsqJe8TjcSaR0GAIg36Wc6Q5XaAuWZfVKTijQ6jw9phLO0yoHF9FE=
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Custom recipe - resolving "do_package_qa: QA Issue: -dev package contains non-symlink .so"
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
X-List-Received-Date: Wed, 23 Aug 2017 17:17:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Resolved now - thanks for the assistance.

> On 23 August 2017 at 00:45 Andre McCurdy <armccurdy@gmail.com> wrote:
> 
> On Tue, Aug 22, 2017 at 12:18 PM, Jussi Kukkonen
> 
> <jussi.kukkonen@intel.com> wrote:
> 
> > On 22 August 2017 at 17:43, Colin Helliwell <colin.helliwell@ln-systems.com>
> > wrote:
> > 
> > > > On 22 August 2017 at 15:13 Jussi Kukkonen <jussi.kukkonen@intel.com>
> > > > wrote:
> > > > On 22 August 2017 at 16:43, <colin.helliwell@ln-systems.com> wrote:
> > > > 
> > > > > I have a custom recipe (for the AWS SDK), which is failing at the
> > > > > package_qa
> > > > > stage.
> > > > > The recipe is a very basic cmake styley, and on its own seems to begin
> > > > > with:
> > > > > 'bitbake -f -c package aws-sdk' completes without errors.
> > > > > 
> > > > > But for 'bitbake -c package_qa aws-sdk) I get:
> > > > > 
> > > > > ERROR: aws-sdk-1.1.31-r0 do_package_qa: QA Issue: -dev package
> > > > > contains
> > > > > non-symlink .so: aws-sdk-dev path
> > > > > 
> > > > > '/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.1.31-r0/packages-split/aws-s
> > > > > dk-dev/usr/lib/libaws-cpp-sdk-core.so'
> > > > > -dev package contains non-symlink .so: aws-sdk-dev path
> > > > > 
> > > > > '/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.1.31-r0/packages-split/aws-s
> > > > > dk-dev/usr/lib/libaws-cpp-sdk-s3.so' [dev-elf]
> > > > > 
> > > > > I'd appreciate help with resolving this. Thanks.>
> > > > 
> > > > It looks like aws-sdk installs .so files that are actual libraries (and
> > > > not symlinks to the versioned libraries as would be the usual case). The
> > > > best solution would be to get aws to install versioned libraries but if
> > > > that's not an option, you probably want to package the .so files in the
> > > > actual library package, not the -dev package (which is the default since
> > > > usually .so are symlinks for development and the actually versioned ).
> > > > 
> > > > You may have to set both FILES_${PN}-dev and FILES_${PN} (so the former
> > > > doesn't grab the so files, and the latter does)
> > > > 
> > > > HTH,
> > > >  Jussi
> > > 
> > > Thanks for the tips, Jussi.
> > > I'm managing to get a little further, added
> > > INSANE_SKIP_${PN}-dev += "dev-elf"
> > 
> > I suggest not doing this. It seems the warning is valid so you should fix
> > the issue, not silence the warning.
> 
> Right, and especially true for the dev-elf QA check. Putting an actual
> elf .so file in a -dev package introduces a run-time dependency on the
> -dev package, which causes header files etc to be pulled into the
> final image. Trying to disable the "dev-elf" QA test should be QA test
> failure in itself... :-)
> 
> > > FILES_${PN}-dev += "${libdir}/libaws-cpp-sdk-core.so
> > > ${libdir}/libaws-cpp-sdk-s3.so"
> > 
> > ${PN}-dev should _not_ contain so files (in your special case). The issue is
> > that the default value contains "${libdir}/lib*.so" already (it's not quite
> > so simple but see meta/conf/bitbake.conf for details if interested). You
> > should be able to just redefine the variable completely:
> > 
> > FILES_${PN}-dev = "${includedir}"
> 
> Completely over-riding any of the default packaging rules isn't ideal.
> To force .so files into main package the following is a little
> cleaner:
> 
> FILES_SOLIBSDEV = ""
>  FILES_${PN} += "${libdir}/*.so"
> 
> > > FILES_${PN} += "${libdir}/libaws-cpp-sdk-core.so
> > > ${libdir}/libaws-cpp-sdk-s3.so"
> > 
> > This looks correct to me.
> > 
> > Jussi
> > 
> > --
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

