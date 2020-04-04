Received: from ciao.gmane.io (ciao.gmane.io [159.69.161.202])
 by mx.groups.io with SMTP id smtpd.web12.48.1586016417658765205
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Apr 2020 09:06:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 159.69.161.202, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1jKlJu-000D5J-Sx
	for yocto@lists.yoctoproject.org; Sat, 04 Apr 2020 18:06:54 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: Re: Image size reduction
Date: Sat, 4 Apr 2020 18:06:49 +0200
Message-ID: <92687be7-1e7f-04ce-6706-9dec1c4c7798@gmail.com>
References: <HK0PR04MB2914D21E1391217F6E47708DB4CA0@HK0PR04MB2914.apcprd04.prod.outlook.com>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <HK0PR04MB2914D21E1391217F6E47708DB4CA0@HK0PR04MB2914.apcprd04.prod.outlook.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Op 29-03-2020 om 18:28 schreef Ajam Ali:
> Hi All,
> 
> Actually my current image size is 3.9GB because of heavy size packages 
> required by my project and without project required packages my image 
> size in Yocto is 800MB.

So your project adds 3.1GB right

> I want to reduce the image size as maximum as possible.

3.1GB is huge. Compare to f.i. Libreoffice (installed 0.5GB or so).
Either your own code has a lot of fat, or you are pulling in lots of 
packages you don't really need. But is there no way to advise you 
without knowing more.

> Please suggest the best possible way so that I could reduce the maximum 
> possible size(desirable below 1.5 GB).
> 
> 
> Thanks in advance,
> Ajam Ali
> 
> 
> Sent from Outlook Mobile <https://aka.ms/blhgte>
> ::DISCLAIMER::
> ------------------------------------------------------------------------
> The contents of this e-mail and any attachment(s) are confidential and 
> intended for the named recipient(s) only. E-mail transmission is not 
> guaranteed to be secure or error-free as information could be 
> intercepted, corrupted, lost, destroyed, arrive late or incomplete, or 
> may contain viruses in transmission. The e mail and its contents (with 
> or without referred errors) shall therefore not attach any liability on 
> the originator or HCL or its affiliates. Views or opinions, if any, 
> presented in this email are solely those of the author and may not 
> necessarily reflect the views or opinions of HCL or its affiliates. Any 
> form of reproduction, dissemination, copying, disclosure, modification, 
> distribution and / or publication of this message without the prior 
> written consent of authorized representative of HCL is strictly 
> prohibited. If you have received this email in error please delete it 
> and notify the sender immediately. Before opening any email and/or 
> attachments, please check them for viruses and other defects.
> ------------------------------------------------------------------------
> 
> 
> 


