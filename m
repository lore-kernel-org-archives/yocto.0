Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 130CBE00B87; Wed, 21 May 2014 20:04:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=RCVD_IN_DNSWL_MED,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.windriver.com (unknown [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90CDBE00B6F
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 20:04:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s4M34Oth013019
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 21 May 2014 20:04:24 -0700 (PDT)
Received: from [128.224.162.214] (128.224.162.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.169.1;
	Wed, 21 May 2014 20:04:24 -0700
Message-ID: <537D6934.90604@windriver.com>
Date: Thu, 22 May 2014 11:04:20 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <CAPhnLPC1zcDhDq51msiME4zyQq3hBx=24m016XY8J4e7_q3uiw@mail.gmail.com>	<537C5B12.4030007@windriver.com>
	<CAPhnLPD23NfwMnG+PFyXjUmwaDcH70uUHDBwdDOZfQarUXwbLA@mail.gmail.com>
In-Reply-To: <CAPhnLPD23NfwMnG+PFyXjUmwaDcH70uUHDBwdDOZfQarUXwbLA@mail.gmail.com>
X-Originating-IP: [128.224.162.214]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Weekly build available
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
X-List-Received-Date: Thu, 22 May 2014 03:04:34 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi Beth,

Would you please also update the  adt repo in 
http://adtrepo-dev.yoctoproject.org/1.6+snapshot-8293f564685d0f587ab63a107285625dc4f98f1c-master/ 
?

Thanks,
Yi

于 2014年05月21日 22:54, Flanagan, Elizabeth 写道:
> Found an AB bug. I'll have weekly synced up in a moment and the AB
> patched soon after. Give me 20 or so.
>
> -b
>
> On Wed, May 21, 2014 at 12:51 AM, Yi Zhao <yi.zhao@windriver.com> wrote:
>> Hi Beth,
>>
>> Seems many artifacts are not copied to the publish directory. Would  you
>> please check it ?
>>
>> Thanks,
>> Yi
>>
>> 于 2014年05月21日 14:10, Flanagan, Elizabeth 写道:
>>
>> http://autobuilder.yoctoproject.org/pub/nightly/20140520-2
>>
>> bitbake     ef2bf63e56b87e19d1a9059dd2d81a9a1a537254
>> eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
>> eclipse-poky-kepler     1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
>> meta-fsl-arm     3336ef362109eef14f9e73cdededb43caefedb2f
>> meta-fsl-ppc     913fc371e9976cc95fc1b2ee2deb87efd13faafb
>> meta-intel     cb0f5fbd614ec6a9052539416734ca1ab26a1892
>> meta-minnow     7bdcd1140b729598bae6246a4bbc21c3950aadd8
>> meta-qt3     3016129d90b7ac8517a5227d819f10ad417b5b45
>> oecore     be0327b6a900be5434b6b1f08277faf2f65d5da8
>> poky     8293f564685d0f587ab63a107285625dc4f98f1c
>>
>>
>
>


