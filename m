Return-Path: <sbabic@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3EE3E00792
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 05:58:04 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3fkYB24k0tz3hjNY;
	Wed, 12 Mar 2014 13:58:02 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3fkYB24T4dzbbh4;
	Wed, 12 Mar 2014 13:58:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id nW2uZwWgKndm; Wed, 12 Mar 2014 13:58:00 +0100 (CET)
X-Auth-Info: FAx5HfBJOFy5vecXoyL0H1Clqm2sbx7P1Mgt9F/2nqA=
Received: from [192.168.2.247] (88-149-182-160.v4.ngi.it [88.149.182.160])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed, 12 Mar 2014 13:58:00 +0100 (CET)
Message-ID: <532059D7.30308@denx.de>
Date: Wed, 12 Mar 2014 13:57:59 +0100
From: Stefano Babic <sbabic@denx.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: David Welch <djwelch666@gmail.com>, yocto@yoctoproject.org
References: <CACP9YJdqYwOHcEDWwuwKFubt8E1-jY6hSpevpGkNHxShVSOrrA@mail.gmail.com>
In-Reply-To: <CACP9YJdqYwOHcEDWwuwKFubt8E1-jY6hSpevpGkNHxShVSOrrA@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Subject: Re: Creating an installer for your Yocto image.
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
X-List-Received-Date: Wed, 12 Mar 2014 12:58:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi David,

On 12/03/2014 10:35, David Welch wrote:
> Hi,
> 
> Currently we are dd'ing a yocto created image to a hd.  This works great
> for having our production people create new machines in a factory.
> 
> I have a new requirement now for what happens if we want to re-image a
> machine in the field.  Ideally I would like to be able to insert a USB
> stick and have an unattended installation process completely re-image
> the hard drive.
> 
> I was wondering if there was a Yocto/bitbake package which could create
> a default standard linux installation application that could be run at
> boot time to partition the hd and install the image.  Would you guys
> know if there was a good way this could be achieved or is it a case of
> writing something from scratch?

Maybe you could take a look at my post some times ago:

	https://lists.yoctoproject.org/pipermail/yocto/2013-November/017334.html

Scope of the project is how to deploy images in the field. Maybe you can
take a look at the doc to check if it can fullfill your requirements.

Best regards,
Stefano Babic

-- 
=====================================================================
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

