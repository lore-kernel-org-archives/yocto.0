Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id DEDB94C8047B
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2011 18:27:32 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p67NRSs7011593;
	Fri, 8 Jul 2011 00:27:28 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11567-01; Fri,  8 Jul 2011 00:27:15 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p67NLjll011062
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 8 Jul 2011 00:21:45 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
In-Reply-To: <CAPhnLPA2qgc1S_Wo0+sVaqDJpN_7RVmrhpEgEwu7mzGRpveqKw@mail.gmail.com>
References: <CAPhnLPAr4z9CagpCnWo=oyEHFzRQTSbhga8Zm5HnF3dKOX11_w@mail.gmail.com>
	<1310075502.2320.73.camel@elmorro>
	<CAPhnLPA2qgc1S_Wo0+sVaqDJpN_7RVmrhpEgEwu7mzGRpveqKw@mail.gmail.com>
Date: Thu, 07 Jul 2011 23:46:59 +0100
Message-ID: <1310078819.20015.852.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "Hart, Darren" <darren.hart@intel.com>, "Wold, Saul" <saul.wold@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Details on Bug #963 kernel tarball corruption.
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
X-List-Received-Date: Thu, 07 Jul 2011 23:27:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-07 at 15:31 -0700, Flanagan, Elizabeth wrote:
> On Thu, Jul 7, 2011 at 2:51 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> > On Thu, 2011-07-07 at 13:34 -0700, Flanagan, Elizabeth wrote:
> >
> > Shouldn't this always be the state of DL_DIR i.e. any change made to the
> > contents of SRC_URI be exactly reflected in the same thing in DL_DIR?
> > If that were the case, I think it would solve the problems below as well
> > as the original problem in the bug report where downstream is apparently
> > being served the resulting badness in DL_DIR...
> 
> It should and in a clean DL_DIR, do_fetch does, in fact, clone
> correctly. But do_fetch with an already populated fetched repo in
> DL_DIR causes it to get dirty by placing new branches in
> remotes/origin. This is caused by fetch, however, looking at
> do_kernel_checkout, it seems as if this was at one point, expected
> behavior.

It is expected, *but* it should also update the local heads in sync with
the remotes.

The --mirror options claims to do this and should be exactly what is
missing...

Cheers,

Richard



