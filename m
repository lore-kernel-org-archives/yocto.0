Return-Path: <blloyd@familyhonor.net>
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7967FE01346
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 15:36:25 -0700 (PDT)
Received: from [98.142.68.244] (helo=lloydserv.familyhonor.net)
	by mho-01-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <blloyd@familyhonor.net>)
	id 1THjAW-000HQF-Vb; Fri, 28 Sep 2012 22:36:25 +0000
Received: from [192.168.0.30] ([98.142.68.244]) (authenticated bits=0)
	by lloydserv.familyhonor.net (8.14.5/8.14.5) with ESMTP id
	q8SMaLuq024177
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256 verify=NO);
	Fri, 28 Sep 2012 17:36:22 -0500
X-Mail-Handler: Dyn Standard SMTP by Dyn
X-Originating-IP: 98.142.68.244
X-Report-Abuse-To: abuse@dyndns.com (see
	http://www.dyndns.com/services/sendlabs/outbound_abuse.html for
	abuse reporting information)
X-MHO-User: U2FsdGVkX1/FScz6Y75VX1EinZfzPINFbrHEpmQ7vNE=
Message-ID: <1348871781.22465.17.camel@omclinuxballt.devnet.ordermatic.net>
From: Brian Lloyd <blloyd@familyhonor.net>
To: Mihai Lindner <mihaix.lindner@linux.intel.com>
Date: Fri, 28 Sep 2012 17:36:21 -0500
In-Reply-To: <50645E48.7050208@linux.intel.com>
References: <CAJTo0LYvfkAbdngN6KA_wes62RgJYVAjYHKvyVv+unjQDmt2ew@mail.gmail.com>
	<50645E48.7050208@linux.intel.com>
X-Mailer: Evolution 3.4.4 (3.4.4-1.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Cannot do atom-pc build with meta-cedartrail
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
X-List-Received-Date: Fri, 28 Sep 2012 22:36:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I don't think it is just the intel ones.  All the BSPs I've looked at
had this problem.

The yocto-bsp also creates packages that add to the problem, as it's
finished product adds files that end up in every BSP, and the final
source selected is not dependent on the machine.  (userpatches and
userconfig).

If you have filed a bug, I'll add to that, otherwise I was looking to
add a bug discussing this myself.  I just hadn't had time to see just
how pervasive it is, but it is definitely pervasive enough that the
problem should be mentioned in the project documentation and methods to
avoid it given.



Brian A. Lloyd

On Thu, 2012-09-27 at 17:10 +0300, Mihai Lindner wrote:
> On 2012-09-27 14:31, Burton, Ross wrote:
> > Hi,
> > 
> > If I add meta-intel and meta-cedartrail to my bblayers, when I try and
> > do an atom-pc build (which I thought should still work, right?) I get
> > the following error:
> > 
> > NOTE: Error during finalise of
> > /home/ross/Yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb
> > ERROR: ExpansionError during parsing
> > /home/ross/Yocto/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb:
> > Failure expanding variable SRCPV, expression was
> > ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
> > Fetcher failure for URL:
> > 'git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=yocto/standard/common-pc/atom-pc,meta,yocto/pvr;name=machine,meta,pvr'.
> > Please set SRCREV to a valid value
> > 
> > That's a bug, right?
> > 
> > Ross
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> > 
> > 
> 
> That's a bug alright.
> It seems the overall SRC_URI of linux-yocto is overwritten by meta-cedartrail layer, when included. Should be fixed by using SRC_URI_cedartrail instead.
> 



