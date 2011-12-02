Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECBEBE0054C
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2011 08:27:39 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pB2GRbBo006184
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 2 Dec 2011 08:27:37 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.232) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 2 Dec 2011 08:27:35 -0800
Message-ID: <4ED8FC77.3040404@windriver.com>
Date: Fri, 2 Dec 2011 10:27:35 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAMRMzCCzyoJp3JBk94hxmH8tpaAuACCedZnhYPWC6+7=nDqAOw@mail.gmail.com>
	<1322842131.2418.21.camel@duo>
In-Reply-To: <1322842131.2418.21.camel@duo>
Subject: Re: Adding line to ld.so.conf
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
X-List-Received-Date: Fri, 02 Dec 2011 16:27:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/2/11 10:08 AM, Michael E Brown wrote:
> On Mon, 2011-11-21 at 09:35 -0600, Marc Ferland wrote:
>> Hi,
>>
>> What's the proper way to add a line to the ld.so.conf file for a new
>> library I am adding?
>
> Does yocto support /etc/ld.so.conf.d/ (like every other distro out there
> from the past 7 years or so?)
>
> You could just drop a file into that directory with the lines you want
> rather than editing the global file.

This is accomplished by having the following line in the /etc/ld.so.conf file.

include ld.so.conf.d/*.conf

However, this then still requires the file to exist on the target filesystem. 
I've got many systems where ld.so.conf simply doesn't exist, nor do I want it to.

See my previous reply on a better was to resolve the issue using rpath and/or 
proper soname handling inside of the libraries.

--Mark


> --
> Michael
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


