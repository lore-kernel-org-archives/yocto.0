Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5F75E0043B; Wed, 31 Aug 2016 09:50:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1AEEE003E1
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2016 09:50:15 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bf8iC-0001cC-Bb
	for yocto@yoctoproject.org; Wed, 31 Aug 2016 18:50:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Pietro <pulsarpietro@posteo.net>
Date: Wed, 31 Aug 2016 16:44:33 +0000
Message-ID: <87poooc2ha.fsf@posteo.net>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
Cancel-Lock: sha1:KxzBoXSF+SbXOUb/PNKandCtWIA=
Subject: Yocto and Google protobuffer
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
X-List-Received-Date: Wed, 31 Aug 2016 16:50:19 -0000
Content-Type: text/plain

Hi all,

I am new to the Yocto building system and I could be talking nonsense. I
used to work with buildroot time ago and I remember there is an area
where compiled software/packages/tools previously built are "staged" and
used when building other packages.

Is there something like that available with Yocto ? Specifically I would
like to add a package which uses the Google Protocol Buffer, I do not have
administrator rights on the machine and I can't install the packages I
need system wise.

Is it possible to add recipes and use them at building time without
including them in the image being generated ?

A good example for that would be the protoc, the protocol buffer description
file compiler.

Thanks in advance,
Pietro.




