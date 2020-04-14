Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web11.3765.1586903582912450832
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 15:33:03 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 03EMWrGr026338
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 15:32:54 -0700 (PDT)
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 15:32:53 -0700
Subject: Re: [yocto] Image size reduction
To: Ajam Ali <AjamA@hcl.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>,
        "gley-yocto@m.gmane-mx.org"
	<gley-yocto@m.gmane-mx.org>
References: <HK0PR04MB2914D21E1391217F6E47708DB4CA0@HK0PR04MB2914.apcprd04.prod.outlook.com>
 <92687be7-1e7f-04ce-6706-9dec1c4c7798@gmail.com>
 <HK0PR04MB2914FE5FB74F913D86030FC9B4C40@HK0PR04MB2914.apcprd04.prod.outlook.com>
 <259e6251-19b5-1e49-8ba9-73f6aac273bc@windriver.com>
 <SG2PR04MB333581D25A3E2F0F9CC88A83B4DA0@SG2PR04MB3335.apcprd04.prod.outlook.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <7720a80f-984e-fd05-e315-d477bb82e910@windriver.com>
Date: Tue, 14 Apr 2020 18:32:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <SG2PR04MB333581D25A3E2F0F9CC88A83B4DA0@SG2PR04MB3335.apcprd04.prod.outlook.com>
X-Originating-IP: [172.25.44.3]
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2020-04-14 11:51 a.m., Ajam Ali wrote:
> Hi Randy,
> 
> In my image most of the size is consumed by heavy size packages.
> So i have given this task of image size reduction to application team.
> If i will remove the dependencies then may be some feature get disabled 
> which could be needed.
> Till now i am able to remove only python3 from dependencies.
> 

Thanks for the summary Ajam.
../Randy


> 
> Thanks,
> Ajam Ali
> ------------------------------------------------------------------------
> *From:* Randy MacLeod <randy.macleod@windriver.com>
> *Sent:* Monday, April 13, 2020 11:18 PM
> *To:* Ajam Ali <AjamA@hcl.com>; yocto@lists.yoctoproject.org 
> <yocto@lists.yoctoproject.org>; gley-yocto@m.gmane-mx.org 
> <gley-yocto@m.gmane-mx.org>
> *Subject:* Re: [yocto] Image size reduction
> 
> **[CAUTION: This Email is from outside the Organization. Do not click 
> links or open attachments unless you trust the sender.]
> 
> On 2020-04-04 12:27 p.m., Ajam Ali wrote:
>> Hi All,
>>
>> Thanks for your suggestions. I am working on your suggestions.
>> I will let you know if it did not work for me.
> 
> Ajam,
> 
> 
> It would be useful if you could reply either way.
> 
> 
> If there's still a problem then perhaps someone can help.
> 
> 
> If you are able to resolve the issue, then a brief summary
> 
> of what you did could help the next person who has a similar
> 
> issue.
> 
> 
> Thanks,
> 
> ../Randy
> 
>>
>>
>> Regards,
>> Ajam Ali
>>
>>
>> ------------------------------------------------------------------------
>> *From:* yocto@lists.yoctoproject.org 
>> <mailto:yocto@lists.yoctoproject.org> <yocto@lists.yoctoproject.org> 
>> <mailto:yocto@lists.yoctoproject.org> on behalf of Gmane Admin via 
>> lists.yoctoproject.org 
>> <gley-yocto=m.gmane-mx.org@lists.yoctoproject.org> 
>> <mailto:gley-yocto=m.gmane-mx.org@lists.yoctoproject.org>
>> *Sent:* Saturday, April 4, 2020 9:36 PM
>> *To:* yocto@lists.yoctoproject.org 
>> <mailto:yocto@lists.yoctoproject.org> <yocto@lists.yoctoproject.org> 
>> <mailto:yocto@lists.yoctoproject.org>
>> *Subject:* Re: [yocto] Image size reduction
>> [CAUTION: This Email is from outside the Organization. Do not click 
>> links or open attachments unless you trust the sender.]
>>
>> Op 29-03-2020 om 18:28 schreef Ajam Ali:
>> > Hi All,
>> >
>> > Actually my current image size is 3.9GB because of heavy size packages
>> > required by my project and without project required packages my image
>> > size in Yocto is 800MB.
>>
>> So your project adds 3.1GB right
>>
>> > I want to reduce the image size as maximum as possible.
>>
>> 3.1GB is huge. Compare to f.i. Libreoffice (installed 0.5GB or so).
>> Either your own code has a lot of fat, or you are pulling in lots of
>> packages you don't really need. But is there no way to advise you
>> without knowing more.
>>
>> > Please suggest the best possible way so that I could reduce the maximum
>> > possible size(desirable below 1.5 GB).
>> >
>> >
>> > Thanks in advance,
>> > Ajam Ali
>> >
>> >
>> > Sent from Outlook Mobile <https://apc01.safelinks.protection.outlook.com/?url=https%3A%2F%2Faka.ms%2Fblhgte&amp;data=02%7C01%7Cajama%40hcl.com%7Cf719cb14fe674f86f02408d7d8b236b0%7C189de737c93a4f5a8b686f4ca9941912%7C0%7C0%7C637216132261322392&amp;sdata=8in2t%2B6mXtrsRwa7GmgGQDl69uRzL7g4smj%2Ba3QG9gU%3D&amp;reserved=0 
>> <https://apc01.safelinks.protection.outlook.com/?url=https%3A%2F%2Faka.ms%2Fblhgte&data=02%7C01%7Cajama%40hcl.com%7C128e3933213f473fc34a08d7dfd2da33%7C189de737c93a4f5a8b686f4ca9941912%7C0%7C0%7C637223969041569087&sdata=gY%2FoAEw1u9iOH8l9146xlNknKSslGAhehsRsWa83%2F10%3D&reserved=0>>
>> > ::DISCLAIMER::
>> > ------------------------------------------------------------------------
>> > The contents of this e-mail and any attachment(s) are confidential and
>> > intended for the named recipient(s) only. E-mail transmission is not
>> > guaranteed to be secure or error-free as information could be
>> > intercepted, corrupted, lost, destroyed, arrive late or incomplete, or
>> > may contain viruses in transmission. The e mail and its contents (with
>> > or without referred errors) shall therefore not attach any liability on
>> > the originator or HCL or its affiliates. Views or opinions, if any,
>> > presented in this email are solely those of the author and may not
>> > necessarily reflect the views or opinions of HCL or its affiliates. Any
>> > form of reproduction, dissemination, copying, disclosure, modification,
>> > distribution and / or publication of this message without the prior
>> > written consent of authorized representative of HCL is strictly
>> > prohibited. If you have received this email in error please delete it
>> > and notify the sender immediately. Before opening any email and/or
>> > attachments, please check them for viruses and other defects.
>> > ------------------------------------------------------------------------
>> >
>> >
>> >
>>
>>
>>
>> 
> 
> 
> -- 
> # Randy MacLeod
> # Wind River Linux
> 


-- 
# Randy MacLeod
# Wind River Linux
