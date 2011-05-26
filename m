Return-Path: <jpuhlman@mvista.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8BD9B4C80A72
	for <yocto@yoctoproject.org>; Wed, 25 May 2011 19:54:30 -0500 (CDT)
Received: by pve37 with SMTP id 37so126850pve.35
	for <yocto@yoctoproject.org>; Wed, 25 May 2011 17:54:30 -0700 (PDT)
Received: by 10.68.35.33 with SMTP id e1mr84788pbj.305.1306371270100;
	Wed, 25 May 2011 17:54:30 -0700 (PDT)
Received: from [192.168.1.64] (c-67-187-204-11.hsd1.ca.comcast.net
	[67.187.204.11])
	by mx.google.com with ESMTPS id y3sm402766pbg.24.2011.05.25.17.54.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 25 May 2011 17:54:29 -0700 (PDT)
Message-ID: <4DDDA4BF.5010503@mvista.com>
Date: Wed, 25 May 2011 17:54:23 -0700
From: Jeremy Puhlman <jpuhlman@mvista.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.17) Gecko/20110414 Lightning/1.0b2 Thunderbird/3.1.10
	ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Yocto Mailer <yocto@yoctoproject.org>
X-Enigmail-Version: 1.1.1
X-Mailman-Approved-At: Wed, 25 May 2011 22:20:57 -0500
Cc: dvhart@linux.intel.com
Subject: In consistancy in the defition of BBFILE_COLLECTIONS in layer.conf
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
X-List-Received-Date: Thu, 26 May 2011 00:54:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I was working with some layerinfo code, and I noticed that the value of
BBFILE_COLLECTIONS in layer.conf
in the meta-intel repo are kind of all over the map:

 for each in */conf/layer.conf; do cat $each; done | grep BBFILE_COLLECTIONS
BBFILE_COLLECTIONS_crownbay += "crownbay"
BBFILE_COLLECTIONS_crownbay-noemgd += "crownbay-noemgd"
BBFILE_COLLECTIONS_fishriver += "fishriver"
BBFILE_COLLECTIONS_jasperforest += "jasperforest"
BBFILE_COLLECTIONS_sugarbay += "sugarbay"

For the above layers when I just list out oe-core and one of the above,
the results from BBFILE_COLLECTIONS ends up
just being what ever was set above.

BBFILE_COLLECTIONS += "n450"
BBFILE_COLLECTIONS += "emenlow"

When using these layers, the final BBFILE_COLLECTIONS is the list of all
the layers as expected.

Was just curious if there was a intentional reason why the
difference(i.e. is there some code that I am missing that fixes this up)?

-- 
Jeremy Puhlman
Montavista Sofware, LLC.


