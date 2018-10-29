Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91155E00C6D; Mon, 29 Oct 2018 06:46:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [62.142.5.110 listed in list.dnswl.org]
Received: from emh04.mail.saunalahti.fi (emh04.mail.saunalahti.fi
	[62.142.5.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED649E00718
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:46:38 -0700 (PDT)
Received: from uwe1 (unknown [193.65.204.42])
	by emh04.mail.saunalahti.fi (Postfix) with ESMTP id 9D4C830098;
	Mon, 29 Oct 2018 15:46:36 +0200 (EET)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <CAK4Yt2nqnLp8PgtVHn+sktegHP31C2s4wgxp9NQuh4-navWLKA@mail.gmail.com>
References: <CAK4Yt2nqnLp8PgtVHn+sktegHP31C2s4wgxp9NQuh4-navWLKA@mail.gmail.com>
Date: Mon, 29 Oct 2018 15:46:36 +0200
Message-ID: <87woq0kgqr.fsf@snkmail.com>
MIME-Version: 1.0
Subject: Re: adding own shell script to the image
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
X-List-Received-Date: Mon, 29 Oct 2018 13:46:47 -0000
Content-Type: text/plain

On Mon, Oct 29, 2018 at 3:28 PM Zolee K zoleelikesdebian-at-gmail.com  wrote:

> The error message:
> 
> /home/..../recipes-z/testing/testing.bb: Unable to get checksum for testing
> SRC_URI entry testscript: *file could not be found*
> Which I don't understand, since the file is definitaly there:-(
> Could you please help me out with this?

Bitbake uses a search path to locate the files, see

https://www.yoctoproject.org/docs/2.5.1/mega-manual/mega-manual.html#var-FILESEXTRAPATHS

Either extend the path or move your file to a location on the path.

If you are unsure what your current search path is you can always check
from the output of

  bitbake -e <recipe-name>


Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder at neuroeventlabs.com (Bot check: fix one obvious typo)

