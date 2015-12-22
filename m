Return-Path: <adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0F75E00BEE; Tue, 22 Dec 2015 03:04:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1519 seconds by postgrey-1.32 at yocto-www;
	Tue, 22 Dec 2015 03:04:09 PST
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65F92E0085A
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 03:04:09 -0800 (PST)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	tBMB42RF015105; Tue, 22 Dec 2015 05:04:02 -0600
Received: from adi-pc-linux ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015122205040161-1418546 ;
	Tue, 22 Dec 2015 05:04:01 -0600 
Date: Tue, 22 Dec 2015 13:03:58 +0200
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: Simon Ruetzler <sruetzler@arigo-software.de>
Message-ID: <20151222130358.3a83dc55@adi-pc-linux>
In-Reply-To: <567929CD.9030604@arigo-software.de>
References: <56791A82.7050809@arigo-software.de>
	<20151222123843.1f35df99@adi-pc-linux>
	<567929CD.9030604@arigo-software.de>
Organization: National Instruments
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 12/22/2015 05:04:01 AM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 12/22/2015 05:04:02 AM,
	Serialize complete at 12/22/2015 05:04:02 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-12-22_09:, , signatures=0
Cc: yocto@yoctoproject.org
Subject: Re: yocto package naming
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
X-List-Received-Date: Tue, 22 Dec 2015 11:04:14 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII

On Tue, 22 Dec 2015 11:45:33 +0100
Simon Ruetzler <sruetzler@arigo-software.de> wrote:

> Hello,
> the demo package is the first package. I clear the list with PACKAGES = ""
> They package should contain this files, this is not the problem.
> The problem is the resulting package name. The name should be 
> rumo-cpp-demo-1.0rc... and not libscom1-1.0-rc...
> Regards Simon

How about creating a separate recipe rumo-cpp-demo which depends on libscom?

Why exactly prompts you to create rumo-cpp-demo from inside the libscom recipe?
Aren't these two different software packages altogether?

> 
> Am 22.12.2015 um 11:38 schrieb Ioan-Adrian Ratiu:
> > Hi
> >
> > On Tue, 22 Dec 2015 10:40:18 +0100
> > Simon Ruetzler <sruetzler@arigo-software.de> wrote:
> >
> >> Hello,
> >> I want to create different packages from one recipe.
> >>
> >> This is working except for one package.
> >> I addes this package with
> >> PACKAGES += " ${PN}-demo"
> >> and I expected that it is named with the recipe name and demo. In this
> >> case rumo-cpp-demo-1.0-rc...
> >> But the name is libscom1-1.0-rc..
> >>
> >> The demo package contains the files for a dynamic library: libscom.so,
> >> libscom.so.1 and libscom.so.1.5.0
> >> and this library name is automatically used for the package name.
> >>
> >> For the other packages the name are as expected. All package are defined
> >> in the same way except that FILES_.. definition is different.
> >> This packages also have dynamic libs but only the libname.so.1 files and
> >> the libname.so as a link.
> >>
> >> Why is the demo package created with the libscom name? How can I disable
> >> this?
> > Maybe the contents of ${PN}-demo get gobbled up by another package defined
> > before it in PACKAGES? The order of the contents of var PACKAGES matters:
> > it defines precedence, the first package to match a file includes it.
> >
> > Try prepending to PACKAGES, something like this:
> > PACKAGES =+ "${PN}-demo "
> >
> >> Regards Simon
> >
> 


