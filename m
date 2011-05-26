Return-Path: <jpuhlman@gmail.com>
Received: from mail-px0-f173.google.com (mail-px0-f173.google.com
	[209.85.212.173])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5AF924C80A78
	for <yocto@yoctoproject.org>; Wed, 25 May 2011 20:17:51 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi16 with SMTP id 16so140741pxi.32
	for <yocto@yoctoproject.org>; Wed, 25 May 2011 18:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:cc:subject:content-type:content-transfer-encoding;
	bh=7U7ELXhp4sfkJrGOOCDlRTTKj3ntZHCSm2X+YFLhMB0=;
	b=gnaEUC/alZB6tdpAcZsR4Y71smeojkPUpyM+5ldcDon/+P9XWeWyiZISlTbX8cfV/U
	fgivchnEV+PRqV+m6OUcJLYNDwCQiTqPuK/7FzfpBkdPHnV7s/qyGu8ExlpfL41EyFg5
	syOPAOqUFKtKyZNYnTGZaEbPNpme8IsRmqrpE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding;
	b=MqX7S2FUuGXUY4wTXns2xW5F3ierf7GvjOrc4LLRF5rt4IgmE3g6nmSEfvzRxz5WS2
	bPQ9Hhq7hegUXcD+cvLbMWHtJMqPqSW1W6NK8DhMlWanV5FWfUXnzAgP//+V7aDP4VDy
	hGRko97w39qO2EMEiHJx7YOXj4FdBs8i19ltQ=
Received: by 10.68.32.3 with SMTP id e3mr88340pbi.325.1306372671013;
	Wed, 25 May 2011 18:17:51 -0700 (PDT)
Received: from [192.168.1.64] (c-67-187-204-11.hsd1.ca.comcast.net
	[67.187.204.11])
	by mx.google.com with ESMTPS id y3sm428084pbg.8.2011.05.25.18.17.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 25 May 2011 18:17:50 -0700 (PDT)
Message-ID: <4DDDAA38.8070404@gmail.com>
Date: Wed, 25 May 2011 18:17:44 -0700
From: Jeremy Puhlman <jpuhlman@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.17) Gecko/20110414 Lightning/1.0b2 Thunderbird/3.1.10
	ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Yocto Mailer <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 26 May 2011 01:17:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Opps sent from wrong account.

I was working with some layerinfo code, and I noticed that the values of
BBFILE_COLLECTIONS in layer.conf in the meta-intel repo are kind of all over the map:

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
-- Jeremy Puhlman Montavista Sofware, LLC.


