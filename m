Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 829E2E01756
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 13:24:29 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 57A33F81209; Tue, 29 Oct 2013 14:24:29 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2753AF8120A;
	Tue, 29 Oct 2013 14:24:28 -0600 (MDT)
Message-ID: <52701989.4010700@mlbassoc.com>
Date: Tue, 29 Oct 2013 14:24:41 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAJ7VayhLzFEDns3=buP+gpi3jPHXju=B856Sg6uQksAdzDvoDw@mail.gmail.com>	<9540873.ngNT0uahPc@helios>
	<CAKP9-SjPgGtMXPvBTiARu6hcUubLhEdjB5NGsR+AsMai6KR83A@mail.gmail.com>
In-Reply-To: <CAKP9-SjPgGtMXPvBTiARu6hcUubLhEdjB5NGsR+AsMai6KR83A@mail.gmail.com>
Subject: Re: Openvswitch integration in yocto
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
X-List-Received-Date: Tue, 29 Oct 2013 20:24:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-10-29 11:31, Sandeep G.R wrote:
> Hi Sonia,
>
>          Add this line IMAGE_INSTALL_append += "openvswitch" to*QorIQ-SDK-V1.4-20130814-yocto/meta-fsl-networking/images/fsl-image-core.bb <http://fsl-image-core.bb>.*

It's not necessary (and indeed, poor practice) to make a change to the main recipes like this.

Much better would be to add that line to "local.conf" and leave the main recipes untouched.
Of course, you still have to rebuild the image (step 3) for this to have any affect.

> *
> *
> And do step 3 and openvswitch will be on T4240QDS.
>
>
> On Tue, Oct 29, 2013 at 4:11 AM, Paul Eggleton <paul.eggleton@linux.intel.com <mailto:paul.eggleton@linux.intel.com>> wrote:
>
>     Hi Sonia,
>
>     On Tuesday 29 October 2013 12:33:04 sonia verma wrote:
>     > For compiling openvswitch i perform following steps:-
>     >
>     >    1.  bitbake -f -c compile openvswitch.
>     >    2.  bitbake openvswitch.
>     >    3.  bitbake fsl-image-core.
>     >
>     > but when i get fsl-image-core-t4240rdb-20131028123337.rootfs.ext2.gz.u-boot
>     >  & boot the board with uImage & above file system i did not find any
>     > openvswitch utilities. can you please guide me to how to integrate
>     > openvswitch in yocto.
>
>     If you wish openvswitch to be included in your image you will need to add it
>     explicitly - see this section of the manual:
>
>     http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage
>
>     Once you have done this, steps 1 and 2 are no longer necessary.
>
>     Cheers,
>     Paul
>
>     --
>
>     Paul Eggleton
>     Intel Open Source Technology Centre
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> *Thanks & Regards,*
> *Sandeep G R*
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

