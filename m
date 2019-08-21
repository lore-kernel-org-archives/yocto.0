Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33D9AE00D74; Wed, 21 Aug 2019 02:05:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.184 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtprelay.hostedemail.com (smtprelay0184.hostedemail.com
	[216.40.44.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 568B3E00D33
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2019 02:05:27 -0700 (PDT)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 5B5ED100E86C2;
	Wed, 21 Aug 2019 09:05:26 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: fold43_2f61ddbe6f020
X-Filterd-Recvd-Size: 1775
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Wed, 21 Aug 2019 09:05:25 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "Ross Burton" <ross.burton@intel.com>, yocto@yoctoproject.org
Date: Wed, 21 Aug 2019 09:05:24 +0000
Message-Id: <em7916efb1-e085-4694-99b0-39ff0beecd13@andys-imac.leeshillfarm.local>
In-Reply-To: <24aab526-f403-5951-dac1-febfb3e75245@intel.com>
References: <em3f1432ac-a1d6-48de-84a0-8ef7de6fb37d@andys-imac.leeshillfarm.local>
	<c9ed0d7d-362f-7039-3a3a-0166651f3bee@intel.com>
	<24aab526-f403-5951-dac1-febfb3e75245@intel.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Subject: Re: Building SDK for macOS
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Andy Pont <andy.pont@sdcsystems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Aug 2019 09:05:28 -0000
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Ross wrote...=0A=0A>Did a little poking.=0A>=0A>The need to build a SDK tar=
ball on an existing macOS could probably be removed by using one of the con=
venient tarballs from https://github.com/phracker/MacOSX-SDKs/releases.=0A>=
=0A>The SDK is 32-bit, which is going to be an issue on modern macOS system=
s.=0A>=0A>The layer has several versioned bbappends which need updating to=
 work with recent releases.=0A>=0A>None of this is insurmountable, meta-darw=
in has been used for products in the past and with a little effort can be m=
ade to do so again.=0AThanks for the feedback. If time allows I may take a=
 look into some of =0Athese issues and see if they are resolvable. In the me=
antime, I think a =0Aheadless Linux VM with SSH and NFS support enabled mig=
ht be the quicker =0Aroute to follow.=0A=0A-Andy.=0A=0A


