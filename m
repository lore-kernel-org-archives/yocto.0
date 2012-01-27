Return-Path: <scott.a.garman@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 952D4E00593
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 19:14:08 -0800 (PST)
Received: from mail-gy0-f180.google.com ([209.85.160.180])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 26 Jan 2012 19:14:07 -0800
Received: by ghrr18 with SMTP id r18so593482ghr.25
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 19:14:06 -0800 (PST)
Received: by 10.236.184.167 with SMTP id s27mr7516688yhm.8.1327634046753;
	Thu, 26 Jan 2012 19:14:06 -0800 (PST)
Received: from [10.11.11.121] (75-94-47-26.war.clearwire-wmx.net.
	[75.94.47.26])
	by mx.google.com with ESMTPS id b4sm16422843and.18.2012.01.26.19.14.05
	(version=SSLv3 cipher=OTHER); Thu, 26 Jan 2012 19:14:06 -0800 (PST)
Message-ID: <4F22167C.6000701@intel.com>
Date: Thu, 26 Jan 2012 19:14:04 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2182E2.2030101@gmail.com> <4F21A1B4.60305@intel.com>
	<4F21C66C.408@gmail.com> <4F21C7E4.3070102@intel.com>
	<4F21CDDB.1040106@gmail.com> <4F21CF79.5060909@intel.com>
	<4F21D5C3.5030904@mlbassoc.com> <4F21E547.9080708@gmail.com>
	<4F21E752.4080000@mlbassoc.com>
In-Reply-To: <4F21E752.4080000@mlbassoc.com>
Subject: Re: understanding recipes
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
X-List-Received-Date: Fri, 27 Jan 2012 03:14:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2012 03:52 PM, Gary Thomas wrote:
>> Any ideas as to why EXTRA_IMAGE_FEATURES += "hello" didn't add the
>> hello code to the final image?
>
> EXTRA_IMAGE_FEATURES enables target *features*, not packages.
>
> To get your package added, use this in local.conf
> IMAGE_INSTALL += " hello "

Good catch. Thanks, Gary.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

