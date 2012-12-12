Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C705E0140A
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 09:11:12 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id qBCHBCMU012878
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 09:11:12 -0800 (PST)
Received: from msp-dhcp53.wrs.com (172.25.34.53) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Wed, 12 Dec 2012 09:11:11 -0800
Message-ID: <50C8BAB1.9090508@windriver.com>
Date: Wed, 12 Dec 2012 11:11:13 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <C56AD576-BC63-4357-A090-C0DA3D5398C1@coote.org>
	<CAJTo0LZPSPeKkTcDQ+F_i8w=wUvNxEQeU7T6x4g5aE4cPz4G+w@mail.gmail.com>
	<A994F48C-F169-4B59-9706-891A05CDB785@coote.org>
	<CAJTo0LYQe6NRA+3FZOrsB0Caun7DVi=58re1jMO2baTuxKrQSQ@mail.gmail.com>
In-Reply-To: <CAJTo0LYQe6NRA+3FZOrsB0Caun7DVi=58re1jMO2baTuxKrQSQ@mail.gmail.com>
Subject: Re: adding package management
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
X-List-Received-Date: Wed, 12 Dec 2012 17:11:12 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/12 5:43 AM, Burton, Ross wrote:
> On 12 December 2012 11:31, Tim Coote <tim+yoctoproject.org@coote.org> wrote:
>> Am I right in thinking that yum isn't in the standard recipes?
>
> Yum, no.  Zypper is in oe-core and is used when you construct a RPM-based image.
>
> (note that Zypper is being replaced by Smart in oe-core master)

See the following for more information on the change:
http://permalink.gmane.org/gmane.comp.handhelds.openembedded.core/29105

The one feature that Smart does not have that Zypper does (that I know people 
want) is delta-rpm support.  Otherwise it seems to be better for our uses in 
Embedded Systems.

--Mark

> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


