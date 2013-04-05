Return-Path: <sean.liming@annabooks.com>
Received: from mail32c40.carrierzone.com (mail90c40.carrierzone.com
	[209.235.156.230])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CD77E0151E
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 16:17:50 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail32c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	r35NHZlS000439; Fri, 5 Apr 2013 23:17:43 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Paul D. DeRocco'" <pderocco@ix.netcom.com>, <yocto@yoctoproject.org>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD><515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD><515C8FEF.2090201@linux.intel.com><7FEC659FC16A466C9B7671C5BADEDB81@PAULD><515DB5F5.5010300@linux.intel.com><D956029D25CF204F948EA0FB515E1EE258405A68@ORSMSX105.amr.corp.intel.com><13F417252F8B4CB5BB755BB07928D20C@PAULD><D956029D25CF204F948EA0FB515E1EE258405AC4@ORSMSX105.amr.corp.intel.com><2FD1BA69DE1E491C839CA26A7D2CA32A@PAULD><D956029D25CF204F948EA0FB515E1EE258405C96@ORSMSX105.amr.corp.intel.com><547521F5BFD54F2D8E6783515988F589@PAULD>	<D956029D25CF204F948EA0FB515E1EE258406365@ORSMSX105.amr.corp.intel.com>	<83730A512373431B95CA2E526DB84A99@PAULD>	<D956029D25CF204F948EA0FB515E1EE25840666D@ORSMSX105.amr.corp.intel.com>
	<B2D67BA623D949A0A2EE7AE68ABCF96A@PAULD>
In-Reply-To: <B2D67BA623D949A0A2EE7AE68ABCF96A@PAULD>
Date: Fri, 5 Apr 2013 16:17:27 -0700
Message-ID: <001601ce3253$c207f9a0$4617ece0$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQHLrTCDXs94kk+U9Dv0oHt0accmBAJBIOSOAfeu0TUChoyUPwJMoQNaAO2aTbUBrZ+LqgHnyvU2ALNFJu4BH6xy4gFJ6udkAiILnbwCMmOBnwHftNm3Am0kyU8BoqLBeZf1zffA
X-CSC: 0
X-CHA: v=2.0 cv=OZQv+GvY c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=kWLX5mDfqJkA:10 a=_DgR7O7FQkkA:10 a=kj9zAlcOel0A:10 a=IjdlZ_XXAAAA:8
	a=8U_O21SMUI4A:10 a=iGHA9ds3AAAA:8 a=QyXUC8HyAAAA:8 a=QrVWhbZvAAAA:8
	a=5GClaeDkGynZLpaCqmUA:9 a=CjuIK1q_8ugA:10 a=FCaQVidmf_IA:10
	a=nHK3ipOpxeAA:10 a=XDKM753qmDAA:10 a=dGJ0OcVc7YAA:10
	a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020203.515F5B97.0079, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Subject: Re: This one can't be me...
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
X-List-Received-Date: Fri, 05 Apr 2013 23:17:50 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Paul D. DeRocco
> Sent: Friday, April 05, 2013 3:46 PM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] This one can't be me...
> 
> > From: Bodke, Kishore K [mailto:kishore.k.bodke@intel.com]
> >
> > I did a clean build and booted N2800 board.
> > Sato desktop comes up.
> > No issues here.
> 
> I believe you. To reiterate my last questions: does it matter what order
the
> layers are specified in bblayers.conf? If not, is deleting the downloads
tree
> and doing another build the only thing left to try?
> 
> --
> 
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I have the build working with this bblayers listing:

BBLAYERS ?= " \
  /home/usr/Yocto1.3/poky-danny-8.0/meta \
  /home/usr/Yocto1.3/poky-danny-8.0/meta-yocto \
  /home/usr/Yocto1.3/poky-danny-8.0/meta-intel \  
  /home/usr/Yocto1.3/poky-danny-8.0/meta-intel/meta-cedartrail \
"

I have never tried switching them around, but I don't see how it matters


Regards,

Sean Liming
Owner

Tel: 714-970-7523 / Cell: 858-774-3176


