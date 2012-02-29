Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB175E013E8
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 13:47:49 -0800 (PST)
Received: by vcbfl17 with SMTP id fl17so5131006vcb.35
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 13:47:49 -0800 (PST)
Received-SPF: pass (google.com: domain of jfabernathy@gmail.com designates
	10.52.28.200 as permitted sender) client-ip=10.52.28.200; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of jfabernathy@gmail.com
	designates 10.52.28.200 as permitted sender)
	smtp.mail=jfabernathy@gmail.com;
	dkim=pass header.i=jfabernathy@gmail.com
Received: from mr.google.com ([10.52.28.200])
	by 10.52.28.200 with SMTP id d8mr3013885vdh.38.1330552069398 (num_hops
	= 1); Wed, 29 Feb 2012 13:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=gpzMIGfjJ8aW+unE6eRQfHE1OU0YK3l7sbPR3Tq0/s0=;
	b=m7KnOZplvU6AJLbGlnJuRqCO3fAmkmDdbpe9uTTt/TY7GVj4TYXlUH7+c19XdSjDDy
	0ak10RyltDLoeuekZLGHG9puhNCV+orqlXnlKGwWafY+uU//9xcNmrNnyjnhJjEwVt/L
	YSlQa/0P/iIqy18se7bk+HgHpuXAODUNtVl0k=
Received: by 10.52.28.200 with SMTP id d8mr2580752vdh.38.1330552069356;
	Wed, 29 Feb 2012 13:47:49 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-49-18.dhcp.embarqhsd.net. [184.3.49.18])
	by mx.google.com with ESMTPS id
	ei6sm20465300vdc.6.2012.02.29.13.47.47 (version=SSLv3 cipher=OTHER);
	Wed, 29 Feb 2012 13:47:47 -0800 (PST)
Message-ID: <4F4E9D03.8040305@gmail.com>
Date: Wed, 29 Feb 2012 16:47:47 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F4E8B62.6010209@gmail.com> <4F4E8C2E.5030602@mlbassoc.com>
In-Reply-To: <4F4E8C2E.5030602@mlbassoc.com>
Subject: Re: building with 1.2_M3
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
X-List-Received-Date: Wed, 29 Feb 2012 21:47:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/29/2012 03:35 PM, Gary Thomas wrote:
> On 2012-02-29 13:32, jfabernathy wrote:
>> Just for fun, I thought I'd build meta-cedartrail today since I saw 
>> 1.2_M3 branch show up when I did a git pull today. The only thing I 
>> did above the basic BSP was to include my
>> meta-jfa layer which is nothing more than my hello world application 
>> and web-webkit, which is already in the meta layer.
>>
>> I added to local.conf the following lines, like I alway do:
>>
>> POKY_EXTRA_INSTALL += "web-webkit"
>>
>> POKY_EXTRA_INSTALL += "hello"
>>
>> I also added the meta-intel, meta-intel/meta-cedartrail, and meta-jfa 
>> to my bblayers.conf.
>>
>> However, unlike the last time I ran this against master branch, I 
>> didn't get "hello" or "web-webkit" in my image, as I usually do.
>>
>> Is this just a quirk with 1.2_M3 or did something break?
>
> Looks like this variable was renamed to be CORE_IMAGE_EXTRA_INSTALL
>
Another thought.  I hope the glossary in Poky Reference Manual will get 
changed to reflect this?? It isn't right now, but 1.2_M3 may not be done 
yet.

