Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDA87E013C2
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 14:55:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2TLtNDn001653
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 14:55:23 -0700 (PDT)
Received: from msp-dhcp10.wrs.com (172.25.34.10) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 29 Mar 2012 14:55:23 -0700
Message-ID: <4F74DA4A.2010404@windriver.com>
Date: Thu, 29 Mar 2012 16:55:22 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <alpine.DEB.2.02.1203291746350.19207@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203291746350.19207@oneiric>
Subject: Re: which yocto doc explains bitbake assignment variations?
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
X-List-Received-Date: Thu, 29 Mar 2012 21:55:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 3/29/12 4:47 PM, Robert P. J. Day wrote:
>
>    somewhere, i'm assuming there's a decent explanation of the
> different bitbake assignment variations (=, ?=, ??=), but i don't
> immediately see it, and i think it's pretty important that that's
> explained properly.  pointer?
>
> rday
>

The bitbake manual has this information in it.  I don't know of a current 
version that is posted online, but you should be able to generate it from within 
bitbake itself.

(and older version: http://docs.openembedded.org/bitbake/html/)

But for the record the variations:

Immediate, overwrite existing values:
   variable = "value"

Conditional, only if not previously set:
   variable ?= "value"

Conditional, late evaluation -- i.e. at the end, only if set:
   variable ??= "value"

Immediate, expand variables immediately:
   variable := "${value}"

Append with spaces:
   variable += "value"

Prepend with spaces:
   variable =+ "value"

Append without spaces:
   variable .= "value"

Prepend without spaces:
   variable =. "value"

Append "late" evaluation:
   variable_append = "value"

--Mark

