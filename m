Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6DD124C80A54
	for <yocto@yoctoproject.org>; Mon, 16 May 2011 04:07:22 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4G97HqJ017828;
	Mon, 16 May 2011 10:07:17 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17790-01; Mon, 16 May 2011 10:07:13 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4G97Akv017822
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 16 May 2011 10:07:11 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <DE8BA75F34A0404282AC5E15F691BC76D6B790AD@orsmsx504.amr.corp.intel.com>
References: <DE8BA75F34A0404282AC5E15F691BC76D6B78F9B@orsmsx504.amr.corp.intel.com>
	<1305323124.2023.26.camel@scimitar>
	<DE8BA75F34A0404282AC5E15F691BC76D6B790AD@orsmsx504.amr.corp.intel.com>
Date: Mon, 16 May 2011 10:06:53 +0100
Message-ID: <1305536813.3424.25.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Diagrams
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
X-List-Received-Date: Mon, 16 May 2011 09:07:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Scott,

On Fri, 2011-05-13 at 14:59 -0700, Rifenbark, Scott M wrote:
> One thing that happens when you keep all figures in a folder that is 
> hierarchically level with 'documentation' is that the figures become 
> separated from the 'documentation' leg so to speak. It use to be that
> good file organization practice for manuals was to keep all parts of a
> manual together.  But, as single-sourcing becomes more popular along
> with 'chunking' of information, that practice isn't as rigid.  
> 
> If we kept all diagrams in a single 'diagram' folder I would like to
> see it at least under the 'documentation' folder.  Then we could
> organize the 'diagram' folder into source files and rendered (PNG or
> SVG) files.  Using a single diagram directory will also cause the
> Makefiles to be re-worked for pushing files to the web-site.
> Additionally, the directory structure in the Drupal site for
> yoctoproject.org would need to be re-structured to look for PNG files
> in the new location.  
> 
> I see benefits and problems in all methods...

I thought I'd cc'd you on some other email where we talked about
starting to store some of the other material we have about yocto
alongside the documentation in the yocto-docs repository.

By this I'm thinking of presentations, graphics, diagrams and other
technical content as at the moment we all have to rummage around a lot
of separate locations whenever we want to pull a presentation together.

The hierarchy of the information needs to be designed but we have to
following needs:

a) Has a folder which contains the subset of information we integrate 
   into the poky repository and ship with the build system and 
   metadata. The development manuals and quick start are obviously 
   requirements there and the current documentation directory fits this
   well. If we want to rename it, so be it but I don't think its 
   function has changed.

b) Can store other kinds of material (presentations, diagrams, 
   graphics) meeting out immediate needs.

c) Is extensible to meet future requirements we don't yet know about.

This separate also makes some sense when you consider what we push to
the website. The reference manuals certainly make sense, I'm not sure
that the presentations or diagrams would make sense in their own rights
though.

I agree splitting by source and rendered versions makes sense. I'd not
confuse the fact that the manuals include some of these diagrams with
the fact that we need to store the source of the diagrams (and some
pre-rendered sample output of them) somewhere though. The manuals are a
pure consumer of them, likewise presentations including them and so
forth.

Cheers,

Richard


