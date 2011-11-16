Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CCAAE006F5
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 12:51:42 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pAGKpf40019062
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 12:51:41 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 16 Nov 2011 12:51:41 -0800
Message-ID: <4EC4225C.2060100@windriver.com>
Date: Wed, 16 Nov 2011 14:51:40 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <89A1C7FA02B5DF4A8A58BF8DC6B65FDF014912B137@orsmsx502.amr.corp.intel.com>
In-Reply-To: <89A1C7FA02B5DF4A8A58BF8DC6B65FDF014912B137@orsmsx502.amr.corp.intel.com>
Subject: Re: applying the Yocto Project to Automotive interests
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
X-List-Received-Date: Wed, 16 Nov 2011 20:51:43 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 11/14/11 3:49 PM, Erway, Tracey M wrote:
> Folks,
>
> I’m presenting a Yocto Project session at the upcoming Linux Foundation
> Automotive Summit in Yokohama, Japan at the end of November.
>
> I thought that folks on this list might have suggestions for pertinent subject
> matter that I should include in the session.
>
> It’s only 30 minutes, so I’ll need to paint a broad picture.
>
> All suggestions welcome,

Automotive release cycles are -very- long.. in the 4-5 year development time 
frame and 10-15 year product support time frame.  As I understand it, the Yocto 
Project does not intend to continue support for any release within those time 
frames.  This is where the end user and/or OSV will need to determine the 
support requirements and support policies outside of what Yocto provides.

Yocto does not provide an "application framework" (this was a big selling point 
of Moblin/MeeGo).  Yocto allows someone to generate their own Linux distribution 
for their own needs.  What this means to someone like GENIVI is that they CAN 
create an application framework based on Yocto, but it would be work they would 
need to do (with us) likely in using a custom layer that specifies specific 
distribution settings, enhancements, etc.

Yocto is a cross-compiled build environment.  This is a departure to a lot of 
the Moblin/MeeGo work that has occurred in the past.  The advantages are you can 
use any commodity PC to target any (supported) architecture.  Disadvantages are 
that when you introduce new code, you need to ensure that it has a recipe (build 
instructions for bitbake) and can cross compile.  If everyone has to do the same 
work over and over, this can be time consuming and counter productive.  If 
people work together, the time and support burden are dramatically reduced. 
This can help negate issues people have had in the past with cross compiling. 
Note: Yocto -does- have a self hosted compile environment if it is needed, this 
is usually when cross compiling isn't easy to do for some reason.

Yocto currently does not support a set of "blessed" binary packages.  Our 
expectation is that the users of Yocto will create their own distributions, and 
then in turn provide binary packages to their own customers/users in whatever 
mechanism is appropriate.  If the automotive folks want to start with binary 
packages and simply add their own stuff on top, someone will need to create the 
distribution (see above about settings and frameworks) and provide the "blessed" 
package feeds.

Anyone have any other questions/comments let me know.  I'm pretty familiar with 
automotive and GENIVI requirements as of a few years ago.  I'm a bit out of date 
with the current work however.

--Mark

> /t
>
> */Tracey M. Erway/*
>
> */The Yocto Project* - /**/www.yoctoproject.org/*
>
> Intel Corporation
>
> 503 . 264 . 6435 Effective VM to Email Service
>
> 503 . 709 . 1221 Cell / Blackberry
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


