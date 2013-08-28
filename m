Return-Path: <David.Andrey@netmodule.com>
Received: from wolf.netmodule.com (wolf.netmodule.com [194.29.26.243])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 958A5E01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 00:43:55 -0700 (PDT)
Received: from 194-29-26-246.static.cablecom.ch ([194.29.26.246]
	helo=gila.netmodule.intranet)
	by wolf.netmodule.com with esmtp id 1VEaTn-0003VL-HR
	for yocto@yoctoproject.org; Wed, 28 Aug 2013 09:47:51 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Wed, 28 Aug 2013 09:43:46 +0200
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: shared-state
Thread-Index: Ac6jwlOXune4sSbKRLaBz3RbxiuevA==
From: "David Andrey" <David.Andrey@netmodule.com>
To: <yocto@yoctoproject.org>
Message-Id: <1VEaTn-0003VL-HR@wolf.netmodule.com>
Subject: shared-state
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
X-List-Received-Date: Wed, 28 Aug 2013 07:43:55 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi everyone !

I tried to share the "shared-state" folder on a build server for several
people working on the same project. But I meet some unexpected problems,
like errors callings the native dpkg tool.

So I'm back to the basic question :-) Is it possible to share this cache
between developers or not ?

Are they others solutions to improve team working ?

Note: still using yocto 1.3

Cheers
David

