Return-Path: <prvs=294a5627f=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6E83E007A0; Tue, 12 Aug 2014 06:52:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FCE8E00799
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 06:52:45 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqsEACAb6lOsEApK/2dsb2JhbABahDYEtXKfDgGBKHeEAwEBBAE6PwULCw0LCSUPSAYOBYg6DcUSF49MB4RMAQSSGIogh1GRDGqBSA
X-IPAS-Result: AqsEACAb6lOsEApK/2dsb2JhbABahDYEtXKfDgGBKHeEAwEBBAE6PwULCw0LCSUPSAYOBYg6DcUSF49MB4RMAQSSGIogh1GRDGqBSA
Date: Tue, 12 Aug 2014 15:52:43 +0200
From: Richard Leitner <richard.leitner@skidata.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Message-ID: <20140812155243.31bae60a@lxbuild.skidata.net>
In-Reply-To: <CAP71WjxiBCScKkTC0a735B94WCwbu8Z9SzWVi58ma4-aw8mNMA@mail.gmail.com>
References: <20140812142043.31d6766f@lxbuild.skidata.net>
	<alpine.LFD.2.11.1408120827190.21762@localhost>
	<20140812145857.23eda070@lxbuild.skidata.net>
	<CAP71WjxiBCScKkTC0a735B94WCwbu8Z9SzWVi58ma4-aw8mNMA@mail.gmail.com>
Organization: SKIDATA AG
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
Cc: Yocto list discussion <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 12 Aug 2014 13:52:56 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hi,

On Tue, 12 Aug 2014 15:04:46 +0200
Nicolas Dechesne <nicolas.dechesne@linaro.org> wrote:

> On Tue, Aug 12, 2014 at 2:58 PM, Richard Leitner
> <richard.leitner@skidata.com> wrote:
> >
> > I've also tried the following in my ghostscript bbappend, but it does not
> > work. Shouldn't [1] work this way?
> >
> > FILES_${PN}-cups_remove = "${exec_prefix}/lib/cups/filter/gstopxl"
> > FILES_${PN}-cups_remove = "${exec_prefix}/lib/cups/filter/gstoraster"
> 
> the packaging step is using regexp to get the file list to include in
> the package. so it's unlikely that this pattern will be in FILES. it
> might be worth printing the value of FILES with bitbake -e..

I've copied the file paths from the ghostscript recipe, so they should match.

They occur in FILES when i run bitbake -e ghostscript:
FILES_ghostscript-cups=" /usr/lib/cups/filter/gstoraster /usr/lib/cups/filter/gstopxl /usr/share/cups /etc/cups"

For some strange reasons it works when I substitute the variable and use:
FILES_${PN}-cups_remove = "/usr/lib/cups/filter/gstoraster"
FILES_${PN}-cups_remove = "/usr/lib/cups/filter/gstopxl"

Can anyone explain why? :-)

> 
> but anyways, a simpler way to so the same thing would be do have a
> do_install_append() function and remove the files from ${D}. that
> would in turns have the same effect as what you are trying to do here
> i believe.

Yeah, this works, this is the way I'm currently doing it as I already mentioned
earlier.
But is this really a clean way?

What happens for example if do_install_append is already defined in the recipe?

thanks & regards,
richard

