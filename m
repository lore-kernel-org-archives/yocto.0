Return-Path: <prvs=294a5627f=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82778E0079A; Tue, 12 Aug 2014 05:59:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8BC4E00796
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 05:59:00 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Aq0EAEsO6lOsEApK/2dsb2JhbABag19XBLVyl0qHRAGBK3eEAwEBBAE6PwULCw0LCSUPSAYOBRuIHw0IxHATBIl/hU0HhEwBBJIYiiCHUZEMagEBgUY
X-IPAS-Result: Aq0EAEsO6lOsEApK/2dsb2JhbABag19XBLVyl0qHRAGBK3eEAwEBBAE6PwULCw0LCSUPSAYOBRuIHw0IxHATBIl/hU0HhEwBBJIYiiCHUZEMagEBgUY
Date: Tue, 12 Aug 2014 14:58:57 +0200
From: Richard Leitner <richard.leitner@skidata.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20140812145857.23eda070@lxbuild.skidata.net>
In-Reply-To: <alpine.LFD.2.11.1408120827190.21762@localhost>
References: <20140812142043.31d6766f@lxbuild.skidata.net>
	<alpine.LFD.2.11.1408120827190.21762@localhost>
Organization: SKIDATA AG
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
Cc: yocto@yoctoproject.org
Subject: Re: Force recipe to provide specific file
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
X-List-Received-Date: Tue, 12 Aug 2014 12:59:05 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hi,
thanks for your answer!

On Tue, 12 Aug 2014 08:27:46 -0400
"Robert P. J. Day" <rpjday@crashcourse.ca> wrote:

> On Tue, 12 Aug 2014, Richard Leitner wrote:
> 
> >
> > WARNING: The recipe ghostscript is trying to install files into a shared area
> > when those files already exist. Those files and their manifest location are:
> >    /opt/yocto/poky/build_2.2/tmp/sysroots/board/usr/lib/cups/filter/gstopxl
> >    Matched in manifest-board-cups-filters.populate_sysroot
> >    /opt/yocto/poky/build_2.2/tmp/sysroots/board/usr/lib/cups/filter/gstoraster
> >    Matched in manifest-board-cups-filters.populate_sysroot
> > Please verify which package should provide the above files.
> >
> > The only solution which came to my mind is to remove the file from the original
> > recipe using a bbappend, but I think this isn't a really "clean" way.
> >
> > Does anybody have another/better idea how to solve this "problem"?
> 
>   why not just provide a .bbappend file and an overriding file?

Do you mean that I should integrate my version of the files into the
ghostscript package?
This is what I want to avoid because all cups-filters should reside in the
cups-filters package.


I've also tried the following in my ghostscript bbappend, but it does not
work. Shouldn't [1] work this way?

FILES_${PN}-cups_remove = "${exec_prefix}/lib/cups/filter/gstopxl"
FILES_${PN}-cups_remove = "${exec_prefix}/lib/cups/filter/gstoraster"

thanks & regards,
richard

[1] https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#removing-override-style-syntax

