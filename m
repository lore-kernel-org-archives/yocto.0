Return-Path: <daniel@haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0177E004D2
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 13:26:35 -0800 (PST)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q18LQNnO009610
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 8 Feb 2012 22:26:23 +0100
Received: from localhost (dast@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) with ESMTP id q18LQN1e009599;
	Wed, 8 Feb 2012 22:26:23 +0100
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
Date: Wed, 8 Feb 2012 22:26:23 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
X-X-Sender: dast@giant.haxx.se
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <4F32C595.4040508@linux.intel.com>
Message-ID: <alpine.DEB.2.00.1202082215320.8688@tvnag.unkk.fr>
References: <4F323C52.8030304@intel.com> <20120208100718.GB8335@giant>
	<4F32C595.4040508@linux.intel.com>
User-Agent: Alpine 2.00 (DEB 1167 2008-08-23)
X-fromdanielhimself: yes
MIME-Version: 1.0
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Upstream-Status finally @ 100%
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
X-List-Received-Date: Wed, 08 Feb 2012 21:26:36 -0000
Content-Type: MULTIPART/MIXED;
	BOUNDARY="1129329158-2016150924-1328736193=:8688"
Content-ID: <alpine.DEB.2.00.1202082223540.8688@tvnag.unkk.fr>

--1129329158-2016150924-1328736193=:8688
Content-Type: TEXT/PLAIN; CHARSET=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.00.1202082223541.8688@tvnag.unkk.fr>

On Wed, 8 Feb 2012, Saul Wold wrote:

> If the author of curl would like to review and/or implement modification for 
> OE that would be awesome, feel free to share the patches with them.

I am the maintainer of curl.

The curl patches Björn mentioned are clearly not written in way intended to be 
"upstreamable" so they cannot be accepted by the curl project and nobody has 
tried to.

This said, at least one of the patches fixes a problem that still exists 
upstream but the yocto patch [*] is made in such a hard-coded way it'd have to 
be seriously edited to get accepted. The flaw has not even been discussed with 
or mentioned to the curl project AFAICR...

So, room for improvements!

[*] = http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-support/curl/curl/noldlibpath.patch

-- 

  / daniel.haxx.se

--1129329158-2016150924-1328736193=:8688--
