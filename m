Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8C51E00348
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 12:44:10 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 26 Nov 2012 12:44:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,323,1352102400"; d="scan'208";a="172801147"
Received: from unknown (HELO [10.255.13.36]) ([10.255.13.36])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Nov 2012 12:44:09 -0800
Message-ID: <1353962648.28133.60.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 26 Nov 2012 14:44:08 -0600
In-Reply-To: <alpine.DEB.2.02.1211240752370.5998@oneiric>
References: <alpine.DEB.2.02.1211240752370.5998@oneiric>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Saul Wold <saul.wold@intel.com>
Subject: Re: does meta-intel/meta-tlk layer require a README.sources file?
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
X-List-Received-Date: Mon, 26 Nov 2012 20:44:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2012-11-24 at 07:59 -0500, Robert P. J. Day wrote:
> more annoying pedantry, but from what i read in the current yocto
> BSP manual, a BSP layer *requires* a README.sources file, but there is
> no such file in the meta-intel/meta-tlk layer, although i can
> appreciate that that layer isn't *really* a BSP definition.  or is it?
> 

The meta-tlk layer isn't a BSP layer - it's a layer used to add the
'time limited kernel' feature to images built from a meta-intel BSP
layer and distributed with that layer e.g. in the downloadable tarballs
available on the Yocto downloads page.

It's a meta-intel-only layer and has no meaning unless coupled with a
meta-intel BSP layer, which does always includes a README.sources of its
own, and so doesn't itself need one.

The purpose of the README.sources also really only has meaning relative
to a generated image distributed with a layer - it tells the user where
he or she can find the sources that were used to generate the image that
was downloaded as part of the BSP.

I'm cc:ing the originators of those files in case they might have
anything to add or can correct me if my assumptions about those files
are wrong...

>   can someone clarify this?  is there a clear explanation as to what
> is required for a simple *layer* and what is required for an actual
> BSP definition?

The BSP Developer's Guide says what should go into a BSP layer.  I don't
know of anything that says what should go into a 'simple layer' other
than what's needed from a functional standpoint.  I suppose it would
make sense in general to have layers follow the same basic layout as the
main oe-core metadata, and I guess they mostly do these days already,
but since layers are a general mechanism that mean different things to
different people, I don't know that it's possible to require much beyond
functionality.

For BSPs, the purpose of a layer is to both document and distribute a
test image or two, to allow the user to find the sources that were used
to build the image, and to build the image on his or her own, which is
what drove the specific requirements for BSP layers as described in the
BSP Developer's Guide...

Tom

> 
> rday
> 



