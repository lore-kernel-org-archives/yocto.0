Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A778E00348
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 11:55:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Jun 2013 11:55:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,906,1363158000"; d="scan'208";a="332926576"
Received: from unknown (HELO [10.255.12.238]) ([10.255.12.238])
	by orsmga001.jf.intel.com with ESMTP; 20 Jun 2013 11:55:05 -0700
Message-ID: <1371754504.32324.34.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Thu, 20 Jun 2013 13:55:04 -0500
In-Reply-To: <E23EABCC02CB4A64B5EFCC41D6F851DC@PAULD>
References: <394F6C8A37E5424BB91439BABFA30180@PAULD>
	<1371564241.1569.26.camel@empanada>
	<8C2CFCE0-38EE-40E0-8AAF-490DC3B6837E@keylevel.com>
	<1371586129.1569.34.camel@empanada><C3BF3ACA6A914084A2081A64B2BAF286@PAULD>
	<1371694589.32324.31.camel@empanada>
	<E23EABCC02CB4A64B5EFCC41D6F851DC@PAULD>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, foo.chien.haw@intel.com
Subject: Re: Cedartrail and Dylan?
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
X-List-Received-Date: Thu, 20 Jun 2013 18:55:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-06-20 at 10:26 -0700, Paul D. DeRocco wrote:
> > From: Tom Zanussi
> > 
> > I actually used yocto-bsp to create a brand new cedartrail BSP, called
> > meta-cdt, with just a vesa graphics machine called 'cdt-vesa':
> > 
> >
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=tzanussi
> /meta-cdt-v0
> > 
> > It built fine here, but it wouldn't boot on my Aspire One, but I
> > couldn't boot either of the official 'danny' cedartrail 
> > (cedartrail and
> > cedartrail-nopvr) images I built either.
> > 
> > I'd be curious if the meta-cdt layer would work for you, though.
> 
> This builds and boots fine on an Intel DN2800MT. Now to start modifying it,
> and seeing what happens.
> 

Great, glad to hear it!  Now I need to figure out what's going on with
the Aspire One, now that I know it should work..

Thanks,

Tom


