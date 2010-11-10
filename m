Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 546B94C80815
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 07:53:01 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADqvYm003180;
	Wed, 10 Nov 2010 13:52:57 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02706-09; Wed, 10 Nov 2010 13:52:53 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADqcvv003173
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 10 Nov 2010 13:52:43 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Esben Haabendal <eha@dev.doredevelopment.dk>
In-Reply-To: <87zkthlabk.fsf@eha.doredevelopment.dk>
References: <731F6F755F547148839CA39AD8282CE38F8C85@orsmsx001.amr.corp.intel.com>
	<87fwv9mrr6.fsf@eha.doredevelopment.dk> <1289383317.1272.104.camel@rex>
	<87zkthlabk.fsf@eha.doredevelopment.dk>
Date: Wed, 10 Nov 2010 21:52:32 +0800
Message-ID: <1289397152.1272.322.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Distro 1.0 Planning minutes
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
X-List-Received-Date: Wed, 10 Nov 2010 13:53:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-10 at 11:52 +0100, Esben Haabendal wrote:
> Richard Purdie <rpurdie@linux.intel.com> writes:
> 
> > On Wed, 2010-11-10 at 10:50 +0100, Esben Haabendal wrote:
> >> "Kamble, Nitin A" <nitin.a.kamble@intel.com> writes:
> >> 
> >> > Dongxiao:  sysroot per machine per recipe
> >> 
> >> Is it possible to elaborate on this topic?  What was discussed and what
> >> was the conclusion?
> >
> > This is what we discussed in person in Cambridge, the idea of making it
> > possible to have one sysroot per machine or one sysroot per recipe. Our
> > intention is to make this work in the next few months.
> >
> > I pointed you at the existing task based sstate code which should make
> > this kind of thing relatively straight forward.
> 
> This definitely sounds interesting.
> 
> Will it be possible to have recipe A (build) depend on B, which (build)
> depends on C, without having C in the per recipe stage of A?

Yes, that is the plan. I'm hoping this allows us to rigorously check
package dependencies and whilst we might not default to it all the time,
it would allow us to test this periodically.

> Will it be possible to have recipe A (build) depend on selected files
> from B, f.x. only a subset of libraries built by a recipe?

This currently isn't planned.

Cheers,

Richard


