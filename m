Return-Path: <sean.liming@annabooks.com>
Received: from mail32c40.carrierzone.com (mail32c40.carrierzone.com
	[209.235.156.172])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 60A00E002AB
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 16:21:28 -0800 (PST)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail32c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	r210LNDM023172; Fri, 1 Mar 2013 00:21:24 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Paul D. DeRocco'" <pderocco@ix.netcom.com>, <yocto@yoctoproject.org>
References: <D5D8A4D8397140AB98A5568853482737@PAULD>
In-Reply-To: <D5D8A4D8397140AB98A5568853482737@PAULD>
Date: Thu, 28 Feb 2013 16:21:15 -0800
Message-ID: <000501ce1612$b1183860$1348a920$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQF0PhnNMCITf27vyOBIjGJnFwvZE5lDpwww
X-CSC: 0
X-CHA: v=2.0 cv=c6Yct2Bl c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=DH01j3nDj0oA:10 a=_DgR7O7FQkkA:10 a=kj9zAlcOel0A:10 a=IjdlZ_XXAAAA:8
	a=RBgbMd0Q7fYA:10 a=iGHA9ds3AAAA:8 a=QrVWhbZvAAAA:8
	a=JXverOgOy1UPAPDWYYUA:9 a=CjuIK1q_8ugA:10 a=FCaQVidmf_IA:10
	a=nHK3ipOpxeAA:10 a=aq9oGTPis_MA:10 a=XDKM753qmDAA:10
	a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020205.512FF485.0093, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Subject: Re: Newbie trying to get started
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
X-List-Received-Date: Fri, 01 Mar 2013 00:21:28 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Paul D. DeRocco
> Sent: Thursday, February 28, 2013 3:55 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Newbie trying to get started
> 
> I've been working with a Gumstix, and have successfully built both the
> console and GUI version of their distro. So now I have two directories,
> yocto/poky containing everything that was downloaded, and yocto/build
> containing the stuff that was built. So far, so good.
> 
> Now, I need to do a completely unrelated project, based on an Intel Atom.
> I've downloaded the BSP (the N2600/N2800/D2550), and the directions told
> me to unpack it so that it's all contained in yocto/meta-intel. Does this
mean
> that this BSP isn't related to Poky? My yocto/poky directory is full of
other
> meta-blahblah stuff, so I would think that meta-intel would go in there,
one
> level down.
> 
> Then, the directions say to edit bblayers.conf, and possibly local.conf.
The
> only place I find these files are in my yocto/build/conf directory, but I
would
> think that doing a build for a different machine would involve setting up
a
> different build directory, e.g., yocto/buildatom. Is that correct? But
isn't the
> build directory set up by running the oe-init-build-env script, which
comes
> afterwards in the instructions?
> 
> Also, those instructions imply that I should run that script in the
yocto/poky
> directory, since that's where the script is located, but the meta-intel is
> "upstairs" from that, which seems odd.
> 
> I'm confused by all this, but more to the point, I'm afraid of doing the
wrong
> thing, and clobbering the Gumstix stuff, which took a day and a half to
build. I
> expect the Atom build will also take a long time, but I don't want to have
to
> do it two more times.
> 
> Thanks in advance.
> 
> --
> 
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I have been working with the Intel Atom and Yocto Project -
http://www.annabooks.com/Book_OSSATOM.html 

1. Make sure you have first downloaded and extracted Poky. I extract Danny
as - Yocto 1.3/poky-danny-8.0
2. Download the BSP separately and unpack the contents to a temp folder.
There should be a meta-Intel directory.
3. Copy this meta-Intel folder to the Yocto 1.3/poky-danny-8.0 folder. Go
ahead and over write the directory that is there.

Yes, create a new project and build directory. you need to modify the
bblayers.conf file to point to the BSP files:

BBFILES ?= ""
BBLAYERS ?= " \
  /home/user/Yocto1.3/poky-danny-8.0/meta \
  /home/user/Yocto1.3/poky-danny-8.0/meta-yocto \
  /home/user/Yocto1.3/poky-danny-8.0/meta-intel \  
  /home/user/Yocto1.3/poky-danny-8.0/meta-intel/meta-cedartrail \


Regards,

Sean Liming
Owner
Annabooks
Tel: 714-970-7523 / Cell: 858-774-3176


