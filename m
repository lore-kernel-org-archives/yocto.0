Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2D46E00B58; Fri, 19 May 2017 00:10:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4BF9E00B47
	for <yocto@yoctoproject.org>; Fri, 19 May 2017 00:10:30 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 9087F26037C
Message-ID: <1495177825.12055.71.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 19 May 2017 09:10:25 +0200
In-Reply-To: <1d4f5724-a710-9a33-72a6-e65d6f86b833@iseg-hv.de>
References: <973975c4-73b9-d312-b7cc-493678a53805@iseg-hv.de>
	<CAMKF1soSDHzsPyDhBrYxu4--7vq-i2uRbACTrHJKYBTX32HBaA@mail.gmail.com>
	<1d4f5724-a710-9a33-72a6-e65d6f86b833@iseg-hv.de>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: Error: when reparsing
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
X-List-Received-Date: Fri, 19 May 2017 07:10:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi

Can you paste your image recipe.
I remember to a similar issue here but I don't remember how I solve it.
The recipe can help a lot to understand.

Fabien

On Fri, 2017-05-19 at 08:30 +0200, Yuvarajesh Valleru wrote:
> Ok. So according to you I can only build one image per day succesfully ?
> 
> 
> Am 18.05.2017 um 18:00 schrieb Khem Raj:
> > On Thu, May 18, 2017 at 8:14 AM, Yuvarajesh Valleru <yv@iseg-hv.de> wrote:
> > > Hi,
> > > 
> > > I was building a custom-linux-image. I succesfully build the image with the
> > > help of bitbake tool.
> > > 
> > > When rebuilding the same image again, i was experiencing an error.
> > > 
> > > ERROR: When reparsing <filepath>.do_install, the basehash value changed from
> > > 3c2401cc61fce5eb899de19dbf78862f to 558516a74162944aff656a7d01321b12. The
> > > metadata is not deterministic and this needs to be fixed.
> > > 
> > > Then i deleted the build/tmp and build/sstate, and again tried to rebuild.
> > > But Now I encountered with an another errors.
> > > 
> > > Error:
> > > </home/hutch/yocto_master_wcs_10_4_2013/oe-core/build/tmp/deploy/ipk/all/nativesdk-
> > > packagegroup-sdk-host_1.0-r11_all.ipk
> > >     Matched in b manifest-i686-nativesdk-packagegroup-sdk-host.deploy-ipk
> > > Please verify which package should provide the above files.
> > > NOTE: Tasks Summary: Attempted 3172 tasks of which 2449 didn't need to be
> > > rerun and all succeeded.
> > > 
> > > I deleted all the files in /deploy/ipk, build/sstate, build/tmp-glibc and
> > > also deploy/sdk/ for building a new image.
> > > 
> > > Is there any alternative for rebuilding the image without the above errors
> > > and without deleting the file everytime.
> > 
> > if you are using DATE, TIME or combination of these
> > variables in metadata then this could cause
> > such issues.
> > 
> > > Best Regards,
> > > Rajesh
> > > 
> > > 
> > > 
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> > > 
> 
> 

