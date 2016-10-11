Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F493E00D26; Tue, 11 Oct 2016 01:14:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2146BE00CF5
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 01:14:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u9B8EQoZ025776
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Oct 2016 01:14:27 -0700 (PDT)
Received: from soho-mhatle-m.local (147.11.116.158) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 11 Oct 2016 01:14:26 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Liam R. Howlett"
	<Liam.Howlett@windriver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
	<1475855841-30009-6-git-send-email-Liam.Howlett@WindRiver.com>
	<5723912.zcry3NVQb3@peggleto-mobl.ger.corp.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <6da53f89-09ed-32b7-f02f-6ff95705a5aa@windriver.com>
Date: Tue, 11 Oct 2016 10:14:24 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <5723912.zcry3NVQb3@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH v2 05/12] layerindex: Add distro to web interface and model.
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
X-List-Received-Date: Tue, 11 Oct 2016 08:14:32 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 10/10/16 3:20 AM, Paul Eggleton wrote:
> This looks good, just a few notes about this bit:
> 
> On Fri, 07 Oct 2016 11:57:14 Liam R. Howlett wrote:
>> +def update_distro_conf_file(path, distro):
>> +    logger.debug('Updating distro %s' % path)
>> +    desc = ""
>> +    with open(path, 'r') as f:
>> +        for line in f:
>> +            if line.startswith('#@NAME:'):
>> +                desc = line[7:].strip()
>> +            if line.startswith('#@DESCRIPTION:'):
>> +                desc = line[14:].strip()
>> +                desc = re.sub(r'Distribtuion configuration for( running)*( an)*( the)*', '', desc) 
> 
> Aside from the typo, that last line isn't needed for distros.
> 
> Also, unlike machines, the readable distro name actually gets set in a proper
> variable (DISTRO_NAME) and though some distro conf files do still use the
> meta-comments, a lot don't use them at all. Technically being a variable,
> DISTRO_NAME could be set in an inc file rather than the distro conf file, and
> often it is, so we should really parse to get it rather than scraping it.
> 
> (I'm happy if we sort this out as a later improvement, I just wanted to make
> a note of it now.)

I have fixed the typo in the current mhatle/django18 layer.

> Cheers,
> Paul
> 


