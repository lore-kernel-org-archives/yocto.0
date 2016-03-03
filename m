Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 480A8E00B37; Thu,  3 Mar 2016 07:55:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC808E00951
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 07:55:08 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u23Ft3p2009316
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Mar 2016 07:55:03 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 3 Mar 2016 07:55:02 -0800
To: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <898ae2730efb41d8befe307151fa29e5@serv031.corp.eldorado.org.br>
	<0774d5ed3403475586fcafce6b0a7055@serv031.corp.eldorado.org.br>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56D85E56.9010600@windriver.com>
Date: Thu, 3 Mar 2016 09:55:02 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <0774d5ed3403475586fcafce6b0a7055@serv031.corp.eldorado.org.br>
Subject: Re: exception using rpm 4.11.2
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
X-List-Received-Date: Thu, 03 Mar 2016 15:55:10 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 3/3/16 8:36 AM, Alexandre Freire da Silva Osorio wrote:
> If I delete and rebuild the rpm DB (rpm --rebuilddb), the error doesn't occur, but this must not be the default behavior.

There are some specific uses of RPM 4 in the YP, but I do caution against people
just using it "because".  The RPM 5 version is generally better suited for the
embedded world.  (There are been posts on more reasons on the oe-core lists in
the past.  But as quick summary -- dynamic architecture support, better cross
compilation support, cross-endian support, more configurable for custom
distributions, etc.)

As for the error below.

> 
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Alexandre Freire da Silva Osorio
> Sent: quinta-feira, 3 de março de 2016 10:28
> To: yocto@yoctoproject.org
> Subject: [yocto] exception using rpm 4.11.2
> 
> Hi,
> 
> When trying to install a rpm inside a qemux86-64 machine (core-image-lsb), I got this error:
> 
> root@qemux86-64:~# rpm -ivh apacheds-2.0.0-M20-x86_64.rpm
> warning: apacheds-2.0.0-M20-x86_64.rpm: Header V4 DSA/SHA1 Signature, key ID 99aede43: NOKEY

The message above is likely due to RPM5 -always- signs packages.  A temporary
public/private key pair is generated during package generation and used to
create a non-repudiable signature.  It is used to verify that the package was
not modified in an accidental fashion.  The package has both the signature and
key necessary to verify the signature embedded into it.  Since it has both
pieces, this can not be used to verify malicious tampering!  (Think validation,
like a hash, not authentication like a proper signature/external key.)

The error above says that the package was signed with a specific key, and RPM4
(which does NOT know how to retrieve the associated non-repudiable key from
inside a package) doesn't know what the key is and fails to verify it -- giving
you the NOKEY warning.

> traps: rpm[1059] trap divide error ip:7fa07488caae sp:7fff5f7c6af0 error:0 in librpm.so.3.2.1[7fa074871000+5d000]
> Floating point exception

I don't know what the second part of the error indicates, but it could be
something like the RPM DB format is different between the versions.  (This would
not surprise me.  At one point RPM5 had a more efficient storage and retrieval
interface... they both user berkleydb, but differences in the storage formats do
exist.)

> root@qemux86-64:~# rpm --version
> RPM version 4.11.2
> 
> The rpm recipe used is the Jethro one.
> 
> This error doesn't happen if I choose rpm 5.4 (from rpm5.org).

I always recommend RPM5 unless you have a specific use-case to go back to RPM4.

> 
> Please any help on this?
> 
> Thanks in advance.
> 
> 
> Alexandre
> 


