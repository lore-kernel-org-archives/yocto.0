Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A351BE00AA5; Mon,  3 Apr 2017 06:07:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.135 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C6D7E00A4C
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 06:07:06 -0700 (PDT)
Received: from oxbsltgw13.schlund.de ([172.19.249.30]) by
	mrelayeu.kundenserver.de (mreue005 [212.227.15.163]) with ESMTPSA
	(Nemesis) id 0M3fOP-1c4ZdQ2HAX-00rIUU for <yocto@yoctoproject.org>;
	Mon, 03 Apr 2017 15:07:05 +0200
Date: Mon, 3 Apr 2017 14:07:05 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto@yoctoproject.org
Message-ID: <321234949.389819.1491224825363@email.1and1.co.uk>
In-Reply-To: <CAJTo0LbeDVgV3mAq=hK4opN70zVyBZ+nwRHcXeNt+d6c4PFJ2A@mail.gmail.com>
References: <0a9201d2ac6b$36b55fa0$a4201ee0$@ln-systems.com>
	<CAJTo0LbeDVgV3mAq=hK4opN70zVyBZ+nwRHcXeNt+d6c4PFJ2A@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.1-Rev32
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:pn/Mc+n8dKzcvIwdSd/Fu/jPraZwdOIERQBmNuqZIq+t5JgwXX6
	kAZ4eHAwHhbO50qgFH6+HCdOjbysmBHqqMEZO7mmJ4vssZ9o4B1SpFQiSCs2nBohUtS71J8
	gqkG2NLDlDqncuLZN+061PBP9/i3ujIBTKUG3C7bmFFlSci9HhDSsx4mXS7qHkG7KV37mQA
	rndVpd40+NoIUxI0YviuQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:H0uqZ6sX1Tw=:3dcKHu9jwZ0w6NVBAghwmf
	MTElHhSX24WahrGw7TpxCgplkbAFx3v4rDqRbhz+LSXSrQNw6jsJu9fHB4j+tazDhId25ARQ0
	g5RnXW91piKW7Skdyr5OPbjuEWCrC7fsRM6NfALEFz7HrIsN0eccG4wxIjAQX4JWd4uMOhulW
	HhaEkzAgG8QxDysb4asR9gfwjKsMNMZM4LPLTMfZcaH+5dKJu/eKZrkRurPDhVtiFwxl1KdQw
	XkgbFmJiJIyLzne+jHq3u6bElF9tfOwv0POQKnKM0Kr8Nvn4TKHF5qbUoPy8q0qbYx8lEbUc1
	mJX7M5ZMjZfW70RHRPyNaeLvzitl81j389Gx7mVt14jxuw7MKuaaB/CBofAlekjd7MV3Ka9R+
	xBXWQ0W/ieebNZmDpcy3MTgxQ36DARKCgWb07a2rvRbGOYj5ZtwQJgGeDmRaa7izkhYN+liyF
	aRhQzjHXoSt3gXlHvqCr4Jnk5CGlt24Smv5LvHOeoaU8RwSCHuTTRm6ZLL+K5PCEYTGubiQUQ
	/4W7qmG6eYkoIvPIdSJvWisJQfOr00S9n4T+iaSxl0H5TvklpFui4IxVCBIRBTJRa+PnHlWLT
	3v5em+Pd/utg4kir1YhyqnWUeYcwQiVBSiW9LR27ZKFQ9FxyCtww76blvqez1BL/fmPfGq5It
	b5VL4qhWBVOA9be4iFv9YMa3I2ZPoZuoZXNvXgcFLHeDPzTqr2IHpdy7U4gUtRmgIq7spEC3a
	qQ8VBhkVD655bM2W
Subject: Re: xsltproc failing to load docbook.xsl
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
X-List-Received-Date: Mon, 03 Apr 2017 13:07:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 03 April 2017 at 12:21 "Burton, Ross" <ross.burton@intel.com> wrote:
> 
> On 3 April 2017 at 12:12, <colin.helliwell@ln-systems.com> wrote:
> 
> > I guess I could patch out the '--nonet' for this package, but wondered if
> >  there's a correct way to fix this - a recipe dependency needed and/or
> >  something installed on the host system?
> >  (I've done a 'sudo apt-get install docbook-xsl docbook-xml'; but can't
> >  figure out where it's expecting the file to be)
> 
> Our xsltproc won't be looking on the host for stylesheets, so depend on docbook-xsl-stylesheets-native.
> 

Hmmm, that's not got it unfortunately.
I've also added a depend on libxslt-native (to get the xsltproc binary itself), and can see docbook-xsl-stylesheets-native building first - it creates a lot of docbook.xml's in various places (e.g. down under tmp/sysroots/x86_64-linux/, and tmp/work/x86_64-linux/), but the networkmanager recipe still isn't then finding that file.

