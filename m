Return-Path: <sean.liming@annabooks.com>
Received: from mail32c40.carrierzone.com (mail32c40.carrierzone.com
	[209.235.156.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C3CAE004F1
	for <yocto@yoctoproject.org>; Sat, 29 Dec 2012 09:00:47 -0800 (PST)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail32c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	qBTH0eHK003292; Sat, 29 Dec 2012 17:00:42 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Robert P. J. Day'" <rpjday@crashcourse.ca>,
	"'Yocto discussion list'" <yocto@yoctoproject.org>
References: <alpine.DEB.2.02.1212290516160.16100@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212290516160.16100@oneiric>
Date: Sat, 29 Dec 2012 09:00:33 -0800
Message-ID: <001601cde5e6$05086f10$0f194d30$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQF1MkUvHeiUiD2XpUmpk2MOZ9+co5jhZz8g
X-CSC: 0
X-CHA: v=2.0 cv=WpGcx6jv c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=A3j_ZTgn1nYA:10 a=_DgR7O7FQkkA:10 a=kj9zAlcOel0A:10 a=IjdlZ_XXAAAA:8
	a=z2PQdu-nfxcA:10 a=iGHA9ds3AAAA:8 a=CEtC_dnCAAAA:8 a=JqEG_dyiAAAA:8
	a=jU4qhlNgAAAA:8 a=4PbL4BICDS0C2x1vFQ4A:9 a=CjuIK1q_8ugA:10
	a=FCaQVidmf_IA:10 a=nHK3ipOpxeAA:10 a=XDKM753qmDAA:10
	a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020201.50DF21BA.0094, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Subject: Re: IMHO, the "meta-yocto" layer is not adequately explained
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
X-List-Received-Date: Sat, 29 Dec 2012 17:00:47 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> Sent: Saturday, December 29, 2012 2:23 AM
> To: Yocto discussion list
> Subject: [yocto] IMHO, the "meta-yocto" layer is not adequately explained
> 
> 
>   during travels thru the docs, ran across a "layer" graphic (dang, can't
> remember where) whose bottom layers were:
> 
> 	... snip ...
> 	BSPs
> 	Yocto
> 	OE Core
> 
> clearly showing the yocto layer sitting above OE core and directly below
BSPs.
> but that picture is somewhat misleading since it's perfectly reasonable to
> build BSPs with no inclusion of the meta-yocto layer.
> 
>   i think there's a danger that new readers will get the impression that
they
> *must* include the meta-yocto layer to do any serious work, when that's
> just not true.  i think it would be worth briefly explaining what the
meta-
> yocto (and, consequently, meta-yocto-bsp) layers bring to the table, and
> under what circumstances one can leave that out.
> 
>   i realize this sounds contradictory since this *is* the yocto project,
but a
> simple list of what constitutes meta-yocto would be handy so developers
> realize what they're pulling in, and even if they need it.
> 
> rday
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


That is a great idea. It would be very helpful.

Regards,

Sean Liming
Owner
Annabooks
Tel: 714-970-7523 / Cell: 858-774-3176


