Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42673E00723
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 13:43:38 -0700 (PDT)
Received: from [109.224.129.17] (port=23692
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1ScN4r-0004i8-12; Wed, 06 Jun 2012 21:43:37 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CADzUK1LMibQZJAv6tqF5PF+wmQNPd785RpsnwTPgDPVMxruL5Q@mail.gmail.com>
Date: Wed, 6 Jun 2012 21:43:45 +0100
Message-Id: <6212FB10-6C98-4AE2-BD7A-B0322AA855F2@keylevel.com>
References: <D22E2C55-3EB4-4D0B-B300-2A991D38CCD0@keylevel.com>
	<CADzUK1LMibQZJAv6tqF5PF+wmQNPd785RpsnwTPgDPVMxruL5Q@mail.gmail.com>
To: Autif Khan <autif.mlist@gmail.com>
X-Mailer: Apple Mail (2.1278)
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
Subject: Re: IMAGE_FSTYPES - what formats are supported?
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
X-List-Received-Date: Wed, 06 Jun 2012 20:43:38 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

On 6 Jun 2012, at 21:01, Autif Khan wrote:

>> Is the list of values for IMAGE_FSTYPES documented somewhere? =
Searching though the documentation shows references to it, but not a =
list of values that are supported.
>=20
> meta/classes/image_types.bbclass
>=20
> look for IMAGE_TYPES


Thanks, that does the job.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




