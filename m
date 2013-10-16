Return-Path: <David.Andrey@netmodule.com>
Received: from wolf.netmodule.com (wolf.netmodule.com [194.29.26.243])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86052E01685
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 05:58:03 -0700 (PDT)
Received: from 194-29-26-246.static.cablecom.ch ([194.29.26.246]
	helo=gila.netmodule.intranet)
	by wolf.netmodule.com with esmtp id 1VWQfo-0003JL-Ch
	for yocto@yoctoproject.org; Wed, 16 Oct 2013 14:58:00 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Wed, 16 Oct 2013 14:57:55 +0200
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: default root password
Thread-Index: Ac7Kb1TizN6hUBudQ++daBgOUauCWw==
From: "David Andrey" <David.Andrey@netmodule.com>
To: <yocto@yoctoproject.org>
Message-Id: <1VWQfo-0003JL-Ch@wolf.netmodule.com>
Subject: default root password
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
X-List-Received-Date: Wed, 16 Oct 2013 12:58:04 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable

Hi,

There are lot of threads floating around, and a FAQ without answer.
https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_p
assword

So what is the official way to set a default root password ?
Using a sed command on /etc/passwd through ROOTFS_POSTPROCESS_COMMAND or
is there any other built-in solution ?

regards
David

