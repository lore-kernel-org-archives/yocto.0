Return-Path: <sean.liming@annabooks.com>
Received: from mail14c40.carrierzone.com (mail14c40.carrierzone.com
	[209.235.156.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18E65E0052C
	for <yocto@yoctoproject.org>; Sun, 16 Dec 2012 14:57:27 -0800 (PST)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail14c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	qBGMvKof016966; Sun, 16 Dec 2012 22:57:22 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Robert P. J. Day'" <rpjday@crashcourse.ca>,
	"'Yocto discussion list'" <yocto@yoctoproject.org>
References: <alpine.DEB.2.02.1212161148480.17740@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212161148480.17740@oneiric>
Date: Sun, 16 Dec 2012 14:57:20 -0800
Message-ID: <000601cddbe0$b587de30$20979a90$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQKE64vHZTZaihch8F83pyFl5XI0ypat6d9g
X-CSC: 0
X-CHA: v=2.0 cv=b6IFFK6x c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=GQDNyb0EKFoA:10 a=_DgR7O7FQkkA:10 a=kj9zAlcOel0A:10 a=IjdlZ_XXAAAA:8
	a=ef6r1I4Mhy4A:10 a=iGHA9ds3AAAA:8 a=CEtC_dnCAAAA:8 a=JqEG_dyiAAAA:8
	a=jU4qhlNgAAAA:8 a=9gXKw4XzjNMs1rnZZb8A:9 a=CjuIK1q_8ugA:10
	a=FCaQVidmf_IA:10 a=nHK3ipOpxeAA:10 a=XDKM753qmDAA:10
	a=LDBzWXw00qedIebD:21
	a=2gNDFkYU30OqBnDz:21 a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020208.50CE51D3.0004, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Subject: Re: IMHO, cross-compile/toolchain examples should use non-x86 arches
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
X-List-Received-Date: Sun, 16 Dec 2012 22:57:28 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us


My 2c (USD) is for clarity on ADT vs. SDK vs. Toolchain.

Regards,

Sean Liming
Owner
Annabooks
Tel: 714-970-7523 / Cell: 858-774-3176

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> Sent: Sunday, December 16, 2012 8:55 AM
> To: Yocto discussion list
> Subject: [yocto] IMHO, cross-compile/toolchain examples should use non-
> x86 arches
> 
> 
>   a general preference on my part, but i think it would be useful if any
yocto
> docs that are discussing toolchains or cross-compilation or the like use
> *non*-x86 architectures to get the point across.
> 
>   for example, consider the current application developer's guide.
> part of it uses, as an example, the toolchain installer
poky-eglibc-x86_64-i586-
> toolchain-gmae-1.4.sh.  while this works just fine, of course, what it
does is
> potentially co-mingle both the dev host content and target host content,
> making it harder than necessary for the reader to draw a clear distinction
> between the two.
> 
>   if any example related to compilation or a toolchain involves, say, an
*arm*
> target, then it's *immediately* obvious (using the "file"
> command) whether something belongs on the dev host or on the target.
> 
>   also, if you're using x86 for both dev content and target content, you
run
> the risk of an example working by accident since you're picking up
natively-
> installed tools when you shouldn't be.  if you use a non-x86 arch, there's
little
> chance of that happening.
> 
>   just my $0.02 (Cdn).
> 
> rday
> 
> 
> --
> 
> ==========================================================
> ==============
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ==========================================================
> ==============
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


