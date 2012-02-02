Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35B78E00592
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 09:02:50 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q12H2nAm017878
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 2 Feb 2012 09:02:49 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 2 Feb 2012 09:02:49 -0800
Message-ID: <4F2AC1B8.4080303@windriver.com>
Date: Thu, 2 Feb 2012 11:02:48 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1328158051.1996.9.camel@localhost.localdomain>
In-Reply-To: <1328158051.1996.9.camel@localhost.localdomain>
Subject: Re: Do we have core-image-lsb-core/c++?
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
X-List-Received-Date: Thu, 02 Feb 2012 17:02:50 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2/1/12 10:47 PM, Ni Qingliang wrote:
> Hi, ALL:
> I'm trying to create a custom image, which is compatible with LSB-core/C
> ++. The core-image-lsb seems like contain the GUI related packages.
> The question is: Do we have core-image-lsb-core or core-image-lsb-c++?
>
>

The C++ library should be specified in one of the task definitions in 
tasks/task-core-lsb.bb

However, I'm not seeing it there... it's likely an oversight -- or one of the 
existing frameworks is already adding it so it was necessary?

(Note, I doubt the existing C++ library will pass the current LSB tests.. there 
are a lot of little things that will likely fail the test harness.)

The image "core-image-lsb", is intended to have all of the LSB components in it, 
including the C++ items.  There is now LSB recognized "subset" of images for 
validation.. it's an all or nothing situation.

--Mark

