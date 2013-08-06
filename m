Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10FB6E01419
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2013 07:50:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r76Eovvx001800
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 6 Aug 2013 07:50:57 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.230) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Tue, 6 Aug 2013 07:50:55 -0700
Message-ID: <52010D4E.4090009@windriver.com>
Date: Tue, 6 Aug 2013 09:50:54 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130620 Thunderbird/17.0.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <520108A5.7090806@mlbassoc.com>
	<52010B1F.3060901@communistcode.co.uk>
In-Reply-To: <52010B1F.3060901@communistcode.co.uk>
Subject: Re: Sending mail from embedded device
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
X-List-Received-Date: Tue, 06 Aug 2013 14:50:57 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/6/13 9:41 AM, Jack Mitchell wrote:
> On 06/08/13 15:31, Gary Thomas wrote:
>> My embedded device needs to send out email.
>>
>> I've looked around a bit and I don't see any recipes for a
>> mail sender, e.g. sendmail or postfix, for Yocto (OE-core).
>>
>> Have I missed something?  Does anyone have any suggestions?
>>
>> Surely my application isn't the first that wants to send email...
>>
>
> Would recipes-extended/msmtp do the job? Do you need to run the whole
> mail stack or is pushing out emails to an smtp server adequate?
>

msmtp is provided specifically to be able to send email out.  It should produce 
a binary called "sendmail" that is capable of simply sending email (and 
conforming to LSB requirements.)

--Mark

