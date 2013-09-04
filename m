Return-Path: <sean.liming@annabooks.com>
Received: from mail3c40.carrierzone.com (mail3c40.carrierzone.com
	[209.235.156.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11C4BE003BF
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 10:52:25 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail3c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	r84HqJJi004182; Wed, 4 Sep 2013 17:52:22 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Jack'" <jackrubby2010@gmail.com>, <yocto@yoctoproject.org>
References: <loom.20130904T140531-713@post.gmane.org>
In-Reply-To: <loom.20130904T140531-713@post.gmane.org>
Date: Wed, 4 Sep 2013 10:52:15 -0700
Message-ID: <000301cea997$80261ba0$807252e0$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQIK1Fz6wa6zcYRM3cD+4cMOP0OhXJk9hcFw
X-CSC: 0
X-CHA: v=2.0 cv=f8v/8pOM c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=XVmmacqO20sA:10 a=_DgR7O7FQkkA:10 a=kj9zAlcOel0A:10 a=IjdlZ_XXAAAA:8
	a=X2L79X0d2DsA:10 a=iGHA9ds3AAAA:8 a=cWlXIof55jV5QMdJVFYA:9
	a=CjuIK1q_8ugA:10 a=FCaQVidmf_IA:10 a=nHK3ipOpxeAA:10 a=XDKM753qmDAA:10
	a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020206.52277357.0005, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Subject: Re: Building an atom-pc image
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
X-List-Received-Date: Wed, 04 Sep 2013 17:52:30 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us




> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Jack
> Sent: Wednesday, September 04, 2013 5:23 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Building an atom-pc image
> 
> Hi,
> 
> I looked at this page https://www.yoctoproject.org/download/intel%C2%AE-
> atom%E2%84%A2-based-pcs-and-devices-atom-pc . I downloaded atom-pc-
> dylan-
> 9.0.0.tar.bz2 and ran bitbake core-image-minimal. When building process
> finished, I didn't give core-image-minimal-atom-pc with .hddimg. While
some
> other extension files like .ext3 and .cpio were built. How can I build an
image
> minimal with .hddimg extension?
> 
> Thanks.
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


Did you make any changes to the local.conf file to point to the Atom-pc as
the target?

Regards,

Sean Liming
Owner
Annabooks
Tel: 714-970-7523 / Cell: 858-774-3176


