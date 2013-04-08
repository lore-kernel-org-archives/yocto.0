Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DF97E00597
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 10:34:05 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id lj1so3353924pab.21
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2013 10:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=Yw0V2vLIGgpOvhzYss8EQzmxAElt6nTpMXKq+owiy8Y=;
	b=wtoutiL38eUxNo3jsPRGnajjznqig0IUF+sNwE8OI5oIg7AHOIS4TTGD8R6CWHv1jN
	66w2OBvcVMJCK2cZIcTYQ0HRsGDo/A6u3DaBLqccmqQMQGnMynKkdhWRAItEKu2rF0RA
	N7kDujF3sDZ5DoI1GJfc0MsnP0BmDcloEM2/Q/O+d8gzsrW/iSuK7oUa1rs++0+2cB10
	+/FxRuo8INy8zJprZezYmNUsAuBOsY65HPHPYPv2HOYp/soloxk0GWYOuXJx6aRx4svm
	vXm4AdgriS+Kg+aQhR5L9sh16vNLJmnIcn6crlnbL2TcIy7u1HGpZ5E4sm6e+UIwSVWP
	qJgQ==
X-Received: by 10.66.154.76 with SMTP id vm12mr38689615pab.106.1365442444845; 
	Mon, 08 Apr 2013 10:34:04 -0700 (PDT)
Received: from jchheda-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPS id
	xl10sm41319105pac.15.2013.04.08.10.34.02
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 08 Apr 2013 10:34:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <13657913.npgBCsoM95@helios>
Date: Mon, 8 Apr 2013 10:34:01 -0700
Message-Id: <553741AD-3DD0-4878-901E-29C09BEB11B3@gmail.com>
References: <5162A418.4070204@mlbassoc.com> <5162B84A.2020707@mlbassoc.com>
	<13657913.npgBCsoM95@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org
Subject: Re: GDB problems
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
X-List-Received-Date: Mon, 08 Apr 2013 17:34:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Apr 8, 2013, at 5:47 AM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:

> Does installing eglibc-dbg help with this? (Assuming you don't have =
this=20
> installed already.)

libc6-dev should be enough. You do not need -dbg one. If it does not =
work with -dev
then we have a problem.=

