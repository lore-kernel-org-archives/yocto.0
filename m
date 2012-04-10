Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 008A6E0044D
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 14:01:57 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:5388
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SHiCK-0006PO-RA; Tue, 10 Apr 2012 22:01:56 +0100
Mime-Version: 1.0 (Apple Message framework v1257)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <4F849D09.7070806@windriver.com>
Date: Tue, 10 Apr 2012 22:01:53 +0100
Message-Id: <E1734B30-5DD6-42B7-AA09-8130635694D0@keylevel.com>
References: <8F9BD230-D053-4D52-AD15-97E27C84013D@keylevel.com>
	<4F849D09.7070806@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Mailer: Apple Mail (2.1257)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Reconfiguring the kernel
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
X-List-Received-Date: Tue, 10 Apr 2012 21:01:58 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

On 10 Apr 2012, at 21:50, Bruce Ashfield wrote:

> On 12-04-10 04:40 PM, Chris Tapp wrote:
>> I think this is a summary of the steps needed to reconfigure the =
kernel,based on the instructions in the 6.0.1 dev manual:
>>=20
>> 1) bitbake linux-yocto -c clean
>> 2) bitbake linux-yocto -c menuconfig
>> 3) bitbake linux-yocto -c compile -f
>> 4) bitbake linux-yocto
>>=20
>> However, the bzimage in tmp/deploy/images is the same as the one that =
I had before I executed the above. I'm not sure if the md5sum is the =
same (will check next time round the loop), but it certainly doesn't =
seem to pick up the new configuration that I'm generating within =
menuconfig.
>>=20
>> If I use 'cleanall' in step 1 (as shown in the manual) then I do get =
a new image, but at the expense of having to download the kernel branch =
again (even with a DL_DIR set). Can I get away with just using 'clean' =
if I do something else as well ?
>=20
> This is likely:
>=20
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2256


Thanks, that seems to describe exactly what I'm seeing. Looks like I =
just need to be patient for a while longer ;-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com

