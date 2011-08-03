Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C1B714C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 09:23:28 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p73ENLc3025934;
	Wed, 3 Aug 2011 15:23:21 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 25105-07; Wed,  3 Aug 2011 15:23:17 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p73ENFLA025928
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 3 Aug 2011 15:23:15 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <39D3DACD-5A1F-4992-BB52-C581EAD4B17C@kernel.crashing.org>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>
	<D778EEB2-3D41-4E3C-A27B-F725748E8BCC@kernel.crashing.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237913700F07@ORSMSX101.amr.corp.intel.com>
	<39D3DACD-5A1F-4992-BB52-C581EAD4B17C@kernel.crashing.org>
Date: Wed, 03 Aug 2011 15:22:56 +0100
Message-ID: <1312381376.2344.671.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: Re: examples / docs on utilizing an external toolchain
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
X-List-Received-Date: Wed, 03 Aug 2011 14:23:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-08-03 at 09:04 -0500, Kumar Gala wrote:
> Bug submitted:
> 
> http://bugzilla.pokylinux.org/show_bug.cgi?id=1323
> 
> My question still stands even w/o it being in formal docs.

FWIW, POKYMODE was replaced by TCMODE as part of the OE-Core changes.
I'd be interested to know where we've missed the references to it and
get to get those references fixed.

Cheers,

Richard


