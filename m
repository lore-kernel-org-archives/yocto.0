Return-Path: <eha@dev.doredevelopment.dk>
Received: from public.doredevelopment.dk (unknown [77.233.226.4])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7DB524C810CE
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 04:52:49 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by public.doredevelopment.dk (Postfix) with ESMTP id 5A7531B60;
	Wed, 10 Nov 2010 11:52:48 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at dev.doredevelopment.dk
Received: from public.doredevelopment.dk ([127.0.0.1])
	by localhost (public.doredevelopment.dk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 9jl5Wja7cPoo; Wed, 10 Nov 2010 11:52:48 +0100 (CET)
Received: from eha.doredevelopment.dk (eha.doredevelopment.dk [192.168.18.32])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested) (Authenticated sender: eha)
	by public.doredevelopment.dk (Postfix) with ESMTPSA id 0E6AE13DF;
	Wed, 10 Nov 2010 11:52:47 +0100 (CET)
Received: by eha.doredevelopment.dk (Postfix, from userid 1000)
	id 794EE47A3B; Wed, 10 Nov 2010 11:52:47 +0100 (CET)
From: Esben Haabendal <eha@dev.doredevelopment.dk>
To: Richard Purdie <rpurdie@linux.intel.com>
References: <731F6F755F547148839CA39AD8282CE38F8C85@orsmsx001.amr.corp.intel.com>
	<87fwv9mrr6.fsf@eha.doredevelopment.dk>
	<1289383317.1272.104.camel@rex>
Date: Wed, 10 Nov 2010 11:52:47 +0100
In-Reply-To: <1289383317.1272.104.camel@rex> (Richard Purdie's message of
	"Wed, 10 Nov 2010 18:01:57 +0800")
Message-ID: <87zkthlabk.fsf@eha.doredevelopment.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.1 (gnu/linux)
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 10 Nov 2010 10:52:50 -0000
Content-Type: text/plain; charset=us-ascii

Richard Purdie <rpurdie@linux.intel.com> writes:

> On Wed, 2010-11-10 at 10:50 +0100, Esben Haabendal wrote:
>> "Kamble, Nitin A" <nitin.a.kamble@intel.com> writes:
>> 
>> > Dongxiao:  sysroot per machine per recipe
>> 
>> Is it possible to elaborate on this topic?  What was discussed and what
>> was the conclusion?
>
> This is what we discussed in person in Cambridge, the idea of making it
> possible to have one sysroot per machine or one sysroot per recipe. Our
> intention is to make this work in the next few months.
>
> I pointed you at the existing task based sstate code which should make
> this kind of thing relatively straight forward.

This definitely sounds interesting.

Will it be possible to have recipe A (build) depend on B, which (build)
depends on C, without having C in the per recipe stage of A?

Will it be possible to have recipe A (build) depend on selected files
from B, f.x. only a subset of libraries built by a recipe?

/Esben

