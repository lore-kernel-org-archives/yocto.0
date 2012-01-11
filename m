Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA787E0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 09:24:14 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q0BHOEfr026875
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 09:24:14 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 11 Jan 2012 09:24:13 -0800
Message-ID: <4F0DC5BC.6040307@windriver.com>
Date: Wed, 11 Jan 2012 11:24:12 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAPhnLPD7ivPE7xJSzMui7cRKoCWzEWMcOhjiZpwXrmjxTC6+CA@mail.gmail.com>
	<CANFv2E=2SkrV5MH4ytvL=x3CmU8qCn6ERPEF1LD7y=BK5f1mpw@mail.gmail.com>
In-Reply-To: <CANFv2E=2SkrV5MH4ytvL=x3CmU8qCn6ERPEF1LD7y=BK5f1mpw@mail.gmail.com>
Subject: Re: [Announcement] Cedartrail BSP available.
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
X-List-Received-Date: Wed, 11 Jan 2012 17:24:14 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 1/11/12 11:21 AM, James Abernathy wrote:
> What is the purpose of building the provided images with time limited kernel?
> Can I assume that a standard build of the unchanged meta-cedartrail BSP will use
> the non-tlk kernel?

Simple reason, the creator of the BSP wants you to configure and build your own 
kernel.  The time limited kernel is for evaluation purposes to see if this is 
what you want, before you build it yourself.

--Mark

> Jim A
>
> On Wed, Dec 28, 2011 at 6:02 PM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com <mailto:elizabeth.flanagan@intel.com>> wrote:
>
>     -----BEGIN PGP SIGNED MESSAGE-----
>     Hash: SHA1
>
>     All,
>
>     We are pleased to announce the release of Intel-based board support
>     packages built from Yocto 1.1 "Edison" for the Intel® Atom™ Processor
>     N2000 and D2000 Series-based Platform (CEDAR TRAIL).
>
>     This BSP are available for download at:
>
>     http://www.yoctoproject.org/download/bsp/intel%C2%AE-atom%E2%84%A2-processor-n2000-and-d2000-series-based-platform-cedar-trail
>
>     Please note that the provided images were built using the meta-tlk
>     layer (time limited kernel). Build instructions to build non-tlk
>     images are provided in the meta-intel/meta-cedartrail/README for these
>     machines.
>
>     META-CEDARTRAIL 1.1 RELEASE
>     ====================
>     Version: 1.1 "Edison"
>     md5sum: 777150ce79d5d1cc916410f7d17741e1
>     Location:
>     http://www.yoctoproject.org/download/bsp/intel%C2%AE-atom%E2%84%A2-processor-n2000-and-d2000-series-based-platform-cedar-trail
>
>     - --
>     Elizabeth Flanagan
>     Yocto Project
>     Build and Release
>
>     -----BEGIN PGP SIGNATURE-----
>     Version: GnuPG v1.4.10 (GNU/Linux)
>
>     iQEcBAEBAgAGBQJO+5kmAAoJEEyK+E/MEkQPpqkH/iqYOrfxPd1fEcTbw3LXY+re
>     1H8zOglldc5yPhkhX2PmqkfI28OJwMOiUc3oooYRGeEpGg59SxQSqSImVwf3nmgn
>     wK933o5FC37M+1fIZsySNNf6Maj5IAExKN1Wu1V56Onf/1wq77kJ/NkvPq62ig5n
>     lZzKA2C1Red/4NuKKIuTEWj/3e5365XhBkbJHxaRECrIw3fD2bBIj49C3tVAkIUX
>     +ijIO56UR/qgHfRulUowtarAfCP/xADOnLnOZ9yvv7JEsaekrMReYZlGqEeF/TL+
>     M6v3b/27OwgF2ohCN3Ib7YnaFTR5g9fXwa//YMLuKm6quL+hafgzxJ2OCOxlo08=
>     =eKdg
>     -----END PGP SIGNATURE-----
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


