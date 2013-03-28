Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2C97E014AF
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 20:24:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2S3OMe1001619
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Mar 2013 20:24:22 -0700 (PDT)
Received: from [128.224.163.154] (128.224.163.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Wed, 27 Mar 2013 20:24:22 -0700
Message-ID: <5153B7E7.2010403@windriver.com>
Date: Thu, 28 Mar 2013 11:24:23 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD><20130307104051.GH32228@jama.dyndns-home.com><96E98E10F7094D32B371FD84AFF0FFFC@PAULD><20130307182933.GS32228@jama.dyndns-home.com><50BB56BA2C44400C9B6A31B0C2641BD2@PAULD><20130307224223.GU32228@jama.dyndns-home.com><D5340F46DF5F458D9096EA823C3A9EAE@PAULD><20130327090320.GA13837@ad.chargestorm.se><2AE00AC2A89C48A38A01262D58FA692A@PAULD>
	<5153A67F.9070702@windriver.com>
	<BAEA0795F10B4BF6BD9BAA17CBC46EB0@PAULD>
In-Reply-To: <BAEA0795F10B4BF6BD9BAA17CBC46EB0@PAULD>
X-Originating-IP: [128.224.163.154]
Cc: yocto@yoctoproject.org
Subject: Re: Samba server?
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
X-List-Received-Date: Thu, 28 Mar 2013 03:24:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/28/2013 11:10 AM, Paul D. DeRocco wrote:
>> From: ChenQi
>>
>> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
>> section 5.2 Customizing Images
>>
>> In your case, you could add the following line to local.conf.
>> IMAGE_INSTALL_append += "samba"
>>
>> And you can use 'bitbake -g <image_recipe_name>' to see
>> whether samba is pulled in.
>>
>> For all docs, see https://www.yoctoproject.org/documentation/current.
> Thanks for that pointer. I'll try that out.
>
> So is there a general way to peruse the collection of recipes? Does one have
> to do "ls -R *.bb" to get the list of recipes, then read the comments inside
> the files to see how to use them?
>
> And how does one know in advance which ones get included by default? Is
> there some construct one looks for in the .bb file that indicates it gets
> included? Or is there some master recipe that says "this depends upon this
> big long list of standard recipes"?
>
> And are any of the recipes that are included by default not actually
> required, and if so, how do you un-include them if you want to pare down the
> system to a bare minimum?
>
> Or is there some master documentation that I just haven't found that lists
> all the recipes in the Yocto project and gives some guidance on their use?
>
http://docs.openembedded.org/bitbake/html/
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
The above two manuals might be sufficient for understanding the recipes 
and performing common tasks.

//Chen Qi

